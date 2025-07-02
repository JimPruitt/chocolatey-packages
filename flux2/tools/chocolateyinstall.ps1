$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v2.6.3/flux_2.6.3_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v2.6.3/flux_2.6.3_windows_amd64.zip"
        'Checksum'       = "CF5F96818FDEEAEDCC5A36868E228ACA7BD5D8115BF6B16574C974744C6529F8";
        'Checksum64'     = "22931173FED8D64AFCFF86D78856EB45C3EA8A3B52EA74753CE563B2DA4663C3"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

