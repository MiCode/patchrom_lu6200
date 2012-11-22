.class Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger;
.super Ljava/lang/Object;
.source "DataNetworkModeSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingDialogTrigger"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mLock:Ljava/lang/Object;

.field private mPendingDialogID:I

.field final synthetic this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;)V
    .locals 1
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger;->mPendingDialogID:I

    new-instance v0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger$1;-><init>(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger;)V

    iput-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger;-><init>(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger;->mPendingDialogID:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger;->mPendingDialogID:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger;->mLock:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "arg0"

    .prologue
    invoke-virtual {p0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger;->triggerShowPendingDialog()V

    return-void
.end method

.method public declared-synchronized triggerShowPendingDialog()V
    .locals 4

    .prologue
    .line 601
    monitor-enter p0

    const/4 v0, 0x1

    .line 603
    .local v0, isTriggable:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger;->mPendingDialogID:I

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    :try_start_2
    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 623
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 606
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 601
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    .line 611
    :cond_2
    :try_start_5
    invoke-static {}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->access$800()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "triggerShowPendingDialog userInput = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;

    #getter for: Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->userInput:Z
    invoke-static {v3}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->access$200(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->access$1100()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->access$800()Ljava/lang/String;

    move-result-object v1

    const-string v2, "triggerShowPendingDialog ==> SKT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;

    #getter for: Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->userInput:Z
    invoke-static {v1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->access$200(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;

    const/4 v2, 0x0

    #setter for: Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->userInput:Z
    invoke-static {v1, v2}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->access$202(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;Z)Z

    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;

    const/4 v2, 0x1

    #setter for: Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->NoClick:Z
    invoke-static {v1, v2}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->access$1202(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;Z)Z

    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;

    invoke-virtual {v1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->finish()V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;

    invoke-virtual {v1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->finish()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0
.end method
