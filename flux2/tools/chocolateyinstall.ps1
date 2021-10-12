$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'   ="flux";
        'Unziplocation' = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'           = "https://github.com/fluxcd/flux2/releases/download/v0.18.1/flux_0.18.1_windows_386.zip";
        "Url64Bit"      = "https://github.com/fluxcd/flux2/releases/download/v0.18.1/flux_0.18.1_windows_amd64.zip"
        'Checksum'      = "20DCA979BF6525EE894C95187C24B799871FFA1D0118CF2F76464273356E9B7E";
        'Checksum64'    = "BBC3992B374EA359FD18FCCADCAFF85D4F0003C68EB6725029FF28C7D227B073"
        'ChecksumType'  = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

