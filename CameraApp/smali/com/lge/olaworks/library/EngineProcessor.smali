.class public Lcom/lge/olaworks/library/EngineProcessor;
.super Ljava/lang/Object;
.source "EngineProcessor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraApp"


# instance fields
.field private mEngineList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/olaworks/library/BaseEngine;",
            ">;"
        }
    .end annotation
.end field

.field private mStart:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/olaworks/library/EngineProcessor;->mEngineList:Ljava/util/ArrayList;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/olaworks/library/EngineProcessor;->mStart:Z

    .line 32
    return-void
.end method

.method private addEngine(Lcom/lge/olaworks/library/BaseEngine;)Lcom/lge/olaworks/library/BaseEngine;
    .locals 2
    .parameter "engine"

    .prologue
    .line 95
    const/4 v0, 0x1

    const/16 v1, 0xa

    invoke-direct {p0, p1, v0, v1}, Lcom/lge/olaworks/library/EngineProcessor;->addEngine(Lcom/lge/olaworks/library/BaseEngine;ZI)Lcom/lge/olaworks/library/BaseEngine;

    move-result-object v0

    return-object v0
.end method

.method private addEngine(Lcom/lge/olaworks/library/BaseEngine;Z)Lcom/lge/olaworks/library/BaseEngine;
    .locals 1
    .parameter "engine"
    .parameter "start"

    .prologue
    .line 99
    const/16 v0, 0xa

    invoke-direct {p0, p1, p2, v0}, Lcom/lge/olaworks/library/EngineProcessor;->addEngine(Lcom/lge/olaworks/library/BaseEngine;ZI)Lcom/lge/olaworks/library/BaseEngine;

    move-result-object v0

    return-object v0
.end method

.method private addEngine(Lcom/lge/olaworks/library/BaseEngine;ZI)Lcom/lge/olaworks/library/BaseEngine;
    .locals 4
    .parameter "engine"
    .parameter "start"
    .parameter "priority"

    .prologue
    .line 103
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addEngine(), engine = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", priority = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", start = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    if-eqz p1, :cond_0

    .line 106
    move-object v0, p1

    .line 108
    .local v0, baseEngine:Lcom/lge/olaworks/library/BaseEngine;
    invoke-virtual {v0, p3}, Lcom/lge/olaworks/library/BaseEngine;->setPriority(I)V

    .line 109
    invoke-virtual {v0}, Lcom/lge/olaworks/library/BaseEngine;->create()I

    .line 112
    iget-object v1, p0, Lcom/lge/olaworks/library/EngineProcessor;->mEngineList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    .end local v0           #baseEngine:Lcom/lge/olaworks/library/BaseEngine;
    :cond_0
    return-object p1
.end method

