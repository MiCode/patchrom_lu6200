.class Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT$3;
.super Ljava/lang/Object;
.source "DataNetworkModePayPopupLGT.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT$3;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    const/4 v4, 0x1

    .line 95
    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT$3;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;

    #calls: Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->SetUserResponse(I)V
    invoke-static {v1, v4}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->access$000(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;I)V

    .line 96
    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT$3;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;

    iput-boolean v4, v1, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->is_selected:Z

    .line 99
    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT$3;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;

    #getter for: Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->mConnMgr:Landroid/net/ConnectivityManager;
    invoke-static {v1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->access$100(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;)Landroid/net/ConnectivityManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 103
    const-string v1, "LGT"

    const-string v2, "ro.telephony.service_provider"

    const-string v3, "null"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    const-string v1, "LGT_DEBUG"

    const-string v2, "Set LGT.3G.DATA.MODE to 0"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-string v1, "lgt.3g.data.mode"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "lge.intent.action.toast"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT$3;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;

    iget-boolean v1, v1, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->is_3G_Model:Z

    if-nez v1, :cond_2

    .line 112
    const-string v1, "text"

    iget-object v2, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT$3;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;

    invoke-virtual {v2}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080880

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT$3;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;

    invoke-virtual {v1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 122
    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT$3;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;

    #getter for: Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->paydialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->access$200(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 123
    return-void

    .line 113
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT$3;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;

    iget-boolean v1, v1, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->is_3G_Model:Z

    if-ne v1, v4, :cond_1

    .line 114
    const-string v1, "text"

    iget-object v2, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT$3;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;

    invoke-virtual {v2}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080898

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
