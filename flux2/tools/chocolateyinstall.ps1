$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v0.38.3/flux_0.38.3_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v0.38.3/flux_0.38.3_windows_amd64.zip"
        'Checksum'       = "0EC7B43ACD91A4770619D30FC438F7468AE03B025444B620DC1FE2075787FC17";
        'Checksum64'     = "A24AA8A80C139E08ED744333EBB395A123CFC0A3300F185913ECD01E69EA354A"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

