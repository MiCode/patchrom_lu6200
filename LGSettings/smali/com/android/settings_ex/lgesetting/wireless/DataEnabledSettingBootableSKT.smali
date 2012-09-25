.class public Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingBootableSKT;
.super Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;
.source "DataEnabledSettingBootableSKT.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingBootableSKT;->setIsBootable()V

    .line 13
    invoke-super {p0, p1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->onCreate(Landroid/os/Bundle;)V

    .line 14
    return-void
.end method
