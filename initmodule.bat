@echo off
Fidenz folder module - Android Studio
echo.
echo ------------------------------------------------------------------
echo Hello there...!
echo.
echo This is a custom module that can use in Android Studio.
echo You need to enter your Android Studio Version to continue,
echo. 
echo Please enter Android Studio Version (press enter to set version),
set /p Version number=Enter your Android Version : 
echo.
echo Wow..nice. I hope you are using Mac machine, now let's configure new template.
echo Please wait for a second...
echo.
echo Cloning new template.....
md "%USERPROFILE%\Desktop\ChootaDev"
cd "%USERPROFILE%\Desktop\ChootaDev"
git clone https://github.com/ChathuraHettiarachchi/CustomFolderStructure.git
echo.
echo Almost done...
echo.
if exist "C:\Program Files\Android\Android Studio\plugins\android\lib\templates\activities\FidenzModuleProject" rd /s /q "C:\Program Files\Android\Android Studio\plugins\android\lib\templates\activities\FidenzModuleProject"
xcopy "%USERPROFILE%\Desktop\ChootaDev\CustomFolderStructure\FidenzModuleProject" "C:\Program Files\Android\Android Studio\plugins\android\lib\templates\activities\FidenzModuleProject" /e/r/c/i/d/y/s/H/m
echo Copying new template success.....
echo.
rd /s /q "%USERPROFILE%\Desktop\ChootaDev"
echo Hip hip hurey.... Please restart Android Studio.
echo.
echo Thank you for using Fidenz template, 
echo Find more helpful stuff,
echo "https://github.com/ChathuraHettiarachchi"
echo.
echo ------------------------------------------------------------------
pause