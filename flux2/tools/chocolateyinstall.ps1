$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v2.8.5/flux_2.8.5_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v2.8.5/flux_2.8.5_windows_amd64.zip"
        'Checksum'       = "B1E370B466C954DAE6998CD6E9C00BBE6F36B6DD7CC0A8C51A197BDF4ACE9C76";
        'Checksum64'     = "C047CEF654C9C6439D324CEB947CCAFF1B96928F604A9F19CE498B892212F900"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

