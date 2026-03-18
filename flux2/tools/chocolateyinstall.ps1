$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v2.8.3/flux_2.8.3_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v2.8.3/flux_2.8.3_windows_amd64.zip"
        'Checksum'       = "5E21A957006A3D67A4795FC19A326D9818E246864A1ADFB299EB7F42C9310119";
        'Checksum64'     = "9DA35BC51E00ED95FBC516AEBC9D149F24AA549A55BAFE9F7F9FA9B5A61514D2"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

