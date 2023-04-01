$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v0.41.2/flux_0.41.2_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v0.41.2/flux_0.41.2_windows_amd64.zip"
        'Checksum'       = "686228DD861A399E91916BF8C221AA1184D89415347FD07B03531F6970C0E2E1";
        'Checksum64'     = "0C355EF6575A853F65A18259195372C24D40921595A7D8AC33853921B20E4B4B"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

