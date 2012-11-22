.class public final Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;
.super Landroid/preference/Preference;
.source "BluetoothDevicePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice$Callback;


# static fields
.field private static sDimAlpha:I


# instance fields
.field private final mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

.field private final mContext:Landroid/content/Context;

.field private mDisconnectDialog:Landroid/app/AlertDialog;

.field private final mLocalManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

.field private mOnSettingsClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/high16 v0, -0x8000

    sput v0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;)V
    .locals 4
    .parameter "context"
    .parameter "cachedDevice"

    .prologue
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    const/high16 v2, -0x8000

    if-ne v1, v2, :cond_0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .local v0, outValue:Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010033

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 89
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    const/high16 v2, 0x437f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    .end local v0           #outValue:Landroid/util/TypedValue;
    :cond_0
    iput-object p2, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-static {p1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mLocalManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bluetooth.DevicePickerActivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const v1, 0x7f04006c

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->setWidgetLayoutResource(I)V

    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice$Callback;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->onDeviceAttributesChanged()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    return-object v0
.end method

.method private askDisconnect()V
    .locals 8

    .prologue
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .local v0, context:Landroid/content/Context;
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    .line 257
    .local v3, name:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 258
    const v5, 0x7f0800c2

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 260
    :cond_0
    const v5, 0x7f0800b6

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 261
    .local v2, message:Ljava/lang/String;
    const v5, 0x7f0800b5

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .local v4, title:Ljava/lang/String;
    new-instance v1, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference$1;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)V

    .local v1, disconnectListener:Landroid/content/DialogInterface$OnClickListener;
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-static {v0, v5, v1, v4, v6}, Lcom/android/settings_ex/bluetooth/Utils;->showDisconnectDialog(Landroid/content/Context;Landroid/app/AlertDialog;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    .line 271
    return-void
.end method

.method private getBtClassDrawable()I
    .locals 9

    .prologue
    iget-object v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v7}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getBtClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    .local v0, btClass:Landroid/bluetooth/BluetoothClass;
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->isDeviceConnected()Z

    move-result v3

    .local v3, isConnected:Z
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v7}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v5

    .local v5, profiles:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;

    .local v4, profile:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;
    invoke-interface {v4, v0, v3}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;->getDrawableResource(Landroid/bluetooth/BluetoothClass;Z)I

    move-result v6

    .local v6, resId:I
    if-eqz v6, :cond_1

    move v7, v6

    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #profile:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;
    .end local v5           #profiles:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;>;"
    .end local v6           #resId:I
    :goto_1
    return v7

    .line 376
    :sswitch_0
    if-eqz v3, :cond_2

    const v7, 0x7f0200b9

    goto :goto_1

    :cond_2
    const v7, 0x7f0200b8

    goto :goto_1

    .line 384
    :sswitch_1
    if-eqz v3, :cond_3

    const v7, 0x7f0200ae

    goto :goto_1

    :cond_3
    const v7, 0x7f0200ad

    goto :goto_1

    .line 392
    :sswitch_2
    invoke-static {v0, v3}, Lcom/android/settings_ex/bluetooth/HidProfile;->getHidClassDrawable(Landroid/bluetooth/BluetoothClass;Z)I

    move-result v7

    goto :goto_1

    .line 400
    :sswitch_3
    if-eqz v3, :cond_4

    const v7, 0x7f0200b5

    goto :goto_1

    :cond_4
    const v7, 0x7f0200b4

    goto :goto_1

    .line 407
    :sswitch_4
    const-string v7, "LGBT_CNDTL_SCENARIO_GAP_CARKIT_ICON"

    invoke-static {v7}, Lcom/lge/config/BtFeatureConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 408
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v1

    .line 409
    .local v1, devClass:I
    const/16 v7, 0x408

    if-eq v1, v7, :cond_5

    const/16 v7, 0x420

    if-ne v1, v7, :cond_0

    .line 411
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->isDeviceConnected()Z

    move-result v7

    if-eqz v7, :cond_6

    const v7, 0x7f0200ac

    goto :goto_1

    :cond_6
    const v7, 0x7f0200ab

    goto :goto_1

    .line 421
    .end local v1           #devClass:I
    :cond_7
    const-string v7, "BluetoothDevicePreference"

    const-string v8, "mBtClass is null"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v5       #profiles:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;>;"
    :cond_8
    if-eqz v0, :cond_c

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 439
    if-eqz v3, :cond_9

    const v7, 0x7f0200b1

    goto :goto_1

    :cond_9
    const v7, 0x7f0200b0

    goto :goto_1

    .line 446
    :cond_a
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 448
    if-eqz v3, :cond_b

    const v7, 0x7f0200b3

    goto :goto_1

    :cond_b
    const v7, 0x7f0200b2

    goto :goto_1

    .line 457
    :cond_c
    if-eqz v3, :cond_d

    const v7, 0x7f0200bf

    goto :goto_1

    :cond_d
    const v7, 0x7f0200be

    goto :goto_1

    .line 373
    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x200 -> :sswitch_1
        0x400 -> :sswitch_4
        0x500 -> :sswitch_2
        0x600 -> :sswitch_3
    .end sparse-switch
