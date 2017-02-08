<?xml version="1.0"?>
<recipe>
    <#include "../common/recipe_manifest.xml.ftl" />

<#if generateLayout>
    <#include "../common/recipe_simple.xml.ftl" />
    <open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
</#if>

	<!-- create activity class and open it-->
    <instantiate from="root/src/app_package/activities/SimpleActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/activities/${activityClass}.java" />

	<open file="${escapeXmlAttribute(srcOut)}/activities/${activityClass}.java" />

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
</recipe>
