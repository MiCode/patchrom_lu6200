.class public final Lcom/lge/lgdrm/DrmRight;
.super Ljava/lang/Object;
.source "DrmRight.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DrmRight"


# instance fields
.field private accumulated:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private count:Ljava/lang/String;

.field private dateTime:Ljava/lang/String;

.field private filename:Ljava/lang/String;

.field private index:I

.field private individual:Ljava/lang/String;

.field private interval:Ljava/lang/String;

.field private metering:Z

.field private mid:Ljava/lang/String;

.field private permission:I

.field private previewContent:I

.field private system:Ljava/lang/String;

.field private timedCount:Ljava/lang/String;

.field private unlimited:Z

.field private useLeft:Ljava/lang/String;

.field private validFor:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 192
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 193
    return-void
.end method

.method protected constructor <init>(Lcom/lge/lgdrm/DrmContent;Landroid/content/Context;)V
    .locals 1
    .parameter "content"
    .parameter "context"

    .prologue
    .line 202
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iget-object v0, p1, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/lgdrm/DrmRight;->filename:Ljava/lang/String;

    .line 205
    iget v0, p1, Lcom/lge/lgdrm/DrmContent;->index:I

    iput v0, p0, Lcom/lge/lgdrm/DrmRight;->index:I

    .line 206
    iget v0, p1, Lcom/lge/lgdrm/DrmContent;->previewContent:I

    iput v0, p0, Lcom/lge/lgdrm/DrmRight;->previewContent:I

    .line 207
    iget v0, p1, Lcom/lge/lgdrm/DrmContent;->permisson:I

    iput v0, p0, Lcom/lge/lgdrm/DrmRight;->permission:I

    .line 208
    iput-object p2, p0, Lcom/lge/lgdrm/DrmRight;->context:Landroid/content/Context;

    .line 209
    return-void
.end method

