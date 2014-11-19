function Get-ChocTempDir{

    if(-NOT ($chocTempDir = Get-UserConfigValue chocTempDir -ErrorAction SilentlyContinue))
    {
        $chocTempDir = Join-Path $env:TEMP "chocolatey"
    }
    
    return $chocTempDir
}