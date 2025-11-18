function Connect-HavertyPnP {
    param (
        [Parameter(Mandatory=$false)]
        [string]$SiteUrl = "https://haverty.sharepoint.com",

        [switch]$Silent
    )

    # App registration details
    $ClientId = "f8cb3a21-e103-4f86-aeb2-588145f21fb6"
    $Tenant     = "haverty.onmicrosoft.com"
    $Thumbprint = "4E37C01D7AA6D437E5A4FEBF7667B12156217EA7"

    try {
        Connect-PnPOnline -Url $SiteUrl `
                          -ClientId $ClientId `
                          -Thumbprint $Thumbprint `
                          -Tenant $Tenant `
                          -WarningAction Ignore

        if (-not $Silent) {
            Write-Host "Connected to $SiteUrl successfully using certificate-based authentication." -ForegroundColor Green
        }
    }
    catch {
        Write-Host "Connection failed: $($_.Exception.Message)" -ForegroundColor Red
        throw
    }
}
Export-ModuleMember -Function Connect-HavertyPnP
