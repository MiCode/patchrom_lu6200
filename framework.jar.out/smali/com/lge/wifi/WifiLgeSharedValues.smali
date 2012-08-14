.class public Lcom/lge/wifi/WifiLgeSharedValues;
.super Ljava/lang/Object;
.source "WifiLgeSharedValues.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiLgeSharedValues"

.field private static mIsDlnaReady2:Z

.field private static mUnicodeSSID:Z

.field private static mWifiLgeSharedValues:Lcom/lge/wifi/WifiLgeSharedValues;


# instance fields
.field private mP2pState:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/wifi/WifiLgeSharedValues;->mWifiLgeSharedValues:Lcom/lge/wifi/WifiLgeSharedValues;

    .line 17
    sput-boolean v1, Lcom/lge/wifi/WifiLgeSharedValues;->mIsDlnaReady2:Z

    .line 23
    sput-boolean v1, Lcom/lge/wifi/WifiLgeSharedValues;->mUnicodeSSID:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/wifi/WifiLgeSharedValues;->mP2pState:I

    .line 42
    return-void
.end method

.method public static getInstance()Lcom/lge/wifi/WifiLgeSharedValues;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/lge/wifi/WifiLgeSharedValues;->mWifiLgeSharedValues:Lcom/lge/wifi/WifiLgeSharedValues;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/lge/wifi/WifiLgeSharedValues;

    invoke-direct {v0}, Lcom/lge/wifi/WifiLgeSharedValues;-><init>()V

    sput-object v0, Lcom/lge/wifi/WifiLgeSharedValues;->mWifiLgeSharedValues:Lcom/lge/wifi/WifiLgeSharedValues;

    .line 50
    :cond_0
    sget-object v0, Lcom/lge/wifi/WifiLgeSharedValues;->mWifiLgeSharedValues:Lcom/lge/wifi/WifiLgeSharedValues;

    return-object v0
.end method


# virtual methods
.method public getDlnaEnabled()Z
    .locals 1

    .prologue
    .line 65
    sget-boolean v0, Lcom/lge/wifi/WifiLgeSharedValues;->mIsDlnaReady2:Z

    return v0
.end method

.method public getP2pWifiState()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/lge/wifi/WifiLgeSharedValues;->mP2pState:I

    return v0
.end method

.method public getUnicodeSSID()Z
    .locals 1

    .prologue
    .line 80
    sget-boolean v0, Lcom/lge/wifi/WifiLgeSharedValues;->mUnicodeSSID:Z

    return v0
.end method

.method public setDlnaEnabled(Z)V
    .locals 3
    .parameter "input"

    .prologue
    .line 59
    const-string v0, "WifiLgeSharedValues"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDLNAEnabled() - IsDlnaReady2 is set :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    sput-boolean p1, Lcom/lge/wifi/WifiLgeSharedValues;->mIsDlnaReady2:Z

    .line 61
    return-void
.end method

.method public setP2pWifiState(I)V
    .locals 0
    .parameter "input"

    .prologue
    .line 85
    iput p1, p0, Lcom/lge/wifi/WifiLgeSharedValues;->mP2pState:I

    .line 86
    return-void
.end method

.method public setUnicodeSSID(Z)V
    .locals 0
    .parameter "input"

    .prologue
    .line 75
    sput-boolean p1, Lcom/lge/wifi/WifiLgeSharedValues;->mUnicodeSSID:Z

    .line 76
    return-void
.end method
