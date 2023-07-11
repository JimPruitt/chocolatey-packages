$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v2.0.1/flux_2.0.1_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v2.0.1/flux_2.0.1_windows_amd64.zip"
        'Checksum'       = "B20890E2A97BB4DFBD9A0EA5611C8CF7DB78CFDEF80A3F281FED47E3FDFE9960";
        'Checksum64'     = "C4BDACCB8BD5098BFFCA4890F8839D7097599A20E7594C4F302F0B48B5738BDA"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

