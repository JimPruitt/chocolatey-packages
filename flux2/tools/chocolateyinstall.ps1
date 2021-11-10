$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v0.22.0/flux_0.22.0_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v0.22.0/flux_0.22.0_windows_amd64.zip"
        'Checksum'       = "2E45A454CA6E4FF1438B6976F19BA9E2C2A568361C60922938C7AE575E0C9A38";
        'Checksum64'     = "18D3677ADF0B9961E6519A56B057D5062C746E5FFEABF8253F732AFC5350A391"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

