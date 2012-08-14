.class Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;
.super Landroid/os/Handler;
.source "UsimInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/UsimInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsimHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/UsimInterfaceManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/UsimInterfaceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 570
    iput-object p1, p0, Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;->this$0:Lcom/android/internal/telephony/UsimInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/UsimInterfaceManager;Lcom/android/internal/telephony/UsimInterfaceManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 570
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;-><init>(Lcom/android/internal/telephony/UsimInterfaceManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 21
    .parameter "msg"

    .prologue
    .line 572
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 573
    .local v5, ar:Landroid/os/AsyncResult;
    const/16 v16, -0x1

    .line 574
    .local v16, value:I
    const/4 v2, 0x0

    .line 578
    .local v2, N:I
    const-string v17, "LGE_USIM"

    const-string v18, "UsimHandler "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 879
    :pswitch_0
    const-string v17, "LGE_USIM"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "UsimHandler Unknown  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    :cond_0
    :goto_0
    return-void

    .line 583
    :pswitch_1
    const-string v17, "LGE_USIM"

    const-string v18, "UsimHandler EVENT_LGE_PBM_GET_INFO_DONE "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    .line 588
    const-string v17, "LGE_USIM"

    const-string v18, "[UsimInterfaceManager] EVENT_LGE_PBM_GET_INFO_DONE ar.result is null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    new-instance v4, Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;

    invoke-direct {v4}, Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;-><init>()V

    .line 590
    .local v4, RecordInfo:Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;
    const/16 v17, 0x2

    move/from16 v0, v17

    iput v0, v4, Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;->status:I

    .line 595
    :goto_1
    const-string v17, "LGE_USIM"

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;->this$0:Lcom/android/internal/telephony/UsimInterfaceManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/UsimInterfaceManager;->mCallbacks:Landroid/os/RemoteCallbackList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 599
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2
    if-ge v6, v2, :cond_3

    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;->this$0:Lcom/android/internal/telephony/UsimInterfaceManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/UsimInterfaceManager;->mCallbacks:Landroid/os/RemoteCallbackList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v17

    iget-object v0, v5, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 599
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 592
    .end local v4           #RecordInfo:Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;
    .end local v6           #i:I
    :cond_1
    iget-object v4, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;

    .restart local v4       #RecordInfo:Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;
    goto :goto_1

    .line 603
    .restart local v6       #i:I
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;->this$0:Lcom/android/internal/telephony/UsimInterfaceManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/UsimInterfaceManager;->mCallbacks:Landroid/os/RemoteCallbackList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v17

    check-cast v17, Lcom/android/internal/telephony/IUsimInfoCallback;

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Lcom/android/internal/telephony/IUsimInfoCallback;->onPBMInfoCB(Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3

    .line 604
    const/4 v2, -0x1

    goto :goto_3

    .line 611
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;->this$0:Lcom/android/internal/telephony/UsimInterfaceManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/UsimInterfaceManager;->mCallbacks:Landroid/os/RemoteCallbackList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 612
    if-ltz v2, :cond_0

    .line 613
    const-string v17, "LGE_USIM"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "UsimHandler EVENT_LGE_PBM_GET_INFO_DONE : no valid callbacks in "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 619
    .end local v4           #RecordInfo:Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;
    .end local v6           #i:I
    :pswitch_2
    const-string v17, "LGE_USIM"

    const-string v18, "[UsimInterfaceManager] EVENT_READ_FROM_SIM"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    if-nez v17, :cond_5

    .line 623
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;->this$0:Lcom/android/internal/telephony/UsimInterfaceManager;

    move-object/from16 v18, v0

    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, [B

    check-cast v17, [B

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    #setter for: Lcom/android/internal/telephony/UsimInterfaceManager;->DataFromSIM:[B
    invoke-static {v0, v1}, Lcom/android/internal/telephony/UsimInterfaceManager;->access$202(Lcom/android/internal/telephony/UsimInterfaceManager;[B)[B

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;->this$0:Lcom/android/internal/telephony/UsimInterfaceManager;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/telephony/UsimInterfaceManager;->DataFromSIM:[B
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/UsimInterfaceManager;->access$200(Lcom/android/internal/telephony/UsimInterfaceManager;)[B

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v15

    .line 628
    .local v15, tmpString:Ljava/lang/String;
    const-string v17, "LGE_USIM"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[UsimInterfaceManager] result of ReadFromSIM(.) => "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    .end local v15           #tmpString:Ljava/lang/String;
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;->this$0:Lcom/android/internal/telephony/UsimInterfaceManager;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/telephony/UsimInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/UsimInterfaceManager;->access$300(Lcom/android/internal/telephony/UsimInterfaceManager;)Ljava/lang/Object;

    move-result-object v18

    monitor-enter v18

    .line 639
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;->this$0:Lcom/android/internal/telephony/UsimInterfaceManager;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/telephony/UsimInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/UsimInterfaceManager;->access$300(Lcom/android/internal/telephony/UsimInterfaceManager;)Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->notifyAll()V

    .line 640
    monitor-exit v18

    goto/16 :goto_0

    :catchall_0
    move-exception v17

    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v17

    .line 634
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;->this$0:Lcom/android/internal/telephony/UsimInterfaceManager;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    #setter for: Lcom/android/internal/telephony/UsimInterfaceManager;->DataFromSIM:[B
    invoke-static/range {v17 .. v18}, Lcom/android/internal/telephony/UsimInterfaceManager;->access$202(Lcom/android/internal/telephony/UsimInterfaceManager;[B)[B

    goto :goto_4

    .line 644
    :pswitch_3
    const-string v17, "LGE_USIM"

    const-string v18, "[UsimInterfaceManager] EVENT_WRITE_TO_SIM"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;->this$0:Lcom/android/internal/telephony/UsimInterfaceManager;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/telephony/UsimInterfaceManager;->WriteResultFromSIM:[B
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/UsimInterfaceManager;->access$400(Lcom/android/internal/telephony/UsimInterfaceManager;)[B

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    aput-byte v19, v17, v18

    .line 647
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    if-nez v17, :cond_8

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;->this$0:Lcom/android/internal/telephony/UsimInterfaceManager;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/telephony/UsimInterfaceManager;->WriteResultFromSIM:[B
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/UsimInterfaceManager;->access$400(Lcom/android/internal/telephony/UsimInterfaceManager;)[B

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x1

    aput-byte v19, v17, v18

    .line 650
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    .line 653
    iget-object v8, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/telephony/IccIoResult;

    .line 655
    .local v8, icc_result:Lcom/android/internal/telephony/IccIoResult;
    invoke-virtual {v8}, Lcom/android/internal/telephony/IccIoResult;->success()Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 657
    const-string v17, "LGE_USIM"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[UsimInterfaceManager] successfully processed => "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v8, Lcom/android/internal/telephony/IccIoResult;->sw1:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v8, Lcom/android/internal/telephony/IccIoResult;->sw2:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;->this$0:Lcom/android/internal/telephony/UsimInterfaceManager;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/telephony/UsimInterfaceManager;->WriteResultFromSIM:[B
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/UsimInterfaceManager;->access$400(Lcom/android/internal/telephony/UsimInterfaceManager;)[B

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x1

    aput-byte v19, v17, v18

    .line 666
    :goto_5
    const-string v17, "LGE_USIM"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[UsimInterfaceManager] EVENT_WRITE_TO_SIM : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v8}, Lcom/android/internal/telephony/IccIoResult;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    .end local v8           #icc_result:Lcom/android/internal/telephony/IccIoResult;
    :cond_6
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;->this$0:Lcom/android/internal/telephony/UsimInterfaceManager;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/telephony/UsimInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/UsimInterfaceManager;->access$300(Lcom/android/internal/telephony/UsimInterfaceManager;)Ljava/lang/Object;

    move-result-object v18

    monitor-enter v18

    .line 676
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;->this$0:Lcom/android/internal/telephony/UsimInterfaceManager;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/telephony/UsimInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/UsimInterfaceManager;->access$300(Lcom/android/internal/telephony/UsimInterfaceManager;)Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->notifyAll()V

    .line 677
    monitor-exit v18

    goto/16 :goto_0

    :catchall_1
    move-exception v17

    monitor-exit v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v17

    .line 662
    .restart local v8       #icc_result:Lcom/android/internal/telephony/IccIoResult;
    :cond_7
    const-string v17, "LGE_USIM"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[UsimInterfaceManager] Write to SIM failed. exception => "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;->this$0:Lcom/android/internal/telephony/UsimInterfaceManager;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/telephony/UsimInterfaceManager;->WriteResultFromSIM:[B
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/UsimInterfaceManager;->access$400(Lcom/android/internal/telephony/UsimInterfaceManager;)[B

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    aput-byte v19, v17, v18

    goto :goto_5

    .line 671
    .end local v8           #icc_result:Lcom/android/internal/telephony/IccIoResult;
    :cond_8
    const-string v17, "LGE_USIM"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[UsimInterfaceManager] Write to SIM failed. exception => "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 683
    :pswitch_4
    const-string v17, "LGE_USIM"

    const-string v18, "UsimHandler PBREADY"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    invoke-static {}, Lcom/android/internal/telephony/UsimInterfaceManager;->access$500()Z

    move-result v17

    if-nez v17, :cond_9

    .line 687
    const-string v17, "LGE_USIM"

    const-string v18, "UsimHandler First PBREADY EVENT"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/UsimInterfaceManager;->access$502(Z)Z

    .line 691
    :cond_9
    new-instance v9, Landroid/content/Intent;

    const-string v17, "android.intent.action.ACTION_PBM_INIT_COMPLETE"

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 692
    .local v9, intent:Landroid/content/Intent;
    const-string v17, "PBM_INIT_COMPLETE"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 693
    const-string v17, "LGE_USIM"

    const-string v18, "Broadcasting intent ACTION_PBM_INIT_COMPLETE"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    const-string v17, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, v17

    invoke-static {v9, v0}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 698
    .end local v9           #intent:Landroid/content/Intent;
    :pswitch_5
    const-string v17, "LGE_USIM"

    const-string v18, "UsimHandler EVENT_PBM_GET_INIT_STATE_DONE"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v5           #ar:Landroid/os/AsyncResult;
    check-cast v5, Landroid/os/AsyncResult;

    .line 700
    .restart local v5       #ar:Landroid/os/AsyncResult;
    const/4 v10, 0x0

    .line 702
    .local v10, pb_init_done:I
    iget-object v0, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    .line 704
    const-string v17, "LGE_USIM"

    const-string v18, "UsimHandler EVENT_PBM_GET_INIT_STATE_DONE : is exception"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 708
    :cond_a
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    .line 710
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, [I

    check-cast v17, [I

    const/16 v18, 0x0

    aget v10, v17, v18

    .line 716
    :goto_7
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v10, v0, :cond_c

    .line 717
    const-string v17, "LGE_USIM"

    const-string v18, "Success-EVENT_PBM_GET_INIT_STATE_DONE"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;->this$0:Lcom/android/internal/telephony/UsimInterfaceManager;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/telephony/UsimInterfaceManager;->mUsimHandler:Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/UsimInterfaceManager;->access$600(Lcom/android/internal/telephony/UsimInterfaceManager;)Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;->this$0:Lcom/android/internal/telephony/UsimInterfaceManager;

    move-object/from16 v18, v0

    #getter for: Lcom/android/internal/telephony/UsimInterfaceManager;->mUsimHandler:Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/UsimInterfaceManager;->access$600(Lcom/android/internal/telephony/UsimInterfaceManager;)Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;

    move-result-object v18

    const/16 v19, 0xe

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 713
    :cond_b
    const-string v17, "LGE_USIM"

    const-string v18, "UsimHandler EVENT_PBM_GET_INIT_STATE_DONE : ar.result is null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 721
    :cond_c
    const-string v17, "LGE_USIM"

    const-string v18, "Fail-EVENT_PBM_GET_INIT_STATE_DONE"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 726
    .end local v10           #pb_init_done:I
    :pswitch_6
    const-string v17, "LGE_USIM"

    const-string v18, "UsimHandler EVENT_LGE_PBM_READ_DONE "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v17, v0

    if-nez v17, :cond_d

    .line 731
    const-string v17, "LGE_USIM"

    const-string v18, "[UsimInterfaceManager] EVENT_LGE_PBM_READ_DONE ar.result is null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    new-instance v3, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;

    invoke-direct {v3}, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;-><init>()V

    .line 733
    .local v3, PBMRecords:Lcom/android/internal/telephony/gsm/LGE_PBM_Records;
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v3, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->index:I

    .line 738
    :goto_8
    const-string v17, "LGE_USIM"

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;->this$0:Lcom/android/internal/telephony/UsimInterfaceManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/UsimInterfaceManager;->mCallbacks:Landroid/os/RemoteCallbackList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 742
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_9
    if-ge v6, v2, :cond_f

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;->this$0:Lcom/android/internal/telephony/UsimInterfaceManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/UsimInterfaceManager;->mCallbacks:Landroid/os/RemoteCallbackList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v17

    iget-object v0, v5, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_e

    .line 742
    :goto_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 735
    .end local v3           #PBMRecords:Lcom/android/internal/telephony/gsm/LGE_PBM_Records;
    .end local v6           #i:I
    :cond_d
    iget-object v3, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;

    .restart local v3       #PBMRecords:Lcom/android/internal/telephony/gsm/LGE_PBM_Records;
    goto :goto_8

    .line 746
    .restart local v6       #i:I
    :cond_e
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;->this$0:Lcom/android/internal/telephony/UsimInterfaceManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/UsimInterfaceManager;->mCallbacks:Landroid/os/RemoteCallbackList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v17

    check-cast v17, Lcom/android/internal/telephony/IUsimInfoCallback;

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/IUsimInfoCallback;->onPBMReadCB(Lcom/android/internal/telephony/gsm/LGE_PBM_Records;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 747
    const/4 v2, -0x1

    goto :goto_a

    .line 754
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;->this$0:Lcom/android/internal/telephony/UsimInterfaceManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/UsimInterfaceManager;->mCallbacks:Landroid/os/RemoteCallbackList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 755
    if-ltz v2, :cond_0

    .line 756
    const-string v17, "LGE_USIM"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "UsimHandler EVENT_LGE_PBM_READ_DONE : no valid callbacks in "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 761
    .end local v3           #PBMRecords:Lcom/android/internal/telephony/gsm/LGE_PBM_Records;
    .end local v6           #i:I
    :pswitch_7
    const-string v17, "LGE_USIM"

    const-string v18, "UsimHandler EVENT_LGE_PBM_WRITE_DONE "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v17, v0

    if-nez v17, :cond_10

    .line 767
    const-string v17, "LGE_USIM"

    const-string v18, "[UsimInterfaceManager] EVENT_LGE_PBM_WRITE_DONE ar.result is null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    const/4 v13, 0x2

    .line 769
    .local v13, retPbmResult:I
    const/4 v12, 0x0

    .line 775
    .local v12, retPBMtargetIndex:I
    :goto_b
    const-string v17, "LGE_USIM"

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;->this$0:Lcom/android/internal/telephony/UsimInterfaceManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/UsimInterfaceManager;->mCallbacks:Landroid/os/RemoteCallbackList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 779
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_c
    if-ge v6, v2, :cond_12

    .line 780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;->this$0:Lcom/android/internal/telephony/UsimInterfaceManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/UsimInterfaceManager;->mCallbacks:Landroid/os/RemoteCallbackList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v17

    iget-object v0, v5, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_11

    .line 779
    :goto_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 771
    .end local v6           #i:I
    .end local v12           #retPBMtargetIndex:I
    .end local v13           #retPbmResult:I
    :cond_10
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, [I

    check-cast v17, [I

    const/16 v18, 0x0

    aget v13, v17, v18

    .line 772
    .restart local v13       #retPbmResult:I
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, [I

    check-cast v17, [I

    const/16 v18, 0x2

    aget v12, v17, v18

    .restart local v12       #retPBMtargetIndex:I
    goto :goto_b

    .line 783
    .restart local v6       #i:I
    :cond_11
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;->this$0:Lcom/android/internal/telephony/UsimInterfaceManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/UsimInterfaceManager;->mCallbacks:Landroid/os/RemoteCallbackList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v17

    check-cast v17, Lcom/android/internal/telephony/IUsimInfoCallback;

    move-object/from16 v0, v17

    invoke-interface {v0, v13, v12}, Lcom/android/internal/telephony/IUsimInfoCallback;->onPBMWriteCB(II)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 784
    const/4 v2, -0x1

    goto :goto_d

    .line 791
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;->this$0:Lcom/android/internal/telephony/UsimInterfaceManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/UsimInterfaceManager;->mCallbacks:Landroid/os/RemoteCallbackList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 792
    if-ltz v2, :cond_0

    .line 793
    const-string v17, "LGE_USIM"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "UsimHandler EVENT_LGE_PBM_WRITE_DONE : no valid callbacks in "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 798
    .end local v6           #i:I
    .end local v12           #retPBMtargetIndex:I
    .end local v13           #retPbmResult:I
    :pswitch_8
    const-string v17, "LGE_USIM"

    const-string v18, "UsimHandler EVENT_LGE_PBM_DELETE_DONE "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v17, v0

    if-nez v17, :cond_13

    .line 804
    const-string v17, "LGE_USIM"

    const-string v18, "[UsimInterfaceManager] EVENT_LGE_PBM_DELETE_DONE ar.result is null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    const/4 v14, 0x2

    .line 806
    .local v14, retPbmResult1:I
    const/4 v11, 0x0

    .line 812
    .local v11, retPBMDeleteIndex:I
    :goto_e
    const-string v17, "LGE_USIM"

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;->this$0:Lcom/android/internal/telephony/UsimInterfaceManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/UsimInterfaceManager;->mCallbacks:Landroid/os/RemoteCallbackList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 816
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_f
    if-ge v6, v2, :cond_15

    .line 817
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;->this$0:Lcom/android/internal/telephony/UsimInterfaceManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/UsimInterfaceManager;->mCallbacks:Landroid/os/RemoteCallbackList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v17

    iget-object v0, v5, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_14

    .line 816
    :goto_10
    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    .line 808
    .end local v6           #i:I
    .end local v11           #retPBMDeleteIndex:I
    .end local v14           #retPbmResult1:I
    :cond_13
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, [I

    check-cast v17, [I

    const/16 v18, 0x0

    aget v14, v17, v18

    .line 809
    .restart local v14       #retPbmResult1:I
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, [I

    check-cast v17, [I

    const/16 v18, 0x2

    aget v11, v17, v18

    .restart local v11       #retPBMDeleteIndex:I
    goto :goto_e

    .line 820
    .restart local v6       #i:I
    :cond_14
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;->this$0:Lcom/android/internal/telephony/UsimInterfaceManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/UsimInterfaceManager;->mCallbacks:Landroid/os/RemoteCallbackList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v17

    check-cast v17, Lcom/android/internal/telephony/IUsimInfoCallback;

    move-object/from16 v0, v17

    invoke-interface {v0, v14, v11}, Lcom/android/internal/telephony/IUsimInfoCallback;->onPBMDeleteCB(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 821
    const/4 v2, -0x1

    goto :goto_10

    .line 828
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;->this$0:Lcom/android/internal/telephony/UsimInterfaceManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/UsimInterfaceManager;->mCallbacks:Landroid/os/RemoteCallbackList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 829
    if-ltz v2, :cond_0

    .line 830
    const-string v17, "LGE_USIM"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "UsimHandler EVENT_LGE_PBM_DELETE_DONE : no valid callbacks in "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 837
    .end local v6           #i:I
    .end local v11           #retPBMDeleteIndex:I
    .end local v14           #retPbmResult1:I
    :pswitch_9
    const-string v17, "LGE_USIM"

    const-string v18, "UsimHandler EVENT_LGE_READ_EF_SMSP "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 841
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, [B

    move-object/from16 v7, v17

    check-cast v7, [B

    .line 843
    .local v7, iccData:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;->this$0:Lcom/android/internal/telephony/UsimInterfaceManager;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;->this$0:Lcom/android/internal/telephony/UsimInterfaceManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/UsimInterfaceManager;->mLGEIccUtils:Lcom/android/internal/telephony/LGEIccUtils;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/LGEIccUtils;->analyzeSMSP([B)Lcom/android/internal/telephony/LGEIccUtils$SMSPType;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/internal/telephony/UsimInterfaceManager;->mSMSPType:Lcom/android/internal/telephony/LGEIccUtils$SMSPType;

    .line 844
    const-string v17, "LGE_USIM"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "EFRead "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v7}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    const-string v17, "LGE_USIM"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "SMSP-"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;->this$0:Lcom/android/internal/telephony/UsimInterfaceManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/UsimInterfaceManager;->mLGEIccUtils:Lcom/android/internal/telephony/LGEIccUtils;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;->this$0:Lcom/android/internal/telephony/UsimInterfaceManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/UsimInterfaceManager;->mSMSPType:Lcom/android/internal/telephony/LGEIccUtils$SMSPType;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/telephony/LGEIccUtils;->SMSPtoString(Lcom/android/internal/telephony/LGEIccUtils$SMSPType;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    const-string v17, "LGE_USIM"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "SCaddr:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;->this$0:Lcom/android/internal/telephony/UsimInterfaceManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/UsimInterfaceManager;->mLGEIccUtils:Lcom/android/internal/telephony/LGEIccUtils;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;->this$0:Lcom/android/internal/telephony/UsimInterfaceManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/UsimInterfaceManager;->mSMSPType:Lcom/android/internal/telephony/LGEIccUtils$SMSPType;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/LGEIccUtils$SMSPType;->SVCCenterAddr:[B

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/telephony/LGEIccUtils;->decodeSCAddr([B)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;->this$0:Lcom/android/internal/telephony/UsimInterfaceManager;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/telephony/UsimInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/UsimInterfaceManager;->access$300(Lcom/android/internal/telephony/UsimInterfaceManager;)Ljava/lang/Object;

    move-result-object v18

    monitor-enter v18

    .line 851
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;->this$0:Lcom/android/internal/telephony/UsimInterfaceManager;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/telephony/UsimInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/UsimInterfaceManager;->access$300(Lcom/android/internal/telephony/UsimInterfaceManager;)Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->notifyAll()V

    .line 852
    monitor-exit v18

    goto/16 :goto_0

    :catchall_2
    move-exception v17

    monitor-exit v18
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v17

    .line 856
    .end local v7           #iccData:[B
    :pswitch_a
    const-string v17, "LGE_USIM"

    const-string v18, "UsimHandler EVENT_LGE_WRITE_EF_SMSP "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;->this$0:Lcom/android/internal/telephony/UsimInterfaceManager;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;->this$0:Lcom/android/internal/telephony/UsimInterfaceManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/UsimInterfaceManager;->SCaddressLocalTemp:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/telephony/UsimInterfaceManager;->setSCAddressTemp(Ljava/lang/String;)V

    .line 862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;->this$0:Lcom/android/internal/telephony/UsimInterfaceManager;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/telephony/UsimInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/UsimInterfaceManager;->access$300(Lcom/android/internal/telephony/UsimInterfaceManager;)Ljava/lang/Object;

    move-result-object v18

    monitor-enter v18

    .line 863
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;->this$0:Lcom/android/internal/telephony/UsimInterfaceManager;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/telephony/UsimInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/UsimInterfaceManager;->access$300(Lcom/android/internal/telephony/UsimInterfaceManager;)Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->notifyAll()V

    .line 864
    monitor-exit v18

    goto/16 :goto_0

    :catchall_3
    move-exception v17

    monitor-exit v18
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v17

    .line 868
    :pswitch_b
    const-string v17, "LGE_USIM"

    const-string v18, "UsimHandler EVENT_GET_EF_RECORD_SIZE_DONE "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;->this$0:Lcom/android/internal/telephony/UsimInterfaceManager;

    move-object/from16 v18, v0

    iget-object v0, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, [I

    check-cast v17, [I

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/internal/telephony/UsimInterfaceManager;->mEFRecordSize:[I

    .line 872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;->this$0:Lcom/android/internal/telephony/UsimInterfaceManager;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/telephony/UsimInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/UsimInterfaceManager;->access$300(Lcom/android/internal/telephony/UsimInterfaceManager;)Ljava/lang/Object;

    move-result-object v18

    monitor-enter v18

    .line 873
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;->this$0:Lcom/android/internal/telephony/UsimInterfaceManager;

    move-object/from16 v17, v0

    #getter for: Lcom/android/internal/telephony/UsimInterfaceManager;->mLock:Ljava/lang/Object;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/UsimInterfaceManager;->access$300(Lcom/android/internal/telephony/UsimInterfaceManager;)Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->notifyAll()V

    .line 874
    monitor-exit v18

    goto/16 :goto_0

    :catchall_4
    move-exception v17

    monitor-exit v18
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v17

    .line 822
    .restart local v6       #i:I
    .restart local v11       #retPBMDeleteIndex:I
    .restart local v14       #retPbmResult1:I
    :catch_0
    move-exception v17

    goto/16 :goto_10

    .line 785
    .end local v11           #retPBMDeleteIndex:I
    .end local v14           #retPbmResult1:I
    .restart local v12       #retPBMtargetIndex:I
    .restart local v13       #retPbmResult:I
    :catch_1
    move-exception v17

    goto/16 :goto_d

    .line 748
    .end local v12           #retPBMtargetIndex:I
    .end local v13           #retPbmResult:I
    .restart local v3       #PBMRecords:Lcom/android/internal/telephony/gsm/LGE_PBM_Records;
    :catch_2
    move-exception v17

    goto/16 :goto_a

    .line 605
    .end local v3           #PBMRecords:Lcom/android/internal/telephony/gsm/LGE_PBM_Records;
    .restart local v4       #RecordInfo:Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;
    :catch_3
    move-exception v17

    goto/16 :goto_3

    .line 580
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
