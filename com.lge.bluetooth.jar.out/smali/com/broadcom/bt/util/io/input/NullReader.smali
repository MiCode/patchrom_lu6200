.class public Lcom/broadcom/bt/util/io/input/NullReader;
.super Ljava/io/Reader;
.source "NullReader.java"


# instance fields
.field private eof:Z

.field private mark:J

.field private markSupported:Z

.field private position:J

.field private readlimit:J

.field private size:J

.field private throwEofException:Z


# direct methods
.method public constructor <init>(J)V
    .locals 2
    .parameter "size"

    .prologue
    .line 97
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/broadcom/bt/util/io/input/NullReader;-><init>(JZZ)V

    .line 98
    return-void
.end method

.method public constructor <init>(JZZ)V
    .locals 2
    .parameter "size"
    .parameter "markSupported"
    .parameter "throwEofException"

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 84
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/broadcom/bt/util/io/input/NullReader;->mark:J

    .line 112
    iput-wide p1, p0, Lcom/broadcom/bt/util/io/input/NullReader;->size:J

    .line 113
    iput-boolean p3, p0, Lcom/broadcom/bt/util/io/input/NullReader;->markSupported:Z

    .line 114
    iput-boolean p4, p0, Lcom/broadcom/bt/util/io/input/NullReader;->throwEofException:Z

    .line 115
    return-void
.end method

.method private doEndOfFile()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 323
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/util/io/input/NullReader;->eof:Z

    .line 324
    iget-boolean v0, p0, Lcom/broadcom/bt/util/io/input/NullReader;->throwEofException:Z

    if-eqz v0, :cond_0

    .line 325
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 327
    :cond_0
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/util/io/input/NullReader;->eof:Z

    .line 143
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/broadcom/bt/util/io/input/NullReader;->position:J

    .line 144
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/broadcom/bt/util/io/input/NullReader;->mark:J

    .line 145
    return-void
.end method

.method public getPosition()J
    .locals 2

    .prologue
    .line 123
    iget-wide v0, p0, Lcom/broadcom/bt/util/io/input/NullReader;->position:J

    return-wide v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 132
    iget-wide v0, p0, Lcom/broadcom/bt/util/io/input/NullReader;->size:J

    return-wide v0
.end method

.method public declared-synchronized mark(I)V
    .locals 2
    .parameter "readlimit"

    .prologue
    .line 155
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/broadcom/bt/util/io/input/NullReader;->markSupported:Z

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Mark not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 158
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lcom/broadcom/bt/util/io/input/NullReader;->position:J

    iput-wide v0, p0, Lcom/broadcom/bt/util/io/input/NullReader;->mark:J

    .line 159
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/broadcom/bt/util/io/input/NullReader;->readlimit:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    monitor-exit p0

    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/broadcom/bt/util/io/input/NullReader;->markSupported:Z

    return v0
.end method

.method protected processChar()I
    .locals 1

    .prologue
    .line 297
    const/4 v0, 0x0

    return v0
.end method

