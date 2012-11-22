.class public Lcom/android/settings_ex/lge/ConnectivitySettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "ConnectivitySettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;
    }
.end annotation


# static fields
.field private static mOSPAsInterfaceMethod:Ljava/lang/reflect/Method;

.field private static mOSPIsConnectedMethod:Ljava/lang/reflect/Method;

.field private static mOSPgetTransportMethod:Ljava/lang/reflect/Method;

.field private static sSupportOSP3:Z

.field private static sSupportPCSuite:Z


# instance fields
.field private mAutoLaunch:Landroid/preference/PreferenceCategory;

.field private mCarHome:Landroid/preference/CheckBoxPreference;

.field private mDeskHome:Landroid/preference/CheckBoxPreference;

.field private mIOSPService:Ljava/lang/Object;

.field private mLGCategory:Landroid/preference/PreferenceCategory;

.field private mLGCategorySummary:Landroid/preference/Preference;

.field private mLGSoftwareHelp:Landroid/preference/Preference;

.field private mMediaHome:Landroid/preference/CheckBoxPreference;

.field private mOSPSettings:Landroid/preference/Preference;

.field private mOSPWIFIConnectionEnabler:Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;

.field private mOSPWIFIConnectionOnOff:Landroid/preference/CheckBoxPreference;

.field private mPCSuiteWIFIConnectionEnabler:Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;

.field private mPCSuiteWIFIConnectionOnOff:Landroid/preference/CheckBoxPreference;

.field private mPouchMode:Landroid/preference/CheckBoxPreference;

.field private final mStateReceiver:Landroid/content/BroadcastReceiver;

.field private mUsbAlwaysAsk:Landroid/preference/CheckBoxPreference;

.field private mUsbConnection:Z

.field private mUsbConnectionCategory:Landroid/preference/PreferenceCategory;

.field private mUsbConnectionType:Landroid/preference/Preference;

