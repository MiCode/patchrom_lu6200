.class Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT$2;
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
    iput-object p1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT$2;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT$2;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;

    const/4 v2, 0x2

    #calls: Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->SetUserResponse(I)V
    invoke-static {v1, v2}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->access$000(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;I)V

    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT$2;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;

    iput-boolean v3, v1, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->is_selected:Z

    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT$2;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;

    #getter for: Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->mConnMgr:Landroid/net/ConnectivityManager;
    invoke-static {v1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->access$100(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 133
    new-instance v0, Landroid/content/Intent;

    const-string v1, "lge.intent.action.toast"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 135
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT$2;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;

    iget-boolean v1, v1, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->is_3G_Model:Z

    if-nez v1, :cond_1

    .line 136
    const-string v1, "text"

    iget-object v2, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT$2;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;

    invoke-virtual {v2}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08087f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT$2;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;

    invoke-virtual {v1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT$2;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;

    #getter for: Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->paydialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->access$200(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 148
    return-void

    .line 137
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT$2;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;

    iget-boolean v1, v1, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->is_3G_Model:Z

    if-ne v1, v3, :cond_0

    .line 138
    const-string v1, "text"

    iget-object v2, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT$2;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;

    invoke-virtual {v2}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080897

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
