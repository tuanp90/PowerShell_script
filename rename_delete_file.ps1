$currentDate = Get-Date -Format yyyy-MM-dd
$sourceFile1 = "D:\CiscoBackup\IDC_BK_Config\Aruba_Sw\IDC-Srv-Sw-A6300-05"
$sourceFile2 = "D:\CiscoBackup\IDC_BK_Config\Aruba_Sw\IDC-Srv-Sw-A6300-07"
$destinationFile1 = "D:\CiscoBackup\IDC_BK_Config\Aruba_Sw\IDC-Srv-Sw-A6300-05_$currentDate"
$destinationFile2 = "D:\CiscoBackup\IDC_BK_Config\Aruba_Sw\IDC-Srv-Sw-A6300-07_$currentDate"

Rename-Item -Path $sourceFile1 -NewName $destinationFile1
Rename-Item -Path $sourceFile2 -NewName $destinationFile2
Get-ChildItem -Path "D:\CiscoBackup\IDC_BK_Config\Aruba_Sw\*" -Exclude *.ps1 | Where {$_.LastWriteTime -lt (Get-Date).AddDays(-30)} | Remove-Item -force -Verbose
