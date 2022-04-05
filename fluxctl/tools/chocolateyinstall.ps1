$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'   ="fluxctl";
        'FileFullPath'  = Join-Path $toolsDir "fluxctl.exe";
        'Url'           = "https://github.com/weaveworks/flux/releases/download/1.25.0/fluxctl_windows_amd64";
        'Checksum'      = "FC16F42ADA09E57BB2FD9C5D0FA46AD453D687D2D41ADA77387F313A5A0E2B63";
        'ChecksumType'  = "SHA256"
    }
    
    #Download the file from releases
    Get-ChocolateyWebFile @xargs

