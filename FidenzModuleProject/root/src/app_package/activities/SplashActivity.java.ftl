package ${packageName}.activities;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;

import ${packageName}.R;

public class SplashActivity extends ${superClass} {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.${layoutName});

        Intent intent = new Intent(this, ${activityClass}.class);
        startActivity(intent);
        finish();
    }
}
