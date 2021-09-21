$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'   ="flux";
        'Unziplocation' = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'           = "https://github.com/fluxcd/flux2/releases/download/v0.17.2/flux_0.17.2_windows_386.zip";
        "Url64Bit"      = "https://github.com/fluxcd/flux2/releases/download/v0.17.2/flux_0.17.2_windows_amd64.zip"
        'Checksum'      = "8FBD5F147CA0BEEF338D9776538B6BDC966995D0F760B485DB860B08E4FB536D";
        'Checksum64'    = "7020389B21E81089E11B155B8ED9B3A9DEF658A15777E919F1C78F7C19FAD527"
        'ChecksumType'  = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

