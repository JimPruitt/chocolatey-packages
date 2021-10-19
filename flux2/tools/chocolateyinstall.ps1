$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v0.19.0/flux_0.19.0_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v0.19.0/flux_0.19.0_windows_amd64.zip"
        'Checksum'       = "233C11116D5F6BD11EB7BB11E49664FF647DB5EF918465855A6EE47543CF0BD2";
        'Checksum64'     = "9BA69EB1C360ED662280CE5A6B1DA36F2E6486823259DC2675420C5D0F10D747"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

