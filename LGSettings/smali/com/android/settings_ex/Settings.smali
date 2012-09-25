.class public Lcom/android/settings_ex/Settings;
.super Landroid/preference/PreferenceActivity;
.source "Settings.java"

# interfaces
.implements Lcom/android/settings_ex/ButtonBarHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/Settings$UsbSettingsActivity;,
        Lcom/android/settings_ex/Settings$MasterClearConfirm;,
        Lcom/android/settings_ex/Settings$MasterClearActivity;,
        Lcom/android/settings_ex/Settings$SystemsMenuSettingsActivity;,
        Lcom/android/settings_ex/Settings$WifiSettingsDialogActivity;,
        Lcom/android/settings_ex/Settings$OwnerInfoSettingsActivity;,
        Lcom/android/settings_ex/Settings$PowerSaveSettingsActivity;,
        Lcom/android/settings_ex/Settings$LgtRoamingSettingsActivity;,
        Lcom/android/settings_ex/Settings$ConnectivitySettingsActivity;,
        Lcom/android/settings_ex/Settings$LockSettingsActivity;,
        Lcom/android/settings_ex/Settings$ZonePickerActivity;,
        Lcom/android/settings_ex/Settings$RcseSettingsActivity;,
        Lcom/android/settings_ex/Settings$GestureSettingsActivity;,
        Lcom/android/settings_ex/Settings$AndroidBeamSettingsActivity;,
        Lcom/android/settings_ex/Settings$TextToSpeechSettingsActivity;,
        Lcom/android/settings_ex/Settings$AdvancedWifiSettingsActivity;,
        Lcom/android/settings_ex/Settings$DataUsageSummaryActivity;,
        Lcom/android/settings_ex/Settings$DeviceAdminSettingsActivity;,
        Lcom/android/settings_ex/Settings$CryptKeeperSettingsActivity;,
        Lcom/android/settings_ex/Settings$AccountSyncSettingsActivity;,
        Lcom/android/settings_ex/Settings$PowerUsageSummaryActivity;,
        Lcom/android/settings_ex/Settings$ManageAccountsSettingsActivity;,
        Lcom/android/settings_ex/Settings$RunningServicesActivity;,
        Lcom/android/settings_ex/Settings$DockSettingsActivity;,
        Lcom/android/settings_ex/Settings$PrivacySettingsActivity;,
        Lcom/android/settings_ex/Settings$LocationSettingsActivity;,
        Lcom/android/settings_ex/Settings$SecuritySettingsActivity;,
        Lcom/android/settings_ex/Settings$AccessibilitySettingsActivity;,
        Lcom/android/settings_ex/Settings$DevelopmentSettingsActivity;,
        Lcom/android/settings_ex/Settings$StorageUseActivity;,
        Lcom/android/settings_ex/Settings$ManageApplicationsActivity;,
        Lcom/android/settings_ex/Settings$DeviceInfoSettingsActivity;,
        Lcom/android/settings_ex/Settings$DisplaySettingsActivity;,
        Lcom/android/settings_ex/Settings$SoundSettingsActivity;,
        Lcom/android/settings_ex/Settings$UserDictionarySettingsActivity;,
        Lcom/android/settings_ex/Settings$LocalePickerActivity;,
        Lcom/android/settings_ex/Settings$SpellCheckersSettingsActivity;,
        Lcom/android/settings_ex/Settings$InputMethodAndLanguageSettingsActivity;,
        Lcom/android/settings_ex/Settings$WifiP2pSettingsActivity;,
        Lcom/android/settings_ex/Settings$WifiSettingsActivity;,
        Lcom/android/settings_ex/Settings$StorageSettingsActivity;,
        Lcom/android/settings_ex/Settings$DateTimeSettingsActivity;,
        Lcom/android/settings_ex/Settings$VpnSettingsActivity;,
        Lcom/android/settings_ex/Settings$TetherSettingsActivity;,
        Lcom/android/settings_ex/Settings$WirelessSettingsActivity;,
        Lcom/android/settings_ex/Settings$BluetoothSettingsActivity;,
        Lcom/android/settings_ex/Settings$HeaderAdapter;
    }
