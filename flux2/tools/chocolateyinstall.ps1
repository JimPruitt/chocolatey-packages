$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v2.8.2/flux_2.8.2_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v2.8.2/flux_2.8.2_windows_amd64.zip"
        'Checksum'       = "3C8B20D640DA1EBC6F3AF0888403C69563E081A1808327643FE7CB8681E52345";
        'Checksum64'     = "3A9303323DFA0D9F9CD2222EDF21E10D0429BB058B0189CC1362F6391384BAC8"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

