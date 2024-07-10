@echo off
setlocal

set /p url="Veuillez taper une URL : "

set /p folder_destination="Veuillez taper le dossier de destination : "

if not exist "%folder_destination%" (
    mkdir "%folder_destination%"
)

wget -q -P "%folder_destination%" "%url%"

for %%f in ("%url%") do set filename=%%~nxf

set file_path=%folder_destination%\%filename%
echo Fichier téléchargé dans : %file_path%

endlocal
pause