$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'   ="fluxctl";
        'FileFullPath'  = Join-Path $toolsDir "fluxctl.exe";
        'Url'           = "https://github.com/weaveworks/flux/releases/download/1.23.0/fluxctl_windows_amd64";
        'Checksum'      = "ED1A98FA3D2F93F2132D036E987DE3822176F115D625D240D6986AAE3A1DAAA1";
        'ChecksumType'  = "SHA256"
    }
    
    #Download the file from releases
    Get-ChocolateyWebFile @xargs