.method protected processChars([CII)V
    .locals 0
    .parameter "chars"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 312
    return-void
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/broadcom/bt/util/io/input/NullReader;->eof:Z

    if-eqz v0, :cond_0

    .line 183
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Read after end of file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_0
    iget-wide v0, p0, Lcom/broadcom/bt/util/io/input/NullReader;->position:J

    iget-wide v2, p0, Lcom/broadcom/bt/util/io/input/NullReader;->size:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 186
    invoke-direct {p0}, Lcom/broadcom/bt/util/io/input/NullReader;->doEndOfFile()I

    move-result v0

    .line 189
    :goto_0
    return v0

    .line 188
    :cond_1
    iget-wide v0, p0, Lcom/broadcom/bt/util/io/input/NullReader;->position:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/broadcom/bt/util/io/input/NullReader;->position:J

    .line 189
    invoke-virtual {p0}, Lcom/broadcom/bt/util/io/input/NullReader;->processChar()I

    move-result v0

    goto :goto_0
.end method

.method public read([C)I
    .locals 2
    .parameter "chars"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/broadcom/bt/util/io/input/NullReader;->read([CII)I

    move-result v0

    return v0
.end method

.method public read([CII)I
    .locals 5
    .parameter "chars"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    iget-boolean v1, p0, Lcom/broadcom/bt/util/io/input/NullReader;->eof:Z

    if-eqz v1, :cond_0

    .line 222
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Read after end of file"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 224
    :cond_0
    iget-wide v1, p0, Lcom/broadcom/bt/util/io/input/NullReader;->position:J

    iget-wide v3, p0, Lcom/broadcom/bt/util/io/input/NullReader;->size:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 225
    invoke-direct {p0}, Lcom/broadcom/bt/util/io/input/NullReader;->doEndOfFile()I

    move-result v0

    .line 234
    :goto_0
    return v0

    .line 227
    :cond_1
    iget-wide v1, p0, Lcom/broadcom/bt/util/io/input/NullReader;->position:J

    int-to-long v3, p3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/broadcom/bt/util/io/input/NullReader;->position:J

    .line 228
    move v0, p3

    .line 229
    .local v0, returnLength:I
    iget-wide v1, p0, Lcom/broadcom/bt/util/io/input/NullReader;->position:J

    iget-wide v3, p0, Lcom/broadcom/bt/util/io/input/NullReader;->size:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 230
    iget-wide v1, p0, Lcom/broadcom/bt/util/io/input/NullReader;->position:J

    iget-wide v3, p0, Lcom/broadcom/bt/util/io/input/NullReader;->size:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    sub-int v0, p3, v1

    .line 231
    iget-wide v1, p0, Lcom/broadcom/bt/util/io/input/NullReader;->size:J

    iput-wide v1, p0, Lcom/broadcom/bt/util/io/input/NullReader;->position:J

    .line 233
    :cond_2
    invoke-virtual {p0, p1, p2, v0}, Lcom/broadcom/bt/util/io/input/NullReader;->processChars([CII)V

    goto :goto_0
.end method

.method public declared-synchronized reset()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 246
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/broadcom/bt/util/io/input/NullReader;->markSupported:Z

    if-nez v0, :cond_0

    .line 247
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Mark not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 249
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lcom/broadcom/bt/util/io/input/NullReader;->mark:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 250
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No position has been marked"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_1
    iget-wide v0, p0, Lcom/broadcom/bt/util/io/input/NullReader;->position:J

    iget-wide v2, p0, Lcom/broadcom/bt/util/io/input/NullReader;->mark:J

    iget-wide v4, p0, Lcom/broadcom/bt/util/io/input/NullReader;->readlimit:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 253
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Marked position ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/broadcom/bt/util/io/input/NullReader;->mark:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is no longer valid - passed the read limit ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/broadcom/bt/util/io/input/NullReader;->readlimit:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_2
    iget-wide v0, p0, Lcom/broadcom/bt/util/io/input/NullReader;->mark:J

    iput-wide v0, p0, Lcom/broadcom/bt/util/io/input/NullReader;->position:J

    .line 258
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/util/io/input/NullReader;->eof:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 259
    monitor-exit p0

    return-void
.end method

.method public skip(J)J
    .locals 6
    .parameter "numberOfChars"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 273
    iget-boolean v2, p0, Lcom/broadcom/bt/util/io/input/NullReader;->eof:Z

    if-eqz v2, :cond_0

    .line 274
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Skip after end of file"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 276
    :cond_0
    iget-wide v2, p0, Lcom/broadcom/bt/util/io/input/NullReader;->position:J

    iget-wide v4, p0, Lcom/broadcom/bt/util/io/input/NullReader;->size:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 277
    invoke-direct {p0}, Lcom/broadcom/bt/util/io/input/NullReader;->doEndOfFile()I

    move-result v2

    int-to-long v0, v2

    .line 285
    :cond_1
    :goto_0
    return-wide v0

    .line 279
    :cond_2
    iget-wide v2, p0, Lcom/broadcom/bt/util/io/input/NullReader;->position:J

    add-long/2addr v2, p1

    iput-wide v2, p0, Lcom/broadcom/bt/util/io/input/NullReader;->position:J

    .line 280
    move-wide v0, p1

    .line 281
    .local v0, returnLength:J
    iget-wide v2, p0, Lcom/broadcom/bt/util/io/input/NullReader;->position:J

    iget-wide v4, p0, Lcom/broadcom/bt/util/io/input/NullReader;->size:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 282
    iget-wide v2, p0, Lcom/broadcom/bt/util/io/input/NullReader;->position:J

    iget-wide v4, p0, Lcom/broadcom/bt/util/io/input/NullReader;->size:J

    sub-long/2addr v2, v4

    sub-long v0, p1, v2

    .line 283
    iget-wide v2, p0, Lcom/broadcom/bt/util/io/input/NullReader;->size:J

    iput-wide v2, p0, Lcom/broadcom/bt/util/io/input/NullReader;->position:J

    goto :goto_0
.end method
