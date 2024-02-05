$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v2.2.3/flux_2.2.3_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v2.2.3/flux_2.2.3_windows_amd64.zip"
        'Checksum'       = "FDBD47420D5BB473F8E73B84DE0C5033F7FFC75ED455300D36AAD05E2179E869";
        'Checksum64'     = "1980703360D662388E0DBA7D320F27FBCF387C0B5F976C1503D11B60BC06E132"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

