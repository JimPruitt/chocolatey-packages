$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v0.35.0/flux_0.35.0_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v0.35.0/flux_0.35.0_windows_amd64.zip"
        'Checksum'       = "10DDA5F7A2CA6E6B6132FDAA4F8963F0BAAE55F6392012FC6FCE7F717778138E";
        'Checksum64'     = "FAD63F698C4253E6D931996896A9F14A7D605019E5756F8B570E00CDBA2682E9"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

