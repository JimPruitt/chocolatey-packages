$ErrorActionPreference = 'Stop';

$toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"

$xargs = @{
    'PackageName'   ="fluxctl";
    'FileFullPath'  = Join-Path $toolsDir "fluxctl.exe";
    'Url'           = "https://github.com/weaveworks/flux/releases/download/1.15.0/fluxctl_windows_amd64";
    'Checksum'      = "49A99402D18C95CAB2BAA401499B5982F4DFBF485064476A35454039A2B11153";
    'ChecksumType'  = "SHA256"
}

#Download the file from releases
Get-ChocolateyWebFile @xargs