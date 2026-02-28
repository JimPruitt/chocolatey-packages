$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v2.8.1/flux_2.8.1_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v2.8.1/flux_2.8.1_windows_amd64.zip"
        'Checksum'       = "C8E786759E0B6EA8B232C317FF3669A686CCCC12634DA21D137870D94E517926";
        'Checksum64'     = "657BD35929C81599618D193EDC47255373CF7C11EC54F107E33297603A311A70"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