.method public static jpegFlipH([B)[B
    .locals 6
    .parameter "jpegData"

    .prologue
    .line 274
    invoke-static {p0}, Lcom/lge/olaworks/library/ImageUtil;->makeBitmap([B)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 275
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 285
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 277
    .restart local p0
    :cond_1
    invoke-static {v0}, Lcom/lge/olaworks/jni/OlaBitmapGraphicsJNI;->mirrorYBitmap(Landroid/graphics/Bitmap;)I

    move-result v2

    .line 278
    .local v2, ret:I
    if-ltz v2, :cond_0

    .line 280
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v1, ostream:Ljava/io/ByteArrayOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x5f

    invoke-virtual {v0, v4, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 281
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-static {p0, v4, v0}, Lcom/lge/olaworks/library/Exif;->processLoadExif([B[BLandroid/graphics/Bitmap;)[B

    move-result-object v3

    .line 283
    .local v3, retData:[B
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 284
    const/4 v0, 0x0

    move-object p0, v3

    .line 285
    goto :goto_0
.end method

.method private declared-synchronized releaseEngine(Lcom/lge/olaworks/library/BaseEngine;)Lcom/lge/olaworks/library/BaseEngine;
    .locals 2
    .parameter "engine"

    .prologue
    .line 118
    monitor-enter p0

    :try_start_0
    const-string v0, "CameraApp"

    const-string v1, "releaseAllEngine"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    if-eqz p1, :cond_0

    .line 120
    invoke-virtual {p1}, Lcom/lge/olaworks/library/BaseEngine;->destroy()I

    .line 121
    iget-object v0, p0, Lcom/lge/olaworks/library/EngineProcessor;->mEngineList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    const/4 p1, 0x0

    .line 124
    :cond_0
    monitor-exit p0

    return-object p1

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public checkEngineTag(Ljava/lang/String;)Z
    .locals 4
    .parameter "tag"

    .prologue
    const/4 v2, 0x0

    .line 160
    if-nez p1, :cond_1

    .line 166
    :cond_0
    :goto_0
    return v2

    .line 161
    :cond_1
    iget-object v3, p0, Lcom/lge/olaworks/library/EngineProcessor;->mEngineList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/olaworks/library/BaseEngine;

    .line 162
    .local v0, engine:Lcom/lge/olaworks/library/BaseEngine;
    invoke-virtual {v0}, Lcom/lge/olaworks/library/BaseEngine;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 163
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/lge/olaworks/library/EngineProcessor;->releaseAllEngine()V

    .line 67
    return-void
.end method

.method public drawOverlay(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 224
    iget-boolean v2, p0, Lcom/lge/olaworks/library/EngineProcessor;->mStart:Z

    if-nez v2, :cond_1

    .line 229
    :cond_0
    return-void

    .line 226
    :cond_1
    iget-object v2, p0, Lcom/lge/olaworks/library/EngineProcessor;->mEngineList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/olaworks/library/BaseEngine;

    .line 227
    .local v0, engine:Lcom/lge/olaworks/library/BaseEngine;
    invoke-virtual {v0, p1}, Lcom/lge/olaworks/library/BaseEngine;->drawOverlay(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getEngine(Ljava/lang/String;)Lcom/lge/olaworks/library/BaseEngine;
    .locals 4
    .parameter "tag"

    .prologue
    const/4 v2, 0x0

    .line 170
    if-nez p1, :cond_0

    move-object v0, v2

    .line 176
    :goto_0
    return-object v0

    .line 171
    :cond_0
    iget-object v3, p0, Lcom/lge/olaworks/library/EngineProcessor;->mEngineList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/olaworks/library/BaseEngine;

    .line 172
    .local v0, engine:Lcom/lge/olaworks/library/BaseEngine;
    invoke-virtual {v0}, Lcom/lge/olaworks/library/BaseEngine;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .end local v0           #engine:Lcom/lge/olaworks/library/BaseEngine;
    :cond_2
    move-object v0, v2

    .line 176
    goto :goto_0
.end method

.method public isEmptyEngine()Z
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/lge/olaworks/library/EngineProcessor;->mEngineList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public needPreviewRender()Z
    .locals 3

    .prologue
    .line 184
    iget-object v2, p0, Lcom/lge/olaworks/library/EngineProcessor;->mEngineList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/olaworks/library/BaseEngine;

    .line 185
    .local v0, engine:Lcom/lge/olaworks/library/BaseEngine;
    invoke-virtual {v0}, Lcom/lge/olaworks/library/BaseEngine;->needRenderMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 186
    const/4 v2, 0x1

    .line 189
    .end local v0           #engine:Lcom/lge/olaworks/library/BaseEngine;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public processCapture([BII)[B
    .locals 8
    .parameter "jpegData"
    .parameter "pictureFormat"
    .parameter "orientation"

    .prologue
    .line 240
    const/16 v5, 0x100

    if-ne p2, v5, :cond_0

    .line 241
    iget-object v5, p0, Lcom/lge/olaworks/library/EngineProcessor;->mEngineList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 270
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 243
    .restart local p1
    :cond_1
    invoke-static {p1}, Lcom/lge/olaworks/library/ImageUtil;->makeBitmap([B)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 244
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 246
    iget-object v5, p0, Lcom/lge/olaworks/library/EngineProcessor;->mEngineList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/olaworks/library/BaseEngine;

    .line 247
    .local v1, engine:Lcom/lge/olaworks/library/BaseEngine;
    invoke-virtual {v1, v0, p3}, Lcom/lge/olaworks/library/BaseEngine;->processImage(Landroid/graphics/Bitmap;I)I

    move-result v4

    .line 248
    .local v4, ret:I
    if-gez v4, :cond_2

    .line 249
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Process Image get Error. engine: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/lge/olaworks/library/BaseEngine;->getTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", val: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 252
    const/4 v0, 0x0

    .line 253
    goto :goto_0

    .line 257
    .end local v1           #engine:Lcom/lge/olaworks/library/BaseEngine;
    .end local v4           #ret:I
    :cond_3
    const-string v5, "CameraApp"

    invoke-virtual {p0, v5}, Lcom/lge/olaworks/library/EngineProcessor;->checkEngineTag(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 258
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 259
    const/4 v0, 0x0

    .line 260
    goto :goto_0

    .line 262
    :cond_4
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 263
    .local v3, ostream:Ljava/io/ByteArrayOutputStream;
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x5f

    invoke-virtual {v0, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 264
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 265
    const/4 v0, 0x0

    .line 266
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    goto :goto_0
.end method

.method public processPreview(Lcom/lge/olaworks/datastruct/Ola_RawContext;)Z
    .locals 6
    .parameter "rawContext"

    .prologue
    const/4 v3, 0x0

    .line 205
    iget-boolean v4, p0, Lcom/lge/olaworks/library/EngineProcessor;->mStart:Z

    if-nez v4, :cond_1

    .line 216
    :cond_0
    :goto_0
    return v3

    .line 206
    :cond_1
    if-eqz p1, :cond_0

    .line 208
    iget-object v3, p0, Lcom/lge/olaworks/library/EngineProcessor;->mEngineList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/olaworks/library/BaseEngine;

    .line 209
    .local v0, engine:Lcom/lge/olaworks/library/BaseEngine;
    invoke-virtual {v0, p1}, Lcom/lge/olaworks/library/BaseEngine;->processPreview(Lcom/lge/olaworks/datastruct/Ola_RawContext;)I

    move-result v2

    .line 210
    .local v2, ret:I
    if-gez v2, :cond_2

    .line 211
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Precess Preview Raw get Error. engine: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/lge/olaworks/library/BaseEngine;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", val: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 216
    .end local v0           #engine:Lcom/lge/olaworks/library/BaseEngine;
    .end local v2           #ret:I
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public releaseAllEngine()V
    .locals 3

    .prologue
    .line 131
    iget-object v2, p0, Lcom/lge/olaworks/library/EngineProcessor;->mEngineList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/olaworks/library/BaseEngine;

    .line 132
    .local v0, engine:Lcom/lge/olaworks/library/BaseEngine;
    invoke-direct {p0, v0}, Lcom/lge/olaworks/library/EngineProcessor;->releaseEngine(Lcom/lge/olaworks/library/BaseEngine;)Lcom/lge/olaworks/library/BaseEngine;

    goto :goto_0

    .line 134
    .end local v0           #engine:Lcom/lge/olaworks/library/BaseEngine;
    :cond_0
    iget-object v2, p0, Lcom/lge/olaworks/library/EngineProcessor;->mEngineList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 135
    return-void
.end method

.method public releaseEngine(Ljava/lang/String;)V
    .locals 3
    .parameter "tag"

    .prologue
    .line 138
    if-nez p1, :cond_1

    .line 144
    :cond_0
    return-void

    .line 139
    :cond_1
    iget-object v2, p0, Lcom/lge/olaworks/library/EngineProcessor;->mEngineList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/olaworks/library/BaseEngine;

    .line 140
    .local v0, engine:Lcom/lge/olaworks/library/BaseEngine;
    invoke-virtual {v0}, Lcom/lge/olaworks/library/BaseEngine;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 141
    invoke-direct {p0, v0}, Lcom/lge/olaworks/library/EngineProcessor;->releaseEngine(Lcom/lge/olaworks/library/BaseEngine;)Lcom/lge/olaworks/library/BaseEngine;

    goto :goto_0
.end method

.method public setEngine(Lcom/lge/olaworks/library/BaseEngine;)Lcom/lge/olaworks/library/BaseEngine;
    .locals 1
    .parameter "engine"

    .prologue
    .line 75
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/lge/olaworks/library/EngineProcessor;->setEngine(Lcom/lge/olaworks/library/BaseEngine;Z)Lcom/lge/olaworks/library/BaseEngine;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized setEngine(Lcom/lge/olaworks/library/BaseEngine;Z)Lcom/lge/olaworks/library/BaseEngine;
    .locals 2
    .parameter "engine"
    .parameter "start"

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    const-string v0, "CameraApp"

    const-string v1, "releaseAllEngine call in setEngine"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/lge/olaworks/library/EngineProcessor;->releaseAllEngine()V

    .line 87
    const-string v0, "CameraApp"

    const-string v1, "addEngine"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/lge/olaworks/library/EngineProcessor;->addEngine(Lcom/lge/olaworks/library/BaseEngine;Z)Lcom/lge/olaworks/library/BaseEngine;

    .line 89
    iput-boolean p2, p0, Lcom/lge/olaworks/library/EngineProcessor;->mStart:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit p0

    return-object p1

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setFlipHorizontal(Z)V
    .locals 3
    .parameter "flipH"

    .prologue
    .line 194
    iget-object v2, p0, Lcom/lge/olaworks/library/EngineProcessor;->mEngineList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/olaworks/library/BaseEngine;

    .line 195
    .local v0, engine:Lcom/lge/olaworks/library/BaseEngine;
    invoke-virtual {v0, p1}, Lcom/lge/olaworks/library/BaseEngine;->setFlipHorizontal(Z)V

    goto :goto_0

    .line 197
    .end local v0           #engine:Lcom/lge/olaworks/library/BaseEngine;
    :cond_0
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 43
    const-string v2, "CameraApp"

    const-string v3, "start()"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v2, p0, Lcom/lge/olaworks/library/EngineProcessor;->mEngineList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/olaworks/library/BaseEngine;

    .line 46
    .local v0, engine:Lcom/lge/olaworks/library/BaseEngine;
    invoke-virtual {v0}, Lcom/lge/olaworks/library/BaseEngine;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CameraApp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    invoke-static {}, Lcom/lge/olaworks/jni/OlaFaceDetectorJNI;->initialize()I

    goto :goto_0

    .line 51
    .end local v0           #engine:Lcom/lge/olaworks/library/BaseEngine;
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lge/olaworks/library/EngineProcessor;->mStart:Z

    .line 52
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 58
    const-string v0, "CameraApp"

    const-string v1, "stop()"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/olaworks/library/EngineProcessor;->mStart:Z

    .line 60
    return-void
.end method
