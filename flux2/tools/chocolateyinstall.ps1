$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v0.24.1/flux_0.24.1_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v0.24.1/flux_0.24.1_windows_amd64.zip"
        'Checksum'       = "E9D75E6638EE86141BED75FD54CA6F50925047EC16A6AF900FAD2BDEAB2EC526";
        'Checksum64'     = "0F2903E4856ABC97327F810581E023A3E3B76D388BEFE144D88A0AD24EDD790B"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

