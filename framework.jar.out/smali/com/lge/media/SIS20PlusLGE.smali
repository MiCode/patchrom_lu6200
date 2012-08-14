.class public Lcom/lge/media/SIS20PlusLGE;
.super Ljava/lang/Object;
.source "SIS20PlusLGE.java"

# interfaces
.implements Lcom/lge/media/SISDrawableFactory;


# static fields
.field public static final SIS_MAX_FRAMES:I = 0x80

.field public static final SIS_STATUS_DESTROYED:I = 0x4

.field public static final SIS_STATUS_INITIALIZED:I = 0x1

.field public static final SIS_STATUS_PAUSED:I = 0x3

.field public static final SIS_STATUS_PLAYING:I = 0x2

.field public static final SIS_STATUS_UNDEFINED:I


# instance fields
.field private ImageLevel:I

.field private Looped_or_not:I

.field private ad:Landroid/graphics/drawable/AnimationDrawable;

.field private best:I

.field private decodedData:[I

.field private delay:[I

.field private globalTransparencyColor:[B

.field private globalTransparencyCount:I

.field private lengthOfencodedData:I

.field private nCurrentFrame:I

.field private numberOfFrames:I

.field private playingStatus:I

.field private sisHandle:I

.field private variableDelayorNot:I

.field private xSize:I

.field private ySize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-string/jumbo v0, "sis20plus_LGEdrv"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final native SIS_Create([B)I
.end method

.method private final prepareAnimation()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 121
    iget v0, p0, Lcom/lge/media/SIS20PlusLGE;->variableDelayorNot:I

    if-nez v0, :cond_2

    .line 122
    iget-object v0, p0, Lcom/lge/media/SIS20PlusLGE;->decodedData:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lge/media/SIS20PlusLGE;->delay:[I

    if-eqz v0, :cond_1

    .line 123
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    iget v0, p0, Lcom/lge/media/SIS20PlusLGE;->numberOfFrames:I

    if-ge v6, v0, :cond_0

    .line 124
    iget-object v9, p0, Lcom/lge/media/SIS20PlusLGE;->ad:Landroid/graphics/drawable/AnimationDrawable;

    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lcom/lge/media/SIS20PlusLGE;->decodedData:[I

    iget v1, p0, Lcom/lge/media/SIS20PlusLGE;->xSize:I

    mul-int/2addr v1, v6

    iget v2, p0, Lcom/lge/media/SIS20PlusLGE;->ySize:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/lge/media/SIS20PlusLGE;->xSize:I

    iget v3, p0, Lcom/lge/media/SIS20PlusLGE;->xSize:I

    iget v4, p0, Lcom/lge/media/SIS20PlusLGE;->ySize:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v0 .. v5}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v10, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/lge/media/SIS20PlusLGE;->delay:[I

    aget v0, v0, v8

    mul-int/lit8 v0, v0, 0x64

    invoke-virtual {v9, v10, v0}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 123
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 130
    :cond_0
    iput-object v11, p0, Lcom/lge/media/SIS20PlusLGE;->decodedData:[I

    .line 144
    .end local v6           #i:I
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/lge/media/SIS20PlusLGE;->ad:Landroid/graphics/drawable/AnimationDrawable;

    iget v0, p0, Lcom/lge/media/SIS20PlusLGE;->Looped_or_not:I

    if-ne v0, v7, :cond_4

    move v0, v7

    :goto_2
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 145
    return-void

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/lge/media/SIS20PlusLGE;->decodedData:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lge/media/SIS20PlusLGE;->delay:[I

    if-eqz v0, :cond_1

    .line 134
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_3
    iget v0, p0, Lcom/lge/media/SIS20PlusLGE;->numberOfFrames:I

    if-ge v6, v0, :cond_3

    .line 135
    iget-object v9, p0, Lcom/lge/media/SIS20PlusLGE;->ad:Landroid/graphics/drawable/AnimationDrawable;

    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lcom/lge/media/SIS20PlusLGE;->decodedData:[I

    iget v1, p0, Lcom/lge/media/SIS20PlusLGE;->xSize:I

    mul-int/2addr v1, v6

    iget v2, p0, Lcom/lge/media/SIS20PlusLGE;->ySize:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/lge/media/SIS20PlusLGE;->xSize:I

    iget v3, p0, Lcom/lge/media/SIS20PlusLGE;->xSize:I

    iget v4, p0, Lcom/lge/media/SIS20PlusLGE;->ySize:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v0 .. v5}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v10, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/lge/media/SIS20PlusLGE;->delay:[I

    aget v0, v0, v6

    mul-int/lit8 v0, v0, 0x64

    invoke-virtual {v9, v10, v0}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 134
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 141
    :cond_3
    iput-object v11, p0, Lcom/lge/media/SIS20PlusLGE;->decodedData:[I

    goto :goto_1

    .end local v6           #i:I
    :cond_4
    move v0, v8

    .line 144
    goto :goto_2
.end method

.method private final reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lcom/lge/media/SIS20PlusLGE;->sisHandle:I

    .line 56
    iput v0, p0, Lcom/lge/media/SIS20PlusLGE;->lengthOfencodedData:I

    .line 57
    iput v0, p0, Lcom/lge/media/SIS20PlusLGE;->numberOfFrames:I

    .line 58
    iput v0, p0, Lcom/lge/media/SIS20PlusLGE;->xSize:I

    .line 59
    iput v0, p0, Lcom/lge/media/SIS20PlusLGE;->ySize:I

    .line 60
    iput v1, p0, Lcom/lge/media/SIS20PlusLGE;->variableDelayorNot:I

    .line 61
    iput-object v2, p0, Lcom/lge/media/SIS20PlusLGE;->delay:[I

    .line 62
    iput v1, p0, Lcom/lge/media/SIS20PlusLGE;->best:I

    .line 63
    iput v0, p0, Lcom/lge/media/SIS20PlusLGE;->ImageLevel:I

    .line 64
    iput v1, p0, Lcom/lge/media/SIS20PlusLGE;->Looped_or_not:I

    .line 65
    iput v0, p0, Lcom/lge/media/SIS20PlusLGE;->globalTransparencyCount:I

    .line 66
    iput-object v2, p0, Lcom/lge/media/SIS20PlusLGE;->globalTransparencyColor:[B

    .line 68
    iput-object v2, p0, Lcom/lge/media/SIS20PlusLGE;->decodedData:[I

    .line 70
    iput v0, p0, Lcom/lge/media/SIS20PlusLGE;->nCurrentFrame:I

    .line 71
    iput v0, p0, Lcom/lge/media/SIS20PlusLGE;->playingStatus:I

    .line 72
    return-void
.end method


# virtual methods
.method public createSISDrawble(Ljava/lang/String;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 7
    .parameter "path"

    .prologue
    .line 98
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    .local v2, file:Ljava/io/File;
    const/4 v3, 0x0

    .line 100
    .local v3, fis:Ljava/io/FileInputStream;
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-int v5, v5

    new-array v0, v5, [B

    .line 102
    .local v0, buf:[B
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 103
    .end local v3           #fis:Ljava/io/FileInputStream;
    .local v4, fis:Ljava/io/FileInputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 107
    if-eqz v4, :cond_3

    .line 109
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 110
    const/4 v3, 0x0

    .line 117
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/lge/media/SIS20PlusLGE;->createSISDrawble([B)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v5

    return-object v5

    .line 111
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    .line 112
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 113
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_0

    .line 104
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 105
    .local v1, e:Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 107
    if-eqz v3, :cond_1

    .line 109
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 110
    const/4 v3, 0x0

    goto :goto_0

    .line 111
    :catch_2
    move-exception v1

    .line 112
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 107
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v3, :cond_2

    .line 109
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 110
    const/4 v3, 0x0

    .line 113
    :cond_2
    :goto_3
    throw v5

    .line 111
    :catch_3
    move-exception v1

    .line 112
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 107
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .line 104
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_1

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :cond_3
    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_0
.end method

.method public createSISDrawble([B)Landroid/graphics/drawable/AnimationDrawable;
    .locals 5
    .parameter "data"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 77
    const/4 v0, 0x0

    .line 79
    .local v0, result:I
    invoke-direct {p0}, Lcom/lge/media/SIS20PlusLGE;->reset()V

    .line 80
    invoke-direct {p0, p1}, Lcom/lge/media/SIS20PlusLGE;->SIS_Create([B)I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 81
    iput v4, p0, Lcom/lge/media/SIS20PlusLGE;->playingStatus:I

    .line 93
    :goto_0
    return-object v1

    .line 85
    :cond_0
    iput v2, p0, Lcom/lge/media/SIS20PlusLGE;->playingStatus:I

    .line 86
    new-instance v2, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    iput-object v2, p0, Lcom/lge/media/SIS20PlusLGE;->ad:Landroid/graphics/drawable/AnimationDrawable;

    .line 87
    invoke-direct {p0}, Lcom/lge/media/SIS20PlusLGE;->prepareAnimation()V

    .line 88
    iput-object v1, p0, Lcom/lge/media/SIS20PlusLGE;->delay:[I

    .line 89
    iput-object v1, p0, Lcom/lge/media/SIS20PlusLGE;->globalTransparencyColor:[B

    .line 90
    iput-object v1, p0, Lcom/lge/media/SIS20PlusLGE;->decodedData:[I

    .line 92
    iget-object v1, p0, Lcom/lge/media/SIS20PlusLGE;->ad:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/lge/media/SIS20PlusLGE;->getxSize()I

    move-result v2

    invoke-virtual {p0}, Lcom/lge/media/SIS20PlusLGE;->getySize()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/AnimationDrawable;->setBounds(IIII)V

    .line 93
    iget-object v1, p0, Lcom/lge/media/SIS20PlusLGE;->ad:Landroid/graphics/drawable/AnimationDrawable;

    goto :goto_0
.end method

.method public getLengthOfencodedData()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/lge/media/SIS20PlusLGE;->lengthOfencodedData:I

    return v0
.end method

.method public getNumberOfFrames()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/lge/media/SIS20PlusLGE;->numberOfFrames:I

    return v0
.end method

.method public getxSize()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/lge/media/SIS20PlusLGE;->xSize:I

    return v0
.end method

.method public getySize()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/lge/media/SIS20PlusLGE;->ySize:I

    return v0
.end method
