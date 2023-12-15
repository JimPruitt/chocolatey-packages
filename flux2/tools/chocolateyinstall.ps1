$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v2.2.1/flux_2.2.1_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v2.2.1/flux_2.2.1_windows_amd64.zip"
        'Checksum'       = "27DC23112F6BAA6F3A50D3766982EF3371E0863E8FE8C6A4D417FFB7BE427FC2";
        'Checksum64'     = "59266B8A921D648CB342890D846AD159D0B0CFC282D95BC8FFF0440C7B37EA10"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

