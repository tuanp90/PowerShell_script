$currentDate = Get-Date -Format yyyy-MM-dd
$sourceFile1 = "D:\CiscoBackup\Capture_file\VT_CAPTURE_14h45_KRX.pcap"
$sourceFile2 = "D:\CiscoBackup\Capture_file\VT_CAPTURE_16h55_KRX.pcap"
$sourceFile3 = "D:\CiscoBackup\VT_CAPTURE_KRX.pcap"
$destinationFile1 = "D:\CiscoBackup\Capture_file\VT_CAPTURE_14h45_KRX_$currentDate.pcap"
$destinationFile2 = "D:\CiscoBackup\Capture_file\VT_CAPTURE_16h55_KRX_$currentDate.pcap"
$destinationFile3 = "VT_CAPTURE_7h55_KRX_$currentDate.pcap"
$destinationFolder = "D:\CiscoBackup\Capture_file"

Rename-Item -Path $sourceFile1 -NewName $destinationFile1
Rename-Item -Path $sourceFile2 -NewName $destinationFile2
Move-Item -Path $sourceFile3 -Destination "$destinationFolder\$destinationFile3"
