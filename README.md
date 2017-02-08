# CustomFolderStructure
This will provide custom folder structure, custom activity module to your Android Studio.

<img height="680" align="right" src="https://cloud.githubusercontent.com/assets/13764097/22727685/3638edea-ee00-11e6-8b01-6635b251ba98.png">
This mobule will initialize a project with custom made folder set which will help you to manage your Android project in a good manner. DatabaseManager.java already implemented. Sample alert, callbacks have included. Some files contain neccessary codes, imports and gradle dependecies in comments. Feel free to update this template :)

Mac OS
------
<b>STEP 01.</b>

You can <a href="https://raw.githubusercontent.com/ChathuraHettiarachchi/CustomFolderStructure/master/initmodule.sh" download="initmodule">download</a> initmodule.sh, save it as All files and with the extension .sh
```
initmodule.sh
```


<b>STEP 02.</b>

After downloading initmudule.sh you need to change file permission to full
```
chmod 777 initmodule.sh
```

<b>STEP 03.</b>

then all you need to do is run the bash script.
<b>NOTE: Please do not use sudo access</b>
```
./initmodule.sh
```
</br>

<img width="1024" alt="bbb" src="https://cloud.githubusercontent.com/assets/13764097/22724101/f9a55d5c-ede9-11e6-852e-c5ff2e325331.png">


Windows
-------

<b>STEP 01.</b>

You can <a href="https://raw.githubusercontent.com/ChathuraHettiarachchi/CustomFolderStructure/master/initmodule.bat" download="initmodule">download</a> initmodule.bat, save it as All files and with the extension .bat

<b>STEP 02.</b>

Just only need to run initmodule.bat with admin privilages. 
<b>To do that, right click on initmodule.bat run as Administrator.</b>

</br>

if any error occured or you don't have git installed, you can try the mannual way too

Just clone this repo and copy "FidenzModelProject" to following location
```
C:\Program Files\Android\Android Studio\plugins\android\lib\templates\activities\
```

Direct copy paths (Mac OS, Windows)
-----------------------------------
(Mac OS) If any crash happen you can mannualy clone this repo and copy "FidenzModelProject" to
```
Applications/Android Studio.app/Contents/plugins/android/lib/templates/activities/
```
(Windows) Just clone this repo and copy "FidenzModelProject" to following location
```
C:\Program Files\Android\Android Studio\plugins\android\lib\templates\activities\
```

Just give Android Studio a restart, select new project, choose Fidenz module project. 

That's all... 
enjoy :)


<img width="1024" alt="aaa" src="https://cloud.githubusercontent.com/assets/13764097/22692260/1da6a5f2-ed64-11e6-8413-b98a2cd548e1.png">

Changelog
---------
* Added folder structure
* Fix support for Mac - initmodule.sh
* Fix support for Windows - initmodule.bat
* Added Constant.java
</br>
## Author

Chathura Hettiarachchi, chathura93@yahoo.com

Checkout my other contributions, https://github.com/ChathuraHettiarachchi?tab=repositories
