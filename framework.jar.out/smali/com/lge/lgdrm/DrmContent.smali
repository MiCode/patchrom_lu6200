.class public final Lcom/lge/lgdrm/DrmContent;
.super Ljava/lang/Object;
.source "DrmContent.java"


# static fields
.field private static FLIconStatus:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DrmCnt"


# instance fields
.field protected agentType:I

.field protected autoRightState:Z

.field private cid:Ljava/lang/String;

.field private contentSize:J

.field protected contentType:I

.field private contentURL:Ljava/lang/String;

.field private extension:Ljava/lang/String;

.field protected filename:Ljava/lang/String;

.field protected index:I

.field private mediaType:I

.field private metadata:Lcom/lge/lgdrm/DrmContentMetaData;

.field private mimeType:Ljava/lang/String;

.field protected permisson:I

.field protected previewContent:I

.field private riURL:Ljava/lang/String;

.field protected rightState:I

.field private ttid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 134
    const/4 v0, -0x1

    sput v0, Lcom/lge/lgdrm/DrmContent;->FLIconStatus:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 136
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const/4 v0, -0x4

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->rightState:I

    .line 116
    iput-boolean v1, p0, Lcom/lge/lgdrm/DrmContent;->autoRightState:Z

    .line 118
    iput v1, p0, Lcom/lge/lgdrm/DrmContent;->permisson:I

    .line 130
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/lge/lgdrm/DrmContent;->contentSize:J

    .line 137
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;II)V
    .locals 2
    .parameter "filename"
    .parameter "index"
    .parameter "contentType"

    .prologue
    const/4 v1, 0x0

    .line 139
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const/4 v0, -0x4

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->rightState:I

    .line 116
    iput-boolean v1, p0, Lcom/lge/lgdrm/DrmContent;->autoRightState:Z

    .line 118
    iput v1, p0, Lcom/lge/lgdrm/DrmContent;->permisson:I

    .line 130
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/lge/lgdrm/DrmContent;->contentSize:J

    .line 140
    iput-object p1, p0, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    .line 141
    iput p2, p0, Lcom/lge/lgdrm/DrmContent;->index:I

    .line 142
    iput p3, p0, Lcom/lge/lgdrm/DrmContent;->contentType:I

    .line 144
    if-nez p3, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    const/16 v0, 0x1800

    if-ne p3, v0, :cond_2

    .line 149
    const/16 v0, 0x9

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_0

    .line 150
    :cond_2
    const/16 v0, 0x501

    if-ne p3, v0, :cond_3

    .line 151
    const/16 v0, 0xa

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_0

    .line 152
    :cond_3
    const/16 v0, 0x10

    if-le p3, v0, :cond_4

    const/16 v0, 0x1000

    if-ge p3, v0, :cond_4

    .line 153
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_0

    .line 154
    :cond_4
    const/16 v0, 0x3000

    if-ne p3, v0, :cond_5

    .line 155
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_0

    .line 156
    :cond_5
    const/high16 v0, 0x1

    and-int/2addr v0, p3

    if-eqz v0, :cond_6

    .line 157
    const/4 v0, 0x5

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_0

    .line 158
    :cond_6
    const/high16 v0, 0x8

    if-ne p3, v0, :cond_7

    .line 159
    const/4 v0, 0x6

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_0

    .line 160
    :cond_7
    const/high16 v0, 0x10

    and-int/2addr v0, p3

    if-nez v0, :cond_8

    const/high16 v0, 0x80

    if-ne p3, v0, :cond_0

    .line 161
    :cond_8
    const/4 v0, 0x7

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter "filename"
    .parameter "index"
    .parameter "contentType"
    .parameter "mimeType"
    .parameter "extension"
    .parameter "mediaType"

    .prologue
    const/4 v1, 0x0

    .line 180
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const/4 v0, -0x4

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->rightState:I

    .line 116
    iput-boolean v1, p0, Lcom/lge/lgdrm/DrmContent;->autoRightState:Z

    .line 118
    iput v1, p0, Lcom/lge/lgdrm/DrmContent;->permisson:I

    .line 130
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/lge/lgdrm/DrmContent;->contentSize:J

    .line 181
    iput-object p1, p0, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    .line 182
    iput p3, p0, Lcom/lge/lgdrm/DrmContent;->contentType:I

    .line 183
    iput-object p4, p0, Lcom/lge/lgdrm/DrmContent;->mimeType:Ljava/lang/String;

    .line 184
    iput-object p5, p0, Lcom/lge/lgdrm/DrmContent;->extension:Ljava/lang/String;

    .line 185
    iput p6, p0, Lcom/lge/lgdrm/DrmContent;->mediaType:I

    .line 187
    const/16 v0, 0x1800

    if-ne p3, v0, :cond_1

    .line 188
    const/16 v0, 0x9

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    const/16 v0, 0x501

    if-ne p3, v0, :cond_2

    .line 190
    const/16 v0, 0xa

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_0

    .line 191
    :cond_2
    const/16 v0, 0x10

    if-le p3, v0, :cond_3

    const/16 v0, 0x1000

    if-ge p3, v0, :cond_3

    .line 192
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_0

    .line 193
    :cond_3
    const/16 v0, 0x3000

    if-ne p3, v0, :cond_4

    .line 194
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_0

    .line 195
    :cond_4
    const/high16 v0, 0x1

    and-int/2addr v0, p3

    if-eqz v0, :cond_5

    .line 196
    const/4 v0, 0x5

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_0

    .line 197
    :cond_5
    const/high16 v0, 0x8

    if-ne p3, v0, :cond_6

    .line 198
    const/4 v0, 0x6

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_0

    .line 199
    :cond_6
    const/high16 v0, 0x10

    and-int/2addr v0, p3

    if-nez v0, :cond_7

    const/high16 v0, 0x80

    if-ne p3, v0, :cond_0

    .line 200
    :cond_7
    const/4 v0, 0x7

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_0
.end method

