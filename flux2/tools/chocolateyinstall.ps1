$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v0.40.0/flux_0.40.0_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v0.40.0/flux_0.40.0_windows_amd64.zip"
        'Checksum'       = "3A54DC1B9BB4D0CB1A650DC581B5452F0AE5D23612472A0D0FDAD47323E5E8F5";
        'Checksum64'     = "2670E57F16FC2CA0B3228A702527383699F6764E6D7BD7E7CFC2B59AC602D599"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

