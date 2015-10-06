#Author:YRimal
#-------------
Import-Module BitsTransfer  
$directory="D:\"
$downloadUrl = "https://services.gradle.org/distributions/gradle-2.7-all.zip"

$filename = $downloadUrl.Substring($downloadUrl.LastIndexOf("/")+1).Replace("=","").Replace("?","")

$saveLocation = "D:\$filename"

$start_time = Get-Date
Start-BitsTransfer -Source $downloadUrl -Destination $saveLocation
"File "+$filename+" was downloaded in $((Get-Date).Subtract($start_time).Seconds) second(s) and saved at "+$saveLocation
