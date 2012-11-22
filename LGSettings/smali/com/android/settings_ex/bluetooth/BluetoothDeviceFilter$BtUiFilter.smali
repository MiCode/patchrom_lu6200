.class final Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$BtUiFilter;
.super Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$ClassUuidFilter;
.source "BluetoothDeviceFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BtUiFilter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$ClassUuidFilter;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$BtUiFilter;-><init>()V

    return-void
.end method


# virtual methods
.method matches([Landroid/os/ParcelUuid;Landroid/bluetooth/BluetoothClass;)Z
    .locals 7
    .parameter "uuids"
    .parameter "btClass"

    .prologue
    const/4 v2, 0x1

    const/16 v6, 0x1f00

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter;->access$900()Landroid/content/Context;

    move-result-object v4

    const-string v5, "BtUiSearchFilter"

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 189
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v4, "key_scan_filter_type"

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 191
    .local v1, scanFilterType:I
    if-nez p2, :cond_2

    .line 192
    if-ne v1, v6, :cond_1

    .line 201
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    .line 195
    goto :goto_0

    .line 197
    :cond_2
    if-eq v1, v6, :cond_0

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v4

    if-eq v1, v4, :cond_0

    move v2, v3

    .line 201
    goto :goto_0
.end method
