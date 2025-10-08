$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'    ="flux";
        'Unziplocation'  = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
        'Url'            = "https://github.com/fluxcd/flux2/releases/download/v2.7.2/flux_2.7.2_windows_386.zip";
        'Url64Bit'       = "https://github.com/fluxcd/flux2/releases/download/v2.7.2/flux_2.7.2_windows_amd64.zip"
        'Checksum'       = "F73D144AEA649E28D92EF84E318EE5655F1CB538ED84FAD92752710F5AAD5AAA";
        'Checksum64'     = "08ADC245C0D16EBD5388A849FFF966BD8AA90C9978A18D0FA6C44C4C746A8CB1"
        'ChecksumType'   = "SHA256"
        'ChecksumType64' = "SHA256"
    }
    
    #Download the file from releases
    Install-ChocolateyZipPackage @xargs

