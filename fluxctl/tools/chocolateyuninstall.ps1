$ErrorActionPreference = 'Stop';

$exeName = "fluxctl"
$fileType   = "exe"

$toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Join-Path $toolsDir "$exeName.$fileType"

Uninstall-BinFile -Name $exeName -Path "$fileLocation"