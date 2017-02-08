<manifest xmlns:android="http://schemas.android.com/apk/res/android">

    <#if includeretrofit>
        <uses-permission android:name="android.permission.INTERNET" />
    </#if>
    <#if includedatabase>
        <uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE" />
    </#if>


</manifest>
