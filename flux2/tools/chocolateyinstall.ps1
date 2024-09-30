$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v2.4.0/flux_2.4.0_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v2.4.0/flux_2.4.0_windows_amd64.zip"
        'Checksum'       = "FE4C1A06BA837A4FA462699692DF39801B432B282C46B77380B2E57179E6804C";
        'Checksum64'     = "5ABE6EDA1241BF1492AC57FDA660D55444522973EA63BECDC6C5D1CE6CAF602E"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

