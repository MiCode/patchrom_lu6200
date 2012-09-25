.class public Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;
.super Ljava/lang/Object;
.source "DataNetworkModeManager.java"

# interfaces
.implements Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private cm:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field public mMode:I

.field public mOption:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "aContext"

    .prologue
    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;-><init>(Landroid/content/Context;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .parameter "aContext"
    .parameter "aMode"

    .prologue
    const/4 v2, 0x1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v2, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;->mMode:I

    .line 31
    iput v2, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;->mOption:I

    .line 41
    iput-object p1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;->mContext:Landroid/content/Context;

    .line 42
    iput p2, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;->mMode:I

    .line 43
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_data_network_mode"

    invoke-static {v0, v1, v2}, Lcom/lge/provider/SettingsEx$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;->mOption:I

    .line 45
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;->cm:Landroid/net/ConnectivityManager;

    .line 47
    sget-object v0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initial Mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;->mMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Option="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;->mOption:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-void
.end method


# virtual methods
.method public getMode(Z)I
    .locals 1
    .parameter "isMode"

    .prologue
    .line 52
    if-eqz p1, :cond_0

    .line 53
    iget v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;->mMode:I

    .line 55
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;->mOption:I

    goto :goto_0
.end method

.method public onDataNetworkModeChange(II)V
    .locals 10
    .parameter "newMode"
    .parameter "newOption"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 61
    sget-object v7, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onDataNetworkModeChanged: newMode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", newOption="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    sget-object v7, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;->TAG:Ljava/lang/String;

    const-string v8, "onDataNetworkModeChange"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v7, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "preferred_data_network_mode"

    invoke-static {v7, v8, p2}, Lcom/lge/provider/SettingsEx$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 70
    if-ne p1, v6, :cond_2

    .line 71
    :try_start_0
    iget-object v7, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "data_network_wait_for_paypopup_response"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/lge/provider/SettingsEx$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 72
    iget-object v7, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "data_network_user_paypopup_response"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/lge/provider/SettingsEx$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 74
    sget-object v7, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;->TAG:Ljava/lang/String;

    const-string v8, "setMobileDataEnabled(true)"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v7, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;->cm:Landroid/net/ConnectivityManager;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 77
    sget-object v7, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;->TAG:Ljava/lang/String;

    const-string v8, "sendBroadcast(dataNetworkChange)"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.android.phone.DATA_NETWORK_POAB"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    .local v3, dataNetworkChange:Landroid/content/Intent;
    const-string v7, "networkState"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 80
    iget-object v7, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 93
    .end local v3           #dataNetworkChange:Landroid/content/Intent;
    :cond_0
    :goto_0
    iput p1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;->mMode:I

    .line 94
    iput p2, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;->mOption:I

    .line 96
    if-ne p1, v6, :cond_3

    move v2, v5

    .line 97
    .local v2, dataMode:I
    :goto_1
    if-ne v2, v6, :cond_4

    move v0, v5

    .line 102
    .local v0, bDataEnable:Z
    :goto_2
    if-ne p1, v6, :cond_1

    .line 103
    iget-object v7, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "data_network_wait_for_paypopup_response"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/lge/provider/SettingsEx$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 104
    iget-object v7, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "data_network_user_paypopup_response"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/lge/provider/SettingsEx$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 106
    :cond_1
    sget-object v7, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;->TAG:Ljava/lang/String;

    const-string v8, "sendBroadcast(dataNetworkChange)"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.android.phone.DATA_NETWORK_POAB"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 108
    .restart local v3       #dataNetworkChange:Landroid/content/Intent;
    const-string v7, "networkState"

    invoke-virtual {v3, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 109
    iget-object v7, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 112
    iput p1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;->mMode:I

    .line 113
    iput p2, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;->mOption:I

    .line 130
    .end local v0           #bDataEnable:Z
    .end local v2           #dataMode:I
    .end local v3           #dataNetworkChange:Landroid/content/Intent;
    :goto_3
    return-void

    .line 82
    :cond_2
    if-nez p1, :cond_0

    .line 83
    sget-object v7, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;->TAG:Ljava/lang/String;

    const-string v8, "setMobileDataEnabled(false)"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v7, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;->cm:Landroid/net/ConnectivityManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 86
    sget-object v7, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;->TAG:Ljava/lang/String;

    const-string v8, "sendBroadcast(dataNetworkChange)"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.android.phone.DATA_NETWORK_POAB"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    .restart local v3       #dataNetworkChange:Landroid/content/Intent;
    const-string v7, "networkState"

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 89
    iget-object v7, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    .end local v3           #dataNetworkChange:Landroid/content/Intent;
    :catch_0
    move-exception v4

    .line 120
    .local v4, e:Ljava/lang/Exception;
    iget-object v7, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "preferred_data_network_mode"

    iget v9, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;->mOption:I

    invoke-static {v7, v8, v9}, Lcom/lge/provider/SettingsEx$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 122
    iget-object v7, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;->mContext:Landroid/content/Context;

    const-string v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 124
    .local v1, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 125
    invoke-virtual {v1, v6}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto :goto_3

    .end local v1           #cm:Landroid/net/ConnectivityManager;
    .end local v4           #e:Ljava/lang/Exception;
    :cond_3
    move v2, v6

    .line 96
    goto/16 :goto_1

    .restart local v2       #dataMode:I
    :cond_4
    move v0, v6

    .line 97
    goto/16 :goto_2

    .line 127
    .end local v2           #dataMode:I
    .restart local v1       #cm:Landroid/net/ConnectivityManager;
    .restart local v4       #e:Ljava/lang/Exception;
    :cond_5
    invoke-virtual {v1, v5}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto :goto_3
.end method

.method public refreshMode()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, bRtn:Z
    iget-object v3, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mobile_data"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 136
    .local v1, nNewMode:I
    iget-object v3, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_data_network_mode"

    invoke-static {v3, v4, v5}, Lcom/lge/provider/SettingsEx$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 138
    .local v2, nNewOption:I
    iget v3, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;->mMode:I

    if-ne v1, v3, :cond_0

    iget v3, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;->mOption:I

    if-eq v2, v3, :cond_1

    .line 139
    :cond_0
    const/4 v0, 0x1

    .line 140
    iput v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;->mMode:I

    .line 141
    iput v2, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;->mOption:I

    .line 144
    :cond_1
    return v0
.end method
