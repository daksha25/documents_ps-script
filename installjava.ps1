 $msiFile = "C:\Users\514740\Downloads\jdk-7u79-windows-i586.exe"
$InstallDir = "<C:\Program Files\Java\jdk1.7.0>"
$arguments = @(
            "/S"            
            "/D=$INSTALLDIR" 
            
        )

Write-Host $arguments
$process = Start-Process -FilePath 'C:\Users\514740\Downloads\jdk-7u79-windows-i586.exe' -ArgumentList $arguments -PassThru -Wait
#-verb RunAs -FilePath $msiFile -ArgumentList $arguments -PassThru -Wait
if ($process.ExitCode -eq 0){
    Write-Host "$msiFile has been successfully installed"
}
else {
    Write-Host "Installer exit code  $($process.ExitCode) for file  $($msifile)"
}
Exit $($process.ExitCode)  
