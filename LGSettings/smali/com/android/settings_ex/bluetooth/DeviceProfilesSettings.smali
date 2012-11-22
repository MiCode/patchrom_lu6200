.class public final Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;
    }
.end annotation


# instance fields
.field private final mAutoConnectPrefs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;",
            "Landroid/preference/CheckBoxPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

.field private mDeviceNamePref:Landroid/preference/EditTextPreference;

.field private mDisconnectDialog:Landroid/app/AlertDialog;

.field private mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

.field private mManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

.field private mProfileContainer:Landroid/preference/PreferenceGroup;

.field private mProfileGroupIsRemoved:Z

.field private mProfileManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRenameDeviceNamePref:Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mAutoConnectPrefs:Ljava/util/HashMap;

    new-instance v0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$1;-><init>(Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;)Landroid/preference/EditTextPreference;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method private addPreferencesForProfiles()V
    .locals 4

    .prologue
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;

    .local v2, profile:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;
    invoke-direct {p0, v2}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->createProfilePreference(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    .local v1, pref:Landroid/preference/Preference;
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .end local v1           #pref:Landroid/preference/Preference;
    .end local v2           #profile:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->showOrHideProfileGroup()V

    return-void
.end method

.method private askDisconnect(Landroid/content/Context;Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;)V
    .locals 9
    .parameter "context"
    .parameter "profile"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    .local v0, device:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    .local v3, name:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 480
    const v6, 0x7f0800c2

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 483
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-interface {p2, v6}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;->getNameResource(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 485
    .local v4, profileName:Ljava/lang/String;
    const v6, 0x7f0800b7

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 486
    .local v5, title:Ljava/lang/String;
    const v6, 0x7f0800b8

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v8, 0x1

    aput-object v3, v7, v8

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, message:Ljava/lang/String;
    new-instance v1, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$3;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$3;-><init>(Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;)V

    .local v1, disconnectListener:Landroid/content/DialogInterface$OnClickListener;
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-static {p1, v6, v1, v5, v7}, Lcom/android/settings_ex/bluetooth/Utils;->showDisconnectDialog(Landroid/content/Context;Landroid/app/AlertDialog;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    .line 499
    return-void
.end method

.method private askIncomingSecurity(Landroid/preference/Preference;)V
    .locals 9
    .parameter "pref"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v7}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .local v2, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getTrustState()Z

    move-result v7

    if-eqz v7, :cond_0

    move v4, v5

    .line 395
    .local v4, pos:I
    :goto_0
    const/4 v7, 0x2

    new-array v3, v7, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f080aed

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v7, 0x7f080aec

    invoke-virtual {v5, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v6

    .line 398
    .local v3, items:[Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .local v1, alt_bld:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f080aea

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$2;

    invoke-direct {v5, p0, p1, v2}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$2;-><init>(Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;Landroid/preference/Preference;Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {v1, v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v5, 0x104

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    .end local v0           #alertDialog:Landroid/app/AlertDialog;
    .end local v1           #alt_bld:Landroid/app/AlertDialog$Builder;
    .end local v3           #items:[Ljava/lang/String;
    .end local v4           #pos:I
    :cond_0
    move v4, v6

    .line 393
    goto :goto_0
.end method

.method private createProfilePreference(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;)Landroid/preference/CheckBoxPreference;
    .locals 4
    .parameter "profile"

    .prologue
    const/4 v2, 0x0

    .line 328
    new-instance v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 329
    .local v1, pref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;->getNameResource(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    invoke-interface {p1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;->getOrdinal()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->getProfilePreferenceIndex(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setOrder(I)V

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getBtClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;->getDrawableResource(Landroid/bluetooth/BluetoothClass;)I

    move-result v0

    .local v0, iconResource:I
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 343
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    invoke-direct {p0, v1, p1}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/preference/CheckBoxPreference;Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;)V

    return-object v1
.end method

.method private getProfileOf(Landroid/preference/Preference;)Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;
    .locals 5
    .parameter "pref"

    .prologue
    const/4 v2, 0x0

    .line 559
    instance-of v3, p1, Landroid/preference/CheckBoxPreference;

    if-nez v3, :cond_1

    .line 568
    :cond_0
    :goto_0
    return-object v2

    .line 562
    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 563
    .local v1, key:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 566
    :try_start_0
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mProfileManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->getProfileByName(Ljava/lang/String;)Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 567
    :catch_0
    move-exception v0

    .line 568
    .local v0, ignored:Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method private getProfilePreferenceIndex(I)I
    .locals 2
    .parameter "profIndex"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getOrder()I

    move-result v0

    mul-int/lit8 v1, p1, 0xa

    add-int/2addr v0, v1

    return v0
.end method

.method private onProfileClicked(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;)V
    .locals 5
    .parameter "profile"

    .prologue
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    invoke-interface {p1, v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .local v2, status:I
    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    move v1, v3

    .local v1, isConnected:Z
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->askDisconnect(Landroid/content/Context;Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;)V

    :goto_1
    return-void

    .end local v1           #isConnected:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .restart local v1       #isConnected:Z
    :cond_1
    invoke-interface {p1, v0, v3}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3, p1}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->connectProfile(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;)V

    goto :goto_1
.end method

.method private refresh()V
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .local v0, deviceName:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->refreshProfiles()V

    return-void
.end method

.method private refreshProfilePreference(Landroid/preference/CheckBoxPreference;Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;)V
    .locals 7
    .parameter "profilePref"
    .parameter "profile"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    invoke-interface {p2, v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    move v2, v3

    .line 538
    .local v2, isConnected:Z
    :goto_0
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getBtClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v5

    invoke-interface {p2, v5, v2}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;->getDrawableResource(Landroid/bluetooth/BluetoothClass;Z)I

    move-result v1

    .local v1, iconResource:I
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/preference/CheckBoxPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 547
    :cond_0
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v5

    if-nez v5, :cond_3

    :goto_1
    invoke-virtual {p1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    invoke-interface {p2, v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    invoke-virtual {p1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-interface {p2, v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;->getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p2, v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;->getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    :cond_1
    return-void

    .end local v1           #iconResource:I
    .end local v2           #isConnected:Z
    :cond_2
    move v2, v4

    .line 537
    goto :goto_0

    .restart local v1       #iconResource:I
    .restart local v2       #isConnected:Z
    :cond_3
    move v3, v4

    .line 547
    goto :goto_1
.end method

.method private refreshProfiles()V
    .locals 6

    .prologue
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;

    .local v1, profile:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .local v2, profilePref:Landroid/preference/CheckBoxPreference;
    if-nez v2, :cond_0

    invoke-direct {p0, v1}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->createProfilePreference(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0, v2, v1}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/preference/CheckBoxPreference;Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0

    .end local v1           #profile:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;
    .end local v2           #profilePref:Landroid/preference/CheckBoxPreference;
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getRemovedProfiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;

    .restart local v1       #profile:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 525
    .local v2, profilePref:Landroid/preference/Preference;
    if-eqz v2, :cond_2

    .line 526
    const-string v3, "DeviceProfilesSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from profile list"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .end local v1           #profile:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;
    .end local v2           #profilePref:Landroid/preference/Preference;
    :cond_3
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->showOrHideProfileGroup()V

    return-void
.end method

.method private showOrHideProfileGroup()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .local v0, numProfiles:I
    iget-boolean v1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    .end local v0           #numProfiles:I
    :cond_0
    :goto_0
    return-void

    .restart local v0       #numProfiles:I
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 313
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    goto :goto_0
.end method

.method private unpairDevice()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->unpair()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v7, "device"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .local v2, device:Landroid/bluetooth/BluetoothDevice;
    :goto_0
    const v7, 0x7f060009

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 161
    const-string v7, "profile_container"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceGroup;

    iput-object v7, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/preference/PreferenceGroup;

    .line 162
    const-string v7, "rename_device"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/EditTextPreference;

    iput-object v7, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    if-nez v2, :cond_1

    const-string v7, "DeviceProfilesSettings"

    const-string v8, "Activity started without a remote Bluetooth device"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->finish()V

    :goto_1
    return-void

    .end local v2           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .local v1, args:Landroid/os/Bundle;
    const-string v7, "device"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .restart local v2       #device:Landroid/bluetooth/BluetoothDevice;
    goto :goto_0

    .line 169
    .end local v1           #args:Landroid/os/Bundle;
    :cond_1
    new-instance v7, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;-><init>(Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$1;)V

    iput-object v7, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mRenameDeviceNamePref:Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    iget-object v7, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    if-nez v7, :cond_2

    const-string v7, "DeviceProfilesSettings"

    const-string v8, "Can\'t get mManager: exiting"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 178
    :cond_2
    iget-object v7, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    invoke-virtual {v7}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v4

    .local v4, deviceManager:Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;
    iget-object v7, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    invoke-virtual {v7}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mProfileManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v4, v2}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    iget-object v7, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    if-nez v7, :cond_3

    const-string v7, "DeviceProfilesSettings"

    const-string v8, "Device not found, cannot connect to it"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->finish()V

    goto :goto_1

    :cond_3
    iget-object v7, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v7}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    .local v5, deviceName:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v7, v5}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v7, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v7, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v7, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    const v8, 0x7f0807f9

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setPositiveButtonText(I)V

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v3

    .local v3, deviceClass:Landroid/bluetooth/BluetoothClass;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v7

    const/16 v8, 0x400

    if-eq v7, v8, :cond_4

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v7

    const/16 v8, 0x500

    if-eq v7, v8, :cond_4

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .local v6, prefScreen:Landroid/preference/PreferenceScreen;
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .local v0, Pref:Landroid/preference/Preference;
    const v7, 0x7f080aea

    invoke-virtual {v0, v7}, Landroid/preference/Preference;->setTitle(I)V

    const-string v7, "connect_access"

    invoke-virtual {v0, v7}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    const/16 v7, 0x3c

    invoke-virtual {v0, v7}, Landroid/preference/Preference;->setOrder(I)V

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getTrustState()Z

    move-result v7

    if-eqz v7, :cond_5

    const v7, 0x7f080aed

    invoke-virtual {v0, v7}, Landroid/preference/Preference;->setSummary(I)V

    :goto_2
    invoke-virtual {v6, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .end local v0           #Pref:Landroid/preference/Preference;
    .end local v6           #prefScreen:Landroid/preference/PreferenceScreen;
    :cond_4
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->addPreferencesForProfiles()V

    iget-object v7, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    invoke-virtual {v7}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    goto/16 :goto_1

    .line 211
    .restart local v0       #Pref:Landroid/preference/Preference;
    .restart local v6       #prefScreen:Landroid/preference/PreferenceScreen;
    :cond_5
    const v7, 0x7f080aec

    invoke-virtual {v0, v7}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public onDeviceAttributesChanged()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->refresh()V

    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice$Callback;)V

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :goto_0
    return-void

    .line 292
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v1, "DeviceProfilesSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BTUI] unregisterReceiver error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    if-ne p1, v3, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v2, p2, v1}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->setName(Ljava/lang/String;Z)V

    :goto_0
    return v1

    .restart local p2
    :cond_0
    instance-of v1, p1, Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->getProfileOf(Landroid/preference/Preference;)Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;

    move-result-object v0

    .local v0, prof:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v3, 0x64

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->onProfileClicked(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;)V

    move v1, v2

    goto :goto_0

    .end local v0           #prof:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;
    :cond_1
    move v1, v2

    goto :goto_0

    .restart local v0       #prof:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "screen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    .line 352
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 354
    .local v1, key:Ljava/lang/String;
    const-string v3, "rename_device"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .local v0, et:Landroid/widget/EditText;
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mRenameDeviceNamePref:Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-array v3, v2, [Landroid/text/InputFilter;

    const/4 v4, 0x0

    new-instance v5, Lcom/android/settings_ex/bluetooth/Utf8ByteLengthFilter;

    const/16 v6, 0xf7

    invoke-direct {v5, v6}, Lcom/android/settings_ex/bluetooth/Utf8ByteLengthFilter;-><init>(I)V

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    invoke-virtual {v0}, Landroid/widget/EditText;->setSingleLine()V

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 365
    const-string v3, "DeviceProfilesSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BTUI] onResume : length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 387
    .end local v0           #et:Landroid/widget/EditText;
    :goto_0
    return v2

    .line 368
    .restart local v0       #et:Landroid/widget/EditText;
    :cond_0
    const-string v3, "DeviceProfilesSettings"

    const-string v4, "[BTUI] EditText is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 374
    .end local v0           #et:Landroid/widget/EditText;
    :cond_1
    const-string v3, "unpair"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->unpairDevice()V

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->finish()V

    goto :goto_0

    :cond_2
    const-string v3, "connect_access"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, p2}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->askIncomingSecurity(Landroid/preference/Preference;)V

    goto :goto_0

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    .local v4, localAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "DeviceProfilesSettings"

    const-string v6, "onResume but bluetooth off state"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5, p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice$Callback;)V

    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_1

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->finish()V

    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->refresh()V

    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    .local v2, et:Landroid/widget/EditText;
    if-eqz v2, :cond_3

    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mRenameDeviceNamePref:Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    .local v1, d:Landroid/app/Dialog;
    instance-of v5, v1, Landroid/app/AlertDialog;

    if-eqz v5, :cond_3

    move-object v5, v1

    .line 261
    check-cast v5, Landroid/app/AlertDialog;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 264
    .local v0, b:Landroid/widget/Button;
    if-nez v0, :cond_2

    .line 265
    const-string v5, "DeviceProfilesSettings"

    const-string v6, "Can\'t get Button: exiting"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 269
    :cond_2
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v5

    if-lez v5, :cond_4

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 272
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 277
    .end local v0           #b:Landroid/widget/Button;
    .end local v1           #d:Landroid/app/Dialog;
    :cond_3
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .local v3, intentFilter:Landroid/content/IntentFilter;
    const-string v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 269
    .end local v3           #intentFilter:Landroid/content/IntentFilter;
    .restart local v0       #b:Landroid/widget/Button;
    .restart local v1       #d:Landroid/app/Dialog;
    :cond_4
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "device"

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 237
    return-void
.end method
