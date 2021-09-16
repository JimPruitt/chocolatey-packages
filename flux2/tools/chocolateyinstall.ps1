$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'   ="flux";
        'Unziplocation' = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'           = "https://github.com/fluxcd/flux2/releases/download/v0.17.1/flux_0.17.1_windows_386.zip";
        "Url64Bit"      = "https://github.com/fluxcd/flux2/releases/download/v0.17.1/flux_0.17.1_windows_amd64.zip"
        'Checksum'      = "72C1DAF7753B0C8F5BB5943E6A297AAF22F9365F2C8A0987D3138F8E603B090F";
        'Checksum64'    = "BD73E1CF2D0F0EE0D42FBBAD2B810110834EC7952416D019CDFB72FA9B4212B2"
        'ChecksumType'  = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