.end method

.method private getConnectionSummary()I
    .locals 8

    .prologue
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    .local v1, cachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;
    const/4 v6, 0x0

    .local v6, profileConnected:Z
    const/4 v0, 0x0

    .local v0, a2dpNotConnected:Z
    const/4 v3, 0x0

    .local v3, headsetNotConnected:Z
    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;

    .local v5, profile:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;
    invoke-virtual {v1, v5}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;)I

    move-result v2

    .local v2, connectionStatus:I
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v2}, Lcom/android/settings_ex/bluetooth/Utils;->getConnectionStateSummary(I)I

    move-result v7

    .end local v2           #connectionStatus:I
    .end local v5           #profile:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;
    :goto_1
    return v7

    .restart local v2       #connectionStatus:I
    .restart local v5       #profile:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;
    :pswitch_1
    const/4 v6, 0x1

    goto :goto_0

    .end local v2           #connectionStatus:I
    .end local v5           #profile:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;
    :cond_0
    if-eqz v6, :cond_1

    const v7, 0x7f0800b9

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v7

    packed-switch v7, :pswitch_data_1

    .line 354
    const/4 v7, 0x0

    goto :goto_1

    .line 349
    :pswitch_2
    const v7, 0x7f0800c1

    goto :goto_1

    .line 305
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 347
    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_2
    .end packed-switch
.end method

.method private pair()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->startPairing()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BluetoothDevicePreference"

    const-string v1, "SET PROPERTY_PAIR_RETRY 1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "service.btui.gap.pairByLocal"

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/android/settings_ex/bluetooth/Utils;->BtUiPropertySet(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0801ba

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings_ex/bluetooth/Utils;->showError(Landroid/content/Context;Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V

    .line 293
    :cond_0
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 2
    .parameter "another"

    .prologue
    instance-of v0, p1, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/preference/Preference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    check-cast p1, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    .end local p1
    iget-object v1, p1, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->compareTo(Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    check-cast p1, Landroid/preference/Preference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public dismissDialog()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    check-cast p1, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    .end local p1
    iget-object v1, p1, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method getCachedDevice()Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->hashCode()I

    move-result v0

    return v0
.end method

.method public isDeviceConnected()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v0

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 160
    const-string v1, "bt_checkbox"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "bt_checkbox"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->setDependency(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 165
    const v1, 0x7f0b0112

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .local v0, deviceDetails:Landroid/widget/ImageView;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0xff

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 173
    .end local v0           #deviceDetails:Landroid/widget/ImageView;
    :cond_1
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 174
    return-void

    .line 169
    .restart local v0       #deviceDetails:Landroid/widget/ImageView;
    :cond_2
    sget v1, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method onClicked()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    .local v0, bondState:I
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getBtClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    .line 213
    .local v2, mBtClass:Landroid/bluetooth/BluetoothClass;
    const-string v3, "BluetoothDevicePreference"

    const-string v4, "[BTUI] ****** onClicked() ******"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mLocalManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;->isDeviceBusy()Z

    move-result v1

    .line 216
    .local v1, isDevBusy:Z
    if-eqz v1, :cond_1

    .line 217
    const-string v3, "BluetoothDevicePreference"

    const-string v4, "[BTUI] onClicked()... Busy"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->askDisconnect()V

    goto :goto_0

    :cond_2
    const/16 v3, 0xc

    if-ne v0, v3, :cond_7

    const-string v3, "ro.build.target_country"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "KR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "ro.build.product"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "batman_dcm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "ro.build.product"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "batman_vzw"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 231
    :cond_3
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v3

    const/16 v4, 0x540

    if-eq v3, v4, :cond_4

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v3

    const/16 v4, 0x5c0

    if-ne v3, v4, :cond_5

    .line 234
    :cond_4
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mContext:Landroid/content/Context;

    const v4, 0x7f080ae2

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 239
    :cond_5
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v3

    const/16 v4, 0x580

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mContext:Landroid/content/Context;

    const v4, 0x7f080ae1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 247
    :cond_6
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->connect(Z)V

    goto/16 :goto_0

    :cond_7
    const/16 v3, 0xa

    if-ne v0, v3, :cond_0

    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->pair()V

    goto/16 :goto_0
.end method

.method public onDeviceAttributesChanged()V
    .locals 3

    .prologue
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->getConnectionSummary()I

    move-result v1

    .local v1, summaryResId:I
    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->setSummary(I)V

    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->getBtClassDrawable()I

    move-result v0

    .local v0, iconResId:I
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->setIcon(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->notifyHierarchyChanged()V

    return-void

    .end local v0           #iconResId:I
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 151
    .restart local v0       #iconResId:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected onPrepareForRemoval()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/preference/Preference;->onPrepareForRemoval()V

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice$Callback;)V

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method
