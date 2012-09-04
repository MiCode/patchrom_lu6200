.class public Lcom/broadcom/bt/util/io/input/CountingInputStream;
.super Lcom/broadcom/bt/util/io/input/ProxyInputStream;
.source "CountingInputStream.java"


# instance fields
.field private count:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/broadcom/bt/util/io/input/ProxyInputStream;-><init>(Ljava/io/InputStream;)V

    .line 61
    return-void
.end method


# virtual methods
.method public declared-synchronized getByteCount()J
    .locals 2

    .prologue
    .line 173
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/broadcom/bt/util/io/input/CountingInputStream;->count:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCount()I
    .locals 5

    .prologue
    .line 137
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/broadcom/bt/util/io/input/CountingInputStream;->getByteCount()J

    move-result-wide v0

    .line 138
    .local v0, result:J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 139
    new-instance v2, Ljava/lang/ArithmeticException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The byte count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is too large to be converted to an int"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    .end local v0           #result:J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 141
    .restart local v0       #result:J
    :cond_0
    long-to-int v2, v0

    monitor-exit p0

    return v2
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-super {p0}, Lcom/broadcom/bt/util/io/input/ProxyInputStream;->read()I

    move-result v0

    .line 106
    .local v0, found:I
    iget-wide v3, p0, Lcom/broadcom/bt/util/io/input/CountingInputStream;->count:J

    if-ltz v0, :cond_0

    const-wide/16 v1, 0x1

    :goto_0
    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/broadcom/bt/util/io/input/CountingInputStream;->count:J

    .line 107
    return v0

    .line 106
    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public read([B)I
    .locals 5
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/broadcom/bt/util/io/input/ProxyInputStream;->read([B)I

    move-result v0

    .line 75
    .local v0, found:I
    iget-wide v3, p0, Lcom/broadcom/bt/util/io/input/CountingInputStream;->count:J

    if-ltz v0, :cond_0

    int-to-long v1, v0

    :goto_0
    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/broadcom/bt/util/io/input/CountingInputStream;->count:J

    .line 76
    return v0

    .line 75
    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public read([BII)I
    .locals 5
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-super {p0, p1, p2, p3}, Lcom/broadcom/bt/util/io/input/ProxyInputStream;->read([BII)I

    move-result v0

    .line 92
    .local v0, found:I
    iget-wide v3, p0, Lcom/broadcom/bt/util/io/input/CountingInputStream;->count:J

    if-ltz v0, :cond_0

    int-to-long v1, v0

    :goto_0
    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/broadcom/bt/util/io/input/CountingInputStream;->count:J

    .line 93
    return v0

    .line 92
    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized resetByteCount()J
    .locals 4

    .prologue
    .line 187
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/broadcom/bt/util/io/input/CountingInputStream;->count:J

    .line 188
    .local v0, tmp:J
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/broadcom/bt/util/io/input/CountingInputStream;->count:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    monitor-exit p0

    return-wide v0

    .line 187
    .end local v0           #tmp:J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized resetCount()I
    .locals 5

    .prologue
    .line 155
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/broadcom/bt/util/io/input/CountingInputStream;->resetByteCount()J

    move-result-wide v0

    .line 156
    .local v0, result:J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 157
    new-instance v2, Ljava/lang/ArithmeticException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The byte count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is too large to be converted to an int"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    .end local v0           #result:J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 159
    .restart local v0       #result:J
    :cond_0
    long-to-int v2, v0

    monitor-exit p0

    return v2
.end method

.method public skip(J)J
    .locals 4
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-super {p0, p1, p2}, Lcom/broadcom/bt/util/io/input/ProxyInputStream;->skip(J)J

    move-result-wide v0

    .line 121
    .local v0, skip:J
    iget-wide v2, p0, Lcom/broadcom/bt/util/io/input/CountingInputStream;->count:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/broadcom/bt/util/io/input/CountingInputStream;->count:J

    .line 122
    return-wide v0
.end method
