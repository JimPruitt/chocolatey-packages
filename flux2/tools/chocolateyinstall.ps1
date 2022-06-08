$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v0.31.0/flux_0.31.0_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v0.31.0/flux_0.31.0_windows_amd64.zip"
        'Checksum'       = "B1530E919819E8D2C20F3AC16302386D15194D2EE5CB0CE1BB64B1D1D1669EFF";
        'Checksum64'     = "8E8AD5F8639899D9AAC713FDCDF9C3EABE7D680ACA2D14E70082E86449B1D1BC"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

