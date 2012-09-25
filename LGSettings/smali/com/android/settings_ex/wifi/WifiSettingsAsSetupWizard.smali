.class public Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;
.super Ljava/lang/Object;
.source "WifiSettingsAsSetupWizard.java"

# interfaces
.implements Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;


# static fields
.field private static isFirstNoSIM:Z


# instance fields
.field private mAccessPointCategory:Landroid/preference/PreferenceCategory;

.field private mAddNetwork:Landroid/preference/Preference;

.field private mContext:Landroid/content/Context;

.field mCurrActivity:Landroid/app/Activity;

.field private mIndication:Lcom/android/settings_ex/wifi/indication_class;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mMobileNetworkOn:Landroid/preference/CheckBoxPreference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiOn:Landroid/preference/CheckBoxPreference;

.field private mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

.field targetProduct:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->isFirstNoSIM:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mCurrActivity:Landroid/app/Activity;

    .line 67
    const-string v0, "ro.build.product"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->targetProduct:Ljava/lang/String;

    .line 70
    new-instance v0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard$1;-><init>(Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private IsSIMStateCheck()Z
    .locals 4

    .prologue
    .line 341
    const/4 v0, 0x1

    .line 343
    .local v0, isInsertSIM:Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 345
    const-string v1, "WifiSettingsAsSetupWizard"

    const-string v2, "TelephonyManager.getDefault() not null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 347
    const/4 v0, 0x0

    .line 348
    :cond_0
    const-string v1, "WifiSettingsAsSetupWizard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isInsertSIM = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :goto_0
    if-nez v0, :cond_1

    sget-boolean v1, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->isFirstNoSIM:Z

    if-nez v1, :cond_1

    .line 357
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v2}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080bf5

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080bf6

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard$6;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard$6;-><init>(Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 371
    :cond_1
    sget-boolean v1, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->isFirstNoSIM:Z

    if-eqz v1, :cond_2

    .line 373
    const-string v1, "WifiSettingsAsSetupWizard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFirstNoSIM = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->isFirstNoSIM:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mMobileNetworkOn:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f080bf7

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 376
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mMobileNetworkOn:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 378
    :cond_2
    return v0

    .line 352
    :cond_3
    const-string v1, "WifiSettingsAsSetupWizard"

    const-string v2, "TelephonyManager.getDefault() null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->handleWifiStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mMobileNetworkOn:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;)Lcom/android/settings_ex/wifi/WifiSettings;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mWifiOn:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 48
    sget-boolean v0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->isFirstNoSIM:Z

    return v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    sput-boolean p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->isFirstNoSIM:Z

    return p0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method private handleWifiStateChanged(I)V
    .locals 5
    .parameter "state"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 315
    const-string v0, "WifiSettingsAsSetupWizard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handleWifiStateChanged] state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    packed-switch p1, :pswitch_data_0

    .line 333
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mWifiOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 334
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mWifiOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 337
    :goto_0
    return-void

    .line 319
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mWifiOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 322
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mWifiOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 323
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mWifiOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 326
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mWifiOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 329
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mWifiOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 330
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mWifiOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 317
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isNotInsertSIMWarning()Z
    .locals 6

    .prologue
    .line 382
    const/4 v3, 0x3

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "d1lu"

    aput-object v4, v1, v3

    const/4 v3, 0x1

    const-string v4, "i_lgu"

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const-string v4, "p2_lgu_kr"

    aput-object v4, v1, v3

    .line 383
    .local v1, productName:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 384
    .local v2, ret:Z
    const-string v3, "WifiSettingsAsSetupWizard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "productName\'s number : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 387
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->targetProduct:Ljava/lang/String;

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 388
    const-string v3, "WifiSettingsAsSetupWizard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "targetProduct : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->targetProduct:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const-string v3, "WifiSettingsAsSetupWizard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "productName["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const/4 v2, 0x1

    .line 386
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 393
    :cond_1
    const-string v3, "WifiSettingsAsSetupWizard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isNotInsertSIMWarning return = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    return v2
.end method


# virtual methods
.method public onAddAccessPoint(Landroid/preference/Preference;)V
    .locals 1
    .parameter "accessPoint"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mAccessPointCategory:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mAccessPointCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 272
    :cond_0
    return-void
.end method

.method public onAddMessage(I)V
    .locals 0
    .parameter "msgId"

    .prologue
    .line 266
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;Z)V
    .locals 0
    .parameter "menu"
    .parameter "inflater"
    .parameter "wifiIsEnabled"

    .prologue
    .line 262
    return-void
.end method

.method public onGetAccessPoint(I)Landroid/preference/Preference;
    .locals 1
    .parameter "i"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mAccessPointCategory:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mAccessPointCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 285
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    goto :goto_0
.end method

.method public onGetAccessPointCount()I
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mAccessPointCategory:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mAccessPointCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    .line 278
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInitView(Lcom/android/settings_ex/wifi/WifiSettings;Landroid/widget/Switch;)V
    .locals 14
    .parameter "wifiSettings"
    .parameter "actionBarSwitch"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    .line 103
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->registerBroadcastReceiver()V

    .line 105
    iget-object v11, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    if-eqz v11, :cond_5

    .line 106
    iget-object v11, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    const v12, 0x7f060058

    invoke-virtual {v11, v12}, Lcom/android/settings_ex/wifi/WifiSettings;->addPreferencesFromResource(I)V

    .line 108
    iget-object v11, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v11}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mCurrActivity:Landroid/app/Activity;

    .line 109
    iget-object v11, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v11}, Lcom/android/settings_ex/wifi/WifiSettings;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 110
    iget-object v11, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    const-string v12, "wifi_access_point"

    invoke-virtual {v11, v12}, Lcom/android/settings_ex/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/PreferenceCategory;

    iput-object v11, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mAccessPointCategory:Landroid/preference/PreferenceCategory;

    .line 112
    iget-object v11, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    const-string v12, "add_network"

    invoke-virtual {v11, v12}, Lcom/android/settings_ex/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mAddNetwork:Landroid/preference/Preference;

    .line 115
    iget-object v11, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    const-string v12, "mobile_network"

    invoke-virtual {v11, v12}, Lcom/android/settings_ex/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    iput-object v11, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mMobileNetworkOn:Landroid/preference/CheckBoxPreference;

    .line 116
    iget-object v11, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mMobileNetworkOn:Landroid/preference/CheckBoxPreference;

    if-eqz v11, :cond_1

    .line 119
    :try_start_0
    iget-object v11, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mCurrActivity:Landroid/app/Activity;

    const-string v12, "connectivity"

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 120
    .local v2, connManager:Landroid/net/ConnectivityManager;
    if-eqz v2, :cond_0

    .line 122
    iget-object v11, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mMobileNetworkOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v12

    invoke-virtual {v11, v12}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .end local v2           #connManager:Landroid/net/ConnectivityManager;
    :cond_0
    :goto_0
    iget-object v11, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mMobileNetworkOn:Landroid/preference/CheckBoxPreference;

    new-instance v12, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard$2;

    invoke-direct {v12, p0}, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard$2;-><init>(Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;)V

    invoke-virtual {v11, v12}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 142
    :cond_1
    iget-object v11, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v11}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 143
    .local v0, activity:Landroid/app/Activity;
    const v11, 0x10202dd

    invoke-virtual {v0, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 144
    .local v10, vg:Landroid/view/ViewGroup;
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 146
    const v11, 0x10202de

    invoke-virtual {v0, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 147
    const v11, 0x10202df

    invoke-virtual {v0, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 148
    const v11, 0x10202e0

    invoke-virtual {v0, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 150
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v11

    const v12, 0x7f04009d

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 152
    .local v5, layout:Landroid/view/View;
    const v11, 0x7f0b019a

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 153
    .local v3, indication_LinearLayout:Landroid/widget/LinearLayout;
    new-instance v11, Lcom/android/settings_ex/wifi/indication_class;

    invoke-direct {v11, v0}, Lcom/android/settings_ex/wifi/indication_class;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mIndication:Lcom/android/settings_ex/wifi/indication_class;

    .line 155
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 156
    .local v4, intent:Landroid/content/Intent;
    const/4 v6, 0x0

    .local v6, max:I
    const/4 v9, 0x0

    .line 157
    .local v9, page_num:I
    if-eqz v4, :cond_2

    .line 159
    const-string v11, "indication_max"

    invoke-virtual {v4, v11, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 160
    const-string v11, "WifiSettingsAsSetupWizard"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SetupWelcome - max"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const-string v11, "indication_page"

    invoke-virtual {v4, v11, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 162
    const-string v11, "WifiSettingsAsSetupWizard"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SetupWelcome - page_num"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v11, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mIndication:Lcom/android/settings_ex/wifi/indication_class;

    invoke-virtual {v11, v10, v5, v6, v9}, Lcom/android/settings_ex/wifi/indication_class;->updatePageIndicator(Landroid/view/ViewGroup;Landroid/view/View;II)V

    .line 165
    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v11

    const v12, 0x7f060056

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 166
    .local v1, buttonBar:Landroid/view/View;
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v12, -0x1

    const/4 v13, -0x2

    invoke-direct {v11, v12, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v1, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v12, -0x1

    const/4 v13, -0x2

    invoke-direct {v11, v12, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v5, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    const v11, 0x7f0b029f

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 177
    .local v7, mbackButton:Landroid/view/View;
    new-instance v11, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard$3;

    invoke-direct {v11, p0}, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard$3;-><init>(Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;)V

    invoke-virtual {v7, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    const v11, 0x7f0b02a0

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 190
    .local v8, mnextButton:Landroid/view/View;
    new-instance v11, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard$4;

    invoke-direct {v11, p0}, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard$4;-><init>(Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;)V

    invoke-virtual {v8, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v11, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    const-string v12, "wifi_on"

    invoke-virtual {v11, v12}, Lcom/android/settings_ex/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    iput-object v11, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mWifiOn:Landroid/preference/CheckBoxPreference;

    .line 224
    iget-object v11, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->targetProduct:Ljava/lang/String;

    const-string v12, "p2"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 226
    iget-object v11, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mMobileNetworkOn:Landroid/preference/CheckBoxPreference;

    const v12, 0x7f06002a

    invoke-virtual {v11, v12}, Landroid/preference/CheckBoxPreference;->setWidgetLayoutResource(I)V

    .line 227
    iget-object v11, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mWifiOn:Landroid/preference/CheckBoxPreference;

    const v12, 0x7f06002a

    invoke-virtual {v11, v12}, Landroid/preference/CheckBoxPreference;->setWidgetLayoutResource(I)V

    .line 234
    :goto_1
    iget-object v11, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mWifiOn:Landroid/preference/CheckBoxPreference;

    if-eqz v11, :cond_3

    .line 236
    iget-object v11, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mWifiOn:Landroid/preference/CheckBoxPreference;

    iget-object v12, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v12

    invoke-virtual {v11, v12}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 238
    iget-object v11, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mWifiOn:Landroid/preference/CheckBoxPreference;

    new-instance v12, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard$5;

    invoke-direct {v12, p0}, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard$5;-><init>(Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;)V

    invoke-virtual {v11, v12}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 249
    :cond_3
    iget-object v11, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mMobileNetworkOn:Landroid/preference/CheckBoxPreference;

    if-eqz v11, :cond_4

    .line 251
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->isNotInsertSIMWarning()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 252
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->IsSIMStateCheck()Z

    .line 255
    :cond_4
    iget-object v11, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mCurrActivity:Landroid/app/Activity;

    iget-object v12, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v11, v12}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 258
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #buttonBar:Landroid/view/View;
    .end local v3           #indication_LinearLayout:Landroid/widget/LinearLayout;
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #layout:Landroid/view/View;
    .end local v6           #max:I
    .end local v7           #mbackButton:Landroid/view/View;
    .end local v8           #mnextButton:Landroid/view/View;
    .end local v9           #page_num:I
    .end local v10           #vg:Landroid/view/ViewGroup;
    :cond_5
    return-void

    .line 230
    .restart local v0       #activity:Landroid/app/Activity;
    .restart local v1       #buttonBar:Landroid/view/View;
    .restart local v3       #indication_LinearLayout:Landroid/widget/LinearLayout;
    .restart local v4       #intent:Landroid/content/Intent;
    .restart local v5       #layout:Landroid/view/View;
    .restart local v6       #max:I
    .restart local v7       #mbackButton:Landroid/view/View;
    .restart local v8       #mnextButton:Landroid/view/View;
    .restart local v9       #page_num:I
    .restart local v10       #vg:Landroid/view/ViewGroup;
    :cond_6
    iget-object v11, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mMobileNetworkOn:Landroid/preference/CheckBoxPreference;

    const v12, 0x7f060059

    invoke-virtual {v11, v12}, Landroid/preference/CheckBoxPreference;->setWidgetLayoutResource(I)V

    .line 231
    iget-object v11, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mWifiOn:Landroid/preference/CheckBoxPreference;

    const v12, 0x7f060059

    invoke-virtual {v11, v12}, Landroid/preference/CheckBoxPreference;->setWidgetLayoutResource(I)V

    goto :goto_1

    .line 124
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #buttonBar:Landroid/view/View;
    .end local v3           #indication_LinearLayout:Landroid/widget/LinearLayout;
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #layout:Landroid/view/View;
    .end local v6           #max:I
    .end local v7           #mbackButton:Landroid/view/View;
    .end local v8           #mnextButton:Landroid/view/View;
    .end local v9           #page_num:I
    .end local v10           #vg:Landroid/view/ViewGroup;
    :catch_0
    move-exception v11

    goto/16 :goto_0
.end method

.method public onPrefereceClicked(Landroid/preference/Preference;)V
    .locals 1
    .parameter "preference"

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mAddNetwork:Landroid/preference/Preference;

    if-ne p1, v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->doAddNetwork()V

    .line 301
    :cond_0
    return-void
.end method

.method public onRemoveAllAccessPoint()V
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mAccessPointCategory:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mAccessPointCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 292
    :cond_0
    return-void
.end method

.method public onWifiEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mWifiOn:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mWifiOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 307
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mWifiOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 310
    :cond_0
    return-void
.end method

.method public registerBroadcastReceiver()V
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mContext:Landroid/content/Context;

    .line 87
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 88
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mIntentFilter:Landroid/content/IntentFilter;

    .line 90
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 95
    :cond_0
    return-void
.end method
