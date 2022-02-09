$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v0.26.2/flux_0.26.2_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v0.26.2/flux_0.26.2_windows_amd64.zip"
        'Checksum'       = "32040DCAD602182B734B646EFDD14CBF891AAE8B5F0E5D501567FC59CF4F0720";
        'Checksum64'     = "ED99525BB23FD63973BD5173C9004707A75094723EAF4C519189CCACCBB08613"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

