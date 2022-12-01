$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v0.37.0/flux_0.37.0_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v0.37.0/flux_0.37.0_windows_amd64.zip"
        'Checksum'       = "BE71252725719D3ABCDF1CE1ADC99B199646CB183B2D80AC871ACF5E47694742";
        'Checksum64'     = "4BD83D7F8486FBE5DCF32761D0A7A7720C1EA87094119F6853992EF9A603BE98"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

