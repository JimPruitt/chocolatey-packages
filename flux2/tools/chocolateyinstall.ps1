$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v0.39.0/flux_0.39.0_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v0.39.0/flux_0.39.0_windows_amd64.zip"
        'Checksum'       = "768D42B2745FFCC689C768D1CE5355D309BA6F39FBA8089AAF7239AACE1469A5";
        'Checksum64'     = "6CF0FB113C0EC3873ED84105D7EAAD5E5B14733ACEC00CBF0FE87C13F9F641B7"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

