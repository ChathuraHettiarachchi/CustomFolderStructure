<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    package="${packageName}">

    <#if includeretrofit>
        <uses-permission android:name="android.permission.INTERNET" />
    </#if>
    <#if includedatabase>
        <uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE" />
    </#if>

	<application
	 	android:allowBackup="true"
        android:icon="@mipmap/ic_launcher"
        android:label="@string/app_name"
        android:roundIcon="@mipmap/ic_launcher_round"
        android:supportsRtl="true"
        android:theme="@style/AppTheme">
         <#if includesplash>
            <activity 
                android:name=".${relativePackage}.SplashActivity"
                android:screenOrientation="portrait"
                android:theme="@style/AppTheme.Fullscreen.Splash">
                <intent-filter>
                    <action android:name="android.intent.action.MAIN" />
                    <category android:name="android.intent.category.LAUNCHER" />
                </intent-filter>
            </activity>
            <activity
                android:name=".${relativePackage}.${activityClass}"
                android:screenOrientation="portrait"/>
        <#else>
            <activity 
                android:name=".${relativePackage}.${activityClass}"
                android:label="@string/app_name"
                android:screenOrientation="portrait">
                <intent-filter>
                    <action android:name="android.intent.action.MAIN" />
                    <category android:name="android.intent.category.LAUNCHER" />
                </intent-filter>
            </activity>
        </#if>   
    </application>

</manifest>
