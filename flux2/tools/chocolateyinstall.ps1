$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v0.29.2/flux_0.29.2_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v0.29.2/flux_0.29.2_windows_amd64.zip"
        'Checksum'       = "F9479D4565EC6115570BDC1DB5981B4D418A99ED74126C72D33E0C5BCC259F4F";
        'Checksum64'     = "2FCCA917BFA85DF5AA3535B4A2F245AA5325C51CDD9EF3C6B1AC54C9AC6E7D26"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

