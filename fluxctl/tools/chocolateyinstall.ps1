$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'   ="fluxctl";
        'FileFullPath'  = Join-Path $toolsDir "fluxctl.exe";
        'Url'           = "https://github.com/fluxcd/flux/releases/download/1.24.0/fluxctl_windows_amd64";
        'Checksum'      = "C375737827A5E6B9763C8A7C4DBC1F8C907306CBE2CBCA543C2ED52A5E40E689";
        'ChecksumType'  = "SHA256"
    }
    
    #Download the file from releases
    Get-ChocolateyWebFile @xargs

