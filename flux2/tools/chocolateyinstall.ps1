$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v0.18.3/flux_0.18.3_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v0.18.3/flux_0.18.3_windows_amd64.zip"
        'Checksum'       = "52AA9E6FD942F247BC317FE3D4758676CF8FB1FBF1139EDEEEA25FAAFC7EAD7C";
        'Checksum64'     = "CCA203D1CAA46AA15E03DF1D1CCB9FAAA4D75D268A28CF83C472746A43F2C200"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

