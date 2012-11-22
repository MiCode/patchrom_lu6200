.class Lcom/android/settings_ex/IccLockSettings$2;
.super Landroid/os/Handler;
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
.field final synthetic this$0:Lcom/android/settings_ex/IccLockSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/IccLockSettings;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/IccLockSettings$2;->this$0:Lcom/android/settings_ex/IccLockSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    invoke-static {}, Lcom/android/settings_ex/IccLockSettings;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage ==msg.what"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x67

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/android/settings_ex/IccLockSettings;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings$2;->this$0:Lcom/android/settings_ex/IccLockSettings;

    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings$2;->this$0:Lcom/android/settings_ex/IccLockSettings;

    #getter for: Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/IccLockSettings$PinDialog;
    invoke-static {v1}, Lcom/android/settings_ex/IccLockSettings;->access$700(Lcom/android/settings_ex/IccLockSettings;)Lcom/android/settings_ex/IccLockSettings$PinDialog;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string v4, ""

    const-string v5, ""

    #calls: Lcom/android/settings_ex/IccLockSettings;->registerPinDialogSession(Lcom/android/settings_ex/EditPinPreferenceBehavior;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v0 .. v5}, Lcom/android/settings_ex/IccLockSettings;->access$800(Lcom/android/settings_ex/IccLockSettings;Lcom/android/settings_ex/EditPinPreferenceBehavior;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings$2;->this$0:Lcom/android/settings_ex/IccLockSettings;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/IccLockSettings;->showDialog(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings$2;->this$0:Lcom/android/settings_ex/IccLockSettings;

    #getter for: Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/IccLockSettings$PinDialog;
    invoke-static {v0}, Lcom/android/settings_ex/IccLockSettings;->access$700(Lcom/android/settings_ex/IccLockSettings;)Lcom/android/settings_ex/IccLockSettings$PinDialog;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v3, ""

    const-string v4, ""

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/settings_ex/IccLockSettings$PinDialog;->showPinDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 289
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x68

    if-ne v0, v1, :cond_3

    invoke-static {}, Lcom/android/settings_ex/IccLockSettings;->access$600()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings$2;->this$0:Lcom/android/settings_ex/IccLockSettings;

    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings$2;->this$0:Lcom/android/settings_ex/IccLockSettings;

    #getter for: Lcom/android/settings_ex/IccLockSettings;->mSimPersoDialog:Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;
    invoke-static {v1}, Lcom/android/settings_ex/IccLockSettings;->access$900(Lcom/android/settings_ex/IccLockSettings;)Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string v4, ""

    const-string v5, ""

    #calls: Lcom/android/settings_ex/IccLockSettings;->registerPinDialogSession(Lcom/android/settings_ex/EditPinPreferenceBehavior;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v0 .. v5}, Lcom/android/settings_ex/IccLockSettings;->access$800(Lcom/android/settings_ex/IccLockSettings;Lcom/android/settings_ex/EditPinPreferenceBehavior;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings$2;->this$0:Lcom/android/settings_ex/IccLockSettings;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/IccLockSettings;->showDialog(I)V

    goto :goto_0

    .line 294
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings$2;->this$0:Lcom/android/settings_ex/IccLockSettings;

    #getter for: Lcom/android/settings_ex/IccLockSettings;->mSimPersoDialog:Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;
    invoke-static {v0}, Lcom/android/settings_ex/IccLockSettings;->access$900(Lcom/android/settings_ex/IccLockSettings;)Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v3, ""

    const-string v4, ""

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;->showPinDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 300
    :cond_3
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 301
    .local v6, ar:Landroid/os/AsyncResult;
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 304
    :pswitch_1
    invoke-static {}, Lcom/android/settings_ex/IccLockSettings;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Handler receives MESSAGE_CHANGE_SIM_LOCK"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings$2;->this$0:Lcom/android/settings_ex/IccLockSettings;

    #calls: Lcom/android/settings_ex/IccLockSettings;->onSimLockChanging(Landroid/os/AsyncResult;)V
    invoke-static {v0, v6}, Lcom/android/settings_ex/IccLockSettings;->access$1000(Lcom/android/settings_ex/IccLockSettings;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 309
    :pswitch_2
    invoke-static {}, Lcom/android/settings_ex/IccLockSettings;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Handler receives MESSAGE_CHECK_PIN"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings$2;->this$0:Lcom/android/settings_ex/IccLockSettings;

    #calls: Lcom/android/settings_ex/IccLockSettings;->onPinCheck(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/settings_ex/IccLockSettings;->access$1100(Lcom/android/settings_ex/IccLockSettings;Landroid/os/Message;)V

    goto :goto_0

    .line 314
    :pswitch_3
    invoke-static {}, Lcom/android/settings_ex/IccLockSettings;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Handler receives MESSAGE_CHANGE_PIN"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings$2;->this$0:Lcom/android/settings_ex/IccLockSettings;

    #calls: Lcom/android/settings_ex/IccLockSettings;->onPinChanging(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/settings_ex/IccLockSettings;->access$1200(Lcom/android/settings_ex/IccLockSettings;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 319
    :pswitch_4
    invoke-static {}, Lcom/android/settings_ex/IccLockSettings;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Handler receives MESSAGE_GET_ALL_SIM_INFO"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings$2;->this$0:Lcom/android/settings_ex/IccLockSettings;

    #calls: Lcom/android/settings_ex/IccLockSettings;->onUpdatePreferencesState()V
    invoke-static {v0}, Lcom/android/settings_ex/IccLockSettings;->access$300(Lcom/android/settings_ex/IccLockSettings;)V

    goto/16 :goto_0

    .line 301
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
