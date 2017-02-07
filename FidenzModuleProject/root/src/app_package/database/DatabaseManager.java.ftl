package ${packageName}.database;


import android.content.Context;

/**
 * Created by Choota.
 */

public class DatabaseManager {
	
	static private DatabaseManager instance;
	private DatabaseHelper helper;

    static public void init(Context ctx) {
        if (null == instance) {
            instance = new DatabaseManager(ctx);
        }
    }

    static public DatabaseManager getInstance() {
        return instance;
    }


    private DatabaseManager(Context ctx) {
        helper = new DatabaseHelper(ctx);
    }

    public DatabaseHelper getHelper() {
        return helper;
    }

}
