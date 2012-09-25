.class Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT$1;
.super Landroid/content/BroadcastReceiver;
.source "DataNetworkModePayPopupKT.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT$1;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 67
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.lge.settings.wireless.PAYPOPUPWAITINGALARM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    const-string v1, "LGE_DATA_PAYPOPUP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got Action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT$1;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;

    invoke-virtual {v1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data_network_user_paypopup_response"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/lge/provider/SettingsEx$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT$1;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;

    const/4 v2, 0x2

    #calls: Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->SetUserResponse(I)V
    invoke-static {v1, v2}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->access$000(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;I)V

    .line 74
    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT$1;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;

    #getter for: Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->mConnMgr:Landroid/net/ConnectivityManager;
    invoke-static {v1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->access$100(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;)Landroid/net/ConnectivityManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 77
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT$1;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;

    #getter for: Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->paydialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->access$200(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :cond_1
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v1

    goto :goto_0
.end method
