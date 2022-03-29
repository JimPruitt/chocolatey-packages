$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v0.28.4/flux_0.28.4_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v0.28.4/flux_0.28.4_windows_amd64.zip"
        'Checksum'       = "B6DCA4FA4A41B6B15A3D85FAD3412EDC8A03426BB5C1E78707A374D0AE8336A7";
        'Checksum64'     = "BCCA882519A2173D6C577BB8E54E4FCDD3EB74CD04E9D5C0F7781B9F34A65BFA"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

