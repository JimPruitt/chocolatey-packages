$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v0.27.2/flux_0.27.2_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v0.27.2/flux_0.27.2_windows_amd64.zip"
        'Checksum'       = "2FB0C12B1240D633E624B922568EC193E7FCA928E9B2A087BBC36A4314087895";
        'Checksum64'     = "EB4454B295BC3DFF8BAA0AA12390F243F13CCF1B478FDC6EA419AB734479D5CD"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

