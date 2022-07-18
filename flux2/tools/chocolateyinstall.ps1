$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v0.31.4/flux_0.31.4_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v0.31.4/flux_0.31.4_windows_amd64.zip"
        'Checksum'       = "EC3A8E9504F0C5CACE37CB731997E267674D77B1DFB01208029F743658B57FD8";
        'Checksum64'     = "1532649C40173D8F424D1FDAEB20465E9ACB7807A9F51FCA340E01DA1BE0D46E"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

