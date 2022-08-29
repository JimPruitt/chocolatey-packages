$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v0.33.0/flux_0.33.0_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v0.33.0/flux_0.33.0_windows_amd64.zip"
        'Checksum'       = "98999C1ADDE179F85F301826B2236972C2E6A373847125E55EFC0510C2ED98CD";
        'Checksum64'     = "AE024F9323EBE325B4E96D37D6C2BA06127C31478A05C667E784ED7C6CC345E4"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

