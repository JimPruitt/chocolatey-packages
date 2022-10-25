$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v0.36.0/flux_0.36.0_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v0.36.0/flux_0.36.0_windows_amd64.zip"
        'Checksum'       = "1F23ABE475B3756FE965E019B9638C7D036BD5DFEDD65455E0B66260C5FE8CFE";
        'Checksum64'     = "E9250C01A2B05E1EE32E1C6B56CDC88CDCB43C7B48157A5F9EB4B75A93CBFB0D"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

