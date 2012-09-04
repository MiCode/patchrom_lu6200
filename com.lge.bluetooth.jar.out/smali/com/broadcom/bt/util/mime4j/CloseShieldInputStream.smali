.class public Lcom/broadcom/bt/util/mime4j/CloseShieldInputStream;
.super Ljava/io/InputStream;
.source "CloseShieldInputStream.java"


# instance fields
.field private is:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .parameter "is"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/broadcom/bt/util/mime4j/CloseShieldInputStream;->is:Ljava/io/InputStream;

    .line 58
    return-void
.end method

.method private checkIfClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/CloseShieldInputStream;->is:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_0
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/broadcom/bt/util/mime4j/CloseShieldInputStream;->checkIfClosed()V

    .line 77
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/CloseShieldInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/CloseShieldInputStream;->is:Ljava/io/InputStream;

    .line 86
    return-void
.end method

.method public getUnderlyingStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/CloseShieldInputStream;->is:Ljava/io/InputStream;

    return-object v0
.end method

.method public declared-synchronized mark(I)V
    .locals 1
    .parameter "readlimit"

    .prologue
    .line 109
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/CloseShieldInputStream;->is:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/CloseShieldInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    :cond_0
    monitor-exit p0

    return-void

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/CloseShieldInputStream;->is:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 101
    const/4 v0, 0x0

    .line 102
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/CloseShieldInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    goto :goto_0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/broadcom/bt/util/mime4j/CloseShieldInputStream;->checkIfClosed()V

    .line 69
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/CloseShieldInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 1
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/broadcom/bt/util/mime4j/CloseShieldInputStream;->checkIfClosed()V

    .line 126
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/CloseShieldInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/broadcom/bt/util/mime4j/CloseShieldInputStream;->checkIfClosed()V

    .line 134
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/CloseShieldInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public declared-synchronized reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/broadcom/bt/util/mime4j/CloseShieldInputStream;->checkIfClosed()V

    .line 93
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/CloseShieldInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit p0

    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 2
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/broadcom/bt/util/mime4j/CloseShieldInputStream;->checkIfClosed()V

    .line 118
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/CloseShieldInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
