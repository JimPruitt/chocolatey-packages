$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v2.5.1/flux_2.5.1_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v2.5.1/flux_2.5.1_windows_amd64.zip"
        'Checksum'       = "409A829C391CECB0AC556AF73591FD5C158C02F707FD6F02B6DF994E87B8ABAD";
        'Checksum64'     = "5C9A60F47E337B9A6020EC1A729A71738441FCF6D9D0B6C7A98098641B4A7C20"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

