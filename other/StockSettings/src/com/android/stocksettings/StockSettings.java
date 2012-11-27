package com.android.stocksettings;

import android.app.ActionBar;
import android.content.Intent;
import android.os.Bundle;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.PreferenceScreen;
import android.view.MenuItem;

public class StockSettings extends PreferenceActivity{

    private Preference mAutofitScreen;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        // TODO Auto-generated method stub
        ActionBar actionBar = getActionBar();
        if(actionBar != null) {
            actionBar.setHomeButtonEnabled(true);
        }
        super.onCreate(savedInstanceState);
        addPreferencesFromResource(R.xml.stock_settings);
        mAutofitScreen = findPreference("autofit_screen");
    }
    
    @Override
    public boolean onPreferenceTreeClick(PreferenceScreen preferenceScreen, Preference preference) {
        // TODO Auto-generated method stub
        if(preference==mAutofitScreen) {
            Intent intent = new Intent("android.intent.action.SCREENOPTIMIZATION");
            intent.setClassName("com.lge.settings.compatmode", "com.lge.settings.compatmode.CompatibilityMode");
            startActivity(intent);
        }
        return super.onPreferenceTreeClick(preferenceScreen, preference);
    }
    
    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        switch(item.getItemId()){
            case android.R.id.home:
                finish();
                return true;
            default:
                return super.onOptionsItemSelected(item);
        }
    }
    
}
