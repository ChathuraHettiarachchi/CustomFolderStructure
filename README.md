# CustomFolderStructure
This will provide custom folder structure, custom activity module to your Android Studio.


<b><h3><font color="red">NOTE : Please use this template only to create new project. Since this will create entire project structure, this is not suitable for making new activity when using Android Studio.</font></h3></b>


<img width="1024" alt="libintro" src="https://cloud.githubusercontent.com/assets/13764097/24295049/14eeb336-10bf-11e7-94bc-2400c7cb533a.png">

<img height="680" align="right" src="https://cloud.githubusercontent.com/assets/13764097/24294913/7e1123e0-10be-11e7-969c-d3d43b611704.png">

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


<img width="1024" alt="aaa" src="https://cloud.githubusercontent.com/assets/13764097/24294753/d18856a2-10bd-11e7-8e42-02eaae5b4fc2.png">
</br>
<img width="1024" alt="eee" src="https://cloud.githubusercontent.com/assets/13764097/24294793/f899cab4-10bd-11e7-8de9-58b1474c4c9f.png">


Changelog
---------
* Added folder structure
* Fix support for Mac - initmodule.sh
* Fix support for Windows - initmodule.bat
* Added Constant.java
* New feature to select libs
* Service generator auto adding
* DatabaseManger and DatabaseHelper creation
* Create application class and init database
* Add splash screen creating support
* Include custom font textview, edittext and etc
</br>

## Author

Chathura Hettiarachchi, chathura93@yahoo.com

Checkout my other contributions, https://github.com/ChathuraHettiarachchi?tab=repositories
