$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v0.21.1/flux_0.21.1_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v0.21.1/flux_0.21.1_windows_amd64.zip"
        'Checksum'       = "2874477C5A4794D6D05C01A5912D1FC2C5B5AE047CAD2DAD48DC9FFFC4FEDF30";
        'Checksum64'     = "EB88F383D58EF0C030772C682493D47B38383D2933C84D481C7458098BD7A4EF"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

