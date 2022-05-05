$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v0.30.2/flux_0.30.2_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v0.30.2/flux_0.30.2_windows_amd64.zip"
        'Checksum'       = "A3EC16EA10DC2B141D0793ACBB49C1ED536DE62C79B6CA47EFAB93C4FC779603";
        'Checksum64'     = "CCCDD1F1671F74C32D35B9590D2C76D868CC8C0374B8AE9C2235838D19AD2333"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

