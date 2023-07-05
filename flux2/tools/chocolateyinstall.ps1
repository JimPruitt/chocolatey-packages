$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v2.0.0/flux_2.0.0_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v2.0.0/flux_2.0.0_windows_amd64.zip"
        'Checksum'       = "EEA955AF681F9FF53FCC9EA924FC8F2BBAD10E8D4502A4BC75A2EE4B9033D3C2";
        'Checksum64'     = "7634F77D8B7768C2463F638C8449F32A0F720B0ACC4B036796F6818B26BFE89F"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