.end annotation


# static fields
.field static padding_in_px_10:I

.field static padding_in_px_6:I


# instance fields
.field customList:Landroid/widget/ListView;

.field private hasFacing_SENSOR:Z

.field private hasTap_SENSOR:Z

.field private hasTilt_SENSOR:Z

.field private mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

.field private mFirstHeader:Landroid/preference/PreferenceActivity$Header;

.field private mFragmentClass:Ljava/lang/String;

.field protected mHeaderIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mInLocalHeaderSwitch:Z

.field private mParentHeader:Landroid/preference/PreferenceActivity$Header;

.field private mTopLevelHeaderId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 134
    sput v0, Lcom/android/settings_ex/Settings;->padding_in_px_6:I

    .line 135
    sput v0, Lcom/android/settings_ex/Settings;->padding_in_px_10:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 115
    iput-boolean v0, p0, Lcom/android/settings_ex/Settings;->hasFacing_SENSOR:Z

    .line 116
    iput-boolean v0, p0, Lcom/android/settings_ex/Settings;->hasTap_SENSOR:Z

    .line 117
    iput-boolean v0, p0, Lcom/android/settings_ex/Settings;->hasTilt_SENSOR:Z

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/Settings;->mHeaderIndexMap:Ljava/util/HashMap;

    .line 984
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/Settings;)Landroid/preference/PreferenceActivity$Header;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/settings_ex/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/Settings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/settings_ex/Settings;->switchToParent(Ljava/lang/String;)V

    return-void
.end method

.method private getMetaData()V
    .locals 6

    .prologue
    .line 595
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 597
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v3, :cond_1

    .line 614
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    :cond_0
    :goto_0
    return-void

    .line 598
    .restart local v0       #ai:Landroid/content/pm/ActivityInfo;
    :cond_1
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.settings_ex.TOP_LEVEL_HEADER_ID"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/settings_ex/Settings;->mTopLevelHeaderId:I

    .line 599
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.settings_ex.FRAGMENT_CLASS"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/Settings;->mFragmentClass:Ljava/lang/String;

    .line 602
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.settings_ex.PARENT_FRAGMENT_TITLE"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 603
    .local v2, parentHeaderTitleRes:I
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.settings_ex.PARENT_FRAGMENT_CLASS"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 604
    .local v1, parentFragmentClass:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 605
    new-instance v3, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v3}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v3, p0, Lcom/android/settings_ex/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 606
    iget-object v3, p0, Lcom/android/settings_ex/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iput-object v1, v3, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 607
    if-eqz v2, :cond_0

    .line 608
    iget-object v3, p0, Lcom/android/settings_ex/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 611
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    .end local v1           #parentFragmentClass:Ljava/lang/String;
    .end local v2           #parentHeaderTitleRes:I
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private highlightHeader()V
    .locals 4

    .prologue
    .line 289
    iget v1, p0, Lcom/android/settings_ex/Settings;->mTopLevelHeaderId:I

    if-eqz v1, :cond_0

    .line 290
    iget-object v1, p0, Lcom/android/settings_ex/Settings;->mHeaderIndexMap:Ljava/util/HashMap;

    iget v2, p0, Lcom/android/settings_ex/Settings;->mTopLevelHeaderId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 291
    .local v0, index:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 293
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 296
    .end local v0           #index:Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method private needsDockSettings()Z
    .locals 2

    .prologue
    .line 590
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V
    .locals 1
    .parameter "header"

    .prologue
    .line 232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/Settings;->mInLocalHeaderSwitch:Z

    .line 233
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/Settings;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 234
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/Settings;->mInLocalHeaderSwitch:Z

    .line 235
    return-void
.end method

