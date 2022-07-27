$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v0.31.5/flux_0.31.5_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v0.31.5/flux_0.31.5_windows_amd64.zip"
        'Checksum'       = "6BA153D4BD2106D32D0926E590E9CBC8A3A9A9CAF9A16B8737C553A47396DB18";
        'Checksum64'     = "5F433621E6F19C6E95470CE04C8713D9A31042D47B14D5E0C4F181BB11F054FC"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

