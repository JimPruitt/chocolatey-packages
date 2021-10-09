$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'   ="flux";
        'Unziplocation' = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'           = "https://github.com/fluxcd/flux2/releases/download/v0.18.0/flux_0.18.0_windows_386.zip";
        "Url64Bit"      = "https://github.com/fluxcd/flux2/releases/download/v0.18.0/flux_0.18.0_windows_amd64.zip"
        'Checksum'      = "20E27344B167EB27A3B85E687398161AD363DE6B270AC70D3B58DA30349832F";
        'Checksum64'    = "1CB1CFF8898432A0D0134D8409EF6DB405B662BC99F15F3714AA69486D40FF2D"
        'ChecksumType'  = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

