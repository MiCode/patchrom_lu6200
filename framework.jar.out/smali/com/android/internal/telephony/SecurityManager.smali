.class public Lcom/android/internal/telephony/SecurityManager;
.super Ljava/lang/Object;
.source "SecurityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread;,
        Lcom/android/internal/telephony/SecurityManager$Depersonalization;,
        Lcom/android/internal/telephony/SecurityManager$Personalization;,
        Lcom/android/internal/telephony/SecurityManager$PersonalizationCheck;,
        Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SecurityManager"

.field private static final SECURITY_PROCESS_COMMAND_ANTI_ROLLBACK:I = 0xb

.field private static final SECURITY_PROCESS_COMMAND_APP_IMGAE_INTEGRITY:I = 0x9

.field private static final SECURITY_PROCESS_COMMAND_AT_COMMAND:I = 0xc

.field private static final SECURITY_PROCESS_COMMAND_BOOT_CODE_INTEGRITY:I = 0x7

.field private static final SECURITY_PROCESS_COMMAND_BOOT_CODE_PROTECTION:I = 0x5

.field private static final SECURITY_PROCESS_COMMAND_CHECK_APP_INTEGRITY:I = 0xa

.field private static final SECURITY_PROCESS_COMMAND_DEBUG_ENABLE:I = 0xe

.field private static final SECURITY_PROCESS_COMMAND_DEPERSONALIZATION:I = 0x2

.field private static final SECURITY_PROCESS_COMMAND_PERSONALIZATION:I = 0x3

.field private static final SECURITY_PROCESS_COMMAND_PERSONALIZATION_CHECK:I = 0x0

.field private static final SECURITY_PROCESS_COMMAND_PERSONALIZATION_INFORMATION:I = 0x1

.field private static final SECURITY_PROCESS_COMMAND_SECURITY_HEADER_INTEGRITY:I = 0x8

.field private static final SECURITY_PROCESS_COMMAND_SENSITIVE_DATA_INTEGRITY:I = 0x6

.field private static final SECURITY_PROCESS_COMMAND_SENSITIVE_DATA_PROTECTION:I = 0x4

.field private static final SECURITY_PROCESS_COMMAND_SW_VERSION:I = 0xd

.field private static final enableVLog:Z = true


# instance fields
.field public info:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;

.field private final length:B

.field private final mHeaderSize:B

.field public final mNtcodeSize:I

.field private final mOemIdentifier:Ljava/lang/String;

.field public final mTotalNtcodes:I

.field private final tag:B


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "SECURITY"

    iput-object v0, p0, Lcom/android/internal/telephony/SecurityManager;->mOemIdentifier:Ljava/lang/String;

    .line 37
    const/16 v0, 0x8

    iput-byte v0, p0, Lcom/android/internal/telephony/SecurityManager;->mHeaderSize:B

    .line 38
    iput-byte v1, p0, Lcom/android/internal/telephony/SecurityManager;->tag:B

    .line 39
    iput-byte v1, p0, Lcom/android/internal/telephony/SecurityManager;->length:B

    .line 43
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/internal/telephony/SecurityManager;->mNtcodeSize:I

    .line 44
    const/16 v0, 0x281

    iput v0, p0, Lcom/android/internal/telephony/SecurityManager;->mTotalNtcodes:I

    .line 65
    return-void
.end method

