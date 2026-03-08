@echo off

rem asks the user to enter the source folder they want to copy from
set /p source="Please enter the source folder you would like to copy from: "

rem ask the user to enter the destination folder they want to copy to
set /p destination="Please enter the destination folder you would like to copy to: "

echo Copying files from %source% to %destination%...

rem Check if the source folder exists
if not exist "%source%" (
    echo Source folder does not exist.
    pause
    exit /b
)

rem check if the destination folder exists
if exist "%destination%" (
    rem if the destination folder exists,ask the user to confirm if they want to overwrite the files
    set /p overwrite="Destination folder already exists. Overwrite? (y/n): "
    if /i "%overwrite%"=="n" (
        echo Copy operation cancelled by user.
        pause
        exit /b
    )
)

rem use xcopy command to copy files from the source folder to destination folder
xcopy /E /I /Y "%source%" "%destination%"

rem check if the copy operation was successful
if %ERRORLEVEL% EQU 0 (
    echo Copy operation completed successfully.
) else (
    echo An error occurred during the copy operation.
)

pause
exit /b
