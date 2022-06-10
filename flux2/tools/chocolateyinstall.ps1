$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v0.31.1/flux_0.31.1_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v0.31.1/flux_0.31.1_windows_amd64.zip"
        'Checksum'       = "2D72851004E3C90BFDDC968822D4C4802074DA5E744634E210AFDF683EF2F5AF";
        'Checksum64'     = "85C4B7D47DC081CAEEF31F3FCED20D25FE3FCCFB8ABB061C97131B9F8FC02043"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

