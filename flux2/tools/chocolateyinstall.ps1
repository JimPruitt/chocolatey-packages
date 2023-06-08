$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v2.0.0-rc.5/flux_2.0.0-rc.5_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v2.0.0-rc.5/flux_2.0.0-rc.5_windows_amd64.zip"
        'Checksum'       = "DA98DB34D6DDCC2B6CF0113C0685BE06BF0C35C63E16D69CE0A473AA5926FA60";
        'Checksum64'     = "5B6EB9B0D1525C2DECD74CA028E43DF88495AE7026CD1F6CBBD9040977D4A60C"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

