$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v0.38.2/flux_0.38.2_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v0.38.2/flux_0.38.2_windows_amd64.zip"
        'Checksum'       = "3C8C28FAC2FFE11A0455333267D7B37A90BA492CC798A386C7138D6FED5710BC";
        'Checksum64'     = "341C28FCB5132ACC22C8D5F63BCC3790459FD3B65EBB6BAAEF201F7603192076"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

