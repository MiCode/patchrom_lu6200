.class Lcom/android/settings_ex/IccLockSettings$1;
.super Lcom/android/settings_ex/UsimStateReceiverHelper;
.source "IccLockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/IccLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsProgressShowing:Z

.field final synthetic this$0:Lcom/android/settings_ex/IccLockSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/IccLockSettings;)V
    .locals 1
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/IccLockSettings$1;->this$0:Lcom/android/settings_ex/IccLockSettings;

    invoke-direct {p0}, Lcom/android/settings_ex/UsimStateReceiverHelper;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/IccLockSettings$1;->mIsProgressShowing:Z

    return-void
.end method


# virtual methods
.method public onStateChanged(I)V
    .locals 6
    .parameter "aMessage"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x9

    invoke-static {}, Lcom/android/settings_ex/IccLockSettings;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "## onStateChagned()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    sparse-switch p1, :sswitch_data_0

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 161
    :sswitch_0
    invoke-static {}, Lcom/android/settings_ex/IccLockSettings;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "> MESSAGE_INIT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 165
    :sswitch_1
    invoke-static {}, Lcom/android/settings_ex/IccLockSettings;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "> MESSAGE_STATE_CHANGED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings_ex/IccLockSettings$1;->getSimState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 168
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings$1;->this$0:Lcom/android/settings_ex/IccLockSettings;

    #calls: Lcom/android/settings_ex/IccLockSettings;->doBlockAccessMenu()V
    invoke-static {v1}, Lcom/android/settings_ex/IccLockSettings;->access$100(Lcom/android/settings_ex/IccLockSettings;)V

    goto :goto_0

    .line 171
    :pswitch_2
    invoke-static {}, Lcom/android/settings_ex/IccLockSettings;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IO ERROR"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 176
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings$1;->this$0:Lcom/android/settings_ex/IccLockSettings;

    #calls: Lcom/android/settings_ex/IccLockSettings;->onPostSimTrigger()V
    invoke-static {v1}, Lcom/android/settings_ex/IccLockSettings;->access$200(Lcom/android/settings_ex/IccLockSettings;)V

    goto :goto_0

    .line 186
    :sswitch_2
    invoke-static {}, Lcom/android/settings_ex/IccLockSettings;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "> MESSAGE_CONTACTS_LOADING_START"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/settings_ex/IccLockSettings$1;->mIsProgressShowing:Z

    if-nez v1, :cond_0

    iput-boolean v5, p0, Lcom/android/settings_ex/IccLockSettings$1;->mIsProgressShowing:Z

    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings$1;->this$0:Lcom/android/settings_ex/IccLockSettings;

    invoke-virtual {v1, v3}, Lcom/android/settings_ex/IccLockSettings;->showDialog(I)V

    goto :goto_0

    :sswitch_3
    invoke-static {}, Lcom/android/settings_ex/IccLockSettings;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "> MESSAGE_SIM_OK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/settings_ex/IccLockSettings$1;->mIsProgressShowing:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings$1;->this$0:Lcom/android/settings_ex/IccLockSettings;

    invoke-virtual {v1, v3}, Lcom/android/settings_ex/IccLockSettings;->dismissDialog(I)V

    iput-boolean v4, p0, Lcom/android/settings_ex/IccLockSettings$1;->mIsProgressShowing:Z

    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings$1;->this$0:Lcom/android/settings_ex/IccLockSettings;

    invoke-virtual {v1, v5}, Lcom/android/settings_ex/IccLockSettings;->updatePreferencesState(Z)V

    invoke-static {}, Lcom/android/settings_ex/IccLockSettings;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onUpdatePreferencesState_delay_1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 203
    .local v0, mSimLock:Landroid/os/Handler;
    new-instance v1, Lcom/android/settings_ex/IccLockSettings$1$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/IccLockSettings$1$1;-><init>(Lcom/android/settings_ex/IccLockSettings$1;)V

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 218
    .end local v0           #mSimLock:Landroid/os/Handler;
    :sswitch_4
    invoke-static {}, Lcom/android/settings_ex/IccLockSettings;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MESSAGE_SIM_NOK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/settings_ex/IccLockSettings$1;->mIsProgressShowing:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings$1;->this$0:Lcom/android/settings_ex/IccLockSettings;

    invoke-virtual {v1, v3}, Lcom/android/settings_ex/IccLockSettings;->dismissDialog(I)V

    iput-boolean v4, p0, Lcom/android/settings_ex/IccLockSettings$1;->mIsProgressShowing:Z

    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings$1;->this$0:Lcom/android/settings_ex/IccLockSettings;

    #calls: Lcom/android/settings_ex/IccLockSettings;->doBlockAccessMenu()V
    invoke-static {v1}, Lcom/android/settings_ex/IccLockSettings;->access$100(Lcom/android/settings_ex/IccLockSettings;)V

    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings$1;->this$0:Lcom/android/settings_ex/IccLockSettings;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/IccLockSettings;->showDialog(I)V

    goto/16 :goto_0

    .line 159
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x10001 -> :sswitch_3
        0x10002 -> :sswitch_4
        0x10003 -> :sswitch_4
        0x10004 -> :sswitch_4
        0x10005 -> :sswitch_4
        0x10006 -> :sswitch_4
    .end sparse-switch

    .line 166
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
