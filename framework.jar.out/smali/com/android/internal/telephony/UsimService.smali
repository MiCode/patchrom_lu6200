.class public Lcom/android/internal/telephony/UsimService;
.super Ljava/lang/Object;
.source "UsimService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LGE_USIM"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mUsimInfo:Lcom/android/internal/telephony/IUsimInfo;

.field private uid:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UsimService;-><init>(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, "LGE_USIM"

    const-string v1, "[UsimService] new UsimService()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iput-object p1, p0, Lcom/android/internal/telephony/UsimService;->mContext:Landroid/content/Context;

    .line 46
    const-string/jumbo v0, "iusiminfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IUsimInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IUsimInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/UsimService;->mUsimInfo:Lcom/android/internal/telephony/IUsimInfo;

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/internal/telephony/UsimService;->uid:J

    .line 49
    return-void
.end method

.method private resetBinder()Z
    .locals 4

    .prologue
    .line 58
    const/4 v0, 0x6

    .line 60
    .local v0, bucket:I
    const-string v2, "LGE_USIM"

    const-string v3, "[UsimService] reset binder from RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_0
    const-string/jumbo v2, "iusiminfo"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IUsimInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IUsimInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/UsimService;->mUsimInfo:Lcom/android/internal/telephony/IUsimInfo;

    .line 65
    iget-object v2, p0, Lcom/android/internal/telephony/UsimService;->mUsimInfo:Lcom/android/internal/telephony/IUsimInfo;

    if-eqz v2, :cond_1

    .line 66
    const-string v2, "LGE_USIM"

    const-string v3, "[UsimService] reset binder ==> OK"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 v2, 0x1

    .line 84
    :goto_0
    return v2

    .line 70
    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_2

    .line 81
    :goto_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/UsimService;->mUsimInfo:Lcom/android/internal/telephony/IUsimInfo;

    .line 82
    const-string v2, "LGE_USIM"

    const-string v3, "[UsimService] reset binder ==> FAIL"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const/4 v2, 0x0

    goto :goto_0

    .line 73
    :cond_2
    const-string v2, "LGE_USIM"

    const-string v3, "[UsimService] reset binder ==> sleeping..."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    if-gtz v0, :cond_0

    goto :goto_1

    .line 76
    :catch_0
    move-exception v1

    .line 77
    .local v1, e:Ljava/lang/InterruptedException;
    goto :goto_1
.end method


# virtual methods
.method public PBMDeleteRecord(II)V
    .locals 5
    .parameter "EFdevice"
    .parameter "rec_index"

    .prologue
    .line 386
    const-string v2, "LGE_USIM"

    const-string v3, "[UsimService]PBMDeleteRecord()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_0
    const/4 v1, 0x0

    .line 392
    .local v1, reset:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/UsimService;->mUsimInfo:Lcom/android/internal/telephony/IUsimInfo;

    iget-wide v3, p0, Lcom/android/internal/telephony/UsimService;->uid:J

    invoke-interface {v2, v3, v4, p1, p2}, Lcom/android/internal/telephony/IUsimInfo;->PBMDeleteRecord(JII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    :goto_0
    if-nez v1, :cond_0

    .line 397
    return-void

    .line 393
    :catch_0
    move-exception v0

    .line 394
    .local v0, e:Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/android/internal/telephony/UsimService;->resetBinder()Z

    move-result v1

    goto :goto_0
.end method

.method public PBMGetInfo(I)V
    .locals 5
    .parameter "EFdevice"

    .prologue
    .line 401
    const-string v2, "LGE_USIM"

    const-string v3, "[UsimService]PBMGetInfo()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_0
    const/4 v1, 0x0

    .line 407
    .local v1, reset:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/UsimService;->mUsimInfo:Lcom/android/internal/telephony/IUsimInfo;

    iget-wide v3, p0, Lcom/android/internal/telephony/UsimService;->uid:J

    invoke-interface {v2, v3, v4, p1}, Lcom/android/internal/telephony/IUsimInfo;->PBMGetInfo(JI)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    :goto_0
    if-nez v1, :cond_0

    .line 412
    return-void

    .line 408
    :catch_0
    move-exception v0

    .line 409
    .local v0, e:Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/android/internal/telephony/UsimService;->resetBinder()Z

    move-result v1

    goto :goto_0
.end method

.method public PBMReadRecord(II)V
    .locals 5
    .parameter "EFdevice"
    .parameter "rec_index"

    .prologue
    .line 356
    const-string v2, "LGE_USIM"

    const-string v3, "[UsimService]PBMReadRecord()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_0
    const/4 v1, 0x0

    .line 362
    .local v1, reset:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/UsimService;->mUsimInfo:Lcom/android/internal/telephony/IUsimInfo;

    iget-wide v3, p0, Lcom/android/internal/telephony/UsimService;->uid:J

    invoke-interface {v2, v3, v4, p1, p2}, Lcom/android/internal/telephony/IUsimInfo;->PBMReadRecord(JII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    :goto_0
    if-nez v1, :cond_0

    .line 367
    return-void

    .line 363
    :catch_0
    move-exception v0

    .line 364
    .local v0, e:Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/android/internal/telephony/UsimService;->resetBinder()Z

    move-result v1

    goto :goto_0
.end method

.method public PBMWriteRecord(Lcom/android/internal/telephony/gsm/LGE_PBM_Records;)V
    .locals 5
    .parameter "RecordData"

    .prologue
    .line 371
    const-string v2, "LGE_USIM"

    const-string v3, "[UsimService]PBMWriteRecord()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_0
    const/4 v1, 0x0

    .line 377
    .local v1, reset:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/UsimService;->mUsimInfo:Lcom/android/internal/telephony/IUsimInfo;

    iget-wide v3, p0, Lcom/android/internal/telephony/UsimService;->uid:J

    invoke-interface {v2, v3, v4, p1}, Lcom/android/internal/telephony/IUsimInfo;->PBMWriteRecord(JLcom/android/internal/telephony/gsm/LGE_PBM_Records;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    :goto_0
    if-nez v1, :cond_0

    .line 382
    return-void

    .line 378
    :catch_0
    move-exception v0

    .line 379
    .local v0, e:Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/android/internal/telephony/UsimService;->resetBinder()Z

    move-result v1

    goto :goto_0
.end method

.method public ReadFromSIM(I)[B
    .locals 6
    .parameter "EF_ID"

    .prologue
    .line 121
    const-string v3, "LGE_USIM"

    const-string v4, "[UsimService] ReadFromSIM"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const/4 v1, 0x0

    .line 126
    .local v1, read_buff:[B
    :cond_0
    const/4 v2, 0x0

    .line 128
    .local v2, reset:Z
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/UsimService;->mUsimInfo:Lcom/android/internal/telephony/IUsimInfo;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IUsimInfo;->ReadFromSIM(I)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 133
    :goto_0
    if-nez v2, :cond_0

    .line 135
    return-object v1

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, e:Ljava/lang/Throwable;
    const-string v3, "LGE_USIM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "binder is not ready yet : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-direct {p0}, Lcom/android/internal/telephony/UsimService;->resetBinder()Z

    move-result v2

    goto :goto_0
.end method

.method public WriteToSIM(I[B)[B
    .locals 6
    .parameter "efid"
    .parameter "data_to_be_sent"

    .prologue
    .line 140
    const-string v4, "LGE_USIM"

    const-string v5, "[UsimService]WriteToSIM()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 v3, 0x0

    .line 143
    .local v3, ret:[B
    const/4 v0, 0x0

    .line 146
    .local v0, data:[B
    :cond_0
    const/4 v2, 0x0

    .line 148
    .local v2, reset:Z
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/UsimService;->mUsimInfo:Lcom/android/internal/telephony/IUsimInfo;

    invoke-interface {v4, p1, p2}, Lcom/android/internal/telephony/IUsimInfo;->WriteToSIM(I[B)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 152
    :goto_0
    if-nez v2, :cond_0

    .line 154
    const/4 v4, 0x0

    aget-byte v4, v3, v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 155
    const-string v4, "LGE_USIM"

    const-string v5, "[UsimService]WriteToSIM() Success"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :goto_1
    return-object v3

    .line 149
    :catch_0
    move-exception v1

    .line 150
    .local v1, e:Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/android/internal/telephony/UsimService;->resetBinder()Z

    move-result v2

    goto :goto_0

    .line 157
    .end local v1           #e:Ljava/lang/Throwable;
    :cond_1
    const-string v4, "LGE_USIM"

    const-string v5, "[UsimService]WriteToSIM() Fail"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getEfRecordSize(I)I
    .locals 5
    .parameter "efid"

    .prologue
    .line 336
    const-string v3, "LGE_USIM"

    const-string v4, "[UsimService] getEfRecordSize"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const/4 v2, 0x0

    .line 341
    .local v2, size:I
    :cond_0
    const/4 v1, 0x0

    .line 343
    .local v1, reset:Z
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/UsimService;->mUsimInfo:Lcom/android/internal/telephony/IUsimInfo;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IUsimInfo;->getEfRecordsSize(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 347
    :goto_0
    if-nez v1, :cond_0

    .line 349
    return v2

    .line 344
    :catch_0
    move-exception v0

    .line 345
    .local v0, e:Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/android/internal/telephony/UsimService;->resetBinder()Z

    move-result v1

    goto :goto_0
.end method

.method public getIMSI_M()Ljava/lang/String;
    .locals 5

    .prologue
    .line 417
    const/4 v2, 0x0

    .line 420
    .local v2, retVal:Ljava/lang/String;
    const-string v3, "LGE_USIM"

    const-string v4, "[UsimService] getIMSI_M()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_0
    const/4 v1, 0x0

    .line 425
    .local v1, reset:Z
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/UsimService;->mUsimInfo:Lcom/android/internal/telephony/IUsimInfo;

    invoke-interface {v3}, Lcom/android/internal/telephony/IUsimInfo;->getIMSI_M()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 429
    :goto_0
    if-nez v1, :cond_0

    .line 431
    return-object v2

    .line 426
    :catch_0
    move-exception v0

    .line 427
    .local v0, e:Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/android/internal/telephony/UsimService;->resetBinder()Z

    move-result v1

    goto :goto_0
.end method

.method public getSCAddressFromIcc()Ljava/lang/String;
    .locals 5

    .prologue
    .line 303
    const-string v3, "LGE_USIM"

    const-string v4, "[UsimService] getSCAddressFromIcc"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const/4 v2, 0x0

    .line 308
    .local v2, scAddr:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .line 310
    .local v1, reset:Z
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/UsimService;->mUsimInfo:Lcom/android/internal/telephony/IUsimInfo;

    invoke-interface {v3}, Lcom/android/internal/telephony/IUsimInfo;->getSCAddressFromIcc()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 314
    :goto_0
    if-nez v1, :cond_0

    .line 316
    return-object v2

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, e:Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/android/internal/telephony/UsimService;->resetBinder()Z

    move-result v1

    goto :goto_0
.end method

.method public getUsimIsEmpty()I
    .locals 5

    .prologue
    .line 163
    const-string v3, "LGE_USIM"

    const-string v4, "[UsimService]getUsimIsEmpty()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/4 v2, -0x1

    .line 168
    .local v2, ret_val:I
    :cond_0
    const/4 v1, 0x0

    .line 170
    .local v1, reset:Z
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/UsimService;->mUsimInfo:Lcom/android/internal/telephony/IUsimInfo;

    invoke-interface {v3}, Lcom/android/internal/telephony/IUsimInfo;->getUsimIsEmpty()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 174
    :goto_0
    if-nez v1, :cond_0

    .line 176
    return v2

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, e:Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/android/internal/telephony/UsimService;->resetBinder()Z

    move-result v1

    goto :goto_0
.end method

.method public getUsimIsSponIMSI()I
    .locals 5

    .prologue
    .line 198
    const-string v3, "LGE_USIM"

    const-string v4, "[UsimService]getUsimIsSponIMSI()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/4 v2, -0x1

    .line 203
    .local v2, ret_val:I
    :cond_0
    const/4 v1, 0x0

    .line 205
    .local v1, reset:Z
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/UsimService;->mUsimInfo:Lcom/android/internal/telephony/IUsimInfo;

    invoke-interface {v3}, Lcom/android/internal/telephony/IUsimInfo;->getUsimIsSponIMSI()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 209
    :goto_0
    if-nez v1, :cond_0

    .line 211
    return v2

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, e:Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/android/internal/telephony/UsimService;->resetBinder()Z

    move-result v1

    goto :goto_0
.end method

.method public getUsimType()I
    .locals 4

    .prologue
    .line 181
    const-string v1, "LGE_USIM"

    const-string v2, "[UsimService]getUsimType()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const-string v1, "LGE_USIM"

    const-string v2, "########## NO MORE USE THIS METHOD : UsimService.getUsimType() ##########"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const-string v1, "LGE_USIM"

    const-string v2, "########## USE SYSTEM PROPERTY     : gsm.sim.type ###########"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const-string/jumbo v1, "gsm.sim.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, gsmSimType:Ljava/lang/String;
    const-string v1, "LGE_USIM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUsimType() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const-string/jumbo v1, "skt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 193
    :goto_0
    return v1

    .line 189
    :cond_0
    const-string/jumbo v1, "kt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    .line 190
    :cond_1
    const-string/jumbo v1, "lgu"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x5

    goto :goto_0

    .line 191
    :cond_2
    const-string/jumbo v1, "test"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    goto :goto_0

    .line 192
    :cond_3
    const-string/jumbo v1, "unknown"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x3

    goto :goto_0

    .line 193
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public readEF_Mdn(I)Ljava/lang/String;
    .locals 7
    .parameter "EF_ID"

    .prologue
    .line 261
    const-string v4, "LGE_USIM"

    const-string v5, "[UsimService]readEF_Mdn()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const/4 v2, 0x0

    .line 263
    .local v2, mMdn:[B
    const/4 v1, 0x0

    .line 267
    .local v1, mEFMdn:Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    .line 269
    .local v3, reset:Z
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/UsimService;->mUsimInfo:Lcom/android/internal/telephony/IUsimInfo;

    invoke-interface {v4, p1}, Lcom/android/internal/telephony/IUsimInfo;->ReadFromSIM(I)[B

    move-result-object v2

    .line 270
    invoke-static {v2}, Lcom/android/internal/telephony/LGEIccUtils;->decodeMdn([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 275
    :goto_0
    if-nez v3, :cond_0

    .line 277
    return-object v1

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, e:Ljava/lang/Throwable;
    const-string v4, "LGE_USIM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "binder is not ready yet : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-direct {p0}, Lcom/android/internal/telephony/UsimService;->resetBinder()Z

    move-result v3

    goto :goto_0
.end method

.method public registerCallback(Lcom/android/internal/telephony/IUsimInfoCallback;)V
    .locals 5
    .parameter "cb"

    .prologue
    .line 89
    const-string v2, "LGE_USIM"

    const-string v3, "[UsimService] registerCallback()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    const/4 v1, 0x0

    .line 95
    .local v1, reset:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/UsimService;->mUsimInfo:Lcom/android/internal/telephony/IUsimInfo;

    iget-wide v3, p0, Lcom/android/internal/telephony/UsimService;->uid:J

    invoke-interface {v2, v3, v4, p1}, Lcom/android/internal/telephony/IUsimInfo;->registerCallback(JLcom/android/internal/telephony/IUsimInfoCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    if-nez v1, :cond_0

    .line 101
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 98
    .local v0, e:Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/android/internal/telephony/UsimService;->resetBinder()Z

    move-result v1

    goto :goto_0
.end method

.method public sendChangeToHomeIMSI()V
    .locals 4

    .prologue
    .line 246
    const-string v2, "LGE_USIM"

    const-string v3, "[UsimService]sendChangeToHomeIMSI()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_0
    const/4 v1, 0x0

    .line 252
    .local v1, reset:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/UsimService;->mUsimInfo:Lcom/android/internal/telephony/IUsimInfo;

    invoke-interface {v2}, Lcom/android/internal/telephony/IUsimInfo;->sendChangeToHomeIMSI()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :goto_0
    if-nez v1, :cond_0

    .line 257
    return-void

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, e:Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/android/internal/telephony/UsimService;->resetBinder()Z

    move-result v1

    goto :goto_0
.end method

.method public sendChangeToSponIMSI()V
    .locals 4

    .prologue
    .line 216
    const-string v2, "LGE_USIM"

    const-string v3, "[UsimService]sendChangeToSponIMSI()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_0
    const/4 v1, 0x0

    .line 222
    .local v1, reset:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/UsimService;->mUsimInfo:Lcom/android/internal/telephony/IUsimInfo;

    invoke-interface {v2}, Lcom/android/internal/telephony/IUsimInfo;->sendChangeToSponIMSI()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :goto_0
    if-nez v1, :cond_0

    .line 227
    return-void

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0}, Lcom/android/internal/telephony/UsimService;->resetBinder()Z

    move-result v1

    goto :goto_0
.end method

.method public sendUpdatePLMN()V
    .locals 4

    .prologue
    .line 231
    const-string v2, "LGE_USIM"

    const-string v3, "[UsimService]sendUpdatePLMN()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_0
    const/4 v1, 0x0

    .line 237
    .local v1, reset:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/UsimService;->mUsimInfo:Lcom/android/internal/telephony/IUsimInfo;

    invoke-interface {v2}, Lcom/android/internal/telephony/IUsimInfo;->sendUpdatePLMN()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :goto_0
    if-nez v1, :cond_0

    .line 242
    return-void

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, e:Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/android/internal/telephony/UsimService;->resetBinder()Z

    move-result v1

    goto :goto_0
.end method

.method public setSCAddressToIcc(Ljava/lang/String;)V
    .locals 4
    .parameter "scAddr"

    .prologue
    .line 321
    const-string v2, "LGE_USIM"

    const-string v3, "[UsimService] setSCAddressToIcc"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_0
    const/4 v1, 0x0

    .line 327
    .local v1, reset:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/UsimService;->mUsimInfo:Lcom/android/internal/telephony/IUsimInfo;

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IUsimInfo;->setSCAddressToIcc(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :goto_0
    if-nez v1, :cond_0

    .line 332
    return-void

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, e:Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/android/internal/telephony/UsimService;->resetBinder()Z

    move-result v1

    goto :goto_0
.end method

.method public unregisterCallback(Lcom/android/internal/telephony/IUsimInfoCallback;)V
    .locals 5
    .parameter "cb"

    .prologue
    .line 105
    const-string v2, "LGE_USIM"

    const-string v3, "[UsimService] unregisterCallback()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    const/4 v1, 0x0

    .line 111
    .local v1, reset:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/UsimService;->mUsimInfo:Lcom/android/internal/telephony/IUsimInfo;

    iget-wide v3, p0, Lcom/android/internal/telephony/UsimService;->uid:J

    invoke-interface {v2, v3, v4, p1}, Lcom/android/internal/telephony/IUsimInfo;->unregisterCallback(JLcom/android/internal/telephony/IUsimInfoCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    if-nez v1, :cond_0

    .line 116
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, e:Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/android/internal/telephony/UsimService;->resetBinder()Z

    move-result v1

    goto :goto_0
.end method

.method public writeEF_Mdn(Ljava/lang/String;)V
    .locals 5
    .parameter "mdn"

    .prologue
    .line 282
    const-string v3, "LGE_USIM"

    const-string v4, "[UsimService]writeEF_Mdn()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const/4 v1, 0x0

    .line 287
    .local v1, rawData:[B
    :cond_0
    const/4 v2, 0x0

    .line 289
    .local v2, reset:Z
    if-eqz p1, :cond_1

    :try_start_0
    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 290
    :cond_1
    const-string v3, "ffffffffffffffffffffff"

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 293
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/UsimService;->mUsimInfo:Lcom/android/internal/telephony/IUsimInfo;

    const/16 v4, 0x6f44

    invoke-interface {v3, v4, v1}, Lcom/android/internal/telephony/IUsimInfo;->WriteToSIM(I[B)[B

    .line 297
    :goto_1
    if-nez v2, :cond_0

    .line 298
    return-void

    .line 292
    :cond_2
    invoke-static {p1}, Lcom/android/internal/telephony/LGEIccUtils;->encodeMdn(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, e:Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/android/internal/telephony/UsimService;->resetBinder()Z

    move-result v2

    goto :goto_1
.end method
