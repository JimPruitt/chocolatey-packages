$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v2.7.1/flux_2.7.1_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v2.7.1/flux_2.7.1_windows_amd64.zip"
        'Checksum'       = "12a98df633eff11ff3af2c7e2404e7e466209b15b7bc16de0bffcf5df685cd84";
        'Checksum64'     = "9B1DF201AFFB3CFE9F070ED5EE0705BECD42329807DC7A597F28BD7E49BE9A56"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

