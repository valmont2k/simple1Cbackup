echo "backup 1c"
echo "составл¤м списки файлов дл¤ архивировани¤"
::cd C:\baza
C:
cd C:\bases1C\
dir /B /S > D:\backup\backup.lst
echo "непосредственно архивируем с макс. сжатием, логами и шифровкой"
"C:\Program Files (x86)\WinRAR\rar.exe" a -dh -hpHEREYOURSDTRONGPASSWORD -s -m5  -ilogD:\backup\backup.log  D:\backup\backup.rar @D:\backup\backup.lst
echo "удаляем старые базы и сдвигаем старые архивы"
del D:\backup\backup7.rar

::copy /Y D:\backup\backup.rar z:\backup-server1C-bases1C--%DATE%.rar

move /Y D:\backup\backup6.rar D:\backup\backup7.rar
move /Y D:\backup\backup5.rar D:\backup\backup6.rar
move /Y D:\backup\backup4.rar D:\backup\backup5.rar
move /Y D:\backup\backup3.rar D:\backup\backup4.rar
move /Y D:\backup\backup2.rar D:\backup\backup3.rar
move /Y D:\backup\backup1.rar D:\backup\backup2.rar
move /Y D:\backup\backup.rar D:\backup\backup1.rar


::net use /DELETE z:
