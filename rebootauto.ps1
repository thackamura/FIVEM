Stop-Process -Name "FXServer" -Force
Stop-Process -Name "cmd" -Force
Start-Sleep -s 30
start C:\esx\esx.cmd
$date = Get-Date -UFormat "%x_%T"
$date=[datetime]::Now.ToString('s').Replace(':','-')
echo "REBOOT REALISE AVEC SUCCES" | out-file -encoding unicode C:\Users\Administrateur\Desktop\logs\$date.txt
