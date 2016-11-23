
$arguments = @(
	    "-nosplash -application org.eclipse.equinox.p2.director -destination `D:\Softwares\eclipse\eclips_projects` -repository https://sourceforge.net/projects/tomcatplugin/files/updatesite  -installIU net.sf.eclipse.tomcat.feature.feature.group"
	)

Write-Host "install maven plugin with eclipse"
$process = Start-Process -FilePath D:\Softwares\eclipse\eclipsec.exe -ArgumentList $arguments -PassThru -Wait
if ($process.ExitCode -eq 0){
    Write-Host "plugins successfully installed"
}
else {
    Write-Host "Installer exit code  $($process.ExitCode) for file $('D:\Softwares\eclipse\eclips_projects')"
}
Exit $($process.ExitCode)