# sslVerify.ps1
# Simple HTTPS certificate trust test
$url = "https://devprofile.ldn.rtad.local"

try {
    $req = [System.Net.HttpWebRequest]::Create($url)
    $req.AllowAutoRedirect = $false
    $req.Proxy = $null
    $res = $req.GetResponse()
    Write-Host "HTTPS connection successful — certificate is trusted." -ForegroundColor Green
    $res.Close()
}
catch {
    Write-Host "HTTPS connection failed — certificate may not be trusted." -ForegroundColor Red
    Write-Host $_.Exception.Message
}