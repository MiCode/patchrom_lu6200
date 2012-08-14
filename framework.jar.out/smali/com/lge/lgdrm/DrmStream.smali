.class public final Lcom/lge/lgdrm/DrmStream;
.super Ljava/io/InputStream;
.source "DrmStream.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DrmStream"


# instance fields
.field private b:[B

.field protected filename:Ljava/lang/String;

.field private nativeHandle:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 30
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lge/lgdrm/DrmStream;->b:[B

    .line 38
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .parameter "filename"
    .parameter "nativeHandle"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 30
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lge/lgdrm/DrmStream;->b:[B

    .line 44
    if-nez p1, :cond_0

    .line 45
    const-string v0, "DrmStream"

    const-string v1, "DrmStream() : Invalid file name"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :goto_0
    return-void

    .line 49
    :cond_0
    if-nez p2, :cond_1

    .line 50
    const-string v0, "DrmStream"

    const-string v1, "DrmStream() : Invalid native handle"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 54
    :cond_1
    iput-object p1, p0, Lcom/lge/lgdrm/DrmStream;->filename:Ljava/lang/String;

    .line 55
    iput p2, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:I

    goto :goto_0
.end method

.method private native nativeAvailable(I)I
.end method

.method private native nativeClose(I)V
.end method

.method private native nativeRead(I[BII)I
.end method

.method private native nativeSkip(IJ)J
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    iget v0, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:I

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Ljava/io/IOException;

    const-string v1, "File was not opened properly"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    iget v0, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:I

    invoke-direct {p0, v0}, Lcom/lge/lgdrm/DrmStream;->nativeAvailable(I)I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    iget v0, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:I

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Ljava/io/IOException;

    const-string v1, "File was not opened properly"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    iget v0, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:I

    invoke-direct {p0, v0}, Lcom/lge/lgdrm/DrmStream;->nativeClose(I)V

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:I

    .line 76
    return-void
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/lge/lgdrm/DrmStream;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized mark(I)V
    .locals 0
    .parameter "readlimit"

    .prologue
    .line 80
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v1, -0x1

    .line 92
    iget v2, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:I

    if-nez v2, :cond_0

    .line 93
    new-instance v1, Ljava/io/IOException;

    const-string v2, "File was not opened properly"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    :cond_0
    iget-object v2, p0, Lcom/lge/lgdrm/DrmStream;->b:[B

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v4, v3}, Lcom/lge/lgdrm/DrmStream;->read([BII)I

    move-result v0

    .line 97
    .local v0, nRead:I
    if-ne v0, v1, :cond_1

    .line 101
    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/lge/lgdrm/DrmStream;->b:[B

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    iget v0, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:I

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Ljava/io/IOException;

    const-string v1, "File was not opened properly"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/lge/lgdrm/DrmStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 4
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    const/4 v1, 0x0

    .line 118
    .local v1, nRead:I
    const/4 v0, 0x0

    .line 120
    .local v0, i:I
    iget v2, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:I

    if-nez v2, :cond_0

    .line 121
    new-instance v2, Ljava/io/IOException;

    const-string v3, "File was not opened properly"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 124
    :cond_0
    if-nez p1, :cond_1

    .line 125
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "parameter b is NULL"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 127
    :cond_1
    or-int v2, p2, p3

    if-ltz v2, :cond_2

    array-length v2, p1

    sub-int/2addr v2, p2

    if-le p3, v2, :cond_3

    .line 128
    :cond_2
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 131
    :cond_3
    iget v2, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:I

    invoke-direct {p0, v2, p1, p2, p3}, Lcom/lge/lgdrm/DrmStream;->nativeRead(I[BII)I

    move-result v1

    .line 132
    if-nez v1, :cond_5

    .line 134
    const/4 v1, -0x1

    .line 141
    .end local v1           #nRead:I
    :cond_4
    return v1

    .line 135
    .restart local v1       #nRead:I
    :cond_5
    if-gez v1, :cond_4

    .line 136
    iget v2, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:I

    invoke-direct {p0, v2}, Lcom/lge/lgdrm/DrmStream;->nativeClose(I)V

    .line 137
    const/4 v2, 0x0

    iput v2, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:I

    .line 138
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
.end method

.method public declared-synchronized reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:I

    if-eqz v0, :cond_0

    .line 148
    iget v0, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:I

    invoke-direct {p0, v0}, Lcom/lge/lgdrm/DrmStream;->nativeClose(I)V

    .line 149
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:I

    .line 152
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 3
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, 0x0

    .line 158
    iget v2, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:I

    if-nez v2, :cond_0

    .line 159
    new-instance v0, Ljava/io/IOException;

    const-string v1, "File was not opened properly"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_0
    cmp-long v2, p1, v0

    if-gtz v2, :cond_1

    .line 170
    :goto_0
    return-wide v0

    :cond_1
    iget v0, p0, Lcom/lge/lgdrm/DrmStream;->nativeHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/lge/lgdrm/DrmStream;->nativeSkip(IJ)J

    move-result-wide v0

    goto :goto_0
.end method
