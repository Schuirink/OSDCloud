Write-Host  -ForegroundColor Green "Starting JW Moeilijke installatie stick"
Start-Sleep -Seconds 10

#Make sure I have the latest OSD Content
Write-Host  -ForegroundColor Green "Updating OSD PowerShell Module"
Install-Module OSD -Force

Write-Host  -ForegroundColor Green "Importing OSD PowerShell Module"
Import-Module OSD -Force

#Start OSDCloud ZTI the RIGHT way
Write-Host  -ForegroundColor Green "Start AVO OSDCloud"
Start-OSDCloud -OSVersion 'Windows 11' -OSBuild 25H2 -OSEdition Pro -OSLanguage en-gb -OSLicense Retail -ZTI

#Restart from WinPE
Write-Host  -ForegroundColor Green "Restarting in 5 seconds!"
Start-Sleep -Seconds 5
wpeutil reboot
