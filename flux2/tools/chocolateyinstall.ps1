$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v0.28.3/flux_0.28.3_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v0.28.3/flux_0.28.3_windows_amd64.zip"
        'Checksum'       = "029B78C424E0FACE9B8C1785D77EC85493B7E3D0A5FF6ED130701915D07C88B1";
        'Checksum64'     = "14688379539F7C2E50F41B1DAD44DB3C96A94086950E3D6531AEDF8B2CC6C39A"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