.method public static getKeyByCID(Ljava/lang/String;[B[B)I
    .locals 2
    .parameter "cid"
    .parameter "encKey"
    .parameter "authSeed"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x10

    .line 232
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_0

    .line 233
    const/4 v0, -0x1

    .line 253
    :goto_0
    return v0

    .line 236
    :cond_0
    invoke-static {}, Lcom/lge/lgdrm/DrmManager;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_1

    .line 237
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_1
    if-nez p0, :cond_2

    .line 241
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cid is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_2
    if-eqz p1, :cond_3

    if-nez p2, :cond_4

    .line 244
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "one of the key is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_4
    array-length v0, p1

    if-ge v0, v1, :cond_5

    .line 247
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "encKey length is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_5
    array-length v0, p2

    if-ge v0, v1, :cond_6

    .line 250
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "authSeed length is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_6
    invoke-static {p0, p1, p2}, Lcom/lge/lgdrm/DrmRight;->nativeGetKeyByCID(Ljava/lang/String;[B[B)I

    move-result v0

    goto :goto_0
.end method

.method public static getRegistrationCode()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 285
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_0

    .line 286
    const/4 v0, 0x0

    .line 293
    :goto_0
    return-object v0

    .line 289
    :cond_0
    invoke-static {}, Lcom/lge/lgdrm/DrmManager;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_1

    .line 290
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_1
    invoke-static {}, Lcom/lge/lgdrm/DrmRight;->nativeGetRegistrationCode()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private native nativeCheckMetering(Ljava/lang/String;)Z
.end method

.method private static native nativeGetKeyByCID(Ljava/lang/String;[B[B)I
.end method

.method private static native nativeGetRegistrationCode()Ljava/lang/String;
.end method

.method private native nativeGetRightInfo(Ljava/lang/String;III)I
.end method

.method private native nativeManageMetering(Ljava/lang/String;Z)I
.end method

.method private static native nativeSetRandomSample()V
.end method

.method public static setRandomSample()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 264
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_0

    .line 273
    :goto_0
    return-void

    .line 268
    :cond_0
    invoke-static {}, Lcom/lge/lgdrm/DrmManager;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_1

    .line 269
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_1
    invoke-static {}, Lcom/lge/lgdrm/DrmRight;->nativeSetRandomSample()V

    goto :goto_0
.end method

.method private setRightInfo(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "unlimited"
    .parameter "metering"
    .parameter "useLeft"
    .parameter "validFor"
    .parameter "count"
    .parameter "dateTime"
    .parameter "interval"
    .parameter "timedCount"
    .parameter "accumulated"
    .parameter "individual"
    .parameter "system"
    .parameter "mid"

    .prologue
    .line 601
    iput-boolean p1, p0, Lcom/lge/lgdrm/DrmRight;->unlimited:Z

    .line 602
    invoke-direct {p0, p3}, Lcom/lge/lgdrm/DrmRight;->translateSummaryInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/lgdrm/DrmRight;->useLeft:Ljava/lang/String;

    .line 603
    invoke-direct {p0, p4}, Lcom/lge/lgdrm/DrmRight;->translateSummaryInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/lgdrm/DrmRight;->validFor:Ljava/lang/String;

    .line 604
    iput-object p5, p0, Lcom/lge/lgdrm/DrmRight;->count:Ljava/lang/String;

    .line 605
    iput-object p6, p0, Lcom/lge/lgdrm/DrmRight;->dateTime:Ljava/lang/String;

    .line 606
    iput-object p7, p0, Lcom/lge/lgdrm/DrmRight;->interval:Ljava/lang/String;

    .line 607
    iput-object p8, p0, Lcom/lge/lgdrm/DrmRight;->timedCount:Ljava/lang/String;

    .line 608
    iput-object p9, p0, Lcom/lge/lgdrm/DrmRight;->accumulated:Ljava/lang/String;

    .line 609
    iput-object p10, p0, Lcom/lge/lgdrm/DrmRight;->individual:Ljava/lang/String;

    .line 610
    iput-object p11, p0, Lcom/lge/lgdrm/DrmRight;->system:Ljava/lang/String;

    .line 611
    iput-boolean p2, p0, Lcom/lge/lgdrm/DrmRight;->metering:Z

    .line 612
    iput-object p12, p0, Lcom/lge/lgdrm/DrmRight;->mid:Ljava/lang/String;

    .line 613
    return-void
.end method

.method private translateSummaryInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "original"

    .prologue
    .line 553
    if-nez p1, :cond_1

    .line 554
    const/4 p1, 0x0

    .line 592
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 557
    .restart local p1
    :cond_1
    iget-object v4, p0, Lcom/lge/lgdrm/DrmRight;->context:Landroid/content/Context;

    if-eqz v4, :cond_0

    .line 562
    const/4 v0, 0x0

    .line 563
    .local v0, count:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 564
    .local v1, result:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v4, " )"

    const/4 v5, 0x1

    invoke-direct {v2, p1, v4, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 566
    .local v2, st:Ljava/util/StringTokenizer;
    :goto_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 567
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 568
    .local v3, w:Ljava/lang/String;
    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 569
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 571
    :cond_2
    and-int/lit8 v4, v0, 0x1

    if-nez v4, :cond_3

    const-string v4, "day"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 572
    iget-object v4, p0, Lcom/lge/lgdrm/DrmRight;->context:Landroid/content/Context;

    const v5, 0x104039a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    or-int/lit8 v0, v0, 0x1

    .line 574
    goto :goto_1

    .line 575
    :cond_3
    and-int/lit8 v4, v0, 0x2

    if-nez v4, :cond_4

    const-string/jumbo v4, "hour"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 576
    iget-object v4, p0, Lcom/lge/lgdrm/DrmRight;->context:Landroid/content/Context;

    const v5, 0x104039c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    or-int/lit8 v0, v0, 0x2

    .line 578
    goto :goto_1

    .line 579
    :cond_4
    and-int/lit8 v4, v0, 0x4

    if-nez v4, :cond_5

    const-string/jumbo v4, "min"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 580
    iget-object v4, p0, Lcom/lge/lgdrm/DrmRight;->context:Landroid/content/Context;

    const v5, 0x104039e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    or-int/lit8 v0, v0, 0x4

    .line 582
    goto :goto_1

    .line 583
    :cond_5
    and-int/lit8 v4, v0, 0x8

    if-nez v4, :cond_6

    const-string/jumbo v4, "sec"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 584
    iget-object v4, p0, Lcom/lge/lgdrm/DrmRight;->context:Landroid/content/Context;

    const v5, 0x10403a0

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    or-int/lit8 v0, v0, 0x8

    .line 586
    goto/16 :goto_1

    .line 589
    :cond_6
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 592
    .end local v3           #w:Ljava/lang/String;
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0
.end method


# virtual methods
.method public disableMetering()I
    .locals 2

    .prologue
    .line 515
    iget-object v0, p0, Lcom/lge/lgdrm/DrmRight;->mid:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/lge/lgdrm/DrmRight;->nativeManageMetering(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public enableMetering()I
    .locals 2

    .prologue
    .line 505
    iget-object v0, p0, Lcom/lge/lgdrm/DrmRight;->mid:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/lge/lgdrm/DrmRight;->nativeManageMetering(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public getConstraint(I)Ljava/lang/String;
    .locals 2
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 463
    iget-boolean v0, p0, Lcom/lge/lgdrm/DrmRight;->unlimited:Z

    if-eqz v0, :cond_0

    .line 464
    const/4 v0, 0x0

    .line 481
    :goto_0
    return-object v0

    .line 467
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 483
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 469
    :pswitch_0
    iget-object v0, p0, Lcom/lge/lgdrm/DrmRight;->count:Ljava/lang/String;

    goto :goto_0

    .line 471
    :pswitch_1
    iget-object v0, p0, Lcom/lge/lgdrm/DrmRight;->dateTime:Ljava/lang/String;

    goto :goto_0

    .line 473
    :pswitch_2
    iget-object v0, p0, Lcom/lge/lgdrm/DrmRight;->interval:Ljava/lang/String;

    goto :goto_0

    .line 475
    :pswitch_3
    iget-object v0, p0, Lcom/lge/lgdrm/DrmRight;->timedCount:Ljava/lang/String;

    goto :goto_0

    .line 477
    :pswitch_4
    iget-object v0, p0, Lcom/lge/lgdrm/DrmRight;->accumulated:Ljava/lang/String;

    goto :goto_0

    .line 479
    :pswitch_5
    iget-object v0, p0, Lcom/lge/lgdrm/DrmRight;->individual:Ljava/lang/String;

    goto :goto_0

    .line 481
    :pswitch_6
    iget-object v0, p0, Lcom/lge/lgdrm/DrmRight;->system:Ljava/lang/String;

    goto :goto_0

    .line 467
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getConstraintList()[I
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 386
    const/4 v0, 0x0

    .line 390
    .local v0, indx:I
    iget-boolean v4, p0, Lcom/lge/lgdrm/DrmRight;->unlimited:Z

    if-eqz v4, :cond_0

    move-object v1, v3

    .line 439
    :goto_0
    return-object v1

    .line 394
    :cond_0
    const/16 v4, 0x8

    new-array v2, v4, [I

    .line 395
    .local v2, tmp:[I
    if-nez v2, :cond_1

    move-object v1, v3

    .line 396
    goto :goto_0

    .line 399
    :cond_1
    iget-object v4, p0, Lcom/lge/lgdrm/DrmRight;->count:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 400
    const/4 v4, 0x1

    aput v4, v2, v0

    .line 401
    add-int/lit8 v0, v0, 0x1

    .line 403
    :cond_2
    iget-object v4, p0, Lcom/lge/lgdrm/DrmRight;->dateTime:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 404
    const/4 v4, 0x2

    aput v4, v2, v0

    .line 405
    add-int/lit8 v0, v0, 0x1

    .line 407
    :cond_3
    iget-object v4, p0, Lcom/lge/lgdrm/DrmRight;->interval:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 408
    const/4 v4, 0x3

    aput v4, v2, v0

    .line 409
    add-int/lit8 v0, v0, 0x1

    .line 411
    :cond_4
    iget-object v4, p0, Lcom/lge/lgdrm/DrmRight;->timedCount:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 412
    const/4 v4, 0x4

    aput v4, v2, v0

    .line 413
    add-int/lit8 v0, v0, 0x1

    .line 415
    :cond_5
    iget-object v4, p0, Lcom/lge/lgdrm/DrmRight;->accumulated:Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 416
    const/4 v4, 0x5

    aput v4, v2, v0

    .line 417
    add-int/lit8 v0, v0, 0x1

    .line 419
    :cond_6
    iget-object v4, p0, Lcom/lge/lgdrm/DrmRight;->individual:Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 420
    const/4 v4, 0x6

    aput v4, v2, v0

    .line 421
    add-int/lit8 v0, v0, 0x1

    .line 423
    :cond_7
    iget-object v4, p0, Lcom/lge/lgdrm/DrmRight;->system:Ljava/lang/String;

    if-eqz v4, :cond_8

    .line 424
    const/4 v4, 0x7

    aput v4, v2, v0

    .line 425
    add-int/lit8 v0, v0, 0x1

    .line 428
    :cond_8
    if-nez v0, :cond_9

    move-object v1, v3

    .line 429
    goto :goto_0

    .line 432
    :cond_9
    new-array v1, v0, [I

    .line 433
    .local v1, list:[I
    if-nez v1, :cond_a

    move-object v1, v3

    .line 434
    goto :goto_0

    .line 437
    :cond_a
    invoke-static {v2, v5, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public getPermission()I
    .locals 1

    .prologue
    .line 345
    iget v0, p0, Lcom/lge/lgdrm/DrmRight;->permission:I

    return v0
.end method

.method public getSummaryInfo(I)Ljava/lang/String;
    .locals 2
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 361
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/lge/lgdrm/DrmRight;->validFor:Ljava/lang/String;

    .line 366
    :goto_0
    return-object v0

    .line 365
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 366
    iget-object v0, p0, Lcom/lge/lgdrm/DrmRight;->useLeft:Ljava/lang/String;

    goto :goto_0

    .line 369
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected isMatched(Lcom/lge/lgdrm/DrmContent;)Z
    .locals 3
    .parameter "content"

    .prologue
    const/4 v0, 0x0

    .line 536
    iget-object v1, p0, Lcom/lge/lgdrm/DrmRight;->filename:Ljava/lang/String;

    iget-object v2, p1, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 542
    :cond_0
    :goto_0
    return v0

    .line 539
    :cond_1
    iget v1, p0, Lcom/lge/lgdrm/DrmRight;->index:I

    iget v2, p1, Lcom/lge/lgdrm/DrmContent;->index:I

    if-ne v1, v2, :cond_0

    .line 542
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isMeteringEnabled()Z
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/lge/lgdrm/DrmRight;->mid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/lge/lgdrm/DrmRight;->nativeCheckMetering(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isMeteringRight()Z
    .locals 1

    .prologue
    .line 493
    iget-boolean v0, p0, Lcom/lge/lgdrm/DrmRight;->metering:Z

    return v0
.end method

.method public isUnlimited()Z
    .locals 1

    .prologue
    .line 329
    iget-boolean v0, p0, Lcom/lge/lgdrm/DrmRight;->unlimited:Z

    return v0
.end method

.method public isValidRight()Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 303
    iget-object v2, p0, Lcom/lge/lgdrm/DrmRight;->filename:Ljava/lang/String;

    iget v3, p0, Lcom/lge/lgdrm/DrmRight;->index:I

    iget v4, p0, Lcom/lge/lgdrm/DrmRight;->previewContent:I

    iget v5, p0, Lcom/lge/lgdrm/DrmRight;->permission:I

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/lge/lgdrm/DrmRight;->nativeGetRightInfo(Ljava/lang/String;III)I

    move-result v0

    .line 305
    .local v0, retVal:I
    if-eqz v0, :cond_0

    .line 307
    iput-boolean v1, p0, Lcom/lge/lgdrm/DrmRight;->unlimited:Z

    .line 308
    iput-boolean v1, p0, Lcom/lge/lgdrm/DrmRight;->metering:Z

    .line 309
    iput-object v6, p0, Lcom/lge/lgdrm/DrmRight;->count:Ljava/lang/String;

    .line 310
    iput-object v6, p0, Lcom/lge/lgdrm/DrmRight;->dateTime:Ljava/lang/String;

    .line 311
    iput-object v6, p0, Lcom/lge/lgdrm/DrmRight;->interval:Ljava/lang/String;

    .line 312
    iput-object v6, p0, Lcom/lge/lgdrm/DrmRight;->timedCount:Ljava/lang/String;

    .line 313
    iput-object v6, p0, Lcom/lge/lgdrm/DrmRight;->accumulated:Ljava/lang/String;

    .line 314
    iput-object v6, p0, Lcom/lge/lgdrm/DrmRight;->individual:Ljava/lang/String;

    .line 315
    iput-object v6, p0, Lcom/lge/lgdrm/DrmRight;->system:Ljava/lang/String;

    .line 316
    iput-object v6, p0, Lcom/lge/lgdrm/DrmRight;->mid:Ljava/lang/String;

    .line 320
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
