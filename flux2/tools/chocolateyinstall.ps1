$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v2.6.4/flux_2.6.4_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v2.6.4/flux_2.6.4_windows_amd64.zip"
        'Checksum'       = "0344FCDD5AA78AB3C12FC97A9BFD50C8CEB776379A2029D34C98D974A0D9BA37";
        'Checksum64'     = "991ECB38AC9013B02170A0C2FAE116150510DA80C426863CE6E3B63E3F8B55B1"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

