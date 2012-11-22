.class public Lcom/android/settings_ex/wifi/WifiSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/wifi/WifiSettings$4;,
        Lcom/android/settings_ex/wifi/WifiSettings$WifiServiceHandler;,
        Lcom/android/settings_ex/wifi/WifiSettings$Scanner;,
        Lcom/android/settings_ex/wifi/WifiSettings$Multimap;,
        Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAsDefault;,
        Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;
    }
.end annotation


# instance fields
.field OPERATOR_KT:Z

.field OPERATOR_LGU:Z

.field OPERATOR_SKT:Z

.field private actionBarSwitch:Landroid/widget/Switch;

.field private mAccessPointSavedState:Landroid/os/Bundle;

.field private mAutoOnNetworks:Landroid/preference/CheckBoxPreference;

.field private mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

.field private mDlgAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

.field private mDlgEdit:Z

.field private mEnableNextOnConnection:Z

.field private final mFilter:Landroid/content/IntentFilter;

.field private mInXlSetupWizard:Z

.field private mKeyStoreNetworkId:I

.field private mLastInfo:Landroid/net/wifi/WifiInfo;

.field private mLastState:Landroid/net/NetworkInfo$DetailedState;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mScanner:Lcom/android/settings_ex/wifi/WifiSettings$Scanner;

.field private mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

.field private mSetupWrizadr_True:Z

