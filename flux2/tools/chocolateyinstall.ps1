$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v0.25.3/flux_0.25.3_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v0.25.3/flux_0.25.3_windows_amd64.zip"
        'Checksum'       = "1DEE4DA037005517698427FE6866DB94033C96D0893942A24DA8A51616387268";
        'Checksum64'     = "C419D445E4A970534C3442EE9404B0CB59D3677D1C64E51C574A3CF813840DA0"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

