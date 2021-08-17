$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'   ="flux";
        'Unziplocation' = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'           = "https://github.com/fluxcd/flux2/releases/download/v0.16.2/flux_0.16.2_windows_386.zip";
        'Checksum'      = "8DBCB1B22487D1D9DF1FDC9782FA36C63A1CB6F15CA0F61E5F74C802B10A281F";
        'ChecksumType'  = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

