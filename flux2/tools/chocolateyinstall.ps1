$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v0.26.0/flux_0.26.0_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v0.26.0/flux_0.26.0_windows_amd64.zip"
        'Checksum'       = "8129096340D1FAC58E44367656E23A4E110BF84C5878DC41D0F4774A1631CB70";
        'Checksum64'     = "F75690AA31C4456586DAB992A6DB79398825137EFB38A202A9867670EA26215A"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

