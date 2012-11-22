.class Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT$2;
.super Ljava/lang/Object;
.source "DataNetworkModePayPopupKT.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    iput-object p1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT$2;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 86
    const-string v0, "LGE_DATA_PAYPOPUP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "********       OnDismissListener, is_clicked =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT$2;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;

    iget-boolean v2, v2, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->is_clicked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT$2;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;

    iget-boolean v0, v0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->is_clicked:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "LGE_DATA_PAYPOPUP"

    const-string v1, "********    finish()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT$2;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;

    iget-object v0, v0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->am:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT$2;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;

    #getter for: Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->mTimeoutIntent:Landroid/app/PendingIntent;
    invoke-static {v1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->access$300(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT$2;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;

    invoke-virtual {v0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT$2;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;

    iget-object v1, v1, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT$2;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->is_clicked:Z

    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT$2;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;

    invoke-virtual {v0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->finish()V

    :cond_0
    return-void
.end method
