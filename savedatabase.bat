@echo off
CD "C:\xampp\mysql\bin"
for /f "delims=" %%a in ('wmic OS Get localdatetime ^| find "."') do set DateTime=%%a

set Yr=%DateTime:~0,4%
set Mon=%DateTime:~4,2%
set Day=%DateTime:~6,2%
set Hr=%DateTime:~8,2%
set Min=%DateTime:~10,2%
set Sec=%DateTime:~12,2%

set BackupName= NomdelaBase__%Yr%-%Mon%-%Day%_(%Hr%-%Min%-%Sec%)
mysqldump --user=root --password=Lemotdepasse --databases NomdelaBase > "C:\Users\Administrateur\Desktop\backups\%BackupName%.sql"
