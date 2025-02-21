$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v2.5.0/flux_2.5.0_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v2.5.0/flux_2.5.0_windows_amd64.zip"
        'Checksum'       = "A6FD3A4A5C7BD9F797C8B9904239D7078DA93E33B82AC4B8B3F3E0BA9D8E117A";
        'Checksum64'     = "F6A717C337C6BED226256216E8862361500615F6F2414954F102C06B8ACCDBB5"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

