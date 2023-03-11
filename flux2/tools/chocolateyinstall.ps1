$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v0.41.1/flux_0.41.1_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v0.41.1/flux_0.41.1_windows_amd64.zip"
        'Checksum'       = "5CFF952D65CC886E24B1DAC67E076D94330C7AD5C40B8BA95D7EC6F1FB9F2AB9";
        'Checksum64'     = "E4486FA2C69E90ECDFCC851C93693088FAC7EAC831721F6808D79F2F8992875A"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

