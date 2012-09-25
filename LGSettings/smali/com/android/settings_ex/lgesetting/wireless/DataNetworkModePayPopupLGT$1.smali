.class Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT$1;
.super Ljava/lang/Object;
.source "DataNetworkModePayPopupLGT.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;
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
    .line 60
    iput-object p1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT$1;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5
    .parameter "dialog"

    .prologue
    const/4 v4, 0x0

    .line 63
    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT$1;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;

    invoke-virtual {v1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data_network_user_paypopup_response"

    invoke-static {v1, v2, v4}, Lcom/lge/provider/SettingsEx$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 64
    .local v0, userRes:I
    const-string v1, "LGE_DATA_PAYPOPUP_LGT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDismiss() userRes "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is_selected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT$1;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;

    iget-boolean v3, v3, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->is_selected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT$1;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;

    iget-boolean v1, v1, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->is_selected:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 69
    const-string v1, "LGE_DATA_PAYPOPUP_LGT"

    const-string v2, "onDismiss() finish "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT$1;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;

    iput-boolean v4, v1, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->is_selected:Z

    .line 71
    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT$1;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;

    invoke-virtual {v1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->finish()V

    .line 73
    :cond_0
    return-void
.end method
