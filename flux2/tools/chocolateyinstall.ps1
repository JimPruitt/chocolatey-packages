$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v2.2.2/flux_2.2.2_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v2.2.2/flux_2.2.2_windows_amd64.zip"
        'Checksum'       = "CEEC5FA04515E701C2BEC9588C3D80645E1C895A9A1EEAB6FA5EAACFF9B9CF16";
        'Checksum64'     = "642FC5C510415EC544DE1EA0AF8BE7136C867D70AE702EC40B977601A2E8D0EB"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