.method private switchToParent(Ljava/lang/String;)V
    .locals 10
    .parameter "className"

    .prologue
    .line 251
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 253
    .local v0, cn:Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 254
    .local v6, pm:Landroid/content/pm/PackageManager;
    const/16 v7, 0x80

    invoke-virtual {v6, v0, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    .line 256
    .local v5, parentInfo:Landroid/content/pm/ActivityInfo;
    if-eqz v5, :cond_0

    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_0

    .line 257
    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "com.android.settings_ex.FRAGMENT_CLASS"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 258
    .local v1, fragmentClass:Ljava/lang/String;
    invoke-virtual {v5, v6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 259
    .local v2, fragmentTitle:Ljava/lang/CharSequence;
    new-instance v4, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v4}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 260
    .local v4, parentHeader:Landroid/preference/PreferenceActivity$Header;
    iput-object v1, v4, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 261
    iput-object v2, v4, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 262
    iput-object v4, p0, Lcom/android/settings_ex/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 264
    invoke-direct {p0, v4}, Lcom/android/settings_ex/Settings;->switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V

    .line 265
    invoke-direct {p0}, Lcom/android/settings_ex/Settings;->highlightHeader()V

    .line 267
    new-instance v7, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v7}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v7, p0, Lcom/android/settings_ex/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 268
    iget-object v7, p0, Lcom/android/settings_ex/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v8, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "com.android.settings_ex.PARENT_FRAGMENT_CLASS"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 270
    iget-object v7, p0, Lcom/android/settings_ex/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v8, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "com.android.settings_ex.PARENT_FRAGMENT_TITLE"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    .end local v1           #fragmentClass:Ljava/lang/String;
    .end local v2           #fragmentTitle:Ljava/lang/CharSequence;
    .end local v4           #parentHeader:Landroid/preference/PreferenceActivity$Header;
    .end local v5           #parentInfo:Landroid/content/pm/ActivityInfo;
    .end local v6           #pm:Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-void

    .line 272
    :catch_0
    move-exception v3

    .line 273
    .local v3, nnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "Settings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not find parent activity : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateHeaderList(Ljava/util/List;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, target:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const v8, 0x7f0b025d

    const/4 v7, 0x1

    .line 411
    const/4 v2, 0x0

    .line 426
    .local v2, i:I
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->checkSensor()V

    .line 428
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_10

    .line 429
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    .line 431
    .local v1, header:Landroid/preference/PreferenceActivity$Header;
    iget-wide v4, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v3, v4

    .line 432
    .local v3, id:I
    const v4, 0x7f0b0275

    if-ne v3, v4, :cond_11

    .line 433
    invoke-direct {p0}, Lcom/android/settings_ex/Settings;->needsDockSettings()Z

    move-result v4

    if-nez v4, :cond_1

    .line 434
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 461
    :cond_1
    :goto_1
    if-ne v3, v8, :cond_2

    .line 462
    invoke-static {}, Lcom/android/settings_ex/Utils;->isMultiSimEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 463
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 465
    :cond_2
    const v4, 0x7f0b025e

    if-ne v3, v4, :cond_3

    .line 466
    invoke-static {}, Lcom/android/settings_ex/Utils;->isMultiSimEnabled()Z

    move-result v4

    if-nez v4, :cond_3

    .line 467
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 471
    :cond_3
    const v4, 0x7f0b025f

    if-ne v3, v4, :cond_4

    .line 473
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 478
    :cond_4
    const v4, 0x7f0b026e

    if-ne v3, v4, :cond_5

    .line 479
    const-string v4, "DCM"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 480
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 485
    :cond_5
    const v4, 0x7f0b0260

    if-ne v3, v4, :cond_7

    .line 487
    const/4 v0, 0x1

    .line 488
    .local v0, Chamelion_display:I
    const-string v4, "BM"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 489
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "RoamPreference_MenuDisplay"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 490
    const-string v4, "Settings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BM Chamelion_display = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :goto_2
    if-nez v0, :cond_6

    .line 500
    const-string v4, "Settings"

    const-string v5, "remove roaming menu"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 505
    :cond_6
    const-string v4, "LGU"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "KT"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "SPRINT"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "BM"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "SPR"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 508
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 513
    .end local v0           #Chamelion_display:I
    :cond_7
    const v4, 0x7f0b0261

    if-ne v3, v4, :cond_8

    .line 517
    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v5, "l1sk"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v5, "l1u"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 518
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 521
    :cond_8
    const v4, 0x7f0b026f

    if-ne v3, v4, :cond_9

    .line 522
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 526
    :cond_9
    const v4, 0x7f0b0268

    if-ne v3, v4, :cond_a

    .line 527
    iget-boolean v4, p0, Lcom/android/settings_ex/Settings;->hasFacing_SENSOR:Z

    if-nez v4, :cond_a

    iget-boolean v4, p0, Lcom/android/settings_ex/Settings;->hasTap_SENSOR:Z

    if-nez v4, :cond_a

    iget-boolean v4, p0, Lcom/android/settings_ex/Settings;->hasTilt_SENSOR:Z

    if-eqz v4, :cond_18

    .line 535
    :cond_a
    :goto_3
    const v4, 0x7f0b026c

    if-ne v3, v4, :cond_b

    .line 536
    invoke-static {}, Lcom/android/settings_ex/lge/OverlayUtils;->isX3Model()Z

    move-result v4

    if-nez v4, :cond_b

    .line 537
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 541
    :cond_b
    if-ne v3, v8, :cond_c

    .line 542
    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DCM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 543
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 548
    :cond_c
    const v4, 0x7f0b027a

    if-ne v3, v4, :cond_d

    .line 549
    const-string v4, "SPR"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    const-string v4, "BM"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 551
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 554
    :cond_d
    const v4, 0x7f0b027b

    if-ne v3, v4, :cond_e

    .line 555
    const-string v4, "SPR"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    const-string v4, "BM"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 557
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 562
    :cond_e
    const v4, 0x7f0b027c

    if-ne v3, v4, :cond_f

    .line 563
    invoke-static {}, Lcom/android/settings_ex/Utils;->isSelectOldVersion()Z

    move-result v4

    if-nez v4, :cond_f

    .line 564
    const-string v4, "aboutphone"

    const-string v5, "Utils.isSelectOldVersion() == false means old version remove"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 568
    :cond_f
    const v4, 0x7f0b027d

    if-ne v3, v4, :cond_19

    .line 569
    invoke-static {}, Lcom/android/settings_ex/Utils;->isSelectOldVersion()Z

    move-result v4

    if-ne v4, v7, :cond_19

    .line 570
    const-string v4, "aboutphone"

    const-string v5, "Utils.isSelectOldVersion() == true means new version remove"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 587
    .end local v1           #header:Landroid/preference/PreferenceActivity$Header;
    .end local v3           #id:I
    :cond_10
    return-void

    .line 435
    .restart local v1       #header:Landroid/preference/PreferenceActivity$Header;
    .restart local v3       #id:I
    :cond_11
    const v4, 0x7f0b0262

    if-eq v3, v4, :cond_12

    const v4, 0x7f0b026d

    if-ne v3, v4, :cond_13

    .line 436
    :cond_12
    invoke-static {p0, p1, v1}, Lcom/android/settings_ex/Utils;->updateHeaderToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Ljava/util/List;Landroid/preference/PreferenceActivity$Header;)Z

    goto/16 :goto_1

    .line 437
    :cond_13
    const v4, 0x7f0b025a

    if-ne v3, v4, :cond_14

    .line 439
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.hardware.wifi"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 440
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 442
    :cond_14
    const v4, 0x7f0b025b

    if-ne v3, v4, :cond_15

    .line 444
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.hardware.bluetooth"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 445
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 455
    :cond_15
    const v4, 0x7f0b0259

    if-ne v3, v4, :cond_1

    .line 456
    invoke-static {}, Lcom/android/settings_ex/Utils;->isMultiSimEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 457
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 491
    .restart local v0       #Chamelion_display:I
    :cond_16
    const-string v4, "SPR"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 492
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "RoamPreference_MenuDisplay"

    invoke-static {v4, v5, v7}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 493
    const-string v4, "Settings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SPR Chamelion_display = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 495
    :cond_17
    const/4 v0, 0x1

    .line 496
    const-string v4, "Settings"

    const-string v5, "Chamelion_display : 1 (other)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 529
    .end local v0           #Chamelion_display:I
    :cond_18
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 577
    :cond_19
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_0

    .line 579
    iget-object v4, p0, Lcom/android/settings_ex/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    if-nez v4, :cond_1a

    invoke-static {v1}, Lcom/android/settings_ex/Settings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v4

    if-eqz v4, :cond_1a

    .line 581
    iput-object v1, p0, Lcom/android/settings_ex/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    .line 583
    :cond_1a
    iget-object v4, p0, Lcom/android/settings_ex/Settings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public checkSensor()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 877
    const-string v3, "sensor"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/Settings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    .line 879
    .local v2, sensorManager:Landroid/hardware/SensorManager;
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    .line 881
    .local v1, sensorList:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 883
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    const/16 v4, 0x16

    if-ne v3, v4, :cond_1

    .line 884
    iput-boolean v5, p0, Lcom/android/settings_ex/Settings;->hasTap_SENSOR:Z

    .line 881
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 885
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    const/16 v4, 0x17

    if-ne v3, v4, :cond_2

    .line 886
    iput-boolean v5, p0, Lcom/android/settings_ex/Settings;->hasFacing_SENSOR:Z

    goto :goto_1

    .line 887
    :cond_2
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    const/16 v4, 0x15

    if-ne v3, v4, :cond_0

    .line 888
    iput-boolean v5, p0, Lcom/android/settings_ex/Settings;->hasTilt_SENSOR:Z

    goto :goto_1

    .line 892
    :cond_3
    return-void
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 7

    .prologue
    .line 300
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 301
    .local v4, superIntent:Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/Settings;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 304
    .local v3, startingFragment:Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->onIsMultiPane()Z

    move-result v5

    if-nez v5, :cond_1

    .line 305
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 306
    .local v2, modIntent:Landroid/content/Intent;
    const-string v5, ":android:show_fragment"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 308
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 309
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .end local v0           #args:Landroid/os/Bundle;
    .local v1, args:Landroid/os/Bundle;
    move-object v0, v1

    .line 313
    .end local v1           #args:Landroid/os/Bundle;
    .restart local v0       #args:Landroid/os/Bundle;
    :goto_0
    const-string v5, "intent"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 314
    const-string v5, ":android:show_fragment_args"

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 317
    .end local v0           #args:Landroid/os/Bundle;
    .end local v2           #modIntent:Landroid/content/Intent;
    :goto_1
    return-object v2

    .line 311
    .restart local v0       #args:Landroid/os/Bundle;
    .restart local v2       #modIntent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #args:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .restart local v0       #args:Landroid/os/Bundle;
    goto :goto_0

    .end local v0           #args:Landroid/os/Bundle;
    .end local v2           #modIntent:Landroid/content/Intent;
    :cond_1
    move-object v2, v4

    .line 317
    goto :goto_1
