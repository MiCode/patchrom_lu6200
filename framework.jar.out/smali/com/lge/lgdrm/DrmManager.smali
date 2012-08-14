.class public final Lcom/lge/lgdrm/DrmManager;
.super Ljava/lang/Object;
.source "DrmManager.java"


# static fields
.field private static sSLExtMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/lgdrm/DrmManager;->sSLExtMap:Ljava/util/HashMap;

    .line 662
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 107
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 108
    return-void
.end method

.method public static createContentManager(Ljava/lang/String;)Lcom/lge/lgdrm/DrmContentManager;
    .locals 3
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/lgdrm/DrmException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 207
    sget-boolean v1, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v1, :cond_0

    .line 208
    const/4 v1, 0x0

    .line 220
    :goto_0
    return-object v1

    .line 211
    :cond_0
    if-nez p0, :cond_1

    .line 212
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Parameter filename is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 215
    :cond_1
    invoke-static {p0}, Lcom/lge/lgdrm/DrmManager;->nativeIsDRM(Ljava/lang/String;)I

    move-result v0

    .line 216
    .local v0, contentType:I
    if-nez v0, :cond_2

    .line 217
    new-instance v1, Lcom/lge/lgdrm/DrmException;

    const-string v2, "Not DRM protected content"

    invoke-direct {v1, v2}, Lcom/lge/lgdrm/DrmException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 220
    :cond_2
    new-instance v1, Lcom/lge/lgdrm/DrmContentManager;

    invoke-direct {v1, p0, v0}, Lcom/lge/lgdrm/DrmContentManager;-><init>(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static createContentSession(Ljava/lang/String;Landroid/content/Context;)Lcom/lge/lgdrm/DrmContentSession;
    .locals 4
    .parameter "filename"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/lgdrm/DrmException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 171
    sget-boolean v2, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v2, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-object v1

    .line 175
    :cond_1
    if-nez p0, :cond_2

    .line 176
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Parameter filename is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 179
    :cond_2
    new-instance v0, Lcom/lge/lgdrm/DrmContent;

    invoke-direct {v0, p0, v3, v3}, Lcom/lge/lgdrm/DrmContent;-><init>(Ljava/lang/String;II)V

    .line 180
    .local v0, content:Lcom/lge/lgdrm/DrmContent;
    if-eqz v0, :cond_0

    .line 184
    invoke-static {v0, p0, v3}, Lcom/lge/lgdrm/DrmManager;->nativeGetContentBasicInfo(Lcom/lge/lgdrm/DrmContent;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    .line 188
    new-instance v1, Lcom/lge/lgdrm/DrmContentSession;

    invoke-direct {v1, v0, p1}, Lcom/lge/lgdrm/DrmContentSession;-><init>(Lcom/lge/lgdrm/DrmContent;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static createObjectSession(ILandroid/content/Context;)Lcom/lge/lgdrm/DrmObjectSession;
    .locals 2
    .parameter "downloadAgent"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 344
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_0

    .line 345
    const/4 v0, 0x0

    .line 355
    :goto_0
    return-object v0

    .line 348
    :cond_0
    if-nez p1, :cond_1

    .line 349
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 351
    :cond_1
    const/4 v0, 0x1

    if-lt p0, v0, :cond_2

    const/4 v0, 0x6

    if-le p0, v0, :cond_3

    .line 352
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid appType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    :cond_3
    new-instance v0, Lcom/lge/lgdrm/DrmObjectSession;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/lge/lgdrm/DrmObjectSession;-><init>(ILandroid/content/Context;I)V

    goto :goto_0
.end method

.method public static getAgentInformation(I)Ljava/lang/String;
    .locals 2
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 481
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_0

    .line 482
    const/4 v0, 0x0

    .line 492
    :goto_0
    return-object v0

    .line 485
    :cond_0
    invoke-static {}, Lcom/lge/lgdrm/DrmManager;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_1

    .line 486
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 488
    :cond_1
    if-ltz p0, :cond_2

    const/4 v0, 0x1

    if-le p0, v0, :cond_3

    .line 489
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 492
    :cond_3
    invoke-static {p0}, Lcom/lge/lgdrm/DrmManager;->nativeGetAgentInformation(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getLastError()J
    .locals 2

    .prologue
    .line 633
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getObjectDrmType([B)I
    .locals 2
    .parameter "buf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 246
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_0

    .line 247
    const/4 v0, 0x0

    .line 254
    :goto_0
    return v0

    .line 250
    :cond_0
    if-nez p0, :cond_1

    .line 251
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Parameter buf is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_1
    invoke-static {p0}, Lcom/lge/lgdrm/DrmManager;->nativeGetObjectDrmType([B)I

    move-result v0

    goto :goto_0
.end method

.method public static getObjectInfo(I[B)Ljava/lang/String;
    .locals 2
    .parameter "type"
    .parameter "buf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/lgdrm/DrmException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 307
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_0

    .line 308
    const/4 v0, 0x0

    .line 318
    :goto_0
    return-object v0

    .line 311
    :cond_0
    const/4 v0, 0x1

    if-lt p0, v0, :cond_1

    const/4 v0, 0x2

    if-le p0, v0, :cond_2

    .line 312
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :cond_2
    if-nez p1, :cond_3

    .line 315
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Parameter buf is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_3
    invoke-static {p0, p1}, Lcom/lge/lgdrm/DrmManager;->nativeGetObjectInfo(I[B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getObjectMediaMimeType([B)Ljava/lang/String;
    .locals 2
    .parameter "buf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/lgdrm/DrmException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 274
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_0

    .line 275
    const/4 v0, 0x0

    .line 282
    :goto_0
    return-object v0

    .line 278
    :cond_0
    if-nez p0, :cond_1

    .line 279
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Parameter buf is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_1
    invoke-static {p0}, Lcom/lge/lgdrm/DrmManager;->nativeGetObjectMediaMimeType([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSupportedAgent()[I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 415
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_0

    .line 416
    const/4 v0, 0x0

    .line 423
    :goto_0
    return-object v0

    .line 419
    :cond_0
    invoke-static {}, Lcom/lge/lgdrm/DrmManager;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_1

    .line 420
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 423
    :cond_1
    invoke-static {}, Lcom/lge/lgdrm/DrmManager;->nativeGetSupportedAgent()[I

    move-result-object v0

    goto :goto_0
.end method

.method public static isDRM(Ljava/lang/String;)I
    .locals 2
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 142
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_0

    .line 143
    const/4 v0, 0x0

    .line 150
    :goto_0
    return v0

    .line 146
    :cond_0
    if-nez p0, :cond_1

    .line 147
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Parameter filename is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_1
    invoke-static {p0}, Lcom/lge/lgdrm/DrmManager;->nativeIsDRM(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static isSupportedAgent(I)Z
    .locals 5
    .parameter "agentType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 448
    if-lt p0, v3, :cond_0

    const/16 v4, 0xb

    if-lt p0, v4, :cond_1

    .line 449
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid agentType"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 452
    :cond_1
    invoke-static {}, Lcom/lge/lgdrm/DrmManager;->getSupportedAgent()[I

    move-result-object v0

    .line 453
    .local v0, agents:[I
    if-nez v0, :cond_3

    .line 463
    :cond_2
    :goto_0
    return v2

    .line 457
    :cond_3
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_2

    .line 458
    aget v4, v0, v1

    if-ne v4, p0, :cond_4

    move v2, v3

    .line 459
    goto :goto_0

    .line 457
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static isSupportedExtension(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .parameter "agentType"
    .parameter "filename"
    .parameter "extension"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x7

    const/4 v9, 0x5

    const/4 v8, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 520
    sget-boolean v7, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v7, :cond_1

    .line 591
    :cond_0
    :goto_0
    return v5

    .line 524
    :cond_1
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    .line 525
    new-instance v5, Ljava/lang/NullPointerException;

    const-string/jumbo v6, "parameter is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 528
    :cond_2
    const/4 v1, 0x0

    .line 529
    .local v1, ext:Ljava/lang/String;
    if-eqz p1, :cond_6

    .line 530
    const-string v7, "."

    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 531
    .local v2, lastDot:I
    if-ltz v2, :cond_0

    .line 534
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 540
    .end local v2           #lastDot:I
    :goto_1
    const/4 v4, 0x0

    .line 541
    .local v4, storeAs:I
    if-eq p0, v8, :cond_3

    if-eq p0, v6, :cond_3

    const/16 v7, 0x9

    if-eq p0, v7, :cond_3

    const/16 v7, 0xa

    if-ne p0, v7, :cond_9

    .line 543
    :cond_3
    const-string v7, ".dm"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, ".dcf"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 544
    :cond_4
    const/4 v4, 0x1

    .line 562
    :cond_5
    :goto_2
    sget-object v7, Lcom/lge/lgdrm/DrmManager;->sSLExtMap:Ljava/util/HashMap;

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 563
    .local v0, agent:Ljava/lang/Integer;
    if-eqz v0, :cond_10

    .line 564
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 565
    .local v3, sAgentType:I
    if-ne v3, p0, :cond_e

    move v5, v6

    .line 566
    goto :goto_0

    .line 536
    .end local v0           #agent:Ljava/lang/Integer;
    .end local v3           #sAgentType:I
    .end local v4           #storeAs:I
    :cond_6
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 545
    .restart local v4       #storeAs:I
    :cond_7
    const-string v7, ".odf"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, ".o4a"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, ".o4v"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, ".o4i"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 547
    :cond_8
    const/4 v4, 0x2

    goto :goto_2

    .line 551
    :cond_9
    if-eq p0, v9, :cond_a

    if-ne p0, v10, :cond_5

    .line 552
    :cond_a
    const-string v7, ".wma"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, ".wmv"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 553
    :cond_b
    const/4 v4, 0x5

    goto :goto_2

    .line 554
    :cond_c
    const-string v7, ".eny"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    const-string v7, ".pya"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    const-string v7, ".pyv"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 555
    :cond_d
    const/4 v4, 0x7

    goto :goto_2

    .line 568
    .restart local v0       #agent:Ljava/lang/Integer;
    .restart local v3       #sAgentType:I
    :cond_e
    if-ne p0, v8, :cond_f

    if-ne v3, v6, :cond_f

    move v5, v6

    .line 570
    goto/16 :goto_0

    .line 572
    :cond_f
    if-ne p0, v10, :cond_0

    if-ne v3, v9, :cond_0

    move v5, v6

    .line 574
    goto/16 :goto_0

    .line 581
    .end local v3           #sAgentType:I
    :cond_10
    invoke-static {p0, v1}, Lcom/lge/lgdrm/DrmManager;->nativeIsSupportedExtension(ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 583
    if-eqz v4, :cond_11

    .line 584
    sget-object v5, Lcom/lge/lgdrm/DrmManager;->sSLExtMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    move v5, v6

    .line 588
    goto/16 :goto_0

    .line 586
    :cond_11
    sget-object v5, Lcom/lge/lgdrm/DrmManager;->sSLExtMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3
.end method

.method public static manageDatabase(I)I
    .locals 2
    .parameter "operation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 383
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_0

    .line 384
    const/4 v0, -0x1

    .line 394
    :goto_0
    return v0

    .line 387
    :cond_0
    invoke-static {}, Lcom/lge/lgdrm/DrmManager;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_1

    .line 388
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :cond_1
    if-ltz p0, :cond_2

    const/16 v0, 0xa

    if-le p0, v0, :cond_3

    .line 392
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid operation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :cond_3
    invoke-static {p0}, Lcom/lge/lgdrm/DrmManager;->nativeManageDatabase(I)I

    move-result v0

    goto :goto_0
.end method

.method protected static native nativeAuthCaller()Z
.end method

.method private static native nativeGetAgentInformation(I)Ljava/lang/String;
.end method

.method private static native nativeGetContentBasicInfo(Lcom/lge/lgdrm/DrmContent;Ljava/lang/String;I)I
.end method

.method private static native nativeGetObjectDrmType([B)I
.end method

.method private static native nativeGetObjectInfo(I[B)Ljava/lang/String;
.end method

.method private static native nativeGetObjectMediaMimeType([B)Ljava/lang/String;
.end method

.method private static native nativeGetSupportedAgent()[I
.end method

.method private static native nativeIsDRM(Ljava/lang/String;)I
.end method

.method private static native nativeIsSupportedExtension(ILjava/lang/String;)Z
.end method

.method private static native nativeManageDatabase(I)I
.end method

.method private static native nativeSetDebugOptions(III)V
.end method

.method public static setDebugOptions(III)V
    .locals 2
    .parameter "agentType"
    .parameter "option"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 616
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_0

    .line 625
    :goto_0
    return-void

    .line 620
    :cond_0
    invoke-static {}, Lcom/lge/lgdrm/DrmManager;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_1

    .line 621
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 624
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/lge/lgdrm/DrmManager;->nativeSetDebugOptions(III)V

    goto :goto_0
.end method
