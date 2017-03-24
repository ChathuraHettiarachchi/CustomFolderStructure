<?xml version="1.0" encoding="utf-8"?>
<RelativeLayout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    xmlns:tools="http://schemas.android.com/tools"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    tools:context="activities.${activityClass}">

    <#if includecustomview>
    <com.chootdev.typefaced.TypeFacedTextView
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="Hi there\n\nWelcome!\nInternal Folder Structure\n\n\nPlease remove\nunwanted packages"
        app:button_font="Roboto-ThinItalic.ttf"
        android:gravity="center"
        android:layout_centerInParent="true"/>

<!-- You can use custom textview, edittext, button and many more.
    Visit : https://github.com/ChathuraHettiarachchi/TypeFaced/-->
    <#else>
    <TextView
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="Hi there\n\nWelcome!\nInternal Folder Structure\n\n\nPlease remove\nunwanted packages"
        android:gravity="center"
        android:layout_centerInParent="true"/>
    </#if>

</RelativeLayout>
