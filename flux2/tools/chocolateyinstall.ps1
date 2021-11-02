$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v0.20.1/flux_0.20.1_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v0.20.1/flux_0.20.1_windows_amd64.zip"
        'Checksum'       = "A2A19FE6F0F1062B8067A85B4AAD72668BBFA04C95A61CEA7AF9B7F40D052755";
        'Checksum64'     = "C354905F704E0D1E0843BE7FB281371036A00A03BDC09EBC78CD9CABD93E1C18"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

