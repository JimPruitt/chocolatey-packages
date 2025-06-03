$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v2.6.1/flux_2.6.1_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v2.6.1/flux_2.6.1_windows_amd64.zip"
        'Checksum'       = "ED25B302BD41D985E82013FEE46587BD0A5DDC4518AC8D52677E2688503DCD72";
        'Checksum64'     = "4A7F397A3EC3E7E78243B1A253554ACD05C780CB3EEF140DE1B1AB2F6398A51B"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

