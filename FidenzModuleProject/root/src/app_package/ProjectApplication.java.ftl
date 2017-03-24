package ${packageName};

import android.app.Application;

import ${packageName}.database.DatabaseManager;

/**
 * Created by Choota.
 */

public class ProjectApplication extends Application{
	
	// this is project application class
	@Override
    public void onCreate() {
        super.onCreate();

        <#if includedatabase>
        DatabaseManager.init(this);
        </#if>
    }
}
