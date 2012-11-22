.class Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingQueryPopupLGT$2;
.super Ljava/lang/Object;
.source "DataNetworkModeRoamingQueryPopupLGT.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingQueryPopupLGT;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingQueryPopupLGT;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingQueryPopupLGT;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingQueryPopupLGT$2;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingQueryPopupLGT;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingQueryPopupLGT$2;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingQueryPopupLGT;

    #calls: Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingQueryPopupLGT;->SetUserResponse(I)V
    invoke-static {v1, v2}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingQueryPopupLGT;->access$100(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingQueryPopupLGT;I)V

    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingQueryPopupLGT$2;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingQueryPopupLGT;

    iput-boolean v2, v1, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingQueryPopupLGT;->is_selected:Z

    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingQueryPopupLGT$2;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingQueryPopupLGT;

    #calls: Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingQueryPopupLGT;->isDataRoamingAllowed()Z
    invoke-static {v1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingQueryPopupLGT;->access$200(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingQueryPopupLGT;)Z

    move-result v1

    if-ne v1, v2, :cond_0

    const-string v1, "LGE_DATA_ROAMINGPOPUP_LGT"

    const-string v2, "DATA_ROAMING is true, so update DATA_ROAMING to false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingQueryPopupLGT$2;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingQueryPopupLGT;

    #getter for: Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingQueryPopupLGT;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingQueryPopupLGT;->access$300(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingQueryPopupLGT;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 170
    :cond_0
    const-string v1, "LGE_DATA_ROAMINGPOPUP_LGT"

    const-string v2, "[LGT]Do NOT show toast when negative button is clicked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    new-instance v0, Landroid/content/Intent;

    const-string v1, "lge.intent.action.toast"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 172
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "text"

    iget-object v2, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingQueryPopupLGT$2;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingQueryPopupLGT;

    invoke-virtual {v2}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingQueryPopupLGT;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08088d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingQueryPopupLGT$2;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingQueryPopupLGT;

    invoke-virtual {v1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingQueryPopupLGT;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingQueryPopupLGT$2;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingQueryPopupLGT;

    #getter for: Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingQueryPopupLGT;->roamingdialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingQueryPopupLGT;->access$400(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingQueryPopupLGT;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 179
    return-void
.end method
