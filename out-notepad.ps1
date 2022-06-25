function Out-Notepad{
    [CmdletBinding()]
    param(
        [parameter(mandatory,ValueFromPipeline)]
        [string[]]$Input
    )
    Out-String -InputObject $input | Set-Clipboard
	Start-Sleep -Milliseconds 1
    $import='[DllImport("user32.dll")] public static extern int SetForegroundWindow(IntPtr Hwnd);'
    $module=Add-Type -MemberDefinition $import -name setwindow -passthru
#   $filename= Get-Date -Format %d%M%y_%H%m
    start-Process notepad++ -WindowStyle minimized
    $notepad=(Get-Process notepad++)
    $isReady = $module::SetForegroundWindow($notepad.MainWindowHandle[0])
    Start-Sleep -Milliseconds 400
    Write-Verbose $isReady
    
    if ($isReady = "0") { 
        [System.Windows.Forms.Sendkeys]::SendWait("^n")
        [System.Windows.Forms.Sendkeys]::SendWait("^v")
        Set-Clipboard -Value " "
        }
   # $kb::SendWait($Input)
    }
function Paste-Notepad{
	[CmdletBinding()]
    param(
    )
	Get-Clipboard -Raw -Format Text -TextFormatType UnicodeText | Out-Notepad
}