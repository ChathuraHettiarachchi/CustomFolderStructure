#!/bin/bash
# Ask the user for android studio version
echo Hello there...!
sleep 1
echo This is a custom module that can use in Android Studio.
echo You need to enter your Android Studio Version to continue,
echo Please enter Android Studio Version \(press enter to set version\) : 

read varVersion

echo ""
echo Wow..nice. I hope you are using Mac machine, now let\'s configure new template.
echo Please wait for a second
sleep 1

echo ""
echo Cloning new template.....
sleep 1
mkdir /Users/$USER/Desktop/ChootaDev
cd /Users/$USER/Desktop/ChootaDev/
git clone https://github.com/ChathuraHettiarachchi/CustomFolderStructure.git

echo ""
echo Almost done.....
sleep 1

cd /Users/$USER/Desktop/ChootaDev/CustomFolderStructure
rm -rf /Applications/Android\ Studio\ $varVersion.app/Contents/plugins/android/lib/templates/activities/FidenzModuleProject
sleep 1
cp -r FidenzModuleProject /Applications/Android\ Studio\ $varVersion.app/Contents/plugins/android/lib/templates/activities

echo Copying new template success.....
rm -rf /Users/$USER/Desktop/ChootaDev

sleep 0.5
echo Hip hip hurey.... Please restart Android Studio.
echo ""
echo Thank you, 
echo Chathura Hettiarachchi.
echo ""