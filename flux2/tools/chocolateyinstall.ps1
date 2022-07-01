$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v0.31.3/flux_0.31.3_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v0.31.3/flux_0.31.3_windows_amd64.zip"
        'Checksum'       = "4D5D92875A68818A6A58F208D2CDF4351EEC4D53AF3FB9A36A77ED7AF853397C";
        'Checksum64'     = "1FB34414D434F63CCBDBA016738A4A6AAA100205109516B0854AFA4C2C81B923"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