.end method

.method public getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 623
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/settings_ex/Settings;->mFragmentClass:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/Settings;->mFragmentClass:Ljava/lang/String;

    .line 337
    :cond_0
    :goto_0
    return-object v0

    .line 327
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 328
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 330
    :cond_2
    const-string v1, "com.android.settings_ex.ManageApplications"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.settings_ex.RunningServices"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.settings_ex.applications.StorageUse"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    :cond_3
    const-class v0, Lcom/android/settings_ex/applications/ManageApplications;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hasNextButton()Z
    .locals 1

    .prologue
    .line 618
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->hasNextButton()Z

    move-result v0

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 128
    :try_start_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 403
    .local p1, headers:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const v0, 0x7f06003b

    invoke-virtual {p0, v0, p1}, Lcom/android/settings_ex/Settings;->loadHeadersFromResource(ILjava/util/List;)V

    .line 405
    invoke-direct {p0, p1}, Lcom/android/settings_ex/Settings;->updateHeaderList(Ljava/util/List;)V

    .line 407
    iput-object p1, p0, Lcom/android/settings_ex/Settings;->mHeaders:Ljava/util/List;

    .line 408
    return-void
.end method

.method public onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 362
    invoke-super {p0, p1, p2, p3, p4}, Landroid/preference/PreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 365
    const-string v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fragmentName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    const-class v1, Lcom/android/settings_ex/DataUsageSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings_ex/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings_ex/UserDictionarySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 372
    :cond_0
    const-string v1, "settings:remove_ui_options"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 375
    :cond_1
    const-string v1, "com.android.settings_ex.SoundSettings"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.android.settings_ex.ChooseLockGeneric$ChooseLockGenericFragment"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.android.settings_ex.GestureSettings"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 378
    :cond_2
    const-class v1, Lcom/android/settings_ex/SubSoundSettings;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 385
    :goto_0
    const-string v1, "com.android.settings_ex.DSSLoader"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 387
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 388
    const-string v1, "com.sprint.dsa.DSA_ACTIVITY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 389
    const-string v1, "vnd.sprint.dsa/vnd.sprint.dsa.main"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 390
    const-string v1, "com.sprint.dsa.source"

    const-string v2, "menu"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    :cond_3
    return-object v0

    .line 381
    :cond_4
    const-class v1, Lcom/android/settings_ex/SubSettings;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x3f00

    const/4 v5, 0x0

    .line 139
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "settings:remove_ui_options"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/Window;->setUiOptions(I)V

    .line 143
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/Settings;->getMetaData()V

    .line 144
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings_ex/Settings;->mInLocalHeaderSwitch:Z

    .line 145
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 146
    iput-boolean v5, p0, Lcom/android/settings_ex/Settings;->mInLocalHeaderSwitch:Z

    .line 149
    const/4 v1, 0x6

    .line 150
    .local v1, padding_in_dp_6:I
    const/16 v0, 0xa

    .line 151
    .local v0, padding_in_dp_10:I
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->density:F

    .line 152
    .local v2, scale:F
    int-to-float v3, v1

    mul-float/2addr v3, v2

    add-float/2addr v3, v6

    float-to-int v3, v3

    sput v3, Lcom/android/settings_ex/Settings;->padding_in_px_6:I

    .line 153
    int-to-float v3, v0

    mul-float/2addr v3, v2

    add-float/2addr v3, v6

    float-to-int v3, v3

    sput v3, Lcom/android/settings_ex/Settings;->padding_in_px_10:I

    .line 155
    const v3, 0x102000a

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/android/settings_ex/Settings;->customList:Landroid/widget/ListView;

    .line 156
    iget-object v3, p0, Lcom/android/settings_ex/Settings;->customList:Landroid/widget/ListView;

    invoke-virtual {v3, v5, v5, v5, v5}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 157
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->onIsHidingHeaders()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->onIsMultiPane()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 158
    invoke-direct {p0}, Lcom/android/settings_ex/Settings;->highlightHeader()V

    .line 161
    const v3, 0x7f080135

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/Settings;->setTitle(I)V

    .line 165
    :cond_1
    if-eqz p1, :cond_2

    .line 166
    const-string v3, "com.android.settings_ex.CURRENT_HEADER"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceActivity$Header;

    iput-object v3, p0, Lcom/android/settings_ex/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 167
    const-string v3, "com.android.settings_ex.PARENT_HEADER"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceActivity$Header;

    iput-object v3, p0, Lcom/android/settings_ex/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 171
    :cond_2
    if-eqz p1, :cond_3

    iget-object v3, p0, Lcom/android/settings_ex/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v3, :cond_3

    .line 173
    iget-object v3, p0, Lcom/android/settings_ex/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v3, v3, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v3, v7}, Lcom/android/settings_ex/Settings;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 176
    :cond_3
    iget-object v3, p0, Lcom/android/settings_ex/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v3, :cond_4

    .line 177
    iget-object v3, p0, Lcom/android/settings_ex/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v3, v3, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    new-instance v4, Lcom/android/settings_ex/Settings$1;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/Settings$1;-><init>(Lcom/android/settings_ex/Settings;)V

    invoke-virtual {p0, v3, v7, v4}, Lcom/android/settings_ex/Settings;->setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 188
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "LargeText_Flag"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 190
    return-void
