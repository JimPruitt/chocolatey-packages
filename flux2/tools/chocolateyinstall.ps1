$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'   ="flux";
        'Unziplocation' = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'           = "https://github.com/fluxcd/flux2/releases/download/v0.16.1/flux_0.16.1_windows_386.zip";
        'Checksum'      = "E3E2C13324EF7CD0DCD45F31023F83D9D03089BBA96336BF7B0B95DFA9D8852F";
        'ChecksumType'  = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

