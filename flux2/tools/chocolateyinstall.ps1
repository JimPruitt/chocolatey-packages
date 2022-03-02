$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v0.27.3/flux_0.27.3_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v0.27.3/flux_0.27.3_windows_amd64.zip"
        'Checksum'       = "4E35A33D6E65315A17C4CABF4F57C31FC4E26E88798821638312617C9C54283F";
        'Checksum64'     = "ED15E5C315CC7F871A875F18A4D51A54084B249C1CE4F8631A32471A50FA10DE"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

