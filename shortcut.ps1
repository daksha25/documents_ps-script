<#Param (
	[parameter(mandatory=$true)]
	[ValidateNotNullorEmpty ()]
	[string]$TargetFile
	)#>
# Create a Shortcut with Windows PowerShell
$TargetFile = "C:\Program Files\Notepad\notepad++.exe"
$ShortcutFile = "$ENV:UserProfile\Desktop\notepad++.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$Shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
Write-Host $ShortcutFile
$Shortcut.TargetPath = $TargetFile
Write-Host $TargetFile
$test = $Shortcut.Save()
Write-Host $test
