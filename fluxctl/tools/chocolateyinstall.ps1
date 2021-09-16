$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'   ="fluxctl";
        'FileFullPath'  = Join-Path $toolsDir "fluxctl.exe";
        'Url'           = "https://github.com/fluxcd/flux/releases/download/1.24.1/fluxctl_windows_amd64";
        'Checksum'      = "9D2E4CD23B37513D4FF6317F1A1BF6937AC3F5E39715493B5698CCB41DA1B958";
        'ChecksumType'  = "SHA256"
    }
    
    #Download the file from releases
    Get-ChocolateyWebFile @xargs