.method private SecurityCommandSender(I[B[B)I
    .locals 9
    .parameter "command"
    .parameter "request"
    .parameter "response"

    .prologue
    .line 265
    const/4 v5, 0x0

    .line 268
    .local v5, returnValue:I
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread;

    invoke-direct {v1}, Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread;-><init>()V

    .line 269
    .local v1, Thread:Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread;
    invoke-virtual {v1}, Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread;->start()V

    .line 270
    #calls: Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread;->SecurityCommand(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v1, p1, p2, p3}, Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread;->access$200(Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 272
    .local v4, result:Ljava/lang/Object;
    if-eqz v4, :cond_2

    .line 273
    check-cast v4, [B

    .end local v4           #result:Ljava/lang/Object;
    move-object v0, v4

    check-cast v0, [B

    move-object v3, v0

    .line 274
    .local v3, responseData:[B
    array-length v6, v3

    array-length v7, p3

    if-le v6, v7, :cond_0

    .line 275
    const-string v6, "SecurityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Buffer to copy response too small: Response length is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "bytes. Buffer Size is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, p3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "bytes."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    array-length v8, v3

    invoke-static {v3, v6, p3, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 280
    array-length v5, v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    .end local v1           #Thread:Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread;
    .end local v3           #responseData:[B
    :cond_1
    :goto_0
    return v5

    .line 283
    .restart local v1       #Thread:Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread;
    .restart local v4       #result:Ljava/lang/Object;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 285
    .end local v1           #Thread:Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread;
    .end local v4           #result:Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 286
    .local v2, e:Ljava/lang/RuntimeException;
    const-string v6, "SecurityManager"

    const-string v7, "SecurityCommandSender: Runtime Exception"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v5

    .line 288
    if-lez v5, :cond_1

    mul-int/lit8 v5, v5, -0x1

    goto :goto_0
.end method

.method private static SecurityManagerLog(Ljava/lang/String;)V
    .locals 1
    .parameter "logString"

    .prologue
    .line 69
    const-string v0, "SecurityManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-static {p0}, Lcom/android/internal/telephony/SecurityManager;->SecurityManagerLog(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public depersonalization(ILjava/lang/String;)I
    .locals 11
    .parameter "type"
    .parameter "pin"

    .prologue
    const/4 v10, 0x2

    const/4 v7, 0x0

    .line 378
    const/16 v6, 0x19

    .line 379
    .local v6, velueSize:B
    const/4 v5, 0x0

    .line 380
    .local v5, termChar:B
    const/16 v8, 0x29

    new-array v2, v8, [B

    .line 381
    .local v2, request:[B
    const/16 v8, 0x800

    new-array v3, v8, [B

    .line 382
    .local v3, response:[B
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 383
    .local v1, reqBuffer:Ljava/nio/ByteBuffer;
    int-to-byte v0, p1

    .line 385
    .local v0, lock_type:B
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "depersonalization: type("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")\t pin("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/SecurityManager;->SecurityManagerLog(Ljava/lang/String;)V

    .line 387
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 390
    const-string v8, "SECURITY"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 393
    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 396
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 399
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 400
    const/16 v8, 0x10

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 401
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 402
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 404
    invoke-direct {p0, v10, v2, v3}, Lcom/android/internal/telephony/SecurityManager;->SecurityCommandSender(I[B[B)I

    move-result v4

    .line 406
    .local v4, result:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "depersonalization: response ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/SecurityManager;->SecurityManagerLog(Ljava/lang/String;)V

    .line 409
    aget-byte v8, v3, v7

    const/4 v9, 0x3

    if-ne v8, v9, :cond_0

    if-lez v4, :cond_0

    .line 412
    :goto_0
    return v7

    :cond_0
    const/4 v7, 0x1

    goto :goto_0
.end method

.method public enableRootPermission()I
    .locals 7

    .prologue
    const/16 v6, 0xe

    .line 453
    const/4 v4, 0x0

    .line 454
    .local v4, termChar:B
    const/16 v5, 0x10

    new-array v1, v5, [B

    .line 455
    .local v1, request:[B
    const/16 v5, 0x800

    new-array v2, v5, [B

    .line 456
    .local v2, response:[B
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 458
    .local v0, reqBuffer:Ljava/nio/ByteBuffer;
    const-string v5, "enableRootPermission --- "

    invoke-static {v5}, Lcom/android/internal/telephony/SecurityManager;->SecurityManagerLog(Ljava/lang/String;)V

    .line 460
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 463
    const-string v5, "SECURITY"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 466
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 468
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 471
    invoke-direct {p0, v6, v1, v2}, Lcom/android/internal/telephony/SecurityManager;->SecurityCommandSender(I[B[B)I

    move-result v3

    .line 473
    .local v3, result:I
    const/4 v5, 0x0

    aget-byte v5, v2, v5

    return v5
.end method

.method public getSIMLockLeftCntWithIndex(I)B
    .locals 2
    .parameter "type"

    .prologue
    .line 512
    packed-switch p1, :pswitch_data_0

    .line 529
    iget-object v1, p0, Lcom/android/internal/telephony/SecurityManager;->info:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;

    iget-object v1, v1, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;->sim:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;

    iget-byte v0, v1, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;->attemptsLeft:B

    .line 534
    .local v0, curSimLockLeftCnt:B
    :goto_0
    return v0

    .line 517
    .end local v0           #curSimLockLeftCnt:B
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/SecurityManager;->info:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;

    iget-object v1, v1, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;->network:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;

    iget-byte v0, v1, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;->attemptsLeft:B

    .line 518
    .restart local v0       #curSimLockLeftCnt:B
    goto :goto_0

    .line 520
    .end local v0           #curSimLockLeftCnt:B
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/SecurityManager;->info:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;

    iget-object v1, v1, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;->serviceprovider:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;

    iget-byte v0, v1, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;->attemptsLeft:B

    .line 521
    .restart local v0       #curSimLockLeftCnt:B
    goto :goto_0

    .line 523
    .end local v0           #curSimLockLeftCnt:B
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/telephony/SecurityManager;->info:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;

    iget-object v1, v1, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;->networksubset:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;

    iget-byte v0, v1, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;->attemptsLeft:B

    .line 524
    .restart local v0       #curSimLockLeftCnt:B
    goto :goto_0

    .line 526
    .end local v0           #curSimLockLeftCnt:B
    :pswitch_3
    iget-object v1, p0, Lcom/android/internal/telephony/SecurityManager;->info:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;

    iget-object v1, v1, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;->corporate:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;

    iget-byte v0, v1, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;->attemptsLeft:B

    .line 527
    .restart local v0       #curSimLockLeftCnt:B
    goto :goto_0

    .line 512
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getSIMLockRetryCntMaxWithIndex(I)B
    .locals 2
    .parameter "type"

    .prologue
    .line 540
    packed-switch p1, :pswitch_data_0

    .line 557
    iget-object v1, p0, Lcom/android/internal/telephony/SecurityManager;->info:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;

    iget-object v1, v1, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;->sim:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;

    iget-byte v0, v1, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;->retry_count_max:B

    .line 563
    .local v0, curSimLockRetryCntMax:B
    :goto_0
    return v0

    .line 545
    .end local v0           #curSimLockRetryCntMax:B
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/SecurityManager;->info:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;

    iget-object v1, v1, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;->network:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;

    iget-byte v0, v1, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;->retry_count_max:B

    .line 546
    .restart local v0       #curSimLockRetryCntMax:B
    goto :goto_0

    .line 548
    .end local v0           #curSimLockRetryCntMax:B
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/SecurityManager;->info:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;

    iget-object v1, v1, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;->serviceprovider:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;

    iget-byte v0, v1, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;->retry_count_max:B

    .line 549
    .restart local v0       #curSimLockRetryCntMax:B
    goto :goto_0

    .line 551
    .end local v0           #curSimLockRetryCntMax:B
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/telephony/SecurityManager;->info:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;

    iget-object v1, v1, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;->networksubset:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;

    iget-byte v0, v1, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;->retry_count_max:B

    .line 552
    .restart local v0       #curSimLockRetryCntMax:B
    goto :goto_0

    .line 554
    .end local v0           #curSimLockRetryCntMax:B
    :pswitch_3
    iget-object v1, p0, Lcom/android/internal/telephony/SecurityManager;->info:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;

    iget-object v1, v1, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;->corporate:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;

    iget-byte v0, v1, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;->retry_count_max:B

    .line 555
    .restart local v0       #curSimLockRetryCntMax:B
    goto :goto_0

    .line 540
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getSIMLockflagWithIndex(I)I
    .locals 2
    .parameter "type"

    .prologue
    .line 482
    packed-switch p1, :pswitch_data_0

    .line 499
    iget-object v1, p0, Lcom/android/internal/telephony/SecurityManager;->info:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;

    iget-object v1, v1, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;->sim:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;

    iget v0, v1, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;->flag:I

    .line 506
    .local v0, curSimLockflag:I
    :goto_0
    return v0

    .line 487
    .end local v0           #curSimLockflag:I
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/SecurityManager;->info:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;

    iget-object v1, v1, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;->network:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;

    iget v0, v1, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;->flag:I

    .line 488
    .restart local v0       #curSimLockflag:I
    goto :goto_0

    .line 490
    .end local v0           #curSimLockflag:I
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/SecurityManager;->info:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;

    iget-object v1, v1, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;->serviceprovider:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;

    iget v0, v1, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;->flag:I

    .line 491
    .restart local v0       #curSimLockflag:I
    goto :goto_0

    .line 493
    .end local v0           #curSimLockflag:I
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/telephony/SecurityManager;->info:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;

    iget-object v1, v1, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;->networksubset:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;

    iget v0, v1, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;->flag:I

    .line 494
    .restart local v0       #curSimLockflag:I
    goto :goto_0

    .line 496
    .end local v0           #curSimLockflag:I
    :pswitch_3
    iget-object v1, p0, Lcom/android/internal/telephony/SecurityManager;->info:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;

    iget-object v1, v1, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;->corporate:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;

    iget v0, v1, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;->flag:I

    .line 497
    .restart local v0       #curSimLockflag:I
    goto :goto_0

    .line 482
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public personalization(II[B)I
    .locals 9
    .parameter "type"
    .parameter "cnt"
    .parameter "ntcode_list"

    .prologue
    const/4 v8, 0x3

    .line 418
    const/16 v5, 0x28a

    .line 419
    .local v5, velueSize:I
    const/4 v4, 0x0

    .line 420
    .local v4, termChar:B
    const/16 v6, 0x29a

    new-array v1, v6, [B

    .line 421
    .local v1, request:[B
    const/16 v6, 0x800

    new-array v2, v6, [B

    .line 422
    .local v2, response:[B
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 424
    .local v0, reqBuffer:Ljava/nio/ByteBuffer;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "personalization: type("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")\t pin("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/SecurityManager;->SecurityManagerLog(Ljava/lang/String;)V

    .line 426
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 429
    const-string v6, "SECURITY"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 432
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 435
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 438
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 439
    mul-int/lit8 v6, p2, 0x10

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 441
    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 442
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 444
    invoke-direct {p0, v8, v1, v2}, Lcom/android/internal/telephony/SecurityManager;->SecurityCommandSender(I[B[B)I

    move-result v3

    .line 446
    .local v3, result:I
    const/4 v6, 0x0

    aget-byte v6, v2, v6

    return v6
.end method

.method public simlockinformation()I
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 296
    const/4 v4, 0x0

    .line 297
    .local v4, velueSize:B
    const/16 v7, 0x10

    new-array v1, v7, [B

    .line 298
    .local v1, request:[B
    const/16 v7, 0x800

    new-array v2, v7, [B

    .line 301
    .local v2, response:[B
    new-instance v7, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;

    invoke-direct {v7, p0}, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;-><init>(Lcom/android/internal/telephony/SecurityManager;)V

    iput-object v7, p0, Lcom/android/internal/telephony/SecurityManager;->info:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;

    .line 303
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 304
    .local v0, reqBuffer:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 307
    const-string v7, "SECURITY"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 310
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 313
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 315
    invoke-direct {p0, v6, v1, v2}, Lcom/android/internal/telephony/SecurityManager;->SecurityCommandSender(I[B[B)I

    move-result v3

    .line 316
    .local v3, result:I
    const-string v7, "SecurityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "simlockinformation result: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const-string v7, "SecurityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "simlockinformation response: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    if-lez v3, :cond_0

    .line 321
    iget-object v7, p0, Lcom/android/internal/telephony/SecurityManager;->info:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;

    iget-object v7, v7, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;->network:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;

    aget-byte v8, v2, v5

    iput-byte v8, v7, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;->attemptsLeft:B

    .line 322
    iget-object v7, p0, Lcom/android/internal/telephony/SecurityManager;->info:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;

    iget-object v7, v7, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;->network:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;

    aget-byte v6, v2, v6

    iput v6, v7, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;->flag:I

    .line 323
    iget-object v6, p0, Lcom/android/internal/telephony/SecurityManager;->info:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;

    iget-object v6, v6, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;->network:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;

    const/4 v7, 0x2

    aget-byte v7, v2, v7

    iput-byte v7, v6, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;->retry_count_max:B

    .line 325
    iget-object v6, p0, Lcom/android/internal/telephony/SecurityManager;->info:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;

    iget-object v6, v6, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;->networksubset:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;

    const/4 v7, 0x3

    aget-byte v7, v2, v7

    iput-byte v7, v6, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;->attemptsLeft:B

    .line 326
    iget-object v6, p0, Lcom/android/internal/telephony/SecurityManager;->info:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;

    iget-object v6, v6, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;->networksubset:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;

    const/4 v7, 0x4

    aget-byte v7, v2, v7

    iput v7, v6, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;->flag:I

    .line 327
    iget-object v6, p0, Lcom/android/internal/telephony/SecurityManager;->info:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;

    iget-object v6, v6, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;->networksubset:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;

    const/4 v7, 0x5

    aget-byte v7, v2, v7

    iput-byte v7, v6, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;->retry_count_max:B

    .line 330
    iget-object v6, p0, Lcom/android/internal/telephony/SecurityManager;->info:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;

    iget-object v6, v6, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;->serviceprovider:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;

    const/4 v7, 0x6

    aget-byte v7, v2, v7

    iput-byte v7, v6, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;->attemptsLeft:B

    .line 331
    iget-object v6, p0, Lcom/android/internal/telephony/SecurityManager;->info:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;

    iget-object v6, v6, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;->serviceprovider:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;

    const/4 v7, 0x7

    aget-byte v7, v2, v7

    iput v7, v6, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;->flag:I

    .line 332
    iget-object v6, p0, Lcom/android/internal/telephony/SecurityManager;->info:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;

    iget-object v6, v6, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;->serviceprovider:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;

    const/16 v7, 0x8

    aget-byte v7, v2, v7

    iput-byte v7, v6, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;->retry_count_max:B

    .line 335
    iget-object v6, p0, Lcom/android/internal/telephony/SecurityManager;->info:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;

    iget-object v6, v6, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;->corporate:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;

    const/16 v7, 0x9

    aget-byte v7, v2, v7

    iput-byte v7, v6, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;->attemptsLeft:B

    .line 336
    iget-object v6, p0, Lcom/android/internal/telephony/SecurityManager;->info:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;

    iget-object v6, v6, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;->corporate:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;

    const/16 v7, 0xa

    aget-byte v7, v2, v7

    iput v7, v6, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;->flag:I

    .line 337
    iget-object v6, p0, Lcom/android/internal/telephony/SecurityManager;->info:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;

    iget-object v6, v6, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;->corporate:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;

    const/16 v7, 0xb

    aget-byte v7, v2, v7

    iput-byte v7, v6, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;->retry_count_max:B

    .line 339
    iget-object v6, p0, Lcom/android/internal/telephony/SecurityManager;->info:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;

    iget-object v6, v6, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;->sim:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;

    const/16 v7, 0xc

    aget-byte v7, v2, v7

    iput-byte v7, v6, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;->attemptsLeft:B

    .line 340
    iget-object v6, p0, Lcom/android/internal/telephony/SecurityManager;->info:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;

    iget-object v6, v6, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;->sim:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;

    const/16 v7, 0xd

    aget-byte v7, v2, v7

    iput v7, v6, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;->flag:I

    .line 341
    iget-object v6, p0, Lcom/android/internal/telephony/SecurityManager;->info:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;

    iget-object v6, v6, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;->sim:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;

    const/16 v7, 0xe

    aget-byte v7, v2, v7

    iput-byte v7, v6, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;->retry_count_max:B

    .line 344
    iget-object v6, p0, Lcom/android/internal/telephony/SecurityManager;->info:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;

    const/16 v7, 0xf

    aget-byte v7, v2, v7

    iput v7, v6, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;->country:I

    .line 345
    iget-object v6, p0, Lcom/android/internal/telephony/SecurityManager;->info:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;

    const/16 v7, 0x13

    aget-byte v7, v2, v7

    iput v7, v6, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;->operator:I

    .line 347
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "network flag: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/SecurityManager;->info:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;

    iget-object v7, v7, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;->network:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;

    iget v7, v7, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;->flag:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  network attemptsLeft: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/SecurityManager;->info:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;

    iget-object v7, v7, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;->network:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;

    iget-byte v7, v7, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;->attemptsLeft:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  network retry_count_max: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/SecurityManager;->info:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;

    iget-object v7, v7, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;->network:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;

    iget-byte v7, v7, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;->retry_count_max:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/SecurityManager;->SecurityManagerLog(Ljava/lang/String;)V

    .line 351
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "networksubset flag: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/SecurityManager;->info:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;

    iget-object v7, v7, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;->networksubset:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;

    iget v7, v7, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;->flag:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  networksubset attemptsLeft: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/SecurityManager;->info:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;

    iget-object v7, v7, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;->networksubset:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;

    iget-byte v7, v7, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;->attemptsLeft:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  networksubset retry_count_max: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/SecurityManager;->info:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;

    iget-object v7, v7, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;->networksubset:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;

    iget-byte v7, v7, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;->retry_count_max:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/SecurityManager;->SecurityManagerLog(Ljava/lang/String;)V

    .line 355
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "serviceprovider flag: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/SecurityManager;->info:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;

    iget-object v7, v7, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;->serviceprovider:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;

    iget v7, v7, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;->flag:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  serviceprovider attemptsLeft: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/SecurityManager;->info:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;

    iget-object v7, v7, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;->serviceprovider:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;

    iget-byte v7, v7, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;->attemptsLeft:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  serviceprovider retry_count_max: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/SecurityManager;->info:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;

    iget-object v7, v7, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;->serviceprovider:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;

    iget-byte v7, v7, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;->retry_count_max:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/SecurityManager;->SecurityManagerLog(Ljava/lang/String;)V

    .line 359
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "corporate flag: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/SecurityManager;->info:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;

    iget-object v7, v7, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;->corporate:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;

    iget v7, v7, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;->flag:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  corporate attemptsLeft: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/SecurityManager;->info:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;

    iget-object v7, v7, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;->corporate:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;

    iget-byte v7, v7, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;->attemptsLeft:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  corporate retry_count_max: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/SecurityManager;->info:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;

    iget-object v7, v7, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;->corporate:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;

    iget-byte v7, v7, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;->retry_count_max:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/SecurityManager;->SecurityManagerLog(Ljava/lang/String;)V

    .line 363
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sim flag: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/SecurityManager;->info:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;

    iget-object v7, v7, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;->sim:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;

    iget v7, v7, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;->flag:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  sim attemptsLeft: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/SecurityManager;->info:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;

    iget-object v7, v7, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;->sim:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;

    iget-byte v7, v7, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;->attemptsLeft:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  sim retry_count_max: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/SecurityManager;->info:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;

    iget-object v7, v7, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;->sim:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;

    iget-byte v7, v7, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion$SIMLock;->retry_count_max:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/SecurityManager;->SecurityManagerLog(Ljava/lang/String;)V

    .line 367
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "country: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/SecurityManager;->info:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;

    iget v7, v7, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;->country:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/SecurityManager;->SecurityManagerLog(Ljava/lang/String;)V

    .line 368
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "operator: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/SecurityManager;->info:Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;

    iget v7, v7, Lcom/android/internal/telephony/SecurityManager$SIMLockInformtion;->operator:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/SecurityManager;->SecurityManagerLog(Ljava/lang/String;)V

    .line 373
    :goto_0
    return v5

    :cond_0
    move v5, v6

    goto :goto_0
.end method
