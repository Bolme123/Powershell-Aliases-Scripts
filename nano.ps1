function nano {
	[CmdletBinding()]
	param(
        [Parameter(Position=1)][String] $FilePath,
		[Parameter(ValueFromRemainingArguments=$true)][String[]]$Nano_Parameters
    )
		$Command = {Start-Process -FilePath 'C:\ProgramData\chocolatey\lib\nano-win\tools\pkg_x86_64-w64-mingw32\bin\nano.exe' -ArgumentList "-f",'"C:\ProgramData\chocolatey\lib\nano-win\tools\.nanorc"'}
		if ($Nano_Parameters) {
			$String = $Command.ToString()
			$Index = $String.indexOf('"-f"')
			$Command = $Command.ToString().Insert($Index," `"$Nano_Parameters`", ")
		
		}
	if ($FilePath) {
	 $Command = ("$Command, `"$FilePath`"")
	$Command = [scriptblock]::Create($Command)
	
	$Command.invoke()
		
	}
	else {
		Start-Process -FilePath 'C:\ProgramData\chocolatey\lib\nano-win\tools\pkg_x86_64-w64-mingw32\bin\nano.exe' -ArgumentList "-f",'"C:\ProgramData\chocolatey\lib\nano-win\tools\.nanorc"'
	}

}