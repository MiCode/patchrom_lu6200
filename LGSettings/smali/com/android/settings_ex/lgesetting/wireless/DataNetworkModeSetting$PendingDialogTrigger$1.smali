.class Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger$1;
.super Landroid/os/Handler;
.source "DataNetworkModeSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger$1;->this$1:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    invoke-static {}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->access$800()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected message="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 593
    :goto_0
    return-void

    .line 564
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger$1;->this$1:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger;

    #getter for: Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger;->access$900(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 566
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger$1;->this$1:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger;

    #getter for: Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger;->mPendingDialogID:I
    invoke-static {v1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger;->access$1000(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger;)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->access$800()Ljava/lang/String;

    move-result-object v1

    const-string v3, "pending dialog can\'t be registed more than one at a time"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger$1;->this$1:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger;

    iget v3, p1, Landroid/os/Message;->arg1:I

    #setter for: Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger;->mPendingDialogID:I
    invoke-static {v1, v3}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger;->access$1002(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger;I)I

    .line 570
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 574
    :pswitch_1
    const/4 v0, 0x0

    .line 575
    .local v0, dialogId:I
    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger$1;->this$1:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger;

    #getter for: Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger;->access$900(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 576
    :try_start_1
    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger$1;->this$1:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger;

    #getter for: Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger;->mPendingDialogID:I
    invoke-static {v1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger;->access$1000(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger$1;->this$1:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger;

    const/4 v3, 0x0

    #setter for: Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger;->mPendingDialogID:I
    invoke-static {v1, v3}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger;->access$1002(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger;I)I

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger$1;->this$1:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger;

    iget-object v1, v1, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;

    invoke-virtual {v1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->finish()V

    goto :goto_0

    .line 578
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 584
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger$1;->this$1:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger;

    iget-object v1, v1, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->showDialog(I)V

    goto :goto_0

    .line 562
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
