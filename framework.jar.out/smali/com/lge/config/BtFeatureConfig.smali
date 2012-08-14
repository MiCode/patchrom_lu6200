.class public Lcom/lge/config/BtFeatureConfig;
.super Ljava/lang/Object;
.source "BtFeatureConfig.java"


# static fields
.field static final TARGET:[Ljava/lang/String;

.field static final VZW_BT:[Ljava/lang/String;

.field static final VZW_BT_ENABLE:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "VZW"

    aput-object v1, v0, v2

    const-string v1, "LGU"

    aput-object v1, v0, v3

    const-string v1, "KT"

    aput-object v1, v0, v4

    const-string v1, "SKT"

    aput-object v1, v0, v5

    const-string v1, "DCM"

    aput-object v1, v0, v6

    sput-object v0, Lcom/lge/config/BtFeatureConfig;->TARGET:[Ljava/lang/String;

    .line 74
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "LGBT_CNDTL_FUNCTION_BLOCK_DISCOVER_INCALL"

    aput-object v1, v0, v2

    const-string v1, "LGBT_CNDTL_SCENARIO_VZW_ADVANCED_MENU"

    aput-object v1, v0, v3

    const-string v1, "LGBT_CNDTL_SCENARIO_VZW_SHOW_PBAP_CONN_TOAST"

    aput-object v1, v0, v4

    const-string v1, "LGBT_CNDTL_SCENARIO_GAP_CARKIT_ICON"

    aput-object v1, v0, v5

    const-string v1, "LGBT_CNDTL_FUNCTION_HFP_CDMA_RSSI_MODIFY"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "LGBT_CNDTL_SCENARIO_GAP_CONNECT_AFTER_PAIR"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "LGBT_CNDTL_BDADDR_READ_USING_CMINTERFACE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/config/BtFeatureConfig;->VZW_BT:[Ljava/lang/String;

    .line 87
    const/4 v0, 0x7

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lge/config/BtFeatureConfig;->VZW_BT_ENABLE:[Z

    return-void

    :array_0
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTargetOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    const-string/jumbo v0, "ro.build.target_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isServiceSupported(Ljava/lang/String;)Z
    .locals 2
    .parameter "svcName"

    .prologue
    .line 143
    invoke-static {}, Lcom/lge/config/BtFeatureConfig;->getTargetOperator()Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, targetOp:Ljava/lang/String;
    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    invoke-static {p0}, Lcom/lge/config/BtFeatureConfig;->isVzwServiceEnabled(Ljava/lang/String;)Z

    move-result v1

    .line 152
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isVzwServiceEnabled(Ljava/lang/String;)Z
    .locals 2
    .parameter "svcName"

    .prologue
    .line 120
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/lge/config/BtFeatureConfig;->VZW_BT:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 121
    sget-object v1, Lcom/lge/config/BtFeatureConfig;->VZW_BT:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    sget-object v1, Lcom/lge/config/BtFeatureConfig;->VZW_BT_ENABLE:[Z

    aget-boolean v1, v1, v0

    .line 125
    :goto_1
    return v1

    .line 120
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
