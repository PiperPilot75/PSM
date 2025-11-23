# sslVerify.ps1
# Tests whether the SSL certificate for the given URL is trusted from this server.

try {
    $url = "https://devprofile.ldn.rtad.local"
    $req = [System.Net.HttpWebRequest]::Create($url)
    $req.AllowAutoRedirect = $false

    # Optional: ignore proxy settings if present
    $req.Proxy = $null

    $res = $req.GetResponse()
    Write-Host "HTTPS connection successful — certificate is trusted." -ForegroundColor Green
    $res.Close()
}
catch {
    Write-Host "HTTPS connection failed — certificate may not be trusted." -ForegroundColor Red
    Write-Host $_.Exception.Message
}
