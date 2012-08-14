.class Lcom/android/internal/telephony/UiccCardApplication$1;
.super Landroid/os/Handler;
.source "UiccCardApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/UiccCardApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/UiccCardApplication;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/UiccCardApplication;)V
    .locals 0
    .parameter

    .prologue
    .line 321
    iput-object p1, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    const/16 v9, 0x1e

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 326
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    #getter for: Lcom/android/internal/telephony/UiccCardApplication;->mDestroyed:Z
    invoke-static {v4}, Lcom/android/internal/telephony/UiccCardApplication;->access$000(Lcom/android/internal/telephony/UiccCardApplication;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 327
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received message "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] while being destroyed. Ignoring."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/internal/telephony/UiccCardApplication;->loge(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/UiccCardApplication;->access$100(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;)V

    .line 543
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 541
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown Event "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/internal/telephony/UiccCardApplication;->loge(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/UiccCardApplication;->access$100(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;)V

    goto :goto_0

    .line 337
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 339
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_3

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_3

    .line 340
    iget v4, p1, Landroid/os/Message;->what:I

    if-ne v4, v7, :cond_2

    .line 341
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    #calls: Lcom/android/internal/telephony/UiccCardApplication;->parsePinPukErrorResult(Landroid/os/AsyncResult;Z)V
    invoke-static {v4, v0, v7}, Lcom/android/internal/telephony/UiccCardApplication;->access$200(Lcom/android/internal/telephony/UiccCardApplication;Landroid/os/AsyncResult;Z)V

    .line 358
    :goto_1
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    invoke-static {v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 360
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 343
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    #calls: Lcom/android/internal/telephony/UiccCardApplication;->parsePinPukErrorResult(Landroid/os/AsyncResult;Z)V
    invoke-static {v4, v0, v8}, Lcom/android/internal/telephony/UiccCardApplication;->access$200(Lcom/android/internal/telephony/UiccCardApplication;Landroid/os/AsyncResult;Z)V

    goto :goto_1

    .line 349
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    #setter for: Lcom/android/internal/telephony/UiccCardApplication;->isPuk1:Z
    invoke-static {v4, v8}, Lcom/android/internal/telephony/UiccCardApplication;->access$302(Lcom/android/internal/telephony/UiccCardApplication;Z)Z

    .line 350
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    #setter for: Lcom/android/internal/telephony/UiccCardApplication;->isPuk2:Z
    invoke-static {v4, v8}, Lcom/android/internal/telephony/UiccCardApplication;->access$402(Lcom/android/internal/telephony/UiccCardApplication;Z)Z

    .line 351
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    invoke-static {v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 353
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    #getter for: Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v4}, Lcom/android/internal/telephony/UiccCardApplication;->access$500(Lcom/android/internal/telephony/UiccCardApplication;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {p0, v9, v5}, Lcom/android/internal/telephony/UiccCardApplication$1;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    goto :goto_0

    .line 363
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 364
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    #calls: Lcom/android/internal/telephony/UiccCardApplication;->onQueryFdnEnabled(Landroid/os/AsyncResult;)V
    invoke-static {v4, v0}, Lcom/android/internal/telephony/UiccCardApplication;->access$600(Lcom/android/internal/telephony/UiccCardApplication;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 367
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 368
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_4

    .line 369
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    const-string v5, "EVENT_CHANGE_FACILITY_LOCK_DONE "

    #calls: Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/UiccCardApplication;->access$700(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;)V

    .line 373
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    invoke-static {v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 374
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    #getter for: Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v4}, Lcom/android/internal/telephony/UiccCardApplication;->access$500(Lcom/android/internal/telephony/UiccCardApplication;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {p0, v9, v5}, Lcom/android/internal/telephony/UiccCardApplication$1;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 380
    :cond_4
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_5

    .line 381
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    #calls: Lcom/android/internal/telephony/UiccCardApplication;->parsePinPukErrorResult(Landroid/os/AsyncResult;Z)V
    invoke-static {v4, v0, v7}, Lcom/android/internal/telephony/UiccCardApplication;->access$200(Lcom/android/internal/telephony/UiccCardApplication;Landroid/os/AsyncResult;Z)V

    .line 383
    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error change facility sim lock with exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/internal/telephony/UiccCardApplication;->loge(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/UiccCardApplication;->access$100(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;)V

    .line 386
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    invoke-static {v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 388
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 391
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 393
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_8

    .line 395
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    #getter for: Lcom/android/internal/telephony/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;
    invoke-static {v4}, Lcom/android/internal/telephony/UiccCardApplication;->access$800(Lcom/android/internal/telephony/UiccCardApplication;)Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    if-ne v4, v5, :cond_7

    .line 396
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    #getter for: Lcom/android/internal/telephony/UiccCardApplication;->mIccFdnEnabled:Z
    invoke-static {v4}, Lcom/android/internal/telephony/UiccCardApplication;->access$900(Lcom/android/internal/telephony/UiccCardApplication;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    #getter for: Lcom/android/internal/telephony/UiccCardApplication;->mDesiredFdnEnabled:Z
    invoke-static {v4}, Lcom/android/internal/telephony/UiccCardApplication;->access$1000(Lcom/android/internal/telephony/UiccCardApplication;)Z

    move-result v4

    if-ne v4, v7, :cond_6

    .line 397
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_2G_SIM_FDN_ENABLED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 398
    .local v3, intent:Landroid/content/Intent;
    invoke-static {v3, v6}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 399
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    const-string v5, "BroadCast  ACTION_2G_SIM_FDN_ENABLED"

    #calls: Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/UiccCardApplication;->access$700(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;)V

    .line 401
    .end local v3           #intent:Landroid/content/Intent;
    :cond_6
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    #getter for: Lcom/android/internal/telephony/UiccCardApplication;->mIccFdnEnabled:Z
    invoke-static {v4}, Lcom/android/internal/telephony/UiccCardApplication;->access$900(Lcom/android/internal/telephony/UiccCardApplication;)Z

    move-result v4

    if-ne v4, v7, :cond_7

    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    #getter for: Lcom/android/internal/telephony/UiccCardApplication;->mDesiredFdnEnabled:Z
    invoke-static {v4}, Lcom/android/internal/telephony/UiccCardApplication;->access$1000(Lcom/android/internal/telephony/UiccCardApplication;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 402
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_2G_SIM_FDN_DISABLED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 403
    .restart local v3       #intent:Landroid/content/Intent;
    invoke-static {v3, v6}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 404
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    const-string v5, "BroadCast  ACTION_2G_SIM_FDN_DISABLED"

    #calls: Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/UiccCardApplication;->access$700(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;)V

    .line 408
    .end local v3           #intent:Landroid/content/Intent;
    :cond_7
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    iget-object v5, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    #getter for: Lcom/android/internal/telephony/UiccCardApplication;->mDesiredFdnEnabled:Z
    invoke-static {v5}, Lcom/android/internal/telephony/UiccCardApplication;->access$1000(Lcom/android/internal/telephony/UiccCardApplication;)Z

    move-result v5

    #setter for: Lcom/android/internal/telephony/UiccCardApplication;->mIccFdnEnabled:Z
    invoke-static {v4, v5}, Lcom/android/internal/telephony/UiccCardApplication;->access$902(Lcom/android/internal/telephony/UiccCardApplication;Z)Z

    .line 409
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_CHANGE_FACILITY_FDN_DONE: mIccFdnEnabled= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    #getter for: Lcom/android/internal/telephony/UiccCardApplication;->mIccFdnEnabled:Z
    invoke-static {v6}, Lcom/android/internal/telephony/UiccCardApplication;->access$900(Lcom/android/internal/telephony/UiccCardApplication;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/UiccCardApplication;->access$700(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;)V

    .line 413
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    invoke-static {v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 414
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    #getter for: Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v4}, Lcom/android/internal/telephony/UiccCardApplication;->access$500(Lcom/android/internal/telephony/UiccCardApplication;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {p0, v9, v5}, Lcom/android/internal/telephony/UiccCardApplication$1;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 419
    :cond_8
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_9

    .line 420
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    #calls: Lcom/android/internal/telephony/UiccCardApplication;->parsePinPukErrorResult(Landroid/os/AsyncResult;Z)V
    invoke-static {v4, v0, v8}, Lcom/android/internal/telephony/UiccCardApplication;->access$200(Lcom/android/internal/telephony/UiccCardApplication;Landroid/os/AsyncResult;Z)V

    .line 422
    :cond_9
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error change facility fdn with exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/internal/telephony/UiccCardApplication;->loge(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/UiccCardApplication;->access$100(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;)V

    .line 425
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    invoke-static {v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 427
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 430
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 431
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_b

    .line 432
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in change icc app password with exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/internal/telephony/UiccCardApplication;->loge(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/UiccCardApplication;->access$100(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;)V

    .line 434
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_a

    .line 435
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    #calls: Lcom/android/internal/telephony/UiccCardApplication;->parsePinPukErrorResult(Landroid/os/AsyncResult;Z)V
    invoke-static {v4, v0, v7}, Lcom/android/internal/telephony/UiccCardApplication;->access$200(Lcom/android/internal/telephony/UiccCardApplication;Landroid/os/AsyncResult;Z)V

    .line 448
    :cond_a
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    invoke-static {v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 450
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 441
    :cond_b
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    invoke-static {v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 443
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    #getter for: Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v4}, Lcom/android/internal/telephony/UiccCardApplication;->access$500(Lcom/android/internal/telephony/UiccCardApplication;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {p0, v9, v5}, Lcom/android/internal/telephony/UiccCardApplication$1;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 453
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 454
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_d

    .line 455
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in change icc app password with exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/internal/telephony/UiccCardApplication;->loge(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/UiccCardApplication;->access$100(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;)V

    .line 457
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_c

    .line 458
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    #calls: Lcom/android/internal/telephony/UiccCardApplication;->parsePinPukErrorResult(Landroid/os/AsyncResult;Z)V
    invoke-static {v4, v0, v8}, Lcom/android/internal/telephony/UiccCardApplication;->access$200(Lcom/android/internal/telephony/UiccCardApplication;Landroid/os/AsyncResult;Z)V

    .line 471
    :cond_c
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    invoke-static {v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 473
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 464
    :cond_d
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    invoke-static {v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 466
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    #getter for: Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v4}, Lcom/android/internal/telephony/UiccCardApplication;->access$500(Lcom/android/internal/telephony/UiccCardApplication;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {p0, v9, v5}, Lcom/android/internal/telephony/UiccCardApplication$1;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 481
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 483
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    const-string v5, "EVENT_GET_ICC_STATUS_DONE received"

    #calls: Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/UiccCardApplication;->access$700(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;)V

    .line 485
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_f

    .line 487
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/IccCardStatus;

    .line 489
    .local v1, cardStatus:Lcom/android/internal/telephony/IccCardStatus;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    iget-object v4, v1, Lcom/android/internal/telephony/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/IccCardApplicationStatus;

    array-length v4, v4

    if-ge v2, v4, :cond_f

    .line 491
    iget-object v4, v1, Lcom/android/internal/telephony/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/IccCardApplicationStatus;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/android/internal/telephony/IccCardApplicationStatus;->aid:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    #getter for: Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/UiccCardApplication;->access$1100(Lcom/android/internal/telephony/UiccCardApplication;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 493
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    const-string v5, "Get Icc Status Done : Find Aid"

    #calls: Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/UiccCardApplication;->access$700(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;)V

    .line 494
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    iget-object v5, v1, Lcom/android/internal/telephony/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/IccCardApplicationStatus;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/android/internal/telephony/IccCardApplicationStatus;->remaining_count_pin1:I

    #setter for: Lcom/android/internal/telephony/UiccCardApplication;->mPin1RetryCount:I
    invoke-static {v4, v5}, Lcom/android/internal/telephony/UiccCardApplication;->access$1202(Lcom/android/internal/telephony/UiccCardApplication;I)I

    .line 495
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    iget-object v5, v1, Lcom/android/internal/telephony/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/IccCardApplicationStatus;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/android/internal/telephony/IccCardApplicationStatus;->remaining_count_puk1:I

    #setter for: Lcom/android/internal/telephony/UiccCardApplication;->mPuk1RetryCount:I
    invoke-static {v4, v5}, Lcom/android/internal/telephony/UiccCardApplication;->access$1302(Lcom/android/internal/telephony/UiccCardApplication;I)I

    .line 496
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    iget-object v5, v1, Lcom/android/internal/telephony/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/IccCardApplicationStatus;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/android/internal/telephony/IccCardApplicationStatus;->remaining_count_pin2:I

    #setter for: Lcom/android/internal/telephony/UiccCardApplication;->mPin2RetryCount:I
    invoke-static {v4, v5}, Lcom/android/internal/telephony/UiccCardApplication;->access$1402(Lcom/android/internal/telephony/UiccCardApplication;I)I

    .line 497
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    iget-object v5, v1, Lcom/android/internal/telephony/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/IccCardApplicationStatus;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/android/internal/telephony/IccCardApplicationStatus;->remaining_count_puk2:I

    #setter for: Lcom/android/internal/telephony/UiccCardApplication;->mPuk2RetryCount:I
    invoke-static {v4, v5}, Lcom/android/internal/telephony/UiccCardApplication;->access$1502(Lcom/android/internal/telephony/UiccCardApplication;I)I

    .line 498
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    iget-object v5, v1, Lcom/android/internal/telephony/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/IccCardApplicationStatus;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/android/internal/telephony/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/IccCardStatus$PinState;

    #setter for: Lcom/android/internal/telephony/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/IccCardStatus$PinState;
    invoke-static {v4, v5}, Lcom/android/internal/telephony/UiccCardApplication;->access$1602(Lcom/android/internal/telephony/UiccCardApplication;Lcom/android/internal/telephony/IccCardStatus$PinState;)Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 489
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 502
    .end local v1           #cardStatus:Lcom/android/internal/telephony/IccCardStatus;
    .end local v2           #i:I
    :cond_f
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 514
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 516
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    const-string v5, "EVENT_GET_ALL_SIM_PIN_STATUS received"

    #calls: Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/UiccCardApplication;->access$700(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;)V

    .line 518
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 520
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/IccCardStatus;

    .line 522
    .restart local v1       #cardStatus:Lcom/android/internal/telephony/IccCardStatus;
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3
    iget-object v4, v1, Lcom/android/internal/telephony/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/IccCardApplicationStatus;

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 524
    iget-object v4, v1, Lcom/android/internal/telephony/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/IccCardApplicationStatus;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/android/internal/telephony/IccCardApplicationStatus;->aid:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    #getter for: Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/UiccCardApplication;->access$1100(Lcom/android/internal/telephony/UiccCardApplication;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 526
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    const-string v5, "Get Icc Status Done : Find Aid"

    #calls: Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/UiccCardApplication;->access$700(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;)V

    .line 527
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    iget-object v5, v1, Lcom/android/internal/telephony/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/IccCardApplicationStatus;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/android/internal/telephony/IccCardApplicationStatus;->remaining_count_pin1:I

    #setter for: Lcom/android/internal/telephony/UiccCardApplication;->mPin1RetryCount:I
    invoke-static {v4, v5}, Lcom/android/internal/telephony/UiccCardApplication;->access$1202(Lcom/android/internal/telephony/UiccCardApplication;I)I

    .line 528
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    iget-object v5, v1, Lcom/android/internal/telephony/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/IccCardApplicationStatus;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/android/internal/telephony/IccCardApplicationStatus;->remaining_count_puk1:I

    #setter for: Lcom/android/internal/telephony/UiccCardApplication;->mPuk1RetryCount:I
    invoke-static {v4, v5}, Lcom/android/internal/telephony/UiccCardApplication;->access$1302(Lcom/android/internal/telephony/UiccCardApplication;I)I

    .line 529
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    iget-object v5, v1, Lcom/android/internal/telephony/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/IccCardApplicationStatus;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/android/internal/telephony/IccCardApplicationStatus;->remaining_count_pin2:I

    #setter for: Lcom/android/internal/telephony/UiccCardApplication;->mPin2RetryCount:I
    invoke-static {v4, v5}, Lcom/android/internal/telephony/UiccCardApplication;->access$1402(Lcom/android/internal/telephony/UiccCardApplication;I)I

    .line 530
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    iget-object v5, v1, Lcom/android/internal/telephony/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/IccCardApplicationStatus;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/android/internal/telephony/IccCardApplicationStatus;->remaining_count_puk2:I

    #setter for: Lcom/android/internal/telephony/UiccCardApplication;->mPuk2RetryCount:I
    invoke-static {v4, v5}, Lcom/android/internal/telephony/UiccCardApplication;->access$1502(Lcom/android/internal/telephony/UiccCardApplication;I)I

    .line 531
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    iget-object v5, v1, Lcom/android/internal/telephony/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/IccCardApplicationStatus;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/android/internal/telephony/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/IccCardStatus$PinState;

    #setter for: Lcom/android/internal/telephony/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/IccCardStatus$PinState;
    invoke-static {v4, v5}, Lcom/android/internal/telephony/UiccCardApplication;->access$1602(Lcom/android/internal/telephony/UiccCardApplication;Lcom/android/internal/telephony/IccCardStatus$PinState;)Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 522
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 332
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_1
        0x6 -> :sswitch_3
        0x7 -> :sswitch_0
        0x1e -> :sswitch_6
        0x1f -> :sswitch_7
    .end sparse-switch
.end method
