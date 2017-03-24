<?xml version="1.0"?>
<recipe>
   
<#if generateLayout>
    <instantiate from="root/res/customview/activity_main.xml.ftl"
         to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
</#if>

  <merge from="root/AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" /> 
             
<#if includeretrofit>
  <merge from="root/buildRetrofit.gradle"
             to="${escapeXmlAttribute(projectOut)}/build.gradle" />
</#if>

<#if includedatabase>
  <merge from="root/buildORMlite.gradle"
             to="${escapeXmlAttribute(projectOut)}/build.gradle" />
</#if>

<#if includerecycleclick>
  <merge from="root/buildRecycle.gradle"
             to="${escapeXmlAttribute(projectOut)}/build.gradle" />
</#if>

<#if includesnackbar>
  <merge from="root/buildSnack.gradle"
             to="${escapeXmlAttribute(projectOut)}/build.gradle" />
</#if>

<#if includeotherneededlibs>
  <merge from="root/buildOther.gradle"
             to="${escapeXmlAttribute(projectOut)}/build.gradle" />
</#if>

<#if includecustomview>
  <merge from="root/buildTypeFaced.gradle"
             to="${escapeXmlAttribute(projectOut)}/build.gradle" />
</#if>

<#if includesplash>
  <!-- create splash screen-->
  <instantiate from="root/src/app_package/activities/SplashActivity.java.ftl"
         to="${escapeXmlAttribute(srcOut)}/activities/SplashActivity.java" />

  <instantiate from="root/res/layout/activity_splash.xml.ftl"
         to="${escapeXmlAttribute(resOut)}/layout/activity_splash.xml" />

  <copy from="root/res/drawable"
                to="${escapeXmlAttribute(resOut)}/drawable" />
</#if> 

  <copy from="root/res/anim"
                to="${escapeXmlAttribute(resOut)}/anim" />

  <merge from="root/res/values/styles.xml.ftl"
         to="${escapeXmlAttribute(resOut)}/values/styles.xml" />

  <merge from="root/res/values/colors.xml.ftl"
         to="${escapeXmlAttribute(resOut)}/values/colors.xml" />

  <!-- create activity class and open it-->
    <instantiate from="root/src/app_package/activities/SimpleActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/activities/${activityClass}.java" />

    <open file="${escapeXmlAttribute(srcOut)}/activities/${activityClass}.java" />

  <!-- create ProjectApplication java-->
    <instantiate from="root/src/app_package/ProjectApplication.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/ProjectApplication.java" />

	<!-- create folder fragments and add java-->
    <instantiate from="root/src/app_package/fragments/SampleFragment.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/fragments/SampleFragment.java" />

    <!-- create adapter folder and java-->
    <instantiate from="root/src/app_package/adapters/SampleAdapter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/adapters/SampleAdapter.java" />

  <!-- create helper, constant  java-->
    <instantiate from="root/src/app_package/helpers/Constant.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/helpers/Constant.java" />

	<!-- create helper, customlibrary folder and java-->
    <instantiate from="root/src/app_package/helpers/customlibrary/SampleCustomLibrary.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/helpers/customlibrary/SampleCustomLibrary.java" />

	<!-- create helper, utilities folder and java-->
    <instantiate from="root/src/app_package/helpers/utilities/SampleUtility.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/helpers/utilities/SampleUtility.java" />                   

	<!-- create alerts folder and java-->
    <instantiate from="root/src/app_package/alerts/SampleAlert.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/alerts/SampleAlert.java" />     

	<!-- create repo folder and crud java-->
    <instantiate from="root/src/app_package/repo/Curd.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/repo/Crud.java" />       

	<!-- create models folder and java-->
    <instantiate from="root/src/app_package/models/SampleModel.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/models/SampleModel.java" />

	<!-- create database folder and databaseManager java-->
    <instantiate from="root/src/app_package/database/DatabaseManager.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/database/DatabaseManager.java" />

   	<!-- create database folder and sample databaseHelper java-->
    <instantiate from="root/src/app_package/database/DatabaseHelper.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/database/DatabaseHelper.java" />

    <!-- create database folder and sharedpref java-->
    <instantiate from="root/src/app_package/database/ApplicationSharedPreferences.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/database/ApplicationSharedPreferences.java" />

    <!-- create services/api/ folder and apiinterface java-->
    <instantiate from="root/src/app_package/services/api/APIInterface.java.ftl"
    			   to="${escapeXmlAttribute(srcOut)}/services/api/APIInterface.java" />

    <!-- create services/api/ folder and service generator java-->
    <instantiate from="root/src/app_package/services/api/ServiceGenerator.java.ftl"
             to="${escapeXmlAttribute(srcOut)}/services/api/ServiceGenerator.java" />

    <!-- create services/api/models folder and sampleResponceModel java-->
    <instantiate from="root/src/app_package/services/api/models/SampleResponceModel.java.ftl"
    			   to="${escapeXmlAttribute(srcOut)}/services/api/models/SampleResponceModel.java" />

    <!-- create services/firebase/ folder and sample java-->
    <instantiate from="root/src/app_package/services/firebase/Sample.java.ftl"
    			   to="${escapeXmlAttribute(srcOut)}/services/firebase/Sample.java" />

    <!-- create services/sync/ folder and sample java-->
    <instantiate from="root/src/app_package/services/sync/SampleSync.java.ftl"
    			   to="${escapeXmlAttribute(srcOut)}/services/sync/SampleSync.java" />

    <!-- create services/system/ folder and sample java-->
    <instantiate from="root/src/app_package/services/system/Sample.java.ftl"
    			   to="${escapeXmlAttribute(srcOut)}/services/system/Sample.java" />

    <!-- add fragment -->
    <instantiate from="root/res/layout/fragment_sample.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/layout/fragment_sample.xml" />
</recipe>
