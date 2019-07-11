$ErrorActionPreference = 'Stop';

$toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

$xargs = @{
    'PackageName'   ="fluxctl";
    'FileFullPath'  = Join-Path $toolsDir "fluxctl.exe";
    'Url'           = "https://github.com/weaveworks/flux/releases/download/1.13.2/fluxctl_windows_amd64";
    'Checksum'      = "6DF6F7C1CFAE07106AB6A83A1D58182ED62B51FCAECA36DA279A52584BE67475";
    'ChecksumType'  = "SHA256"
}

#Download the file from releases
Get-ChocolateyWebFile @xargs