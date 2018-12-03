$ErrorActionPreference = 'Stop';

#Generate the new filename based on what we're famliar with 
$exeName = "fluxctl"
$fileType   = "exe"
$checkSum = "9D95BF4B522AE83CB9BBB491166E89FD8EDC821296CEB944DA71FC3781E044F3"
$checkSumType = "SHA256"

$toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Join-Path $toolsDir "$exeName.$fileType"

$url        = 'https://github.com/weaveworks/flux/releases/download/1.8.1/fluxctl_windows_amd64'

#Download the file from releases
Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $fileLocation -Url $url -Checksum $checkSum -ChecksumType $checkSumType