.field private mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private wifiSettinsAs:Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mKeyStoreNetworkId:I

    const-string v0, "SKT"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->OPERATOR_SKT:Z

    .line 144
    const-string v0, "KT"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->OPERATOR_KT:Z

    .line 145
    const-string v0, "LGU"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->OPERATOR_LGU:Z

    iput-boolean v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSetupWrizadr_True:Z

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->wifiSettinsAs:Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->actionBarSwitch:Landroid/widget/Switch;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.ERROR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v0, Lcom/android/settings_ex/wifi/WifiSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/WifiSettings$1;-><init>(Lcom/android/settings_ex/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;

    invoke-direct {v0, p0, v2}, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;-><init>(Lcom/android/settings_ex/wifi/WifiSettings;Lcom/android/settings_ex/wifi/WifiSettings$1;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanner:Lcom/android/settings_ex/wifi/WifiSettings$Scanner;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/wifi/WifiSettings;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/wifi/WifiSettings;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/wifi/WifiSettings;Lcom/android/settings_ex/wifi/AccessPoint;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/wifi/WifiSettings;->showConfigUi(Lcom/android/settings_ex/wifi/AccessPoint;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->wifiSettinsAs:Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;

    return-object v0
.end method

.method private addMessagePreference(I)V
    .locals 1
    .parameter "messageId"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->wifiSettinsAs:Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->wifiSettinsAs:Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;

    invoke-interface {v0, p1}, Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;->onAddMessage(I)V

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->wifiSettinsAs:Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;

    invoke-interface {v0}, Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;->onRemoveAllAccessPoint()V

    :cond_0
    return-void
.end method

.method private changeNextButtonState(Z)V
    .locals 1
    .parameter "connected"

    .prologue
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mInXlSetupWizard:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->changeNextButtonState(Z)V

    .line 1245
    :cond_0
    :goto_0
    return-void

    .line 1242
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private constructAccessPoints()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/wifi/AccessPoint;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/android/settings_ex/wifi/WifiSettings$Multimap;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings$Multimap;-><init>(Lcom/android/settings_ex/wifi/WifiSettings;Lcom/android/settings_ex/wifi/WifiSettings$1;)V

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v0, "WifiSettings"

    const-string v1, "mContext is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 939
    if-eqz v0, :cond_4

    .line 940
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 942
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "[IBSS]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 947
    const/4 v1, 0x0

    .line 948
    iget-object v2, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v2}, Lcom/android/settings_ex/wifi/WifiSettings$Multimap;->getAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v1

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/wifi/AccessPoint;->update(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    :goto_3
    move v2, v1

    goto :goto_2

    :cond_2
    new-instance v5, Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-direct {v5, v2, v0}, Lcom/android/settings_ex/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v5, v0, v2}, Lcom/android/settings_ex/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v5, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Lcom/android/settings_ex/wifi/WifiSettings$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_5

    const-string v0, "WifiSettings"

    const-string v1, "mContext is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v3

    :cond_5
    new-instance v2, Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-direct {v2, v1, v0}, Lcom/android/settings_ex/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v2, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v0, v2}, Lcom/android/settings_ex/wifi/WifiSettings$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    move v1, v2

    goto :goto_3
.end method

.method private getPreferences_getPreference(I)Landroid/preference/Preference;
    .locals 1
    .parameter "i"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->wifiSettinsAs:Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->wifiSettinsAs:Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;

    invoke-interface {v0, p1}, Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;->onGetAccessPoint(I)Landroid/preference/Preference;

    move-result-object v0

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

.method private getPreferences_getPreferenceCount()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->wifiSettinsAs:Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->wifiSettinsAs:Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;

    invoke-interface {v0}, Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;->onGetAccessPointCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 991
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 992
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 993
    const-string v0, "wifi_state"

    const/4 v1, 0x4

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->updateWifiState(I)V

    .line 1058
    :cond_0
    :goto_0
    return-void

    .line 995
    :cond_1
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1000
    :cond_2
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->wifiSettinsAs:Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;

    instance-of v0, v0, Lcom/android/settings_ex/wifi/WifiSettingsAsActivity;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->wifiSettinsAs:Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;

    check-cast v0, Lcom/android/settings_ex/wifi/WifiSettingsAsActivity;

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/wifi/WifiSettingsAsActivity;->updateProgressUi(Z)V

    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->updateAccessPoints()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->wifiSettinsAs:Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;

    instance-of v0, v0, Lcom/android/settings_ex/wifi/WifiSettingsAsDialogActivity;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->wifiSettinsAs:Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;

    check-cast v0, Lcom/android/settings_ex/wifi/WifiSettingsAsDialogActivity;

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/wifi/WifiSettingsAsDialogActivity;->updateProgressUi(Z)V

    goto :goto_1

    .line 1010
    :cond_5
    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1018
    const-string v0, "newState"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/SupplicantState;

    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    :cond_6
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mInXlSetupWizard:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;

    invoke-virtual {v0, p2}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->onSupplicantStateChanged(Landroid/content/Intent;)V

    goto :goto_0

    .line 1025
    :cond_7
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1026
    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 1031
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WIFI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->changeNextButtonState(Z)V

    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->updateAccessPoints()V

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->wifiSettinsAs:Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;

    instance-of v1, v1, Lcom/android/settings_ex/wifi/WifiSettingsAsDialogActivity;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->finish()V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f080215

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1047
    :cond_9
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_0

    :cond_a
    const-string v1, "android.net.wifi.ERROR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1050
    const-string v0, "errorCode"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1051
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 1053
    :pswitch_0
    const v0, 0x7f08025b

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1051
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private isOpenAPWarningAvailable()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_open_ap_warning_do_not_show"

    invoke-static {v2, v3, v0}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 1431
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isSetupWizardAvailable()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1410
    const/4 v0, 0x1

    .line 1412
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.android.LGSetupWizard"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1417
    :goto_0
    const-string v1, "WifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSetupWizardAvailable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    return v0

    .line 1413
    :catch_0
    move-exception v0

    move v0, v1

    .line 1414
    goto :goto_0
.end method

.method private requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .parameter "config"

    .prologue
    invoke-static {p1}, Lcom/android/settings_ex/wifi/WifiConfigController;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v0

    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mKeyStoreNetworkId:I

    invoke-static {}, Landroid/security/Credentials;->getInstance()Landroid/security/Credentials;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/Credentials;->unlock(Landroid/content/Context;)V

    .line 852
    const/4 v0, 0x1

    .line 854
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private saveNetwork(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .parameter "config"

    .prologue
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mInXlSetupWizard:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->onSaveNetwork(Landroid/net/wifi/WifiConfiguration;)V

    .line 1338
    :goto_0
    return-void

    .line 1336
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->saveNetwork(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0
.end method

.method private showConfigUi(Lcom/android/settings_ex/wifi/AccessPoint;Z)V
    .locals 1
    .parameter "accessPoint"
    .parameter "edit"

    .prologue
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mInXlSetupWizard:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->showConfigUi(Lcom/android/settings_ex/wifi/AccessPoint;Z)V

    .line 776
    :goto_0
    return-void

    .line 774
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/wifi/WifiSettings;->showDialog(Lcom/android/settings_ex/wifi/AccessPoint;Z)V

    goto :goto_0
.end method

.method private showDialog(Lcom/android/settings_ex/wifi/AccessPoint;Z)V
    .locals 2
    .parameter "accessPoint"
    .parameter "edit"

    .prologue
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->removeDialog(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    :cond_0
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iput-boolean p2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDlgEdit:Z

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->showDialog(I)V

    return-void
.end method

.method private updateAccessPoints()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->wifiSettinsAs:Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->wifiSettinsAs:Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->actionBarSwitch:Landroid/widget/Switch;

    invoke-interface {v0, p0, v1}, Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;->onInitView(Lcom/android/settings_ex/wifi/WifiSettings;Landroid/widget/Switch;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->constructAccessPoints()Ljava/util/List;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->wifiSettinsAs:Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->wifiSettinsAs:Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;

    invoke-interface {v0}, Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;->onRemoveAllAccessPoint()V

    :cond_2
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mInXlSetupWizard:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->onAccessPointsUpdated(Landroid/preference/PreferenceScreen;Ljava/util/Collection;)V

    goto :goto_0

    .line 881
    :cond_3
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->wifiSettinsAs:Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->wifiSettinsAs:Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;

    invoke-interface {v2, v0}, Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;->onAddAccessPoint(Landroid/preference/Preference;)V

    goto :goto_1

    .line 892
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->wifiSettinsAs:Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->wifiSettinsAs:Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;

    invoke-interface {v0}, Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;->onRemoveAllAccessPoint()V

    goto :goto_0

    .line 896
    :pswitch_2
    const v0, 0x7f080214

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->addMessagePreference(I)V

    goto :goto_0

    .line 900
    :pswitch_3
    const v0, 0x7f080225

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->addMessagePreference(I)V

    goto :goto_0

    .line 864
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 5
    .parameter "state"

    .prologue
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanner:Lcom/android/settings_ex/wifi/WifiSettings$Scanner;

    invoke-virtual {v3}, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->pause()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v3, :cond_4

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanner:Lcom/android/settings_ex/wifi/WifiSettings$Scanner;

    invoke-virtual {v3}, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->pause()V

    :goto_1
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    if-eqz p1, :cond_2

    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getPreferences_getPreferenceCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_2
    if-ltz v1, :cond_5

    invoke-direct {p0, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->getPreferences_getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .local v2, preference:Landroid/preference/Preference;
    instance-of v3, v2, Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v3, :cond_3

    move-object v0, v2

    check-cast v0, Lcom/android/settings_ex/wifi/AccessPoint;

    .local v0, accessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v3, v4}, Lcom/android/settings_ex/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .end local v0           #accessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .end local v1           #i:I
    .end local v2           #preference:Landroid/preference/Preference;
    :cond_4
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanner:Lcom/android/settings_ex/wifi/WifiSettings$Scanner;

    invoke-virtual {v3}, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->resume()V

    goto :goto_1

    .restart local v1       #i:I
    :cond_5
    iget-boolean v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mInXlSetupWizard:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0
.end method

.method private updateWifiState(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanner:Lcom/android/settings_ex/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->pause()V

    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->wifiSettinsAs:Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->wifiSettinsAs:Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;->onWifiEnabled(Z)V

    .line 1102
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanner:Lcom/android/settings_ex/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->resume()V

    goto :goto_1

    .line 1106
    :pswitch_1
    const v0, 0x7f080213

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->addMessagePreference(I)V

    goto :goto_0

    .line 1111
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->wifiSettinsAs:Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->wifiSettinsAs:Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;

    invoke-interface {v0, v1}, Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;->onWifiEnabled(Z)V

    :cond_2
    const v0, 0x7f080225

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->addMessagePreference(I)V

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->wifiSettinsAs:Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;

    instance-of v0, v0, Lcom/android/settings_ex/wifi/WifiSettingsAsActivity;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->wifiSettinsAs:Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;

    check-cast v0, Lcom/android/settings_ex/wifi/WifiSettingsAsActivity;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/WifiSettingsAsActivity;->updateProgressUi(Z)V

    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiDialog;->dismiss()V

    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->wifiSettinsAs:Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;

    instance-of v0, v0, Lcom/android/settings_ex/wifi/WifiSettingsAsDialogActivity;

    if-eqz v0, :cond_0

    const-string v0, "WifiSettings"

    const-string v1, "updateWifiState WIFI_STATE_DISABLED -- WifiSettingsAsDialogActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public doAddNetwork()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->onAddNetworkPressed()V

    goto :goto_0
.end method

.method forget()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->forgetNetwork(I)V

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanner:Lcom/android/settings_ex/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->resume()V

    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->updateAccessPoints()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->changeNextButtonState(Z)V

    return-void
.end method

.method getAccessPointsCount()I
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    .local v0, wifiIsEnabled:Z
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getPreferences_getPreferenceCount()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getContentResolverFromWifiSettings()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public getWifiManager()Landroid/net/wifi/WifiManager;
    .locals 1

    .prologue
    .line 264
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 21
    .parameter "savedInstanceState"

    .prologue
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .local v3, activity:Landroid/app/Activity;
    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .local v10, intent:Landroid/content/Intent;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiSettings;->isSetupWizardAvailable()Z

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 355
    new-instance v12, Landroid/content/ComponentName;

    const-string v15, "com.android.LGSetupWizard"

    const-string v16, "com.android.LGSetupWizard.SetupFlowController"

    move-object/from16 v0, v16

    invoke-direct {v12, v15, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    .local v12, name:Landroid/content/ComponentName;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    invoke-virtual {v15, v12}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v4

    .local v4, componentEnableSetupWizard:I
    if-nez v4, :cond_0

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mSetupWrizadr_True:Z

    .end local v4           #componentEnableSetupWizard:I
    .end local v12           #name:Landroid/content/ComponentName;
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings_ex/wifi/WifiSettings;->OPERATOR_SKT:Z

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings_ex/wifi/WifiSettings;->OPERATOR_KT:Z

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mSetupWrizadr_True:Z

    if-nez v15, :cond_3

    .line 364
    const/4 v7, 0x0

    .line 365
    .local v7, exceptCheckStr:Ljava/lang/String;
    const/4 v8, 0x0

    .line 367
    .local v8, exceptCheckVal:I
    :try_start_0
    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v15

    const-string v16, "LG_WIFI_IN"

    invoke-virtual/range {v15 .. v16}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 368
    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v15

    const-string v16, "LG_WIFI"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 370
    :goto_0
    const-string v15, "WifiSettings"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "LG_WIFI_IN : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", LG_WIFI : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings_ex/wifi/WifiCarrierCmIntent;->initWiFiCM()V

    const-string v15, "lg_wifi_into"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    const/16 v15, 0x47

    if-eq v8, v15, :cond_3

    :cond_2
    const-string v15, "lg_wifi_setup"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    const/16 v15, 0x49

    if-ne v8, v15, :cond_7

    .line 385
    .end local v7           #exceptCheckStr:Ljava/lang/String;
    .end local v8           #exceptCheckVal:I
    :cond_3
    const-string v15, "wifi"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings_ex/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 386
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v16

    new-instance v17, Lcom/android/settings_ex/wifi/WifiSettings$WifiServiceHandler;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/wifi/WifiSettings$WifiServiceHandler;-><init>(Lcom/android/settings_ex/wifi/WifiSettings;Lcom/android/settings_ex/wifi/WifiSettings$1;)V

    invoke-virtual/range {v15 .. v17}, Landroid/net/wifi/WifiManager;->asyncConnect(Landroid/content/Context;Landroid/os/Handler;)V

    .line 387
    if-eqz p1, :cond_4

    const-string v15, "wifi_ap_state"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 389
    const-string v15, "edit_mode"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v15

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mDlgEdit:Z

    .line 390
    const-string v15, "wifi_ap_state"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 397
    :cond_4
    const-string v15, "wifi_enable_next_on_connect"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mEnableNextOnConnection:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v15, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiSettings;->hasNextButton()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const-string v16, "connectivity"

    invoke-virtual/range {v15 .. v16}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    .line 403
    .local v5, connectivity:Landroid/net/ConnectivityManager;
    if-eqz v5, :cond_5

    .line 404
    const/4 v15, 0x1

    invoke-virtual {v5, v15}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v9

    .line 407
    .local v9, info:Landroid/net/NetworkInfo;
    if-eqz v9, :cond_8

    .line 408
    invoke-virtual {v9}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/settings_ex/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 417
    .end local v5           #connectivity:Landroid/net/ConnectivityManager;
    .end local v9           #info:Landroid/net/NetworkInfo;
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mInXlSetupWizard:Z

    if-eqz v15, :cond_9

    new-instance v15, Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAsDefault;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mInXlSetupWizard:Z

    move/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAsDefault;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings_ex/wifi/WifiSettings;->wifiSettinsAs:Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;

    const v15, 0x7f06004d

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings_ex/wifi/WifiSettings;->addPreferencesFromResource(I)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/WifiSettings;->wifiSettinsAs:Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;

    if-eqz v15, :cond_6

    .line 458
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/WifiSettings;->wifiSettinsAs:Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiSettings;->actionBarSwitch:Landroid/widget/Switch;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-interface {v15, v0, v1}, Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;->onInitView(Lcom/android/settings_ex/wifi/WifiSettings;Landroid/widget/Switch;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v15}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v6

    .line 461
    .local v6, enabled:Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/WifiSettings;->wifiSettinsAs:Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;

    invoke-interface {v15, v6}, Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;->onWifiEnabled(Z)V

    .line 466
    .end local v6           #enabled:Z
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings_ex/wifi/WifiSettings;->registerForContextMenu(Landroid/view/View;)V

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings_ex/wifi/WifiSettings;->setHasOptionsMenu(Z)V

    invoke-super/range {p0 .. p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    :goto_3
    return-void

    .restart local v7       #exceptCheckStr:Ljava/lang/String;
    .restart local v8       #exceptCheckVal:I
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/settings_ex/wifi/WifiCarrierCmIntent;->carrierWiFiCM(Landroid/content/Context;Landroid/content/pm/PackageManager;)Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-super/range {p0 .. p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    goto :goto_3

    .end local v7           #exceptCheckStr:Ljava/lang/String;
    .end local v8           #exceptCheckVal:I
    .restart local v5       #connectivity:Landroid/net/ConnectivityManager;
    .restart local v9       #info:Landroid/net/NetworkInfo;
    :cond_8
    const-string v15, "WifiSettings"

    const-string v16, "WifiSettings onActivityCreated NetworkInfo null"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 421
    .end local v5           #connectivity:Landroid/net/ConnectivityManager;
    .end local v9           #info:Landroid/net/NetworkInfo;
    :cond_9
    new-instance v15, Landroid/widget/Switch;

    invoke-direct {v15, v3}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings_ex/wifi/WifiSettings;->actionBarSwitch:Landroid/widget/Switch;

    .line 423
    const-string v15, "SetupWizard"

    invoke-virtual {v10, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 424
    .local v11, isSetupWizard:Ljava/lang/String;
    if-eqz v11, :cond_b

    const-string v15, "true"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    new-instance v15, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;

    invoke-direct {v15}, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings_ex/wifi/WifiSettings;->wifiSettinsAs:Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;

    .line 451
    :cond_a
    :goto_4
    new-instance v15, Lcom/android/settings_ex/wifi/WifiEnabler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiSettings;->actionBarSwitch:Landroid/widget/Switch;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v15, v3, v0}, Lcom/android/settings_ex/wifi/WifiEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    goto/16 :goto_2

    :cond_b
    instance-of v15, v3, Lcom/android/settings_ex/Settings$WifiSettingsDialogActivity;

    if-eqz v15, :cond_c

    new-instance v15, Lcom/android/settings_ex/wifi/WifiSettingsAsDialogActivity;

    invoke-direct {v15}, Lcom/android/settings_ex/wifi/WifiSettingsAsDialogActivity;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings_ex/wifi/WifiSettings;->wifiSettinsAs:Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;

    goto :goto_4

    :cond_c
    instance-of v15, v3, Lcom/android/settings_ex/Settings$WifiSettingsActivity;

    if-eqz v15, :cond_d

    new-instance v15, Lcom/android/settings_ex/wifi/WifiSettingsAsActivity;

    invoke-direct {v15}, Lcom/android/settings_ex/wifi/WifiSettingsAsActivity;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings_ex/wifi/WifiSettings;->wifiSettinsAs:Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;

    goto :goto_4

    :cond_d
    instance-of v15, v3, Lcom/android/settings_ex/SubSettings;

    if-eqz v15, :cond_e

    new-instance v15, Lcom/android/settings_ex/wifi/WifiSettingsAsActivity;

    invoke-direct {v15}, Lcom/android/settings_ex/wifi/WifiSettingsAsActivity;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings_ex/wifi/WifiSettings;->wifiSettinsAs:Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;

    goto :goto_4

    .line 433
    :cond_e
    new-instance v15, Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAsDefault;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mInXlSetupWizard:Z

    move/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAsDefault;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings_ex/wifi/WifiSettings;->wifiSettinsAs:Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;

    const v15, 0x7f060054

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings_ex/wifi/WifiSettings;->addPreferencesFromResource(I)V

    instance-of v15, v3, Landroid/preference/PreferenceActivity;

    if-eqz v15, :cond_a

    move-object v14, v3

    check-cast v14, Landroid/preference/PreferenceActivity;

    .local v14, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v14}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v15

    if-nez v15, :cond_f

    invoke-virtual {v14}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v15

    if-nez v15, :cond_a

    .line 438
    :cond_f
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0e0002

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 440
    .local v13, padding:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/WifiSettings;->actionBarSwitch:Landroid/widget/Switch;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v15, v0, v1, v13, v2}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 441
    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v15

    const/16 v16, 0x10

    const/16 v17, 0x10

    invoke-virtual/range {v15 .. v17}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 443
    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiSettings;->actionBarSwitch:Landroid/widget/Switch;

    move-object/from16 v16, v0

    new-instance v17, Landroid/app/ActionBar$LayoutParams;

    const/16 v18, -0x2

    const/16 v19, -0x2

    const/16 v20, 0x15

    invoke-direct/range {v17 .. v20}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual/range {v15 .. v17}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    goto/16 :goto_4

    .line 369
    .end local v11           #isSetupWizard:Ljava/lang/String;
    .end local v13           #padding:I
    .end local v14           #preferenceActivity:Landroid/preference/PreferenceActivity;
    .restart local v7       #exceptCheckStr:Ljava/lang/String;
    .restart local v8       #exceptCheckVal:I
    :catch_0
    move-exception v15

    goto/16 :goto_0
.end method

.method onAddNetworkPressed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->showConfigUi(Lcom/android/settings_ex/wifi/AccessPoint;Z)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    instance-of v0, p1, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mInXlSetupWizard:Z

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, -0x1

    const/4 v3, -0x3

    .line 1249
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "d1lv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiDialog;->getController()Lcom/android/settings_ex/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-nez v1, :cond_2

    const-string v1, "WifiSettings"

    const-string v2, "[YHD] Button in < Add Network > , don\'t you ??? "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p2, v3, :cond_1

    const-string v1, "WifiSettings"

    const-string v2, "[YHD] Save !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->saveNetwork(Landroid/net/wifi/WifiConfiguration;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p2, v4, :cond_0

    const-string v1, "WifiSettings"

    const-string v2, "[YHD] Connect !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->connectNetwork(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mInXlSetupWizard:Z

    if-eqz v0, :cond_4

    if-ne p2, v3, :cond_3

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->forget()V

    goto :goto_0

    :cond_3
    if-ne p2, v4, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->onConnectButtonPressed()V

    goto :goto_0

    :cond_4
    if-ne p2, v3, :cond_5

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->forget()V

    goto :goto_0

    :cond_5
    if-ne p2, v4, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiDialog;->getController()Lcom/android/settings_ex/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->submit(Lcom/android/settings_ex/wifi/WifiConfigController;)V

    goto :goto_0

    :cond_6
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mInXlSetupWizard:Z

    if-eqz v0, :cond_8

    if-ne p2, v3, :cond_7

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->forget()V

    goto :goto_0

    :cond_7
    if-ne p2, v4, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->onConnectButtonPressed()V

    goto :goto_0

    .line 1286
    :cond_8
    if-ne p2, v3, :cond_9

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->forget()V

    goto :goto_0

    :cond_9
    if-ne p2, v4, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiDialog;->getController()Lcom/android/settings_ex/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->submit(Lcom/android/settings_ex/wifi/WifiConfigController;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiDialog;->notifyConfigurationChanged()V

    :cond_0
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v7, 0x3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .local v0, connectivity:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .local v1, info:Landroid/net/NetworkInfo;
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-nez v4, :cond_1

    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    goto :goto_0

    :pswitch_0
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings_ex/wifi/WifiSettings;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 649
    const-string v4, "VZW"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->isOpenAPWarningAvailable()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    if-nez v4, :cond_2

    new-instance v2, Lcom/android/settings_ex/wifi/WifiOpenAPDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-direct {v2, v4, v5}, Lcom/android/settings_ex/wifi/WifiOpenAPDialog;-><init>(Landroid/content/Context;Lcom/android/settings_ex/wifi/AccessPoint;)V

    .local v2, mWifiOpenAPDialog:Lcom/android/settings_ex/wifi/WifiOpenAPDialog;
    invoke-virtual {v2}, Lcom/android/settings_ex/wifi/WifiOpenAPDialog;->show()V

    goto :goto_0

    .end local v2           #mWifiOpenAPDialog:Lcom/android/settings_ex/wifi/WifiOpenAPDialog;
    :cond_2
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v5, v5, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiManager;->connectNetwork(I)V

    goto :goto_0

    .line 656
    :cond_3
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v4, v4, Lcom/android/settings_ex/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v4, v5, :cond_5

    const-string v4, "LGU"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v4, v4, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "u+zone"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v4, v4, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "u+acn"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    if-eq v4, v7, :cond_5

    .line 662
    if-eqz v1, :cond_0

    .line 664
    const-string v4, "WifiSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onContextItemSelected_NetworkState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    if-eq v4, v5, :cond_0

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    if-eq v4, v5, :cond_0

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    if-eq v4, v5, :cond_0

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/wifi/WifiSettings;->showDialog(I)V

    goto/16 :goto_0

    :cond_5
    const-string v4, "VZW"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->isOpenAPWarningAvailable()Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v2, Lcom/android/settings_ex/wifi/WifiOpenAPDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-direct {v2, v4, v5}, Lcom/android/settings_ex/wifi/WifiOpenAPDialog;-><init>(Landroid/content/Context;Lcom/android/settings_ex/wifi/AccessPoint;)V

    .restart local v2       #mWifiOpenAPDialog:Lcom/android/settings_ex/wifi/WifiOpenAPDialog;
    invoke-virtual {v2}, Lcom/android/settings_ex/wifi/WifiOpenAPDialog;->show()V

    goto/16 :goto_0

    .end local v2           #mWifiOpenAPDialog:Lcom/android/settings_ex/wifi/WifiOpenAPDialog;
    :cond_6
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settings_ex/wifi/AccessPoint;->generateOpenNetworkConfig()V

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v5}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiManager;->connectNetwork(Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_0

    .line 684
    :cond_7
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v4, v4, Lcom/android/settings_ex/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v4, v5, :cond_9

    const-string v4, "LGU"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v4, v4, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "u+zone"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v4, v4, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "u+acn"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_8
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    if-eq v4, v7, :cond_9

    .line 688
    if-eqz v1, :cond_0

    .line 690
    const-string v4, "WifiSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onContextItemSelected_NetworkState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    if-eq v4, v5, :cond_0

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    if-eq v4, v5, :cond_0

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    if-eq v4, v5, :cond_0

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/wifi/WifiSettings;->showDialog(I)V

    goto/16 :goto_0

    :cond_9
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/settings_ex/wifi/WifiSettings;->showConfigUi(Lcom/android/settings_ex/wifi/AccessPoint;Z)V

    goto/16 :goto_0

    .line 705
    :pswitch_1
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v5, v5, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiManager;->forgetNetwork(I)V

    goto/16 :goto_0

    .line 709
    :pswitch_2
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-direct {p0, v4, v3}, Lcom/android/settings_ex/wifi/WifiSettings;->showConfigUi(Lcom/android/settings_ex/wifi/AccessPoint;Z)V

    goto/16 :goto_0

    .line 644
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5
    .parameter "menu"
    .parameter "view"
    .parameter "info"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mInXlSetupWizard:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .end local p3
    :cond_0
    :goto_0
    return-void

    .restart local p3
    :cond_1
    instance-of v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3
    iget v2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .local v0, preference:Landroid/preference/Preference;
    instance-of v1, v0, Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/settings_ex/wifi/AccessPoint;

    .end local v0           #preference:Landroid/preference/Preference;
    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/AccessPoint;->getLevel()I

    move-result v1

    if-eq v1, v4, :cond_2

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    if-nez v1, :cond_2

    .line 623
    const/4 v1, 0x4

    const v2, 0x7f080222

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 625
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    if-eq v1, v4, :cond_0

    .line 626
    const/4 v1, 0x5

    const v2, 0x7f080223

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 627
    const/4 v1, 0x6

    const v2, 0x7f080224

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter

    .prologue
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-nez v3, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    new-instance v3, Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-direct {v3, v1, v2}, Lcom/android/settings_ex/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    :cond_0
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080b28

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080b29

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080257

    new-instance v2, Lcom/android/settings_ex/wifi/WifiSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/wifi/WifiSettings$3;-><init>(Lcom/android/settings_ex/wifi/WifiSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/settings_ex/wifi/WifiSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/wifi/WifiSettings$2;-><init>(Lcom/android/settings_ex/wifi/WifiSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iput-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    const-string v1, "SetupWizard"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ro.build.product"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_2

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "p2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/settings_ex/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDlgEdit:Z

    const v5, 0x7f0a0059

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings_ex/wifi/AccessPoint;ZI)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    :goto_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/android/settings_ex/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDlgEdit:Z

    invoke-direct {v0, v1, p0, v3, v2}, Lcom/android/settings_ex/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings_ex/wifi/AccessPoint;Z)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .parameter "menu"
    .parameter "inflater"

    .prologue
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->wifiSettinsAs:Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    .local v0, wifiIsEnabled:Z
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->wifiSettinsAs:Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;

    invoke-interface {v1, p1, p2, v0}, Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;Z)V

    .end local v0           #wifiIsEnabled:Z
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 586
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanner:Lcom/android/settings_ex/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->forceScan()V

    :cond_0
    move v0, v7

    .line 589
    goto :goto_0

    .line 591
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->onAddNetworkPressed()V

    :cond_1
    move v0, v7

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f08025c

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_1
    move v0, v7

    .line 605
    goto :goto_0

    .line 603
    :cond_2
    const-class v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/settings_ex/wifi/WifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_1

    .line 584
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    invoke-static {}, Lcom/android/settings_ex/wifi/WifiCarrierCmIntent;->isRunWiFiCM()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanner:Lcom/android/settings_ex/wifi/WifiSettings$Scanner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanner:Lcom/android/settings_ex/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->pause()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiEnabler;->pause()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanner:Lcom/android/settings_ex/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->pause()V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "screen"
    .parameter "preference"

    .prologue
    const/4 v7, 0x3

    const/4 v3, 0x1

    instance-of v4, p2, Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 722
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 724
    .local v1, info:Landroid/net/NetworkInfo;
    const-string v4, "WifiSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPreferenceTreeClick"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p2, Lcom/android/settings_ex/wifi/AccessPoint;

    .end local p2
    iput-object p2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    const-string v4, "ATT"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eq v4, v3, :cond_2

    .line 732
    const-string v4, "VZW"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->isOpenAPWarningAvailable()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v2, Lcom/android/settings_ex/wifi/WifiOpenAPDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-direct {v2, v4, v5}, Lcom/android/settings_ex/wifi/WifiOpenAPDialog;-><init>(Landroid/content/Context;Lcom/android/settings_ex/wifi/AccessPoint;)V

    .local v2, mWifiOpenAPDialog:Lcom/android/settings_ex/wifi/WifiOpenAPDialog;
    invoke-virtual {v2}, Lcom/android/settings_ex/wifi/WifiOpenAPDialog;->show()V

    .end local v0           #connectivity:Landroid/net/ConnectivityManager;
    .end local v1           #info:Landroid/net/NetworkInfo;
    .end local v2           #mWifiOpenAPDialog:Lcom/android/settings_ex/wifi/WifiOpenAPDialog;
    :cond_0
    :goto_0
    return v3

    .line 736
    .restart local v0       #connectivity:Landroid/net/ConnectivityManager;
    .restart local v1       #info:Landroid/net/NetworkInfo;
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settings_ex/wifi/AccessPoint;->generateOpenNetworkConfig()V

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v5}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiManager;->connectNetwork(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 741
    :cond_2
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v4, v4, Lcom/android/settings_ex/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v4, v5, :cond_4

    const-string v4, "LGU"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v4, v4, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "u+zone"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v4, v4, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "u+acn"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    if-eq v4, v7, :cond_4

    .line 745
    if-eqz v1, :cond_0

    .line 747
    const-string v4, "WifiSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPreferenceTreeClick_NetworkState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    if-eq v4, v5, :cond_0

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    if-eq v4, v5, :cond_0

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    if-eq v4, v5, :cond_0

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/wifi/WifiSettings;->showDialog(I)V

    goto/16 :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/settings_ex/wifi/WifiSettings;->showConfigUi(Lcom/android/settings_ex/wifi/AccessPoint;Z)V

    goto/16 :goto_0

    .line 759
    .end local v0           #connectivity:Landroid/net/ConnectivityManager;
    .end local v1           #info:Landroid/net/NetworkInfo;
    .restart local p2
    :cond_5
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->wifiSettinsAs:Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->wifiSettinsAs:Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;

    invoke-interface {v3, p2}, Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;->onPrefereceClicked(Landroid/preference/Preference;)V

    .line 761
    :cond_6
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v5, -0x1

    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    invoke-static {}, Lcom/android/settings_ex/wifi/WifiCarrierCmIntent;->isRunWiFiCM()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiEnabler;->resume()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v3, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mKeyStoreNetworkId:I

    if-eq v0, v5, :cond_3

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v0

    sget-object v3, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mKeyStoreNetworkId:I

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->connectNetwork(I)V

    :cond_3
    iput v5, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mKeyStoreNetworkId:I

    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->updateAccessPoints()V

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    if-ne v1, v0, :cond_4

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiDialog;->dismiss()V

    :cond_4
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "i_vzw"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    const-string v0, "wifi_networks_available_auto_connect"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAutoOnNetworks:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAutoOnNetworks:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAutoOnNetworks:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->getContentResolverFromWifiSettings()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "wifi_networks_available_auto_connect"

    invoke-static {v0, v4, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "edit_mode"

    iget-boolean v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDlgEdit:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    const-string v0, "wifi_ap_state"

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method pauseWifiScan()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanner:Lcom/android/settings_ex/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->pause()V

    :cond_0
    return-void
.end method

.method refreshAccessPoints()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanner:Lcom/android/settings_ex/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->resume()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->wifiSettinsAs:Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->wifiSettinsAs:Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;

    invoke-interface {v0}, Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;->onRemoveAllAccessPoint()V

    .line 1363
    :cond_1
    return-void
.end method

.method resumeWifiScan()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanner:Lcom/android/settings_ex/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->resume()V

    :cond_0
    return-void
.end method

.method submit(Lcom/android/settings_ex/wifi/WifiConfigController;)V
    .locals 4
    .parameter "configController"

    .prologue
    const/4 v3, -0x1

    invoke-virtual {p1}, Lcom/android/settings_ex/wifi/WifiConfigController;->chosenNetworkSetupMethod()I

    move-result v1

    .local v1, networkSetup:I
    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanner:Lcom/android/settings_ex/wifi/WifiSettings$Scanner;

    invoke-virtual {v2}, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->resume()V

    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->updateAccessPoints()V

    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Lcom/android/settings_ex/wifi/WifiConfigController;->getWpsConfig()Landroid/net/wifi/WpsInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->startWps(Landroid/net/wifi/WpsInfo;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Lcom/android/settings_ex/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/wifi/WifiSettings;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->connectNetwork(I)V

    goto :goto_0

    :cond_2
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->saveNetwork(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/android/settings_ex/wifi/WifiConfigController;->isEdit()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->saveNetwork(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->connectNetwork(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 1297
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
