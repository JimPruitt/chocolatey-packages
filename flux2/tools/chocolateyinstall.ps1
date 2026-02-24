$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v2.8.0/flux_2.8.0_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v2.8.0/flux_2.8.0_windows_amd64.zip"
        'Checksum'       = "BA33B4C82EB63063BCCA277A141AC2FBA60763D0CC2B4D6AA72EEF073A345339";
        'Checksum64'     = "2FCAA7F204D489926A43D557F1134A53097F0FBF8B8AA59F9702272A926DDED0"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

