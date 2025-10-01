$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v2.7.0/flux_2.7.0_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v2.7.0/flux_2.7.0_windows_amd64.zip"
        'Checksum'       = "518AC6C9041B4FC978D5A757D684F34ECABF99C439498C665A1D291AF61F87A5";
        'Checksum64'     = "3929714CE83D4EF61329D266379F319F1D494B77621ECA08228DEAE5659FF86D"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

