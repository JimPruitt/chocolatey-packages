$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v0.24.0/flux_0.24.0_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v0.24.0/flux_0.24.0_windows_amd64.zip"
        'Checksum'       = "E868DB706FC2CB9C668ACD411A10B2B839AB931DEAA9F0F85777D45FD86BD727";
        'Checksum64'     = "FF3FB3697AC8558E1B307EA59714818914F1E212677E8BFC26ED982555A11707"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

