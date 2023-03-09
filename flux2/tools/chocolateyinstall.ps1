$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v0.41.0/flux_0.41.0_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v0.41.0/flux_0.41.0_windows_amd64.zip"
        'Checksum'       = "E31436B0DEF80BC9EA4382765E394DD476BABD73DD0597F9CA818D04669D5583";
        'Checksum64'     = "EF324E7BBDF35F49EBA31CD24AFE703B22F4DE064B06B4E0D7426256C2DBCA60"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

