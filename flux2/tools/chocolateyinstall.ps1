$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v0.34.0/flux_0.34.0_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v0.34.0/flux_0.34.0_windows_amd64.zip"
        'Checksum'       = "384CE2C13E383741EEFF49DF4E6A703543F2D16AFFACA747F7827B71090A1F7D";
        'Checksum64'     = "6145C2D35F9199E78F534FD5A02025BDDCB1948B9BADB5E7DC278DD132D5E2C0"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

