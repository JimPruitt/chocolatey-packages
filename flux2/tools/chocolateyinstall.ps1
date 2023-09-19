$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v2.1.1/flux_2.1.1_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v2.1.1/flux_2.1.1_windows_amd64.zip"
        'Checksum'       = "7818FE8305CB3F0FFFAA32A90C59D280040E9318BBCF5F7FD1C2E9E52D512EB2";
        'Checksum64'     = "5C3B791D397EAD954DD1CA3DDDE9570A7516EB9D746B88890E6254B733EA0D6B"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

