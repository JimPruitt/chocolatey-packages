$ErrorActionPreference = 'Stop';

$toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

$xargs = @{
    'PackageName'   ="fluxctl";
    'FileFullPath'  = Join-Path $toolsDir "fluxctl.exe";
    'Url'           = "https://github.com/weaveworks/flux/releases/download/1.17.0/fluxctl_windows_amd64";
    'Checksum'      = "ABDB2FFA4B72343669145A576311A2C4788DC35CD0835D0A4727D57DA8C026B2";
    'ChecksumType'  = "SHA256"
}

#Download the file from releases
Get-ChocolateyWebFile @xargs