$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'   ="flux";
        'Unziplocation' = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'           = "https://github.com/fluxcd/flux2/releases/download/v0.17.0flux_0.17.0_windows_386.zip";
        "Url64Bit"      = "https://github.com/fluxcd/flux2/releases/download/v0.17.0/flux_0.17.0_windows_amd64.zip"
        'Checksum'      = "0B3E5DA440F8FEDE393C75A74F857018527C213D57A3E1EFE40ABA3A8CDA2D80";
        'Checksum64'    = "4F4F9BF34E691D85BAD7B0752A0C5471EC665A69D538569DAAB2B6239A54D83C"
        'ChecksumType'  = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

