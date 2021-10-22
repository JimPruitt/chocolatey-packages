$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v0.19.1/flux_0.19.1_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v0.19.1/flux_0.19.1_windows_amd64.zip"
        'Checksum'       = "7D047F18247F4EAFB79945437EA26F6972F6B887334BF2A46087D90845EE1B1D";
        'Checksum64'     = "3DB13A69896919102E814429E637535617582DC33C2B6DBE9A528B7F758DE714"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

