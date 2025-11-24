$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v2.7.4/flux_2.7.4_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v2.7.4/flux_2.7.4_windows_amd64.zip"
        'Checksum'       = "4450F849F1CA07A3C4B58AAB44EF1FD889FB04B7B1D3EDBDAC572D5CDE9EF73C";
        'Checksum64'     = "4FA900C03504BFBE1959A333A332CC23CB74D803AC6BBC0BCE01EB46158A9A9D"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

