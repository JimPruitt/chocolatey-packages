$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v2.3.0/flux_2.3.0_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v2.3.0/flux_2.3.0_windows_amd64.zip"
        'Checksum'       = "24C9656810DF4AD7895145C31D1E8943E2988239908F60DD96E82A68103AA129";
        'Checksum64'     = "A118E19490A46FD72C6ACCE107CBA97CA3CC2CE504EA383536D56A4514C5CCE1"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

