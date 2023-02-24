$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v0.40.1/flux_0.40.1_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v0.40.1/flux_0.40.1_windows_amd64.zip"
        'Checksum'       = "0C1F93517FAE5C5B9A81DED7783489E84FE2EB92A3860C140E4F8621731C39AA";
        'Checksum64'     = "1796F3F3F0508B3618A20AA38C2A3545B424C1458A76E022D4B27271617A11EE"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

