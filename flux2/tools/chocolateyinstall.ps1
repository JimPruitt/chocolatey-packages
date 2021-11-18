$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v0.23.0/flux_0.23.0_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v0.23.0/flux_0.23.0_windows_amd64.zip"
        'Checksum'       = "9C6A7B98AF01E4239F3428B1D11FD39D8C1E11F18BE188B933B47A9850E31395";
        'Checksum64'     = "006AC1F5F27841B7EDF188E6A8AC3B96EE6BADD14C3406F4A71227AFA6E66EAE"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

