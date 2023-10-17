$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v2.1.2/flux_2.1.2_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v2.1.2/flux_2.1.2_windows_amd64.zip"
        'Checksum'       = "7EF73053EED6F548AE06EB318B3855B08F72F908E279029BC6CF9CFED2D8BDE4";
        'Checksum64'     = "0951E481F3A800835F5C40BBB88986B98DED33001082CA9DCC3FCE48123F05B1"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

