$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v2.1.0/flux_2.1.0_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v2.1.0/flux_2.1.0_windows_amd64.zip"
        'Checksum'       = "1ADB3923D5A0CD5156B03529BD07AA71847F004B61B7100E820EDEED71F96F54";
        'Checksum64'     = "9E94856E527690A45A42DC6034C3131520B0265DB74CA5968EB8861636C8CA70"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

