<resources>
    
    <!-- Base application theme. -->
    <style name="AppTheme" parent="Theme.AppCompat.Light.DarkActionBar">
        <!-- Customize your theme here. -->
        <item name="colorPrimary">@color/colorPrimary</item>
        <item name="colorPrimaryDark">@color/colorPrimaryDark</item>
        <item name="colorAccent">@color/colorAccent</item>
    </style>

    <#if includesplash>
    <!--full screen theme-->
    <style name="AppTheme.Fullscreen">
        <item name="android:windowFullscreen">false</item>
        <item name="android:windowContentOverlay">@null</item>
    </style>

    <!--app theme for splash_back screen-->
    <style name="AppTheme.Fullscreen.Splash">
        <item name="android:windowBackground">@drawable/splash</item>
    </style>
    </#if>

</resources>
