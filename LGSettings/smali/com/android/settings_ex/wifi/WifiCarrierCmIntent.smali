.class public Lcom/android/settings_ex/wifi/WifiCarrierCmIntent;
.super Ljava/lang/Object;
.source "WifiCarrierCmIntent.java"


# static fields
.field private static isWiFiCM:Z

.field private static wifiCmIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings_ex/wifi/WifiCarrierCmIntent;->isWiFiCM:Z

    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings_ex/wifi/WifiCarrierCmIntent;->wifiCmIntent:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static carrierWiFiCM(Landroid/content/Context;Landroid/content/pm/PackageManager;)Z
    .locals 2
    .parameter "context"
    .parameter "packageManager"

    .prologue
    .line 48
    invoke-static {}, Lcom/android/settings_ex/wifi/WifiCarrierCmIntent;->initWiFiCmIntent()V

    .line 50
    const-string v0, "SKT"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    sget-boolean v0, Lcom/android/settings_ex/wifi/WifiCarrierCmIntent;->isWiFiCM:Z

    if-nez v0, :cond_0

    .line 52
    const-string v0, "com.skt.network.wificm.main"

    const-string v1, ".WifiSettings"

    invoke-static {p1, v0, v1}, Lcom/android/settings_ex/wifi/WifiCarrierCmIntent;->setIsWiFiCm(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_0
    sget-boolean v0, Lcom/android/settings_ex/wifi/WifiCarrierCmIntent;->isWiFiCM:Z

    if-nez v0, :cond_1

    .line 54
    const-string v0, "com.skt.network.wificm.OA00091307"

    const-string v1, ".WifiSettings"

    invoke-static {p1, v0, v1}, Lcom/android/settings_ex/wifi/WifiCarrierCmIntent;->setIsWiFiCm(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_1
    const-string v0, "KT"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58
    sget-boolean v0, Lcom/android/settings_ex/wifi/WifiCarrierCmIntent;->isWiFiCM:Z

    if-nez v0, :cond_2

    .line 59
    const-string v0, "com.kt.wifi"

    const-string v1, ".KtCmSettings"

    invoke-static {p1, v0, v1}, Lcom/android/settings_ex/wifi/WifiCarrierCmIntent;->setIsWiFiCm(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_2
    invoke-static {p0}, Lcom/android/settings_ex/wifi/WifiCarrierCmIntent;->startActivityWiFiCM(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static initWiFiCM()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings_ex/wifi/WifiCarrierCmIntent;->isWiFiCM:Z

    .line 16
    invoke-static {}, Lcom/android/settings_ex/wifi/WifiCarrierCmIntent;->initWiFiCmIntent()V

    .line 17
    return-void
.end method

.method private static initWiFiCmIntent()V
    .locals 2

    .prologue
    .line 20
    sget-object v0, Lcom/android/settings_ex/wifi/WifiCarrierCmIntent;->wifiCmIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sput-object v0, Lcom/android/settings_ex/wifi/WifiCarrierCmIntent;->wifiCmIntent:Landroid/content/Intent;

    .line 22
    sget-object v0, Lcom/android/settings_ex/wifi/WifiCarrierCmIntent;->wifiCmIntent:Landroid/content/Intent;

    const-string v1, "com.skt.network.wificm.OA00091307.WifiSettings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    sget-object v0, Lcom/android/settings_ex/wifi/WifiCarrierCmIntent;->wifiCmIntent:Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    sget-object v0, Lcom/android/settings_ex/wifi/WifiCarrierCmIntent;->wifiCmIntent:Landroid/content/Intent;

    const/high16 v1, 0x1020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 26
    :cond_0
    return-void
.end method

.method public static isRunWiFiCM()Z
    .locals 1

    .prologue
    .line 29
    sget-boolean v0, Lcom/android/settings_ex/wifi/WifiCarrierCmIntent;->isWiFiCM:Z

    return v0
.end method

.method private static setIsWiFiCm(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "packageManager"
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 33
    sget-object v1, Lcom/android/settings_ex/wifi/WifiCarrierCmIntent;->wifiCmIntent:Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    sget-object v1, Lcom/android/settings_ex/wifi/WifiCarrierCmIntent;->wifiCmIntent:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 35
    .local v0, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_0

    .line 36
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/settings_ex/wifi/WifiCarrierCmIntent;->isWiFiCM:Z

    .line 37
    :cond_0
    return-void
.end method

.method private static startActivityWiFiCM(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 40
    sget-boolean v0, Lcom/android/settings_ex/wifi/WifiCarrierCmIntent;->isWiFiCM:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings_ex/wifi/WifiCarrierCmIntent;->wifiCmIntent:Landroid/content/Intent;

    if-nez v0, :cond_1

    .line 41
    :cond_0
    const/4 v0, 0x0

    .line 44
    :goto_0
    return v0

    .line 43
    :cond_1
    sget-object v0, Lcom/android/settings_ex/wifi/WifiCarrierCmIntent;->wifiCmIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 44
    const/4 v0, 0x1

    goto :goto_0
.end method
