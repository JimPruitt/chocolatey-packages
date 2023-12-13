$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v2.2.0/flux_2.2.0_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v2.2.0/flux_2.2.0_windows_amd64.zip"
        'Checksum'       = "424851391C58187BF236341956EF821050176263CF46994E964ADA606C9BE926";
        'Checksum64'     = "2D95DEFBA8E1181C92A02705966386C248895C9488F5D15A26D378BD357B40FD"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

