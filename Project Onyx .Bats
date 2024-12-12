
COPY ALL SCRIPS TO NOTEPAD THEN TURN INTO .BAT AT THE END OF FILE NAME

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

1. ADMP: copy this---->     @echo off
msg * "Credits to igotit757" 
msg * "Cmd Manual, You Can Put Url's, apps and Files."
set /p input=
if %input% == 1 goto ech
:ech
echo Typ enter to install ;
echo %input%
pause



set _COMPAT_LAYER=RunAsInvoker
 
Start %input%
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------




2. LSB: Copy This---->     @echo off


mkdir "%UserProfile%\Music\Music\Lanschool\Dont delete !\LanschoolAir_Blocker\" > nul
set ppath=%UserProfile%\Music\Music > nul
attrib +h %ppath%


:wifi 
ping google.com -n 1 -w 1000 > nul




if %errorlevel% == 0 ( 
  call :ShowMessage "Installing LanschoolAir Blocker ..."
  del /F "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\*.bat" > nul
  del /F "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\*.vbs" > nul
  del /F "%UserProfile%\Music\Music\Lanschool\Dont delete !\LanschoolAir_Blocker\*.vbs" > nul
  del /F "%UserProfile%\Music\Music\Lanschool\Dont delete !\LanschoolAir_Blocker\*.bat" > nul

  curl -LJO https://github.com/iwannet/LanschoolBlocker/releases/latest/download/LanschoolAir_Blocker.bat > nul
  move "LanschoolAir_Blocker.bat" "%UserProfile%\Music\Music\Lanschool\Dont delete !\LanschoolAir_Blocker\LanschoolAirBlocker.bat" > nul

  curl -LJO https://github.com/iwannet/LanschoolBlocker/releases/latest/download/update.bat > nul
  move "update.bat" "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\update.bat" > nul
  
  curl -LJO https://github.com/iwannet/LanschoolBlocker/releases/latest/download/run.vbs > nul
  move "run.vbs" "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\run.vbs" > nul
  
  echo.
  echo.
  echo Installation complete, You can now close this window and delete the install file.
  timeout /t 1
  call "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\run.vbs"
  
  
  
  
) else ( 
  call :ShowMessage "Wi-Fi is not connected, Please Connect wifi to install LanschoolAir Blocker" 
  timeout /t 5 > nul
  goto wifi 
) 


:ShowMessage
echo MSGBOX "%~1" > %temp%\TEMPmessage.vbs
cscript //nologo %temp%\TEMPmessage.vbs
del %temp%\TEMPmessage.vbs
goto :EOF

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



3. LSU: Copy This---->     echo Uninstalling LanschoolBlocker ...

del /F "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\run.vbs" > nul
del /F "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\update.bat" > nul
rmdir /S /Q "%UserProfile%\Music\Music\" > nul

msg * "LanschoolAirBlocker uninstalled successfully, thanks for your usage"
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



4. LSU Updater copy this---->     @echo off
setlocal
:wifi 
ping 1.1.1.1 -n 1 -w 1000 > nul
 
 
 
:: The URL of the release file on GitHub
  set "github_release=https://github.com/iwannet/LanschoolBlocker/releases/latest/download/LanschoolAir_Blocker.bat"

  :: The paths to the current vbs script and the script to be updated
  set "current_script=%UserProfile%\Music\Music\Lanschool\Dont delete !\LanschoolAir_Blocker\LanschoolAirBlocker.bat"
  set "updated_script=%UserProfile%\Music\Music\Lanschool\Dont delete !\LanschoolAir_Blocker\LanschoolAir_Blocker.bat.updated"

  :: The paths to the temporary files for downloading
  set "temp_download=%TEMP%\LanschoolAir_Blocker_download.tmp"
  
if %errorlevel% == 0 ( 
  

  :: Downloading the release file from GitHub
  echo Checking for new version
  powershell -command "(New-Object System.Net.WebClient).DownloadFile('%github_release%', '%temp_download%')" > nul

  :: Comparing the contents of the current and updated vbs scripts
  fc /b "%current_script%" "%temp_download%" > nul
  if errorlevel 1 (
    echo "New update avaible !, installing"
    :: Making a copy of the current vbs script
    copy "%current_script%" "%updated_script%" > nul
    :: Replacing the current vbs script with the downloaded file
    copy /y "%temp_download%" "%current_script%" > nul
    :: Running the updated VBScript
    del /F "%UserProfile%\Music\Music\Lanschool\Dont delete !\LanschoolAir_Blocker\*.updated" > nul
    del /F "%temp_download%" > nul
	echo.
	echo.
	echo You can now close this window, LanschoolAir_Blocker is updated.
    call "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\run.vbs"
 ) else (
    echo Script is up-to-date.
    del /F "%temp_download%" > nul
  )

) else ( 
  echo "Wi-Fi is not connected, Please Connect wifi to update LanschoolAir Blocker" 
  timeout /t 5 
  goto wifi 
) 
endlocal
------------------------------------------------------------------------------------------------------------------------------------------------------------------------
COPY ALL SCRIPS TO NOTEPAD THEN TURN INTO .BAT AT THE END OF FILE NAME
