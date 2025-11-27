$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v2.7.5/flux_2.7.5_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v2.7.5/flux_2.7.5_windows_amd64.zip"
        'Checksum'       = "26244F1A493B9F5E36EB858C865A23BE88E57585D786F8C30D63C11E33AD9CC8";
        'Checksum64'     = "271537F7A70623344A60A749CBC7EB712FAA83D1B095FC232B1DD17ACADD01A1"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

