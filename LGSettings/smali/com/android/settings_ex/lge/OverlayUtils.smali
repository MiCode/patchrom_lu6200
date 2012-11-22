.class public Lcom/android/settings_ex/lge/OverlayUtils;
.super Ljava/lang/Object;
.source "OverlayUtils.java"


# static fields
.field private static mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static WifiCallPref_Init(Landroid/preference/Preference;)V
    .locals 0
    .parameter "pref"

    .prologue
    .line 59
    return-void
.end method

.method public static WifiCallPref_SetValues(Landroid/preference/Preference;)V
    .locals 0
    .parameter "values"

    .prologue
    .line 67
    return-void
.end method

.method public static WifiCallPref_getWifiCallPref()Lcom/android/settings_ex/lge/WifiCallCheckBoxPreference;
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public static WifiCallPref_isSupport()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public static WifiCallPref_resume()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public static getCPUMode(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public static initNV()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const v3, 0x60026

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/lge/OverlayUtils;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v0, Lcom/android/settings_ex/lge/OverlayUtils;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_1

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "i_skt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "i_u"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    sget-object v0, Lcom/android/settings_ex/lge/OverlayUtils;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v3, v2, v4}, Lcom/android/internal/telephony/Phone;->setModemIntegerItem(IILandroid/os/Message;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "d1lkt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "d1lsk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "d1lu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    :cond_3
    sget-object v0, Lcom/android/settings_ex/lge/OverlayUtils;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v3, v2, v4}, Lcom/android/internal/telephony/Phone;->setModemIntegerItem(IILandroid/os/Message;)V

    goto :goto_0
.end method

.method public static isX3Model()Z
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public static setCPUMode(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 27
    return-void
.end method