.end method

.method public onGetInitialHeader()Landroid/preference/PreferenceActivity$Header;
    .locals 3

    .prologue
    .line 346
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/Settings;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, fragmentClass:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 348
    new-instance v1, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v1}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 349
    .local v1, header:Landroid/preference/PreferenceActivity$Header;
    iput-object v0, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 350
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 351
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 352
    iput-object v1, p0, Lcom/android/settings_ex/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 356
    .end local v1           #header:Landroid/preference/PreferenceActivity$Header;
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 279
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 282
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->onIsHidingHeaders()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->onIsMultiPane()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/settings_ex/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/Settings;->switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V

    .line 286
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 223
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 225
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 226
    .local v0, listAdapter:Landroid/widget/ListAdapter;
    instance-of v1, v0, Lcom/android/settings_ex/Settings$HeaderAdapter;

    if-eqz v1, :cond_0

    .line 227
    check-cast v0, Lcom/android/settings_ex/Settings$HeaderAdapter;

    .end local v0           #listAdapter:Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Lcom/android/settings_ex/Settings$HeaderAdapter;->pause()V

    .line 229
    :cond_0
    return-void
.end method

.method public onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 852
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitleRes()I

    move-result v3

    .line 853
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/settings_ex/WallpaperTypeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 854
    const v3, 0x7f0802e5

    .line 856
    :cond_0
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const/4 v6, 0x0

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/Settings;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 858
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 207
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 209
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 210
    .local v0, listAdapter:Landroid/widget/ListAdapter;
    instance-of v1, v0, Lcom/android/settings_ex/Settings$HeaderAdapter;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 211
    check-cast v1, Lcom/android/settings_ex/Settings$HeaderAdapter;

    invoke-virtual {v1}, Lcom/android/settings_ex/Settings$HeaderAdapter;->resume()V

    .line 213
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings_ex/MDMSettingsAdapter;->getInstance()Lcom/android/settings_ex/MDMSettingsAdapter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/settings_ex/MDMSettingsAdapter;->setSettingsMenu(Landroid/content/res/Resources;Landroid/widget/ListAdapter;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    check-cast v0, Lcom/android/settings_ex/Settings$HeaderAdapter;

    .end local v0           #listAdapter:Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Lcom/android/settings_ex/Settings$HeaderAdapter;->notifyDataSetChanged()V

    .line 219
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 194
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 197
    iget-object v0, p0, Lcom/android/settings_ex/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_0

    .line 198
    const-string v0, "com.android.settings_ex.CURRENT_HEADER"

    iget-object v1, p0, Lcom/android/settings_ex/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_1

    .line 201
    const-string v0, "com.android.settings_ex.PARENT_HEADER"

    iget-object v1, p0, Lcom/android/settings_ex/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 203
    :cond_1
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .parameter "adapter"

    .prologue
    .line 863
    iget-object v1, p0, Lcom/android/settings_ex/Settings;->mHeaders:Ljava/util/List;

    if-nez v1, :cond_0

    .line 864
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings_ex/Settings;->mHeaders:Ljava/util/List;

    .line 867
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 868
    iget-object v2, p0, Lcom/android/settings_ex/Settings;->mHeaders:Ljava/util/List;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 867
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 873
    .end local v0           #i:I
    :cond_0
    new-instance v1, Lcom/android/settings_ex/Settings$HeaderAdapter;

    iget-object v2, p0, Lcom/android/settings_ex/Settings;->mHeaders:Ljava/util/List;

    invoke-direct {v1, p0, v2}, Lcom/android/settings_ex/Settings$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-super {p0, v1}, Landroid/preference/PreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 874
    return-void
.end method

.method public switchToHeader(Landroid/preference/PreferenceActivity$Header;)V
    .locals 2
    .parameter "header"

    .prologue
    const/4 v1, 0x0

    .line 239
    iget-boolean v0, p0, Lcom/android/settings_ex/Settings;->mInLocalHeaderSwitch:Z

    if-nez v0, :cond_0

    .line 240
    iput-object v1, p0, Lcom/android/settings_ex/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 241
    iput-object v1, p0, Lcom/android/settings_ex/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 243
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 244
    return-void
.end method
