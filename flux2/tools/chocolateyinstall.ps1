$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v0.29.4/flux_0.29.4_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v0.29.4/flux_0.29.4_windows_amd64.zip"
        'Checksum'       = "482C229BEEF3677DC621159F379BB63D5C35CE6C4BBEC0F8555DD4483D071043";
        'Checksum64'     = "B030376FA4D4751338C7887DC912BCCF0CD1A0AABE0267CBB3FC42B6CE5F6308"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