.method public static getContentInfo(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "filename"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;,
            Lcom/lge/lgdrm/DrmException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 378
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_0

    .line 379
    const/4 v0, 0x0

    .line 393
    :goto_0
    return-object v0

    .line 382
    :cond_0
    if-nez p0, :cond_1

    .line 383
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Parameter filename is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 385
    :cond_1
    const/4 v0, 0x1

    if-lt p1, v0, :cond_2

    const/4 v0, 0x6

    if-le p1, v0, :cond_3

    .line 386
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 389
    :cond_3
    invoke-static {p0}, Lcom/lge/lgdrm/DrmContent;->nativeIsDRM(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    .line 390
    new-instance v0, Lcom/lge/lgdrm/DrmException;

    const-string v1, "Not DRM protected content"

    invoke-direct {v0, v1}, Lcom/lge/lgdrm/DrmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 393
    :cond_4
    invoke-static {p1, p0, v1, v1}, Lcom/lge/lgdrm/DrmContent;->nativeGetContentInfo(ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getContentType(Ljava/lang/String;)I
    .locals 2
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Lcom/lge/lgdrm/DrmException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 262
    sget-boolean v1, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v1, :cond_0

    .line 274
    :goto_0
    return v0

    .line 266
    :cond_0
    if-nez p0, :cond_1

    .line 267
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Parameter filename is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_1
    invoke-static {p0}, Lcom/lge/lgdrm/DrmContent;->nativeIsDRM(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 271
    new-instance v0, Lcom/lge/lgdrm/DrmException;

    const-string v1, "Not DRM protected content"

    invoke-direct {v0, v1}, Lcom/lge/lgdrm/DrmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_2
    invoke-static {p0, v0, v0}, Lcom/lge/lgdrm/DrmContent;->nativeGetContentType(Ljava/lang/String;II)I

    move-result v0

    goto :goto_0
.end method

.method public static isForwardlockIconVisible()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 543
    sget-boolean v2, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v2, :cond_0

    .line 555
    :goto_0
    return v1

    .line 547
    :cond_0
    sget v2, Lcom/lge/lgdrm/DrmContent;->FLIconStatus:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 548
    invoke-static {}, Lcom/lge/lgdrm/DrmContent;->nativeIsForwardlockIconVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 549
    sput v0, Lcom/lge/lgdrm/DrmContent;->FLIconStatus:I

    .line 555
    :cond_1
    :goto_1
    sget v2, Lcom/lge/lgdrm/DrmContent;->FLIconStatus:I

    if-ne v2, v0, :cond_3

    :goto_2
    move v1, v0

    goto :goto_0

    .line 551
    :cond_2
    sput v1, Lcom/lge/lgdrm/DrmContent;->FLIconStatus:I

    goto :goto_1

    :cond_3
    move v0, v1

    .line 555
    goto :goto_2
.end method

.method private native nativeCheckPreviewContent(Ljava/lang/String;I)Z
.end method

.method private static native nativeGetContentInfo(ILjava/lang/String;II)Ljava/lang/String;
.end method

.method private native nativeGetContentSize(Ljava/lang/String;II)J
.end method

.method private static native nativeGetContentType(Ljava/lang/String;II)I
.end method

.method private native nativeGetMetaData(Lcom/lge/lgdrm/DrmContentMetaData;Ljava/lang/String;II)I
.end method

.method private static native nativeIsDRM(Ljava/lang/String;)I
.end method

.method private static native nativeIsForwardlockIconVisible()Z
.end method

.method private setBasicInfo(IILjava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "index"
    .parameter "contentType"
    .parameter "mimeType"
    .parameter "extension"
    .parameter "mediaType"

    .prologue
    .line 613
    iput p2, p0, Lcom/lge/lgdrm/DrmContent;->contentType:I

    .line 614
    iput-object p3, p0, Lcom/lge/lgdrm/DrmContent;->mimeType:Ljava/lang/String;

    .line 615
    iput-object p4, p0, Lcom/lge/lgdrm/DrmContent;->extension:Ljava/lang/String;

    .line 616
    iput p5, p0, Lcom/lge/lgdrm/DrmContent;->mediaType:I

    .line 618
    const/16 v0, 0x1800

    if-ne p2, v0, :cond_1

    .line 619
    const/16 v0, 0x9

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    .line 633
    :cond_0
    :goto_0
    return-void

    .line 620
    :cond_1
    const/16 v0, 0x501

    if-ne p2, v0, :cond_2

    .line 621
    const/16 v0, 0xa

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_0

    .line 622
    :cond_2
    const/16 v0, 0x10

    if-le p2, v0, :cond_3

    const/16 v0, 0x1000

    if-ge p2, v0, :cond_3

    .line 623
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_0

    .line 624
    :cond_3
    const/16 v0, 0x3000

    if-ne p2, v0, :cond_4

    .line 625
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_0

    .line 626
    :cond_4
    const/high16 v0, 0x1

    and-int/2addr v0, p2

    if-eqz v0, :cond_5

    .line 627
    const/4 v0, 0x5

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_0

    .line 628
    :cond_5
    const/high16 v0, 0x8

    if-ne p2, v0, :cond_6

    .line 629
    const/4 v0, 0x6

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_0

    .line 630
    :cond_6
    const/high16 v0, 0x10

    and-int/2addr v0, p2

    if-nez v0, :cond_7

    const/high16 v0, 0x80

    if-ne p2, v0, :cond_0

    .line 631
    :cond_7
    const/4 v0, 0x7

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_0
.end method

.method private setBasicInfo(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "mimeType"
    .parameter "extension"
    .parameter "mediaType"

    .prologue
    .line 645
    iput-object p1, p0, Lcom/lge/lgdrm/DrmContent;->mimeType:Ljava/lang/String;

    .line 646
    iput-object p2, p0, Lcom/lge/lgdrm/DrmContent;->extension:Ljava/lang/String;

    .line 647
    iput p3, p0, Lcom/lge/lgdrm/DrmContent;->mediaType:I

    .line 648
    return-void
.end method


# virtual methods
.method public checkPreviewContent()Z
    .locals 2

    .prologue
    .line 417
    iget v0, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 418
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v1, p0, Lcom/lge/lgdrm/DrmContent;->index:I

    invoke-direct {p0, v0, v1}, Lcom/lge/lgdrm/DrmContent;->nativeCheckPreviewContent(Ljava/lang/String;I)Z

    move-result v0

    .line 421
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContentInfo(I)Ljava/lang/String;
    .locals 6
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x9

    const/4 v4, 0x6

    const/4 v0, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 294
    if-lt p1, v2, :cond_0

    if-le p1, v4, :cond_1

    .line 295
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 298
    :cond_1
    if-ne p1, v2, :cond_3

    .line 299
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContent;->mimeType:Ljava/lang/String;

    .line 352
    :cond_2
    :goto_0
    return-object v0

    .line 301
    :cond_3
    if-ne p1, v3, :cond_4

    .line 302
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContent;->extension:Ljava/lang/String;

    goto :goto_0

    .line 306
    :cond_4
    iget v1, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    if-eq v1, v2, :cond_5

    iget v1, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    if-eq v1, v3, :cond_5

    iget v1, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    if-eq v1, v5, :cond_5

    iget v1, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    .line 311
    :cond_5
    const/4 v1, 0x3

    if-ne p1, v1, :cond_7

    .line 312
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContent;->cid:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 313
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContent;->cid:Ljava/lang/String;

    goto :goto_0

    .line 316
    :cond_6
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v1, p0, Lcom/lge/lgdrm/DrmContent;->index:I

    iget v2, p0, Lcom/lge/lgdrm/DrmContent;->previewContent:I

    invoke-static {p1, v0, v1, v2}, Lcom/lge/lgdrm/DrmContent;->nativeGetContentInfo(ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/lgdrm/DrmContent;->cid:Ljava/lang/String;

    .line 317
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContent;->cid:Ljava/lang/String;

    goto :goto_0

    .line 320
    :cond_7
    const/4 v1, 0x4

    if-ne p1, v1, :cond_9

    .line 321
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContent;->riURL:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 322
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContent;->riURL:Ljava/lang/String;

    goto :goto_0

    .line 325
    :cond_8
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v1, p0, Lcom/lge/lgdrm/DrmContent;->index:I

    iget v2, p0, Lcom/lge/lgdrm/DrmContent;->previewContent:I

    invoke-static {p1, v0, v1, v2}, Lcom/lge/lgdrm/DrmContent;->nativeGetContentInfo(ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/lgdrm/DrmContent;->riURL:Ljava/lang/String;

    .line 326
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContent;->riURL:Ljava/lang/String;

    goto :goto_0

    .line 330
    :cond_9
    iget v1, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    if-eq v1, v3, :cond_a

    iget v1, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    if-ne v1, v5, :cond_2

    .line 334
    :cond_a
    const/4 v1, 0x5

    if-ne p1, v1, :cond_c

    .line 335
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContent;->contentURL:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 336
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContent;->contentURL:Ljava/lang/String;

    goto :goto_0

    .line 339
    :cond_b
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v1, p0, Lcom/lge/lgdrm/DrmContent;->index:I

    iget v2, p0, Lcom/lge/lgdrm/DrmContent;->previewContent:I

    invoke-static {p1, v0, v1, v2}, Lcom/lge/lgdrm/DrmContent;->nativeGetContentInfo(ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/lgdrm/DrmContent;->contentURL:Ljava/lang/String;

    .line 340
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContent;->contentURL:Ljava/lang/String;

    goto :goto_0

    .line 343
    :cond_c
    if-ne p1, v4, :cond_2

    .line 344
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContent;->ttid:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 345
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContent;->ttid:Ljava/lang/String;

    goto :goto_0

    .line 348
    :cond_d
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v1, p0, Lcom/lge/lgdrm/DrmContent;->index:I

    iget v2, p0, Lcom/lge/lgdrm/DrmContent;->previewContent:I

    invoke-static {p1, v0, v1, v2}, Lcom/lge/lgdrm/DrmContent;->nativeGetContentInfo(ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/lgdrm/DrmContent;->ttid:Ljava/lang/String;

    .line 349
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContent;->ttid:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public getContentSize()J
    .locals 4

    .prologue
    .line 403
    iget-wide v0, p0, Lcom/lge/lgdrm/DrmContent;->contentSize:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 404
    iget-wide v0, p0, Lcom/lge/lgdrm/DrmContent;->contentSize:J

    .line 408
    :goto_0
    return-wide v0

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v1, p0, Lcom/lge/lgdrm/DrmContent;->index:I

    iget v2, p0, Lcom/lge/lgdrm/DrmContent;->previewContent:I

    invoke-direct {p0, v0, v1, v2}, Lcom/lge/lgdrm/DrmContent;->nativeGetContentSize(Ljava/lang/String;II)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/lgdrm/DrmContent;->contentSize:J

    .line 408
    iget-wide v0, p0, Lcom/lge/lgdrm/DrmContent;->contentSize:J

    goto :goto_0
.end method

.method public getContentType()I
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/lge/lgdrm/DrmContent;->mediaType:I

    return v0
.end method

.method public getDrmContentType()I
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lcom/lge/lgdrm/DrmContent;->contentType:I

    return v0
.end method

.method public getMetaData()Lcom/lge/lgdrm/DrmContentMetaData;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 467
    iget v2, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    const/16 v3, 0x9

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/lge/lgdrm/DrmContent;->agentType:I

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    move-object v0, v1

    .line 492
    :cond_0
    :goto_0
    return-object v0

    .line 473
    :cond_1
    iget-object v2, p0, Lcom/lge/lgdrm/DrmContent;->metadata:Lcom/lge/lgdrm/DrmContentMetaData;

    if-eqz v2, :cond_2

    .line 475
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContent;->metadata:Lcom/lge/lgdrm/DrmContentMetaData;

    goto :goto_0

    .line 478
    :cond_2
    new-instance v0, Lcom/lge/lgdrm/DrmContentMetaData;

    invoke-direct {v0}, Lcom/lge/lgdrm/DrmContentMetaData;-><init>()V

    .line 479
    .local v0, meta:Lcom/lge/lgdrm/DrmContentMetaData;
    if-nez v0, :cond_3

    move-object v0, v1

    .line 480
    goto :goto_0

    .line 483
    :cond_3
    iget-object v2, p0, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v3, p0, Lcom/lge/lgdrm/DrmContent;->index:I

    iget v4, p0, Lcom/lge/lgdrm/DrmContent;->previewContent:I

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/lge/lgdrm/DrmContent;->nativeGetMetaData(Lcom/lge/lgdrm/DrmContentMetaData;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_4

    move-object v0, v1

    .line 484
    goto :goto_0

    .line 487
    :cond_4
    const/16 v1, 0xf

    invoke-virtual {p0, v1}, Lcom/lge/lgdrm/DrmContent;->isActionSupported(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 489
    iput-object v0, p0, Lcom/lge/lgdrm/DrmContent;->metadata:Lcom/lge/lgdrm/DrmContentMetaData;

    goto :goto_0
.end method

.method public isActionSupported(I)Z
    .locals 2
    .parameter "action"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 449
    const/16 v0, 0xf

    if-eq p1, v0, :cond_0

    .line 450
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid action"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 454
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected isIdentical(Lcom/lge/lgdrm/DrmContent;)Z
    .locals 3
    .parameter "content"

    .prologue
    const/4 v0, 0x0

    .line 585
    if-nez p1, :cond_1

    .line 596
    :cond_0
    :goto_0
    return v0

    .line 588
    :cond_1
    iget-object v1, p1, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget-object v2, p0, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 593
    iget v1, p1, Lcom/lge/lgdrm/DrmContent;->index:I

    iget v2, p0, Lcom/lge/lgdrm/DrmContent;->index:I

    if-ne v1, v2, :cond_0

    .line 596
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isSibling(Lcom/lge/lgdrm/DrmContent;)Z
    .locals 3
    .parameter "content"

    .prologue
    const/4 v0, 0x0

    .line 566
    if-nez p1, :cond_1

    .line 574
    :cond_0
    :goto_0
    return v0

    .line 571
    :cond_1
    iget-object v1, p1, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget-object v2, p0, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 574
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public resetMetaData()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 534
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Meta dat editing is not permitted"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public selectPreviewContent(Z)V
    .locals 1
    .parameter "reset"

    .prologue
    .line 430
    if-eqz p1, :cond_0

    .line 431
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->previewContent:I

    .line 435
    :goto_0
    return-void

    .line 433
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/lgdrm/DrmContent;->previewContent:I

    goto :goto_0
.end method

.method public setMetaData(Lcom/lge/lgdrm/DrmContentMetaData;)I
    .locals 2
    .parameter "metaData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 513
    if-nez p1, :cond_0

    .line 514
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Parameter metaData is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 517
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Meta dat editing is not permitted"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
