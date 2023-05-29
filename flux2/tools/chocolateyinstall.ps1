$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v2.0.0-rc.4/flux_2.0.0-rc.4_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v2.0.0-rc.4/flux_2.0.0-rc.4_windows_amd64.zip"
        'Checksum'       = "08525ED8AA82B73DED963B84ABEC2310053D046F5F45C2750BA9CAC75DFF6CF1";
        'Checksum64'     = "1C1D18A20F924B769A03B9386069508A45C5C6E2F66C28C2B52F6D447E8A7E25"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

