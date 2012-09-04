.class public Lcom/broadcom/bt/util/io/output/TeeOutputStream;
.super Lcom/broadcom/bt/util/io/output/ProxyOutputStream;
.source "TeeOutputStream.java"


# instance fields
.field protected branch:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V
    .locals 0
    .parameter "out"
    .parameter "branch"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/broadcom/bt/util/io/output/ProxyOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 58
    iput-object p2, p0, Lcom/broadcom/bt/util/io/output/TeeOutputStream;->branch:Ljava/io/OutputStream;

    .line 59
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-super {p0}, Lcom/broadcom/bt/util/io/output/ProxyOutputStream;->close()V

    .line 108
    iget-object v0, p0, Lcom/broadcom/bt/util/io/output/TeeOutputStream;->branch:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 109
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-super {p0}, Lcom/broadcom/bt/util/io/output/ProxyOutputStream;->flush()V

    .line 99
    iget-object v0, p0, Lcom/broadcom/bt/util/io/output/TeeOutputStream;->branch:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 100
    return-void
.end method

.method public declared-synchronized write(I)V
    .locals 1
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/broadcom/bt/util/io/output/ProxyOutputStream;->write(I)V

    .line 90
    iget-object v0, p0, Lcom/broadcom/bt/util/io/output/TeeOutputStream;->branch:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit p0

    return-void

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write([B)V
    .locals 1
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/broadcom/bt/util/io/output/ProxyOutputStream;->write([B)V

    .line 68
    iget-object v0, p0, Lcom/broadcom/bt/util/io/output/TeeOutputStream;->branch:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit p0

    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write([BII)V
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
    .line 79
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/broadcom/bt/util/io/output/ProxyOutputStream;->write([BII)V

    .line 80
    iget-object v0, p0, Lcom/broadcom/bt/util/io/output/TeeOutputStream;->branch:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    monitor-exit p0

    return-void

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
