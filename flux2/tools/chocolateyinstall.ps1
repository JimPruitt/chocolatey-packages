$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v0.40.2/flux_0.40.2_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v0.40.2/flux_0.40.2_windows_amd64.zip"
        'Checksum'       = "09228C0465DA457A0E38BD6C9E0C0FFE816A354C843BE0891CA70FEF0F111D19";
        'Checksum64'     = "1931E5448543B3F2549FDA8C3E3F05C5EA8D7293172DE7D82734AEC066FEC07E"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

