:myBOX_Start
echo off
chcp 65001 > NUL 2>&1
setlocal
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E#&echo on&for %%b in (1) do rem"') do (set R=%%b)
cd /d "%~dp0"
for /f %%a in ('"cd"') do set Konum=%%a
reg query "HKU\S-1-5-19" > NUL 2>&1
set NSudo="%Konum%\NSudo.exe" -U:T -P:E -Wait -ShowWindowMode:hide cmd /c
	if %errorlevel%==1 ("%Konum%\NSudo.exe" -U:E -ShowWindowMode:hide cmd /c Powershell -command "Start-Process '%Konum%\myOS_AppInstaller.bat'"
						exit)
dir /b "%ProgramData%\chocolatey" > NUL 2>&1
	if %errorlevel% EQU 1 (%NSudo% Powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && set "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
)

:AppList
cls
mode con cols=51 lines=58
title myOS App Installer
echo %R%[36m
echo                         ████████ ████████
echo                         █░░░░░░█ █░░░░░░░
echo                         █░    ░█ █░
echo           ███████ █   █ █░    ░█ ████████
echo           █░░█░░█ █   █ █░    ░█ ░░░░░░░█
echo           █░ ░ ░█ █   █ █░    ░█       ░█
echo           █░   ░█ █████ ████████ ████████
echo           ░░   ░░ ░░░░█ ░░░░░░░░ ░░░░░░░░
echo                       █
echo                   █████
echo                   ░░░░░
echo.
echo         %R%[90m Spydea Tarafından Hazırlanmıştır.%R%[0m
echo %R%[90m┌─────────────────────────────────────────────────┐%R%[0m
echo %R%[90m│%R%[31m • Belge Düzenleme%R%[0m                               %R%[90m│%R%[0m
echo %R%[90m│%R%[31m  1)%R%[0m Adobe Acrobat Reader DC                     %R%[90m│%R%[0m
echo %R%[90m│%R%[31m  2)%R%[0m WPS Office                                  %R%[90m│%R%[0m
echo %R%[90m│%R%[31m  3)%R%[0m LibreOffice                                 %R%[90m│%R%[0m
echo %R%[90m│%R%[31m  4)%R%[0m ONLYOFFICE                                  %R%[90m│%R%[0m
echo %R%[90m│%R%[31m  5)%R%[0m Apache OpenOffice                           %R%[90m│%R%[0m
echo %R%[90m│%R%[31m • İnternet Tarayıcıları%R%[0m                         %R%[90m│%R%[0m
echo %R%[90m│%R%[31m  6)%R%[0m Google Chrome                               %R%[90m│%R%[0m
echo %R%[90m│%R%[31m  7)%R%[0m Microsoft Edge                              %R%[90m│%R%[0m
echo %R%[90m│%R%[31m  8)%R%[0m Mozilla Firefox                             %R%[90m│%R%[0m
echo %R%[90m│%R%[31m  9)%R%[0m Opera                                       %R%[90m│%R%[0m
echo %R%[90m│%R%[31m 10)%R%[0m Opera GX                                    %R%[90m│%R%[0m
echo %R%[90m│%R%[31m 11)%R%[0m Vivaldi                                     %R%[90m│%R%[0m
echo %R%[90m│%R%[31m 12)%R%[0m Brave                                       %R%[90m│%R%[0m
echo %R%[90m│%R%[31m • Oyunlar%R%[0m                                       %R%[90m│%R%[0m
echo %R%[90m│%R%[31m 13)%R%[0m Minecraft                                   %R%[90m│%R%[0m
echo %R%[90m│%R%[31m 14)%R%[0m Steam                                       %R%[90m│%R%[0m
echo %R%[90m│%R%[31m 15)%R%[0m Epic Games Launcher                         %R%[90m│%R%[0m
echo %R%[90m│%R%[31m 16)%R%[0m GOG Galaxy                                  %R%[90m│%R%[0m
echo %R%[90m│%R%[31m 17)%R%[0m Valorant                                    %R%[90m│%R%[0m
echo %R%[90m│%R%[31m 18)%R%[0m League of Legends                           %R%[90m│%R%[0m
echo %R%[90m│%R%[31m 19)%R%[0m GeForce NOW                                 %R%[90m│%R%[0m
echo %R%[90m│%R%[31m • Müzik%R%[0m                                         %R%[90m│%R%[0m
echo %R%[90m│%R%[31m 20)%R%[0m Spotify                                     %R%[90m│%R%[0m
echo %R%[90m│%R%[31m 21)%R%[0m YouTube Music                               %R%[90m│%R%[0m
echo %R%[90m│%R%[31m • Windows Araçları%R%[0m                              %R%[90m│%R%[0m
echo %R%[90m│%R%[31m 22)%R%[0m CCleaner                                    %R%[90m│%R%[0m
echo %R%[90m│%R%[31m 23)%R%[0m Revo Uninstaller                            %R%[90m│%R%[0m
echo %R%[90m│%R%[31m 24)%R%[0m IObit Uninstaller                           %R%[90m│%R%[0m
echo %R%[90m│%R%[31m 25)%R%[0m Mem Reduct                                  %R%[90m│%R%[0m
echo %R%[90m│%R%[31m 26)%R%[0m ChocolateyGUI                               %R%[90m│%R%[0m
echo %R%[90m│%R%[31m • İletişim%R%[0m                                      %R%[90m│%R%[0m
echo %R%[90m│%R%[31m 27)%R%[0m Discord                                     %R%[90m│%R%[0m
echo %R%[90m│%R%[31m 28)%R%[0m WhatsApp                                    %R%[90m│%R%[0m
echo %R%[90m│%R%[31m 29)%R%[0m Zoom                                        %R%[90m│%R%[0m
echo %R%[90m│%R%[31m • Kodlama%R%[0m                                       %R%[90m│%R%[0m
echo %R%[90m│%R%[31m 30)%R%[0m Notepad++                                   %R%[90m│%R%[0m
echo %R%[90m│%R%[31m 31)%R%[0m Python                                      %R%[90m│%R%[0m
echo %R%[90m├─────────────────────────────────────────────────┤%R%[0m
echo %R%[90m│%R%[31m  X)%R%[0m Çıkış                                       %R%[90m│%R%[0m
echo %R%[90m└─────────────────────────────────────────────────┘%R%[0m
set /p applist= %R%[36m ► Uygulama Numarası: %R%[0m
	if %applist%==1 (set AppID=adobereader&set Title=Adobe Acrobat Reader DC&set AppMenu_X_Link=AppList&goto AppMenu)
	if %applist%==2 (set AppID=wps-office-free&set Title=WPS Office&set AppMenu_X_Link=AppList&goto AppMenu)
	if %applist%==3 (set AppID=libreoffice&set Title=LibreOffice&set AppMenu_X_Link=AppList&goto AppMenu)
	if %applist%==4 (set AppID=onlyoffice&set Title=ONLYOFFICE&set AppMenu_X_Link=AppList&goto AppMenu)
	if %applist%==5 (set AppID=OpenOffice&set Title=Apache OpenOffice&set AppMenu_X_Link=AppList&goto AppMenu)
	if %applist%==6 (set AppID=GoogleChrome&set Title=Google Chrome&set AppMenu_X_Link=AppList&goto AppMenu)
	if %applist%==7 (set AppID=microsoft-edge&set Title=Microsoft Edge&set AppMenu_X_Link=AppList&goto AppMenu)
	if %applist%==8 (set AppID=Firefox&set Title=Mozilla Firefox&set AppMenu_X_Link=AppList&goto AppMenu)
	if %applist%==9 (set AppID=Opera&set Title=Opera&set AppMenu_X_Link=AppList&goto AppMenu)
	if %applist%==10 (set AppID=Opera-gx&set Title=Opera GX&set AppMenu_X_Link=AppList&goto AppMenu)
	if %applist%==11 (set AppID=Vivaldi&set Title=Vivaldi&set AppMenu_X_Link=AppList&goto AppMenu)
	if %applist%==12 (set AppID=brave&set Title=Brave&set AppMenu_X_Link=AppList&goto AppMenu)
	if %applist%==13 goto Minecraft
	if %applist%==14 (set AppID=steam&set Title=Steam&set AppMenu_X_Link=AppList&goto AppMenu)
	if %applist%==15 (set AppID=epicgameslauncher& set Title=Epic Games Launcher && set AppMenu_X_Link=AppList & goto AppMenu)
	if %applist%==16 (set AppID=goggalaxy&set Title=GOG Galaxy&set AppMenu_X_Link=AppList&goto AppMenu)
	if %applist%==17 (set AppID=valorant&set Title=Valorant&set AppMenu_X_Link=AppList&goto AppMenu)
	if %applist%==18 goto LOL
	if %applist%==19 (set AppID=nvidia-geforce-now&set Title=GeForce NOW&set AppMenu_X_Link=AppList&goto AppMenu)
	if %applist%==20 (set AppID=spotify&set Title=Spotify&set AppMenu_X_Link=AppList&goto AppMenu)
	if %applist%==21 (set AppID=th-ch-youtube-music&set Title=YouTube Music&set AppMenu_X_Link=AppList&goto AppMenu)
	if %applist%==22 (set AppID=ccleaner& set Title=CCleaner&set AppMenu_X_Link=AppList&goto AppMenu)
	if %applist%==23 (set AppID=revo-uninstaller&set Title=Revo Uninstaller&set AppMenu_X_Link=AppList&goto AppMenu)
	if %applist%==24 (set AppID=iobit-uninstaller&set Title=IObit Uninstaller&set AppMenu_X_Link=AppList&goto AppMenu)
	if %applist%==25 (set AppID=memreduct&set Title=Mem Reduct&set AppMenu_X_Link=AppList&goto AppMenu)
	if %applist%==26 (set AppID=chocolateygui&set Title=ChocolateyGUI&set AppMenu_X_Link=AppList&goto AppMenu)
	if %applist%==27 (set AppID=discord&set Title=Discord&set AppMenu_X_Link=AppList&goto AppMenu)
	if %applist%==28 (set AppID=WhatsApp&set Title=WhatsApp&set AppMenu_X_Link=AppList&goto AppMenu)
	if %applist%==29 (set AppID=zoom&set Title=Zoom&set AppMenu_X_Link=AppList&goto AppMenu)
	if %applist%==30 (set AppID=notepadplusplus&set Title=Notepad++ &set AppMenu_X_Link=AppList&goto AppMenu)
	if %applist%==31 (set AppID=python&set Title=Python&set AppMenu_X_Link=AppList&goto AppMenu)
	if %applist%==X (exit)
	if %applist%==x (exit)

goto AppList	
:AppMenu
cls
mode con cols=51 lines=18
title %Title%
echo.
echo  %R%[36m███%R%[90m╗   %R%[36m███%R%[90m╗ %R%[36m██%R%[90m╗   %R%[36m██%R%[90m╗ %R%[36m██████%R%[90m╗   %R%[36m██████%R%[90m╗  %R%[36m██%R%[90m╗  %R%[36m██%R%[90m╗%R%[0m
echo  %R%[36m████%R%[90m╗ %R%[36m████%R%[90m║ ╚%R%[36m██%R%[90m╗ %R%[36m██%R%[90m╔╝ %R%[36m██%R%[90m╔══%R%[36m██%R%[90m╗ %R%[36m██%R%[90m╔═══%R%[36m██%R%[90m╗ ╚%R%[36m██%R%[90m╗%R%[36m██%R%[90m╔╝%R%[0m
echo  %R%[36m██%R%[90m╔%R%[36m████%R%[90m╔%R%[36m██%R%[90m║  ╚%R%[36m████%R%[90m╔╝  %R%[36m██████%R%[90m╔╝ %R%[36m██%R%[90m║   %R%[36m██%R%[90m║  ╚%R%[36m███%R%[90m╔╝ %R%[0m
echo  %R%[36m██%R%[90m║╚%R%[36m██%R%[90m╔╝%R%[36m██%R%[90m║   ╚%R%[36m██%R%[90m╔╝   %R%[36m██%R%[90m╔══%R%[36m██%R%[90m╗ %R%[36m██%R%[90m║   %R%[36m██%R%[90m║  %R%[36m██%R%[90m╔%R%[36m██%R%[90m╗ %R%[0m
echo  %R%[36m██%R%[90m║ ╚═╝ %R%[36m██%R%[90m║    %R%[36m██%R%[90m║    %R%[36m██████%R%[90m╔╝ ╚%R%[36m██████%R%[90m╔╝ %R%[36m██%R%[90m╔╝ %R%[36m██%R%[90m╗%R%[0m
echo  %R%[90m╚═╝     ╚═╝    ╚═╝    ╚═════╝   ╚═════╝  ╚═╝  ╚═╝%R%[0m
echo         %R%[90m Spydea Tarafından Hazırlanmıştır.%R%[0m
echo %R%[90m┌─────────────────────────────────────────────────┐%R%[0m
echo %R%[90m│%R%[31m  1)%R%[0m Uygulamayı Yükle                            %R%[90m│%R%[0m
echo %R%[90m│%R%[31m  2)%R%[0m Uygulamayı Kaldır                           %R%[90m│%R%[0m
echo %R%[90m│%R%[31m  3)%R%[0m Uygulamayı Güncelle                         %R%[90m│%R%[0m
echo %R%[90m│%R%[31m  4)%R%[0m Paket Bilgilerini Görüntüle                 %R%[90m│%R%[0m
echo %R%[90m├─────────────────────────────────────────────────┤%R%[0m
echo %R%[90m│%R%[31m  X)%R%[0m Bir Önceki Ekrana Geri Dön                  %R%[90m│%R%[0m
echo %R%[90m└─────────────────────────────────────────────────┘%R%[0m
set /p appmenu= %R%[36m ► Yapacağınız İşlem: %R%[0m
	if %appmenu%==1 (mode con cols=120 lines=52 & choco install %AppID% -y & pause & goto AppMenu)
	if %appmenu%==2 (mode con cols=120 lines=52 & choco uninstall %AppID% & pause & goto AppMenu)
	if %appmenu%==3 (mode con cols=120 lines=52 & choco upgrade %AppID% & pause & goto AppMenu)
	if %appmenu%==4 (mode con cols=120 lines=70 & choco info %AppID% & pause & goto AppMenu)
	if %appmenu%==x goto %AppMenu_X_Link%
	if %appmenu%==X goto %AppMenu_X_Link%
	
:Minecraft
cls
mode con cols=51 lines=20
title Minecraft
echo.
echo  %R%[36m███%R%[90m╗   %R%[36m███%R%[90m╗ %R%[36m██%R%[90m╗   %R%[36m██%R%[90m╗ %R%[36m██████%R%[90m╗   %R%[36m██████%R%[90m╗  %R%[36m██%R%[90m╗  %R%[36m██%R%[90m╗%R%[0m
echo  %R%[36m████%R%[90m╗ %R%[36m████%R%[90m║ ╚%R%[36m██%R%[90m╗ %R%[36m██%R%[90m╔╝ %R%[36m██%R%[90m╔══%R%[36m██%R%[90m╗ %R%[36m██%R%[90m╔═══%R%[36m██%R%[90m╗ ╚%R%[36m██%R%[90m╗%R%[36m██%R%[90m╔╝%R%[0m
echo  %R%[36m██%R%[90m╔%R%[36m████%R%[90m╔%R%[36m██%R%[90m║  ╚%R%[36m████%R%[90m╔╝  %R%[36m██████%R%[90m╔╝ %R%[36m██%R%[90m║   %R%[36m██%R%[90m║  ╚%R%[36m███%R%[90m╔╝ %R%[0m
echo  %R%[36m██%R%[90m║╚%R%[36m██%R%[90m╔╝%R%[36m██%R%[90m║   ╚%R%[36m██%R%[90m╔╝   %R%[36m██%R%[90m╔══%R%[36m██%R%[90m╗ %R%[36m██%R%[90m║   %R%[36m██%R%[90m║  %R%[36m██%R%[90m╔%R%[36m██%R%[90m╗ %R%[0m
echo  %R%[36m██%R%[90m║ ╚═╝ %R%[36m██%R%[90m║    %R%[36m██%R%[90m║    %R%[36m██████%R%[90m╔╝ ╚%R%[36m██████%R%[90m╔╝ %R%[36m██%R%[90m╔╝ %R%[36m██%R%[90m╗%R%[0m
echo  %R%[90m╚═╝     ╚═╝    ╚═╝    ╚═════╝   ╚═════╝  ╚═╝  ╚═╝%R%[0m
echo         %R%[90m Spydea Tarafından Hazırlanmıştır.%R%[0m
echo %R%[90m┌─────────────────────────────────────────────────┐%R%[0m
echo %R%[90m│%R%[31m  1)%R%[0m Minecraft                                   %R%[90m│%R%[0m
echo %R%[90m│%R%[31m  2)%R%[0m Minecraft Education Edition                 %R%[90m│%R%[0m
echo %R%[90m│%R%[31m  3)%R%[0m Minecraft Launcher                          %R%[90m│%R%[0m
echo %R%[90m│%R%[31m  4)%R%[0m MultiMC                                     %R%[90m│%R%[0m
echo %R%[90m│%R%[31m  5)%R%[0m GDLauncher                                  %R%[90m│%R%[0m
echo %R%[90m│%R%[31m  6)%R%[0m Prism Launcher                              %R%[90m│%R%[0m
echo %R%[90m├─────────────────────────────────────────────────┤%R%[0m
echo %R%[90m│%R%[31m  X)%R%[0m Bir Önceki Ekrana Geri Dön                  %R%[90m│%R%[0m
echo %R%[90m└─────────────────────────────────────────────────┘%R%[0m
set /p appmenu= %R%[36m ► Yapacağınız İşlem: %R%[0m
	if %appmenu%==1 (set AppID=minecraft&set Title=Minecraft&set AppMenu_X_Link=Minecraft&goto AppMenu)
	if %appmenu%==2 (set AppID=minecraft-education&set Title=Minecraft Education Edition&set AppMenu_X_Link=Minecraft&goto AppMenu)
	if %appmenu%==3 (set AppID=minecraft-launcher&set Title=Minecraft Launcher&set AppMenu_X_Link=Minecraft&goto AppMenu)
	if %appmenu%==4 (set AppID=multimc&set Title=MultiMC&set AppMenu_X_Link=Minecraft&goto AppMenu)
	if %appmenu%==5 (set AppID=gdlauncher&set Title=GDLauncher&set AppMenu_X_Link=Minecraft&goto AppMenu)
	if %appmenu%==6 (set AppID=prismlauncher&set Title=Prism Launcher&set AppMenu_X_Link=Minecraft&goto AppMenu)
	if %appmenu%==x goto AppList
	if %appmenu%==X goto AppList

:LOL
cls
mode con cols=51 lines=17
title League of Legends
echo.
echo  %R%[36m███%R%[90m╗   %R%[36m███%R%[90m╗ %R%[36m██%R%[90m╗   %R%[36m██%R%[90m╗ %R%[36m██████%R%[90m╗   %R%[36m██████%R%[90m╗  %R%[36m██%R%[90m╗  %R%[36m██%R%[90m╗%R%[0m
echo  %R%[36m████%R%[90m╗ %R%[36m████%R%[90m║ ╚%R%[36m██%R%[90m╗ %R%[36m██%R%[90m╔╝ %R%[36m██%R%[90m╔══%R%[36m██%R%[90m╗ %R%[36m██%R%[90m╔═══%R%[36m██%R%[90m╗ ╚%R%[36m██%R%[90m╗%R%[36m██%R%[90m╔╝%R%[0m
echo  %R%[36m██%R%[90m╔%R%[36m████%R%[90m╔%R%[36m██%R%[90m║  ╚%R%[36m████%R%[90m╔╝  %R%[36m██████%R%[90m╔╝ %R%[36m██%R%[90m║   %R%[36m██%R%[90m║  ╚%R%[36m███%R%[90m╔╝ %R%[0m
echo  %R%[36m██%R%[90m║╚%R%[36m██%R%[90m╔╝%R%[36m██%R%[90m║   ╚%R%[36m██%R%[90m╔╝   %R%[36m██%R%[90m╔══%R%[36m██%R%[90m╗ %R%[36m██%R%[90m║   %R%[36m██%R%[90m║  %R%[36m██%R%[90m╔%R%[36m██%R%[90m╗ %R%[0m
echo  %R%[36m██%R%[90m║ ╚═╝ %R%[36m██%R%[90m║    %R%[36m██%R%[90m║    %R%[36m██████%R%[90m╔╝ ╚%R%[36m██████%R%[90m╔╝ %R%[36m██%R%[90m╔╝ %R%[36m██%R%[90m╗%R%[0m
echo  %R%[90m╚═╝     ╚═╝    ╚═╝    ╚═════╝   ╚═════╝  ╚═╝  ╚═╝%R%[0m
echo         %R%[90m Spydea Tarafından Hazırlanmıştır.%R%[0m
echo %R%[90m┌─────────────────────────────────────────────────┐%R%[0m
echo %R%[90m│%R%[31m  1)%R%[0m League of Legends                           %R%[90m│%R%[0m
echo %R%[90m│%R%[31m  2)%R%[0m League of Legends - EUW                     %R%[90m│%R%[0m
echo %R%[90m│%R%[31m  3)%R%[0m League of Legends - EUNE                    %R%[90m│%R%[0m
echo %R%[90m├─────────────────────────────────────────────────┤%R%[0m
echo %R%[90m│%R%[31m  X)%R%[0m Bir Önceki Ekrana Geri Dön                  %R%[90m│%R%[0m
echo %R%[90m└─────────────────────────────────────────────────┘%R%[0m
set /p appmenu= %R%[36m ► Yapacağınız İşlem: %R%[0m
	if %appmenu%==1 (set AppID=leagueoflegends&set Title=League of Legends&set AppMenu_X_Link=LOL&goto AppMenu)
	if %appmenu%==2 (set AppID=leagueoflegendseuw& set Title=League of Legends - EUW&set AppMenu_X_Link=LOL&goto AppMenu)
	if %appmenu%==3 (set AppID=leagueoflegendseune& set Title=League of Legends - EUNE&set AppMenu_X_Link=LOL&goto AppMenu)
	if %appmenu%==x goto AppList
	if %appmenu%==X goto AppList