.field private mUsbHelper:Landroid/preference/Preference;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    sput-boolean v9, Lcom/android/settings_ex/lge/ConnectivitySettings;->sSupportPCSuite:Z

    sput-boolean v8, Lcom/android/settings_ex/lge/ConnectivitySettings;->sSupportOSP3:Z

    sput-object v7, Lcom/android/settings_ex/lge/ConnectivitySettings;->mOSPAsInterfaceMethod:Ljava/lang/reflect/Method;

    sput-object v7, Lcom/android/settings_ex/lge/ConnectivitySettings;->mOSPIsConnectedMethod:Ljava/lang/reflect/Method;

    sput-object v7, Lcom/android/settings_ex/lge/ConnectivitySettings;->mOSPgetTransportMethod:Ljava/lang/reflect/Method;

    sget-boolean v7, Lcom/lge/config/ConfigBuildFlags;->CAPP_OSP:Z

    if-eqz v7, :cond_3

    :try_start_0
    const-string v7, "com.lge.osp.IOSPService"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 137
    .local v5, ospInterface:Ljava/lang/Class;
    const/4 v6, 0x0

    .line 139
    .local v6, stubClass:Ljava/lang/Class;
    if-eqz v5, :cond_3

    .line 140
    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/Class;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 141
    .local v2, cls:Ljava/lang/Class;
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Stub"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 142
    move-object v6, v2

    .line 147
    .end local v2           #cls:Ljava/lang/Class;
    :cond_0
    if-eqz v6, :cond_1

    .line 148
    const-string v7, "android.os.IBinder"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 149
    .local v1, binderClass:Ljava/lang/Class;
    const-string v7, "asInterface"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    sput-object v7, Lcom/android/settings_ex/lge/ConnectivitySettings;->mOSPAsInterfaceMethod:Ljava/lang/reflect/Method;

    .end local v1           #binderClass:Ljava/lang/Class;
    :cond_1
    sget-object v7, Lcom/android/settings_ex/lge/ConnectivitySettings;->mOSPIsConnectedMethod:Ljava/lang/reflect/Method;

    if-nez v7, :cond_2

    const-string v8, "isConnected"

    const/4 v7, 0x0

    check-cast v7, [Ljava/lang/Class;

    invoke-virtual {v5, v8, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    sput-object v7, Lcom/android/settings_ex/lge/ConnectivitySettings;->mOSPIsConnectedMethod:Ljava/lang/reflect/Method;

    :cond_2
    sget-object v7, Lcom/android/settings_ex/lge/ConnectivitySettings;->mOSPgetTransportMethod:Ljava/lang/reflect/Method;

    if-nez v7, :cond_3

    const-string v8, "getTransport"

    const/4 v7, 0x0

    check-cast v7, [Ljava/lang/Class;

    invoke-virtual {v5, v8, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    sput-object v7, Lcom/android/settings_ex/lge/ConnectivitySettings;->mOSPgetTransportMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .end local v0           #arr$:[Ljava/lang/Class;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_3
    :goto_1
    return-void

    .line 140
    .restart local v0       #arr$:[Ljava/lang/Class;
    .restart local v2       #cls:Ljava/lang/Class;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 164
    .end local v0           #arr$:[Ljava/lang/Class;
    .end local v2           #cls:Ljava/lang/Class;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :catch_0
    move-exception v7

    goto :goto_1

    .line 163
    :catch_1
    move-exception v7

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mIOSPService:Ljava/lang/Object;

    new-instance v0, Lcom/android/settings_ex/lge/ConnectivitySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/lge/ConnectivitySettings$1;-><init>(Lcom/android/settings_ex/lge/ConnectivitySettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings_ex/lge/ConnectivitySettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mUsbConnection:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/lge/ConnectivitySettings;)Landroid/hardware/usb/UsbManager;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object v0
.end method

.method static synthetic access$1000()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mOSPIsConnectedMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/lge/ConnectivitySettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0}, Lcom/android/settings_ex/lge/ConnectivitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mOSPAsInterfaceMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/lge/ConnectivitySettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/lge/ConnectivitySettings;->updateToggles(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/lge/ConnectivitySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mPCSuiteWIFIConnectionOnOff:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/lge/ConnectivitySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mOSPWIFIConnectionOnOff:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/settings_ex/lge/ConnectivitySettings;->sSupportOSP3:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/lge/ConnectivitySettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0}, Lcom/android/settings_ex/lge/ConnectivitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/lge/ConnectivitySettings;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mIOSPService:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/settings_ex/lge/ConnectivitySettings;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mIOSPService:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$900()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mOSPgetTransportMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method private initAutoLaunch()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 684
    const-string v0, "auto_launch"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/lge/ConnectivitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mAutoLaunch:Landroid/preference/PreferenceCategory;

    .line 686
    const-string v0, "car_home"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/lge/ConnectivitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mCarHome:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mCarHome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/lge/ConnectivitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "car_home_auto_launch"

    invoke-static {v0, v4, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 689
    const-string v0, "desk_home"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/lge/ConnectivitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mDeskHome:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mDeskHome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/lge/ConnectivitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "desk_home_auto_launch"

    invoke-static {v0, v4, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 692
    const-string v0, "media_home"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/lge/ConnectivitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mMediaHome:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mMediaHome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/lge/ConnectivitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "media_home_auto_launch"

    invoke-static {v0, v4, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 695
    const-string v0, "pouch_mode"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/lge/ConnectivitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mPouchMode:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mPouchMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/lge/ConnectivitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pouch_mode_auto_launch"

    invoke-static {v3, v4, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 698
    const-string v0, "VZW"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 699
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "d1lv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mAutoLaunch:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mDeskHome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :goto_4
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3

    :cond_4
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "i_vzw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mAutoLaunch:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mDeskHome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mAutoLaunch:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mMediaHome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_4

    .line 706
    :cond_5
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "batman_vzw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mAutoLaunch:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mCarHome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mAutoLaunch:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mDeskHome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mAutoLaunch:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mPouchMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mAutoLaunch:Landroid/preference/PreferenceCategory;

    const-string v1, "pouch_notification"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/lge/ConnectivitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_4

    .line 712
    :cond_6
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "cayman"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mAutoLaunch:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mMediaHome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mAutoLaunch:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mPouchMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mAutoLaunch:Landroid/preference/PreferenceCategory;

    const-string v1, "pouch_notification"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/lge/ConnectivitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_4

    .line 718
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings_ex/lge/ConnectivitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mAutoLaunch:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_4

    .line 722
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings_ex/lge/ConnectivitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mAutoLaunch:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4
.end method

.method private updateState()V
    .locals 0

    .prologue
    .line 335
    return-void
.end method

.method private updateToggles(Ljava/lang/String;)V
    .locals 4
    .parameter "function"

    .prologue
    const v3, 0x7f0807a3

    const v2, 0x7f080370

    .line 338
    const-string v0, "charge_only"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mUsbConnectionType:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "mtp_only"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mUsbConnectionType:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_1
    const-string v0, "ecm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mUsbConnectionType:Landroid/preference/Preference;

    const v1, 0x7f0807af

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 346
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mUsbConnectionType:Landroid/preference/Preference;

    const v1, 0x7f0803ba

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 347
    :cond_3
    const-string v0, "pc_suite"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mUsbConnectionType:Landroid/preference/Preference;

    const v1, 0x7f0807b0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 351
    :cond_4
    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "US"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ATT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mUsbConnectionType:Landroid/preference/Preference;

    const v1, 0x7f080372

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 355
    :cond_5
    iget-object v0, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mUsbConnectionType:Landroid/preference/Preference;

    const v1, 0x7f0807e1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 358
    :cond_6
    const-string v0, "mass_storage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 359
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "i_skt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "i_u"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 360
    :cond_7
    iget-object v0, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mUsbConnectionType:Landroid/preference/Preference;

    const v1, 0x7f0807b1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0

    .line 363
    :cond_8
    iget-object v0, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mUsbConnectionType:Landroid/preference/Preference;

    const v1, 0x7f0807a0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0

    .line 365
    :cond_9
    const-string v0, "ptp_only"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mUsbConnectionType:Landroid/preference/Preference;

    const v1, 0x7f08036e

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0

    .line 369
    :cond_a
    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LGU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 370
    :cond_b
    iget-object v0, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mUsbConnectionType:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0

    .line 373
    :cond_c
    iget-object v0, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mUsbConnectionType:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/lge/ConnectivitySettings;->updateToggles(Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v3, 0x7f06000d

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/lge/ConnectivitySettings;->addPreferencesFromResource(I)V

    const-string v3, "usb"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/lge/ConnectivitySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/usb/UsbManager;

    iput-object v3, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 201
    const-string v3, "usb_connection"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/lge/ConnectivitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mUsbConnectionCategory:Landroid/preference/PreferenceCategory;

    .line 202
    const-string v3, "usb_connection_type"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/lge/ConnectivitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mUsbConnectionType:Landroid/preference/Preference;

    .line 203
    const-string v3, "usb_always_ask"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/lge/ConnectivitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mUsbAlwaysAsk:Landroid/preference/CheckBoxPreference;

    iget-object v6, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mUsbAlwaysAsk:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/lge/ConnectivitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "usb_ask_on_connection"

    invoke-static {v3, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_4

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 207
    const-string v3, "connectivity_helper"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/lge/ConnectivitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mUsbHelper:Landroid/preference/Preference;

    .line 210
    const-string v3, "lg_category"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/lge/ConnectivitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mLGCategory:Landroid/preference/PreferenceCategory;

    .line 211
    const-string v3, "lg_category_summary"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/lge/ConnectivitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mLGCategorySummary:Landroid/preference/Preference;

    .line 212
    const-string v3, "osp_settings"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/lge/ConnectivitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mOSPSettings:Landroid/preference/Preference;

    .line 213
    const-string v3, "wifi_pcsuite_connection_onoff"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/lge/ConnectivitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mPCSuiteWIFIConnectionOnOff:Landroid/preference/CheckBoxPreference;

    .line 214
    const-string v3, "wifi_osp_connection_onoff"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/lge/ConnectivitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mOSPWIFIConnectionOnOff:Landroid/preference/CheckBoxPreference;

    new-instance v3, Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;

    invoke-virtual {p0}, Lcom/android/settings_ex/lge/ConnectivitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v3, p0, v6}, Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;-><init>(Lcom/android/settings_ex/lge/ConnectivitySettings;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mPCSuiteWIFIConnectionEnabler:Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;

    new-instance v3, Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;

    invoke-virtual {p0}, Lcom/android/settings_ex/lge/ConnectivitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v3, p0, v6}, Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;-><init>(Lcom/android/settings_ex/lge/ConnectivitySettings;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mOSPWIFIConnectionEnabler:Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;

    .line 217
    const-string v3, "lg_software_help"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/lge/ConnectivitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mLGSoftwareHelp:Landroid/preference/Preference;

    iget-object v6, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mPCSuiteWIFIConnectionOnOff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/lge/ConnectivitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "linkcloud_settings"

    invoke-static {v3, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_5

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mOSPWIFIConnectionOnOff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/lge/ConnectivitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "osp_wifi_settings"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_6

    :goto_2
    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/settings_ex/lge/ConnectivitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .local v2, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v3, "com.lge.osp"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 230
    .local v1, pkgInfo:Landroid/content/pm/PackageInfo;
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    const/16 v4, 0x5208

    if-lt v3, v4, :cond_0

    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/settings_ex/lge/ConnectivitySettings;->sSupportOSP3:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v1           #pkgInfo:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_3
    :try_start_1
    const-string v3, "com.lge.sync"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 238
    .restart local v1       #pkgInfo:Landroid/content/pm/PackageInfo;
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/settings_ex/lge/ConnectivitySettings;->sSupportPCSuite:Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v1           #pkgInfo:Landroid/content/pm/PackageInfo;
    :goto_4
    sget-boolean v3, Lcom/android/settings_ex/lge/ConnectivitySettings;->sSupportPCSuite:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mLGCategory:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mPCSuiteWIFIConnectionOnOff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    sget-boolean v3, Lcom/android/settings_ex/lge/ConnectivitySettings;->sSupportOSP3:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mLGCategory:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mOSPSettings:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    :goto_5
    iget-object v3, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mLGCategory:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mLGSoftwareHelp:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iget-object v3, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mLGCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v3

    if-gtz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/settings_ex/lge/ConnectivitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mLGCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_3
    invoke-direct {p0}, Lcom/android/settings_ex/lge/ConnectivitySettings;->initAutoLaunch()V

    return-void

    .end local v2           #pm:Landroid/content/pm/PackageManager;
    :cond_4
    move v3, v5

    goto/16 :goto_0

    :cond_5
    move v3, v5

    goto :goto_1

    :cond_6
    move v4, v5

    goto :goto_2

    .restart local v2       #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "ConnectivitySettings"

    const-string v4, "not support PCSuite"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v5, Lcom/android/settings_ex/lge/ConnectivitySettings;->sSupportPCSuite:Z

    goto :goto_4

    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_7
    iget-object v3, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mLGCategory:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mOSPWIFIConnectionOnOff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iget-object v3, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mLGCategory:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mLGSoftwareHelp:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iget-object v3, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mLGCategory:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mLGCategorySummary:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iget-object v3, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mPCSuiteWIFIConnectionOnOff:Landroid/preference/CheckBoxPreference;

    const v4, 0x7f0807aa

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    iget-object v3, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mPCSuiteWIFIConnectionOnOff:Landroid/preference/CheckBoxPreference;

    const v4, 0x7f0807ab

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    invoke-virtual {p0}, Lcom/android/settings_ex/lge/ConnectivitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mOSPSettings:Landroid/preference/Preference;

    invoke-virtual {v3}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.lge.osp"

    invoke-static {v3, v4}, Lcom/android/settings_ex/Utils;->checkPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mLGCategory:Landroid/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mOSPSettings:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_5

    .line 233
    :catch_1
    move-exception v3

    goto/16 :goto_3
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mPCSuiteWIFIConnectionEnabler:Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mPCSuiteWIFIConnectionEnabler:Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;->pause()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mOSPWIFIConnectionEnabler:Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mOSPWIFIConnectionEnabler:Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;->pause()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/lge/ConnectivitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 317
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mUsbConnectionType:Landroid/preference/Preference;

    if-ne p2, v0, :cond_3

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v3, "DCM"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "i_dcm"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "p2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/lge/ConnectivitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v3, "usb"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v0, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v3, "dtf"

    invoke-virtual {v0, v3}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 392
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/lge/ConnectivitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/lge/ConnectivitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0809f4

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080787

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_0
    return v2

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "extra_usb_launcher"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pc_suite"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mUsbConnection:Z

    if-nez v2, :cond_1

    .line 405
    const-string v2, "extra_direct_autorun"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 407
    :cond_1
    const-class v1, Lcom/android/settings_ex/deviceinfo/UsbSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {p0, p0, v1, v2, v0}, Lcom/android/settings_ex/lge/ConnectivitySettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 434
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mUsbAlwaysAsk:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_5

    iget-object v0, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mUsbAlwaysAsk:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings_ex/lge/ConnectivitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "usb_ask_on_connection"

    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mCarHome:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_7

    iget-object v0, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mCarHome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings_ex/lge/ConnectivitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "car_home_auto_launch"

    if-eqz v0, :cond_6

    :goto_3
    invoke-static {v3, v4, v1}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_6
    move v1, v2

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mDeskHome:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_9

    iget-object v0, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mDeskHome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings_ex/lge/ConnectivitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "desk_home_auto_launch"

    if-eqz v0, :cond_8

    :goto_4
    invoke-static {v3, v4, v1}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_8
    move v1, v2

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mMediaHome:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_b

    iget-object v0, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mMediaHome:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings_ex/lge/ConnectivitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "media_home_auto_launch"

    if-eqz v0, :cond_a

    :goto_5
    invoke-static {v3, v4, v1}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_a
    move v1, v2

    goto :goto_5

    :cond_b
    iget-object v0, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mPouchMode:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mPouchMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings_ex/lge/ConnectivitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pouch_mode_auto_launch"

    if-eqz v0, :cond_c

    :goto_6
    invoke-static {v3, v4, v1}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_c
    move v1, v2

    goto :goto_6
.end method

.method public onResume()V
    .locals 3

    .prologue
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    iget-object v1, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mPCSuiteWIFIConnectionEnabler:Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mPCSuiteWIFIConnectionEnabler:Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;

    invoke-virtual {v1}, Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;->resume()V

    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mOSPWIFIConnectionEnabler:Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mOSPWIFIConnectionEnabler:Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;

    invoke-virtual {v1}, Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;->resume()V

    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/lge/ConnectivitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/settings_ex/lge/ConnectivitySettings;->updateState()V

    iget-object v1, p0, Lcom/android/settings_ex/lge/ConnectivitySettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/lge/ConnectivitySettings;->updateToggles(Ljava/lang/String;)V

    .line 303
    return-void
.end method
