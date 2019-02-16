$ErrorActionPreference = 'Stop';

#Generate the new filename based on what we're famliar with 
$exeName = "fluxctl"
$fileType   = "exe"
$checkSum = "A3EB5BB9BB9DDD5866EDDB7187D24EDB7AA827B44EEB84623744123ECE95A9D2"
$checkSumType = "SHA256"

$toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Join-Path $toolsDir "$exeName.$fileType"

$url        = 'https://github.com/weaveworks/flux/releases/download/1.10.1/fluxctl_windows_amd64'

#Download the file from releases
Get-ChocolateyWebFile -PackageName $packageName -FileFullPath $fileLocation -Url $url -Checksum $checkSum -ChecksumType $checkSumType