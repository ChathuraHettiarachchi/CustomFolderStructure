package ${packageName}.database;

import ${packageName}.models.SampleModel;

/**
 * Created by Choota.
 */

public class DatabaseHelper {
	
	// name of the database file for your application -- change to something appropriate for your app
    private static final String DATABASE_NAME = "Sample.db";

    // any time you make changes to your database objects, you may have to increase the database version
    private static final int DATABASE_VERSION = 1;

    // the DAO object we use to access the SimpleData table
    // private Dao<SampleModel, Integer> sampleDao = null;



    // extends OrmLiteSqliteOpenHelper
    // override following methods and create needed dao methods
    
    // add ormlite to your build.gradle
    /*
            compile 'com.j256.ormlite:ormlite-android:4.48'
            compile 'com.j256.ormlite:ormlite-core:4.48'
    */
    
    // following imports will be needed
    /*
        import android.content.Context;
        import android.database.SQLException;
        import android.database.sqlite.SQLiteDatabase;
        import android.util.Log;

        import com.j256.ormlite.android.apptools.OrmLiteSqliteOpenHelper;
        import com.j256.ormlite.dao.Dao;
        import com.j256.ormlite.support.ConnectionSource;
        import com.j256.ormlite.table.TableUtils;

        import java.util.ArrayList;
        import java.util.List;
    */


    
    public DatabaseHelper(Context context) {
        //super(context, DATABASE_NAME, null, DATABASE_VERSION);
    }

    /*
     @Override
    public void onCreate(SQLiteDatabase database,ConnectionSource connectionSource) {
        // TableUtils.createTable(connectionSource, SampleModel.class);
    }

    @Override
    public void onUpgrade(SQLiteDatabase db,ConnectionSource connectionSource, int oldVersion, int newVersion) {

    }

    public Dao<SampleModel, Integer> getSampleDao() {
        if (null == sampleDao) {
            try {
                sampleDao = getDao(SampleModel.class);
            }catch (java.sql.SQLException e) {
                e.printStackTrace();
            }
        }
        return sampleDao;
    }
    */

}
