$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v2.7.1/flux_2.7.1_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v2.7.1/flux_2.7.1_windows_amd64.zip"
        'Checksum'       = "AC233638641480E8B4913EB0B343A0B3CAAB256C62FABD8A026D0A76D5B222B7";
        'Checksum64'     = "019C8875722E133FF77FAFF2B2D4CBD1506A1452AAFC3254C32EAB2FFFAAE570"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

