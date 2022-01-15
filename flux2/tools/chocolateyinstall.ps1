$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v0.25.2/flux_0.25.2_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v0.25.2/flux_0.25.2_windows_amd64.zip"
        'Checksum'       = "2B85EEC684B245BBC545CD0F3A1429930D48C48FEC5BAFF410A87577BC21458D";
        'Checksum64'     = "37A4ED62B4F1A78712CA5C2333E6BEB7D3A801ACDE048DBCEBDE17A7EEA3C6B8"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

