#!/bin/bash
# Ask the user for android studio version
echo Hello there...!
sleep 0.5
echo This is a custom module that can use in Android Studio.
echo You need to enter your Android Studio Version to continue,
echo ""
echo Please enter Android Studio Version \(press enter to set version\) : 

read varVersion

echo ""

echo Wow..nice. I hope you are using Mac machine, now let\'s configure new template.
echo Please wait for a second
sleep 0.5

echo ""
echo Cloning new template.....
sleep 0.5
mkdir /Users/$USER/Desktop/ChootaDev
cd /Users/$USER/Desktop/ChootaDev/
git clone https://github.com/ChathuraHettiarachchi/CustomFolderStructure.git

echo ""
echo Almost done.....
sleep 0.5

echo ""
echo This may need your \""sudo"\" access permission,
echo Please enter your access password,

cd /Users/$USER/Desktop/ChootaDev/CustomFolderStructure
sudo rm -rf /Applications/Android\ Studio.app/Contents/plugins/android/lib/templates/activities/FidenzModuleProject
sleep 0.5
sudo cp -r FidenzModuleProject /Applications/Android\ Studio.app/Contents/plugins/android/lib/templates/activities

echo Copying new template success.....
rm -rf /Users/$USER/Desktop/ChootaDev

sleep 0.5
echo Hip hip hurey.... Please restart Android Studio.
echo ""
echo Thank you for using Fidenz template, 
echo Find more helpful stuff,
echo "https://github.com/ChathuraHettiarachchi"
echo ""