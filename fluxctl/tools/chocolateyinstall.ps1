$ErrorActionPreference = 'Stop';

    $toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
    
    $xargs = @{
        'PackageName'   ="fluxctl";
        'FileFullPath'  = Join-Path $toolsDir "fluxctl.exe";
        'Url'           = "https://github.com/fluxcd/flux/releases/download/1.23.2/fluxctl_windows_amd64";
        'Checksum'      = "81DF27ECB9379993DDB143A3573DBC046C3AA1B9AABA58CA08E35235A58C96E5";
        'ChecksumType'  = "SHA256"
    }
    
    #Download the file from releases
    Get-ChocolateyWebFile @xargs

