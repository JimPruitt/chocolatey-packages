$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v2.6.0/flux_2.6.0_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v2.6.0/flux_2.6.0_windows_amd64.zip"
        'Checksum'       = "774C9E5199CF6A74D8A7F08884CABD84B4EE941865F19B0377083858A707BBA4";
        'Checksum64'     = "6D3DA41B663B48A6F2D39F371795431E6D3F1516804041F19B4C48B8AC4100C3"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

