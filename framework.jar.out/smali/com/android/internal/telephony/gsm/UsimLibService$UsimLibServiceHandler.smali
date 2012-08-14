.class Lcom/android/internal/telephony/gsm/UsimLibService$UsimLibServiceHandler;
.super Landroid/os/Handler;
.source "UsimLibService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/UsimLibService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsimLibServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/UsimLibService;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/gsm/UsimLibService;)V
    .locals 0
    .parameter

    .prologue
    .line 529
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimLibService$UsimLibServiceHandler;->this$0:Lcom/android/internal/telephony/gsm/UsimLibService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/gsm/UsimLibService;Lcom/android/internal/telephony/gsm/UsimLibService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 529
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimLibService$UsimLibServiceHandler;-><init>(Lcom/android/internal/telephony/gsm/UsimLibService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 532
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 534
    .local v0, ar:Landroid/os/AsyncResult;
    const-string v6, "UsimLibService"

    const-string v7, "UsimLibServiceHandler "

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimLibService$UsimLibServiceHandler;->this$0:Lcom/android/internal/telephony/gsm/UsimLibService;

    #calls: Lcom/android/internal/telephony/gsm/UsimLibService;->cancelTimeoutTimer()V
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/UsimLibService;->access$400(Lcom/android/internal/telephony/gsm/UsimLibService;)V

    .line 538
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimLibService$UsimLibServiceHandler;->this$0:Lcom/android/internal/telephony/gsm/UsimLibService;

    #getter for: Lcom/android/internal/telephony/gsm/UsimLibService;->requested:Z
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/UsimLibService;->access$500(Lcom/android/internal/telephony/gsm/UsimLibService;)Z

    move-result v6

    if-nez v6, :cond_0

    iget v6, p1, Landroid/os/Message;->what:I

    if-eqz v6, :cond_0

    .line 539
    const-string v6, "UsimLibService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignored handle message: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    :goto_0
    return-void

    .line 543
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimLibService$UsimLibServiceHandler;->this$0:Lcom/android/internal/telephony/gsm/UsimLibService;

    #setter for: Lcom/android/internal/telephony/gsm/UsimLibService;->requested:Z
    invoke-static {v6, v8}, Lcom/android/internal/telephony/gsm/UsimLibService;->access$502(Lcom/android/internal/telephony/gsm/UsimLibService;Z)Z

    .line 545
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    goto :goto_0

    .line 659
    :sswitch_0
    const-string v6, "UsimLibService"

    const-string v7, "USIM_EVENT_TIMEOUT"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimLibService$UsimLibServiceHandler;->this$0:Lcom/android/internal/telephony/gsm/UsimLibService;

    #getter for: Lcom/android/internal/telephony/gsm/UsimLibService;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/UsimLibService;->access$800(Lcom/android/internal/telephony/gsm/UsimLibService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 663
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimLibService$UsimLibServiceHandler;->this$0:Lcom/android/internal/telephony/gsm/UsimLibService;

    const/4 v8, 0x1

    #setter for: Lcom/android/internal/telephony/gsm/UsimLibService;->timeout:Z
    invoke-static {v6, v8}, Lcom/android/internal/telephony/gsm/UsimLibService;->access$1502(Lcom/android/internal/telephony/gsm/UsimLibService;Z)Z

    .line 664
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimLibService$UsimLibServiceHandler;->this$0:Lcom/android/internal/telephony/gsm/UsimLibService;

    #getter for: Lcom/android/internal/telephony/gsm/UsimLibService;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/UsimLibService;->access$800(Lcom/android/internal/telephony/gsm/UsimLibService;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 665
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 552
    :sswitch_1
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimLibService$UsimLibServiceHandler;->this$0:Lcom/android/internal/telephony/gsm/UsimLibService;

    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [B

    check-cast v6, [B

    #setter for: Lcom/android/internal/telephony/gsm/UsimLibService;->imsi:[B
    invoke-static {v7, v6}, Lcom/android/internal/telephony/gsm/UsimLibService;->access$602(Lcom/android/internal/telephony/gsm/UsimLibService;[B)[B

    .line 554
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_1

    .line 555
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimLibService$UsimLibServiceHandler;->this$0:Lcom/android/internal/telephony/gsm/UsimLibService;

    #setter for: Lcom/android/internal/telephony/gsm/UsimLibService;->imsiSuccess:Z
    invoke-static {v6, v8}, Lcom/android/internal/telephony/gsm/UsimLibService;->access$702(Lcom/android/internal/telephony/gsm/UsimLibService;Z)Z

    .line 556
    const-string v6, "UsimLibService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "UsimLibServiceHandler, event: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " excepion: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimLibService$UsimLibServiceHandler;->this$0:Lcom/android/internal/telephony/gsm/UsimLibService;

    #getter for: Lcom/android/internal/telephony/gsm/UsimLibService;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/UsimLibService;->access$800(Lcom/android/internal/telephony/gsm/UsimLibService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 564
    :try_start_1
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimLibService$UsimLibServiceHandler;->this$0:Lcom/android/internal/telephony/gsm/UsimLibService;

    #getter for: Lcom/android/internal/telephony/gsm/UsimLibService;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/UsimLibService;->access$800(Lcom/android/internal/telephony/gsm/UsimLibService;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 565
    monitor-exit v7

    goto :goto_0

    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v6

    .line 558
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimLibService$UsimLibServiceHandler;->this$0:Lcom/android/internal/telephony/gsm/UsimLibService;

    #getter for: Lcom/android/internal/telephony/gsm/UsimLibService;->imsi:[B
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/UsimLibService;->access$600(Lcom/android/internal/telephony/gsm/UsimLibService;)[B

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimLibService$UsimLibServiceHandler;->this$0:Lcom/android/internal/telephony/gsm/UsimLibService;

    #getter for: Lcom/android/internal/telephony/gsm/UsimLibService;->imsi:[B
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/UsimLibService;->access$600(Lcom/android/internal/telephony/gsm/UsimLibService;)[B

    move-result-object v7

    array-length v7, v7

    invoke-static {v6, v8, v7}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v2

    .line 559
    .local v2, imsi_s:Ljava/lang/String;
    const-string v6, "UsimLibService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "imsi: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " imsi_len: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimLibService$UsimLibServiceHandler;->this$0:Lcom/android/internal/telephony/gsm/UsimLibService;

    #getter for: Lcom/android/internal/telephony/gsm/UsimLibService;->imsi:[B
    invoke-static {v8}, Lcom/android/internal/telephony/gsm/UsimLibService;->access$600(Lcom/android/internal/telephony/gsm/UsimLibService;)[B

    move-result-object v8

    array-length v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimLibService$UsimLibServiceHandler;->this$0:Lcom/android/internal/telephony/gsm/UsimLibService;

    #setter for: Lcom/android/internal/telephony/gsm/UsimLibService;->imsiSuccess:Z
    invoke-static {v6, v9}, Lcom/android/internal/telephony/gsm/UsimLibService;->access$702(Lcom/android/internal/telephony/gsm/UsimLibService;Z)Z

    goto :goto_1

    .line 573
    .end local v2           #imsi_s:Ljava/lang/String;
    :sswitch_2
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [B

    move-object v3, v6

    check-cast v3, [B

    .line 575
    .local v3, master_imsi:[B
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_2

    aget-byte v6, v3, v8

    if-nez v6, :cond_3

    .line 576
    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimLibService$UsimLibServiceHandler;->this$0:Lcom/android/internal/telephony/gsm/UsimLibService;

    #setter for: Lcom/android/internal/telephony/gsm/UsimLibService;->imsiSuccess:Z
    invoke-static {v6, v8}, Lcom/android/internal/telephony/gsm/UsimLibService;->access$702(Lcom/android/internal/telephony/gsm/UsimLibService;Z)Z

    .line 577
    const-string v6, "UsimLibService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "UsimLibServiceHandler, event: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " excepion: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimLibService$UsimLibServiceHandler;->this$0:Lcom/android/internal/telephony/gsm/UsimLibService;

    #getter for: Lcom/android/internal/telephony/gsm/UsimLibService;->mIccFh:Lcom/android/internal/telephony/IccFileHandler;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/UsimLibService;->access$900(Lcom/android/internal/telephony/gsm/UsimLibService;)Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v6

    const/16 v7, 0x6f07

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimLibService$UsimLibServiceHandler;->this$0:Lcom/android/internal/telephony/gsm/UsimLibService;

    #getter for: Lcom/android/internal/telephony/gsm/UsimLibService;->mHandler:Lcom/android/internal/telephony/gsm/UsimLibService$UsimLibServiceHandler;
    invoke-static {v8}, Lcom/android/internal/telephony/gsm/UsimLibService;->access$300(Lcom/android/internal/telephony/gsm/UsimLibService;)Lcom/android/internal/telephony/gsm/UsimLibService$UsimLibServiceHandler;

    move-result-object v8

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/gsm/UsimLibService$UsimLibServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 582
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimLibService$UsimLibServiceHandler;->this$0:Lcom/android/internal/telephony/gsm/UsimLibService;

    const/16 v7, 0x9

    #calls: Lcom/android/internal/telephony/gsm/UsimLibService;->subArray([BII)[B
    invoke-static {v3, v9, v7}, Lcom/android/internal/telephony/gsm/UsimLibService;->access$1000([BII)[B

    move-result-object v7

    #setter for: Lcom/android/internal/telephony/gsm/UsimLibService;->imsi:[B
    invoke-static {v6, v7}, Lcom/android/internal/telephony/gsm/UsimLibService;->access$602(Lcom/android/internal/telephony/gsm/UsimLibService;[B)[B

    .line 583
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimLibService$UsimLibServiceHandler;->this$0:Lcom/android/internal/telephony/gsm/UsimLibService;

    #getter for: Lcom/android/internal/telephony/gsm/UsimLibService;->imsi:[B
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/UsimLibService;->access$600(Lcom/android/internal/telephony/gsm/UsimLibService;)[B

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimLibService$UsimLibServiceHandler;->this$0:Lcom/android/internal/telephony/gsm/UsimLibService;

    #getter for: Lcom/android/internal/telephony/gsm/UsimLibService;->imsi:[B
    invoke-static {v7}, Lcom/android/internal/telephony/gsm/UsimLibService;->access$600(Lcom/android/internal/telephony/gsm/UsimLibService;)[B

    move-result-object v7

    array-length v7, v7

    invoke-static {v6, v8, v7}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v2

    .line 584
    .restart local v2       #imsi_s:Ljava/lang/String;
    const-string v6, "UsimLibService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "master imsi: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " imsi_len: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimLibService$UsimLibServiceHandler;->this$0:Lcom/android/internal/telephony/gsm/UsimLibService;

    #getter for: Lcom/android/internal/telephony/gsm/UsimLibService;->imsi:[B
    invoke-static {v8}, Lcom/android/internal/telephony/gsm/UsimLibService;->access$600(Lcom/android/internal/telephony/gsm/UsimLibService;)[B

    move-result-object v8

    array-length v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimLibService$UsimLibServiceHandler;->this$0:Lcom/android/internal/telephony/gsm/UsimLibService;

    #setter for: Lcom/android/internal/telephony/gsm/UsimLibService;->imsiSuccess:Z
    invoke-static {v6, v9}, Lcom/android/internal/telephony/gsm/UsimLibService;->access$702(Lcom/android/internal/telephony/gsm/UsimLibService;Z)Z

    .line 587
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimLibService$UsimLibServiceHandler;->this$0:Lcom/android/internal/telephony/gsm/UsimLibService;

    #getter for: Lcom/android/internal/telephony/gsm/UsimLibService;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/UsimLibService;->access$800(Lcom/android/internal/telephony/gsm/UsimLibService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 588
    :try_start_2
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimLibService$UsimLibServiceHandler;->this$0:Lcom/android/internal/telephony/gsm/UsimLibService;

    #getter for: Lcom/android/internal/telephony/gsm/UsimLibService;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/UsimLibService;->access$800(Lcom/android/internal/telephony/gsm/UsimLibService;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 589
    monitor-exit v7

    goto/16 :goto_0

    :catchall_2
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v6

    .line 596
    .end local v2           #imsi_s:Ljava/lang/String;
    .end local v3           #master_imsi:[B
    :sswitch_3
    const-string v6, "UsimLibService"

    const-string v7, "USIM_EVENT_GET_AUTH_DONE"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimLibService$UsimLibServiceHandler;->this$0:Lcom/android/internal/telephony/gsm/UsimLibService;

    #setter for: Lcom/android/internal/telephony/gsm/UsimLibService;->authData:[B
    invoke-static {v6, v10}, Lcom/android/internal/telephony/gsm/UsimLibService;->access$1102(Lcom/android/internal/telephony/gsm/UsimLibService;[B)[B

    .line 599
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_5

    .line 601
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v6, :cond_4

    .line 603
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/gsm/UsimLibAuthResult;

    .line 605
    .local v1, authResult:Lcom/android/internal/telephony/gsm/UsimLibAuthResult;
    const-string v6, "UsimLibService"

    const-string v7, "USIM_EVENT_GET_AUTH_DONE "

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimLibService$UsimLibServiceHandler;->this$0:Lcom/android/internal/telephony/gsm/UsimLibService;

    iget-object v7, v1, Lcom/android/internal/telephony/gsm/UsimLibAuthResult;->authData:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v7

    #setter for: Lcom/android/internal/telephony/gsm/UsimLibService;->authData:[B
    invoke-static {v6, v7}, Lcom/android/internal/telephony/gsm/UsimLibService;->access$1102(Lcom/android/internal/telephony/gsm/UsimLibService;[B)[B

    .line 607
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimLibService$UsimLibServiceHandler;->this$0:Lcom/android/internal/telephony/gsm/UsimLibService;

    iget v7, v1, Lcom/android/internal/telephony/gsm/UsimLibAuthResult;->ret:I

    #setter for: Lcom/android/internal/telephony/gsm/UsimLibService;->authRet:I
    invoke-static {v6, v7}, Lcom/android/internal/telephony/gsm/UsimLibService;->access$1202(Lcom/android/internal/telephony/gsm/UsimLibService;I)I

    .line 609
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimLibService$UsimLibServiceHandler;->this$0:Lcom/android/internal/telephony/gsm/UsimLibService;

    #getter for: Lcom/android/internal/telephony/gsm/UsimLibService;->authData:[B
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/UsimLibService;->access$1100(Lcom/android/internal/telephony/gsm/UsimLibService;)[B

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    .line 610
    .local v4, tmpString:Ljava/lang/String;
    const-string v6, "UsimLibService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "result of getUsimAuthentication() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ret = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimLibService$UsimLibServiceHandler;->this$0:Lcom/android/internal/telephony/gsm/UsimLibService;

    #getter for: Lcom/android/internal/telephony/gsm/UsimLibService;->authRet:I
    invoke-static {v8}, Lcom/android/internal/telephony/gsm/UsimLibService;->access$1200(Lcom/android/internal/telephony/gsm/UsimLibService;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimLibService$UsimLibServiceHandler;->this$0:Lcom/android/internal/telephony/gsm/UsimLibService;

    #setter for: Lcom/android/internal/telephony/gsm/UsimLibService;->authSuccess:Z
    invoke-static {v6, v9}, Lcom/android/internal/telephony/gsm/UsimLibService;->access$1302(Lcom/android/internal/telephony/gsm/UsimLibService;Z)Z

    .line 621
    .end local v1           #authResult:Lcom/android/internal/telephony/gsm/UsimLibAuthResult;
    .end local v4           #tmpString:Ljava/lang/String;
    :cond_4
    :goto_2
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimLibService$UsimLibServiceHandler;->this$0:Lcom/android/internal/telephony/gsm/UsimLibService;

    #getter for: Lcom/android/internal/telephony/gsm/UsimLibService;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/UsimLibService;->access$800(Lcom/android/internal/telephony/gsm/UsimLibService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 623
    :try_start_3
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimLibService$UsimLibServiceHandler;->this$0:Lcom/android/internal/telephony/gsm/UsimLibService;

    #getter for: Lcom/android/internal/telephony/gsm/UsimLibService;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/UsimLibService;->access$800(Lcom/android/internal/telephony/gsm/UsimLibService;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 624
    monitor-exit v7

    goto/16 :goto_0

    :catchall_3
    move-exception v6

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v6

    .line 617
    :cond_5
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimLibService$UsimLibServiceHandler;->this$0:Lcom/android/internal/telephony/gsm/UsimLibService;

    #setter for: Lcom/android/internal/telephony/gsm/UsimLibService;->authSuccess:Z
    invoke-static {v6, v8}, Lcom/android/internal/telephony/gsm/UsimLibService;->access$1302(Lcom/android/internal/telephony/gsm/UsimLibService;Z)Z

    .line 618
    const-string v6, "UsimLibService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "UsimLibServiceHandler, event: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " excepion: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 633
    :sswitch_4
    const-string v6, "UsimLibService"

    const-string v7, "USIM_EVENT_Transmit_Command_To_Sim_DONE"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimLibService$UsimLibServiceHandler;->this$0:Lcom/android/internal/telephony/gsm/UsimLibService;

    #setter for: Lcom/android/internal/telephony/gsm/UsimLibService;->CommandData:[B
    invoke-static {v6, v10}, Lcom/android/internal/telephony/gsm/UsimLibService;->access$1402(Lcom/android/internal/telephony/gsm/UsimLibService;[B)[B

    .line 636
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_7

    .line 638
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v6, :cond_6

    .line 640
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/gsm/SmartCardResult;

    .line 641
    .local v5, tmpdata:Lcom/android/internal/telephony/gsm/SmartCardResult;
    const-string v6, "UsimLibService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EVENT_DONE "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SmartCardResult;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimLibService$UsimLibServiceHandler;->this$0:Lcom/android/internal/telephony/gsm/UsimLibService;

    iget-object v7, v5, Lcom/android/internal/telephony/gsm/SmartCardResult;->data:[B

    #setter for: Lcom/android/internal/telephony/gsm/UsimLibService;->CommandData:[B
    invoke-static {v6, v7}, Lcom/android/internal/telephony/gsm/UsimLibService;->access$1402(Lcom/android/internal/telephony/gsm/UsimLibService;[B)[B

    .line 650
    .end local v5           #tmpdata:Lcom/android/internal/telephony/gsm/SmartCardResult;
    :cond_6
    :goto_3
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimLibService$UsimLibServiceHandler;->this$0:Lcom/android/internal/telephony/gsm/UsimLibService;

    #getter for: Lcom/android/internal/telephony/gsm/UsimLibService;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/UsimLibService;->access$800(Lcom/android/internal/telephony/gsm/UsimLibService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 651
    :try_start_4
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimLibService$UsimLibServiceHandler;->this$0:Lcom/android/internal/telephony/gsm/UsimLibService;

    #getter for: Lcom/android/internal/telephony/gsm/UsimLibService;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/UsimLibService;->access$800(Lcom/android/internal/telephony/gsm/UsimLibService;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 652
    monitor-exit v7

    goto/16 :goto_0

    :catchall_4
    move-exception v6

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v6

    .line 648
    :cond_7
    const-string v6, "UsimLibService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "USIM_EVENT_Transmit_Command_To_Sim_DONE, event: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " excepion: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 545
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_3
        0xa -> :sswitch_2
        0x4d -> :sswitch_4
    .end sparse-switch
.end method
