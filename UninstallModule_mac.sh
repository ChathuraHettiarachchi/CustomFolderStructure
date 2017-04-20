#!/bin/bash
# Ask the user for android studio version
echo ------------------------------------------------------------------
echo Hello there...!
sleep 0.5
echo Uninstalling module...
echo ""
echo Please wait for a second
sleep 0.5

echo ""
echo This may need your \""sudo"\" access permission,
echo Please enter your access password,

sudo rm -rf /Applications/Android\ Studio.app/Contents/plugins/android/lib/templates/activities/FidenzModuleProject

sleep 0.5
echo Uninstallation complete.
echo ""
echo Thank you for using Fidenz template, 
echo Find more helpful stuff,
echo "https://github.com/ChathuraHettiarachchi"
echo ""
echo ------------------------------------------------------------------
