$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v0.32.0/flux_0.32.0_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v0.32.0/flux_0.32.0_windows_amd64.zip"
        'Checksum'       = "5ED2ADE413F91D9005D935472FD691A2550036024F32671F82DA5DB61776EB73";
        'Checksum64'     = "76C85093AB3101AC6870A6E04F3DD9D6D38A33A8C6CC998EF0EDC183BD680DDB"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

