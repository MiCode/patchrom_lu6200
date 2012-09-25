.class public Lcom/broadcom/bt/app/settings/ServiceCfgActivity;
.super Landroid/preference/PreferenceActivity;
.source "ServiceCfgActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final mSvcDisplayTextId:[I

.field private static final mSvcDisplayTitleId:[I

.field private static final mSvcExtraSettingsId:[I

.field private static final mSvcNames:[Ljava/lang/String;


# instance fields
.field private mExtraSettingsPrefMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mPrefMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSvcMgr:Lcom/broadcom/bt/service/framework/IServiceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x7

    .line 72
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "bluetooth_dun"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "bluetooth_ftp"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "bluetooth_map"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "bluetooth_opp_service"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "bluetooth_pbap"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "bluetooth_sap"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "bluetooth_test"

    aput-object v2, v0, v1

    sput-object v0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mSvcNames:[Ljava/lang/String;

    .line 85
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mSvcExtraSettingsId:[I

    .line 99
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mSvcDisplayTextId:[I

    .line 112
    new-array v0, v3, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mSvcDisplayTitleId:[I

    return-void

    .line 85
    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x25t 0x0t 0x5t 0x7ft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 99
    :array_1
    .array-data 0x4
        0xat 0x0t 0x5t 0x7ft
        0x4t 0x0t 0x5t 0x7ft
        0x14t 0x0t 0x5t 0x7ft
        0x16t 0x0t 0x5t 0x7ft
        0x6t 0x0t 0x5t 0x7ft
        0x8t 0x0t 0x5t 0x7ft
        0x1at 0x0t 0x5t 0x7ft
    .end array-data

    .line 112
    :array_2
    .array-data 0x4
        0xbt 0x0t 0x5t 0x7ft
        0x5t 0x0t 0x5t 0x7ft
        0x15t 0x0t 0x5t 0x7ft
        0x17t 0x0t 0x5t 0x7ft
        0x7t 0x0t 0x5t 0x7ft
        0x9t 0x0t 0x5t 0x7ft
        0x1bt 0x0t 0x5t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mPrefMap:Ljava/util/HashMap;

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mExtraSettingsPrefMap:Ljava/util/HashMap;

    .line 130
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mHandler:Landroid/os/Handler;

    .line 131
    new-instance v0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity$1;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/app/settings/ServiceCfgActivity$1;-><init>(Lcom/broadcom/bt/app/settings/ServiceCfgActivity;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/broadcom/bt/app/settings/ServiceCfgActivity;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mPrefMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/broadcom/bt/app/settings/ServiceCfgActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->initPrefs()V

    return-void
.end method

.method static synthetic access$200(Lcom/broadcom/bt/app/settings/ServiceCfgActivity;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method private initPrefUI(Landroid/preference/SwitchPreference;)V
    .locals 1
    .parameter "pref"

    .prologue
    .line 347
    invoke-virtual {p1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 348
    invoke-virtual {p1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 349
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    .line 351
    return-void
.end method

.method private initPrefs()V
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 158
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 160
    :try_start_0
    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    .line 161
    sget-object v3, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mSvcNames:[Ljava/lang/String;

    array-length v3, v3

    if-ne v1, v3, :cond_2

    move v1, v0

    .line 163
    :goto_0
    sget-object v0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mSvcNames:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_1

    .line 164
    sget-object v0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mSvcNames:[Ljava/lang/String;

    aget-object v3, v0, v1

    .line 166
    invoke-direct {p0, v3}, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->isServiceSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    .line 169
    invoke-direct {p0, v0, v3}, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->updateServicePref(Landroid/preference/SwitchPreference;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 209
    :catch_0
    move-exception v0

    .line 210
    const-string v1, "ServiceCfgActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NullpointerException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_1
    return-void

    .line 173
    :cond_2
    if-lez v1, :cond_3

    .line 174
    :try_start_1
    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 178
    :cond_3
    :goto_2
    sget-object v1, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mSvcNames:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 179
    sget-object v1, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mSvcNames:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 181
    invoke-direct {p0, v1}, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->isServiceSupported(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 178
    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 182
    :cond_5
    new-instance v3, Landroid/preference/SwitchPreference;

    invoke-direct {v3, p0}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 183
    sget-object v4, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mSvcDisplayTitleId:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setTitle(I)V

    .line 184
    sget-object v4, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mSvcDisplayTextId:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 185
    invoke-virtual {v3, v1}, Landroid/preference/SwitchPreference;->setKey(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 187
    iget-object v4, p0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mPrefMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    invoke-direct {p0, v3}, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->initPrefUI(Landroid/preference/SwitchPreference;)V

    .line 189
    invoke-direct {p0, v3, v1}, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->updateServicePref(Landroid/preference/SwitchPreference;Ljava/lang/String;)V

    .line 190
    sget-object v4, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mSvcExtraSettingsId:[I

    aget v4, v4, v0

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    .line 195
    new-instance v4, Landroid/preference/Preference;

    invoke-direct {v4, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 196
    sget-object v5, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mSvcExtraSettingsId:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(I)V

    .line 197
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    const/4 v7, 0x0

    const-class v8, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;

    invoke-direct {v5, v6, v7, p0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 198
    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 199
    iget-object v5, p0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mExtraSettingsPrefMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_4

    .line 201
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method private isServiceSupported(Ljava/lang/String;)Z
    .locals 5
    .parameter "svcName"

    .prologue
    const/4 v1, 0x0

    .line 216
    const/4 v2, -0x1

    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mSvcMgr:Lcom/broadcom/bt/service/framework/IServiceManager;

    invoke-interface {v3, p1}, Lcom/broadcom/bt/service/framework/IServiceManager;->getServiceState(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eq v2, v3, :cond_0

    const/4 v1, 0x1

    .line 221
    :cond_0
    :goto_0
    return v1

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "ServiceCfgActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to get service state for service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private declared-synchronized setSvcState(Landroid/preference/Preference;Ljava/lang/String;Z)Z
    .locals 7
    .parameter "pref"
    .parameter "serviceName"
    .parameter "enable"

    .prologue
    const/4 v6, 0x0

    .line 307
    monitor-enter p0

    :try_start_0
    const-string v3, "ServiceCfgActivity"

    const-string v4, "setSvcState"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    const/4 v2, -0x1

    .line 310
    .local v2, returnState:I
    :try_start_1
    iget-object v3, p0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mSvcMgr:Lcom/broadcom/bt/service/framework/IServiceManager;

    if-eqz v3, :cond_0

    .line 311
    if-eqz p3, :cond_1

    .line 312
    iget-object v3, p0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mSvcMgr:Lcom/broadcom/bt/service/framework/IServiceManager;

    invoke-interface {v3, p2}, Lcom/broadcom/bt/service/framework/IServiceManager;->enableService(Ljava/lang/String;)V

    .line 315
    iget-object v3, p0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mExtraSettingsPrefMap:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    .line 316
    .local v1, p:Landroid/preference/Preference;
    if-eqz v1, :cond_0

    .line 318
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 337
    .end local v1           #p:Landroid/preference/Preference;
    :cond_0
    :goto_0
    monitor-exit p0

    return v6

    .line 322
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mSvcMgr:Lcom/broadcom/bt/service/framework/IServiceManager;

    invoke-interface {v3, p2}, Lcom/broadcom/bt/service/framework/IServiceManager;->disableService(Ljava/lang/String;)V

    .line 325
    iget-object v3, p0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mExtraSettingsPrefMap:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    .line 326
    .restart local v1       #p:Landroid/preference/Preference;
    if-eqz v1, :cond_0

    .line 328
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 333
    .end local v1           #p:Landroid/preference/Preference;
    :catch_0
    move-exception v0

    .line 334
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    const-string v4, "ServiceCfgActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error setting service "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " to state "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p3, :cond_2

    const-string v3, "enabled"

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 307
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #returnState:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 334
    .restart local v0       #e:Ljava/lang/Exception;
    .restart local v2       #returnState:I
    :cond_2
    :try_start_4
    const-string v3, "disabled"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method private updateServicePref(Landroid/preference/SwitchPreference;Ljava/lang/String;)V
    .locals 3
    .parameter "pref"
    .parameter "svcName"

    .prologue
    const/4 v1, 0x0

    .line 361
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mSvcMgr:Lcom/broadcom/bt/service/framework/IServiceManager;

    invoke-interface {v2, p2}, Lcom/broadcom/bt/service/framework/IServiceManager;->getServiceState(Ljava/lang/String;)I

    move-result v0

    .line 362
    .local v0, serviceState:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 363
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 371
    .end local v0           #serviceState:I
    :goto_0
    return-void

    .line 366
    .restart local v0       #serviceState:I
    :cond_0
    const/4 v2, 0x2

    if-ne v2, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 368
    .end local v0           #serviceState:I
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 243
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 244
    const/high16 v0, 0x7f04

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->addPreferencesFromResource(I)V

    .line 245
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 272
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 273
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 258
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 259
    const-string v1, "ServiceCfgActivity"

    const-string v2, "onPause()..Unbinding service..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    :goto_0
    invoke-virtual {p0, p0}, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 266
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 268
    return-void

    .line 262
    :catch_0
    move-exception v0

    .line 263
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ServiceCfgActivity"

    const-string v2, "Unable to unregister receiver"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "pref"
    .parameter "val"

    .prologue
    const/4 v2, 0x0

    .line 287
    const-string v3, "ServiceCfgActivity"

    const-string v4, "onPreferenceChange"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    if-eqz p2, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 290
    .local v0, enable:Z
    :goto_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, svcName:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 292
    invoke-direct {p0, p1, v1, v0}, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->setSvcState(Landroid/preference/Preference;Ljava/lang/String;Z)Z

    move-result v2

    .line 294
    :cond_0
    return v2

    .end local v0           #enable:Z
    .end local v1           #svcName:Ljava/lang/String;
    .restart local p2
    :cond_1
    move v0, v2

    .line 288
    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "pref"

    .prologue
    .line 282
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 249
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 250
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 251
    .local v0, svcMgrIntent:Landroid/content/Intent;
    const-string v1, "com.broadcom.bt.app.system"

    const-string v2, "com.broadcom.bt.app.system.ServiceManager"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    const/4 v1, 0x1

    invoke-virtual {p0, v0, p0, v1}, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 254
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 226
    const-string v0, "ServiceCfgActivity"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-static {p2}, Lcom/broadcom/bt/service/framework/IServiceManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/framework/IServiceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mSvcMgr:Lcom/broadcom/bt/service/framework/IServiceManager;

    .line 228
    iget-object v0, p0, Lcom/broadcom/bt/app/settings/ServiceCfgActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/broadcom/bt/app/settings/ServiceCfgActivity$2;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/app/settings/ServiceCfgActivity$2;-><init>(Lcom/broadcom/bt/app/settings/ServiceCfgActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 239
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 278
    return-void
.end method
