$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v0.29.3/flux_0.29.3_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v0.29.3/flux_0.29.3_windows_amd64.zip"
        'Checksum'       = "96917CB095371FB7EE106C1492DA099EC48E468F3398F90986A37B4AF23B1EDB";
        'Checksum64'     = "863650F8950C07B50A0F8EE6111477B62A41C84058A4620DEC0E46E07BF79AB3"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

