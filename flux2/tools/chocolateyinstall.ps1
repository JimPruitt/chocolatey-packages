$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v2.8.6/flux_2.8.6_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v2.8.6/flux_2.8.6_windows_amd64.zip"
        'Checksum'       = "AB38219399DED90881D670DC4CD36052D2CD5C347CD5881EA45084B507ACDD68";
        'Checksum64'     = "05FE1B414BB40555D72E8149ACA7046EBA4CEACEA7825D011C1188CC74C62E9C"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

