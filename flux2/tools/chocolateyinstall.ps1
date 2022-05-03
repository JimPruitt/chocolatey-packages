$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v0.30.0/flux_0.30.0_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v0.30.0/flux_0.30.0_windows_amd64.zip"
        'Checksum'       = "F1BC04990562E2947E38B0C25270DC53B3B854D7082658843F4AFB498A6C0992";
        'Checksum64'     = "5776D1F720441730E7BA329CA17B8586A9DEBC9C9FA9231A2789B8C2E35977F2"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

