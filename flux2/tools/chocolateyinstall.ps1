$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v0.29.5/flux_0.29.5_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v0.29.5/flux_0.29.5_windows_amd64.zip"
        'Checksum'       = "98F2B60097EE740CB4089A1C7A2BAF73DE99C93ACA59A8EF7C5A4D111520AE5B";
        'Checksum64'     = "C33B1C31C616B0DE460FF6C28A806CD5D135E19D8712D9A2272CBB1A63201192"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

