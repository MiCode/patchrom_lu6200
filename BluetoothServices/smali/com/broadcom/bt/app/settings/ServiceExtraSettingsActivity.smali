.class public Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "ServiceExtraSettingsActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field mPrefs:[Landroid/preference/SwitchPreference;

.field protected mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSvcMgr:Lcom/broadcom/bt/service/framework/IServiceManager;

.field mSvcpref:Landroid/preference/SwitchPreference;

.field mproviders:[Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 74
    iput-object v1, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;->mHandler:Landroid/os/Handler;

    .line 78
    iput-object v1, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;->mproviders:[Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;

    .line 79
    iput-object v1, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;->mPrefs:[Landroid/preference/SwitchPreference;

    .line 80
    iput-object v1, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;->mSvcpref:Landroid/preference/SwitchPreference;

    .line 82
    new-instance v0, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity$1;-><init>(Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 173
    const-string v0, "ServiceExtraSettings"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 175
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 200
    const-string v0, "ServiceExtraSettings"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 202
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 188
    const-string v1, "ServiceExtraSettings"

    const-string v2, "onPause"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 191
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :goto_0
    invoke-virtual {p0, p0}, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 196
    return-void

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ServiceExtraSettings"

    const-string v2, "Unable to unregister receiver"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "pref"
    .parameter "val"

    .prologue
    const/4 v2, 0x0

    .line 216
    const-string v3, "ServiceExtraSettings"

    const-string v4, "onPreferenceChange"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    if-eqz p2, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 218
    .local v0, enable:Z
    :goto_0
    iget-object v3, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;->mSvcpref:Landroid/preference/SwitchPreference;

    if-ne p1, v3, :cond_3

    .line 222
    if-eqz v0, :cond_2

    .line 224
    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;->mSvcMgr:Lcom/broadcom/bt/service/framework/IServiceManager;

    const-string v4, "bluetooth_map"

    invoke-interface {v3, v4}, Lcom/broadcom/bt/service/framework/IServiceManager;->enableService(Ljava/lang/String;)V

    .line 264
    :cond_0
    :goto_1
    return v2

    .end local v0           #enable:Z
    .restart local p2
    :cond_1
    move v0, v2

    .line 217
    goto :goto_0

    .line 228
    .end local p2
    .restart local v0       #enable:Z
    :cond_2
    iget-object v3, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;->mSvcMgr:Lcom/broadcom/bt/service/framework/IServiceManager;

    const-string v4, "bluetooth_map"

    invoke-interface {v3, v4}, Lcom/broadcom/bt/service/framework/IServiceManager;->disableService(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 231
    :catch_0
    move-exception v3

    goto :goto_1

    .line 237
    :cond_3
    iget-object v3, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;->mPrefs:[Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_0

    .line 239
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget-object v3, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;->mPrefs:[Landroid/preference/SwitchPreference;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 241
    iget-object v3, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;->mPrefs:[Landroid/preference/SwitchPreference;

    aget-object v3, v3, v1

    if-ne v3, p1, :cond_5

    .line 243
    if-eqz v0, :cond_4

    .line 245
    iget-object v3, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    iget-object v4, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;->mproviders:[Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;->providerID:Ljava/lang/String;

    iget-object v5, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;->mproviders:[Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;->datasourceID:Ljava/lang/String;

    iget-object v6, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;->mproviders:[Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;

    aget-object v6, v6, v1

    iget-object v6, v6, Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;->datasourceName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Lcom/broadcom/bt/service/map/BluetoothMAP;->enableProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v3, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;->mPrefs:[Landroid/preference/SwitchPreference;

    aget-object v3, v3, v1

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    .line 253
    :cond_4
    iget-object v3, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    iget-object v4, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;->mproviders:[Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;->providerID:Ljava/lang/String;

    iget-object v5, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;->mproviders:[Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;->datasourceID:Ljava/lang/String;

    iget-object v6, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;->mproviders:[Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;

    aget-object v6, v6, v1

    iget-object v6, v6, Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;->datasourceName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Lcom/broadcom/bt/service/map/BluetoothMAP;->disableProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v3, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;->mPrefs:[Landroid/preference/SwitchPreference;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    .line 239
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .parameter "pref"

    .prologue
    .line 211
    const-string v0, "ServiceExtraSettings"

    const-string v1, "onPreferenceClick"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const/4 v0, 0x1

    return v0
.end method

.method public onProxyAvailable(Ljava/lang/Object;)V
    .locals 8
    .parameter "proxyObject"

    .prologue
    const/4 v7, 0x0

    .line 124
    const-string v5, "ServiceExtraSettings"

    const-string v6, "onProxyAvailable"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    check-cast p1, Lcom/broadcom/bt/service/map/BluetoothMAP;

    .end local p1
    iput-object p1, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    .line 127
    new-instance v5, Landroid/preference/SwitchPreference;

    invoke-direct {v5, p0}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;->mSvcpref:Landroid/preference/SwitchPreference;

    .line 128
    iget-object v5, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;->mSvcpref:Landroid/preference/SwitchPreference;

    const v6, 0x7f050015

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->setTitle(I)V

    .line 129
    iget-object v5, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;->mSvcpref:Landroid/preference/SwitchPreference;

    const v6, 0x7f050014

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 130
    iget-object v5, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;->mSvcpref:Landroid/preference/SwitchPreference;

    const-string v6, "bluetooth_map"

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->setKey(Ljava/lang/String;)V

    .line 131
    iget-object v5, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;->mSvcpref:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 132
    iget-object v5, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;->mSvcpref:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 133
    iget-object v5, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;->mSvcpref:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v7}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    .line 136
    :try_start_0
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;->mSvcpref:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 137
    new-instance v2, Landroid/preference/PreferenceCategory;

    invoke-direct {v2, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 138
    .local v2, pc:Landroid/preference/PreferenceCategory;
    const-string v5, "Registered Providers"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 139
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 143
    iget-object v5, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    invoke-virtual {v5}, Lcom/broadcom/bt/service/map/BluetoothMAP;->enumRegisteredProviders()[Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;

    move-result-object v5

    iput-object v5, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;->mproviders:[Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;

    .line 144
    iget-object v5, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;->mproviders:[Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;

    if-eqz v5, :cond_0

    .line 146
    iget-object v5, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;->mproviders:[Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;

    array-length v5, v5

    new-array v5, v5, [Landroid/preference/SwitchPreference;

    iput-object v5, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;->mPrefs:[Landroid/preference/SwitchPreference;

    .line 147
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v5, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;->mproviders:[Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;

    array-length v5, v5

    if-ge v1, v5, :cond_0

    .line 149
    new-instance v3, Landroid/preference/SwitchPreference;

    invoke-direct {v3, p0}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 150
    .local v3, pref:Landroid/preference/SwitchPreference;
    iget-object v5, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;->mproviders:[Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;->datasourceName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 151
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;->mproviders:[Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;

    aget-object v6, v6, v1

    iget-object v6, v6, Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;->providerID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;->mproviders:[Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;

    aget-object v6, v6, v1

    iget-object v6, v6, Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;->datasourceID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/SwitchPreference;->setKey(Ljava/lang/String;)V

    .line 152
    iget-object v5, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;->mproviders:[Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;

    aget-object v5, v5, v1

    iget-boolean v5, v5, Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;->fEnabled:Z

    invoke-virtual {v3, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 153
    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 154
    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 155
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    .line 156
    iget-object v5, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;->mPrefs:[Landroid/preference/SwitchPreference;

    aput-object v3, v5, v1

    .line 157
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 160
    .end local v1           #i:I
    .end local v2           #pc:Landroid/preference/PreferenceCategory;
    .end local v3           #pref:Landroid/preference/SwitchPreference;
    :catch_0
    move-exception v0

    .line 161
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v5, "ServiceExtraSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NullpointerException "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .end local v0           #ex:Ljava/lang/NullPointerException;
    :cond_0
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 166
    .local v4, svcMgrIntent:Landroid/content/Intent;
    const-string v5, "com.broadcom.bt.app.system"

    const-string v6, "com.broadcom.bt.app.system.ServiceManager"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    const/4 v5, 0x1

    invoke-virtual {p0, v4, p0, v5}, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 170
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 179
    const-string v1, "ServiceExtraSettings"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 181
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 182
    .local v0, prefScreen:Landroid/preference/PreferenceScreen;
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 183
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/broadcom/bt/service/map/BluetoothMAP;->getProxy(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z

    .line 184
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 269
    const-string v1, "ServiceExtraSettings"

    const-string v2, "onServiceConnected"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-static {p2}, Lcom/broadcom/bt/service/framework/IServiceManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/framework/IServiceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;->mSvcMgr:Lcom/broadcom/bt/service/framework/IServiceManager;

    .line 274
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;->mSvcMgr:Lcom/broadcom/bt/service/framework/IServiceManager;

    const-string v2, "bluetooth_map"

    invoke-interface {v1, v2}, Lcom/broadcom/bt/service/framework/IServiceManager;->getServiceState(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 277
    iget-object v1, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;->mSvcpref:Landroid/preference/SwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 292
    :goto_0
    iget-object v1, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity$2;

    invoke-direct {v2, p0}, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity$2;-><init>(Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 302
    return-void

    .line 281
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;->mSvcpref:Landroid/preference/SwitchPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 284
    :catch_0
    move-exception v1

    goto :goto_0

    .line 288
    :catch_1
    move-exception v0

    .line 290
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v1, "ServiceExtraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NullpointerException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 207
    return-void
.end method
