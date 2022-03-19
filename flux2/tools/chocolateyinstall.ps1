$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v0.27.4/flux_0.27.4_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v0.27.4/flux_0.27.4_windows_amd64.zip"
        'Checksum'       = "5B52B4358F852BB4568CC6B8F6805D0453BE3ADCB0DB91707DC5A9A9C9345AAF";
        'Checksum64'     = "0C5CBA7F7798C6008A4436D30B7A4439CC7181123694F9303BF60921DBE0E8C7"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

