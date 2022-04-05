$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v0.28.5/flux_0.28.5_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v0.28.5/flux_0.28.5_windows_amd64.zip"
        'Checksum'       = "D071B56B37F8356A0A002A01D58DA3899FB65E74BF90098F55ED291B79D156E6";
        'Checksum64'     = "0F54FF8DB6C5D11DC4D9B15832EA206BEB7191E7708AA18FF8591CE7D85C259C"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

