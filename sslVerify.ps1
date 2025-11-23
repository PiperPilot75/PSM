# Test connection to see if the certificate is trusted
try {
    $url = "https://devprofile.ldn.rtad.local"
    $req = [Net.HttpWebRequest]::Create($url)
    $req.AllowAutoRedirect = $false
    $res = $req.GetResponse()
    Write-Host "HTTPS connection successful — certificate is trusted." -ForegroundColor Green
    $res.Close()
}
catch {
    Write-Host "HTTPS connection failed — certificate may not be trusted." -ForegroundColor Red
    Write-Host $_.Exception.Message
}
