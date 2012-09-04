.class public abstract Lcom/broadcom/bt/util/io/output/ThresholdingOutputStream;
.super Ljava/io/OutputStream;
.source "ThresholdingOutputStream.java"


# instance fields
.field private threshold:I

.field private thresholdExceeded:Z

.field private written:J


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "threshold"

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 94
    iput p1, p0, Lcom/broadcom/bt/util/io/output/ThresholdingOutputStream;->threshold:I

    .line 95
    return-void
.end method


# virtual methods
.method protected checkThreshold(I)V
    .locals 4
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/broadcom/bt/util/io/output/ThresholdingOutputStream;->thresholdExceeded:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/broadcom/bt/util/io/output/ThresholdingOutputStream;->written:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iget v2, p0, Lcom/broadcom/bt/util/io/output/ThresholdingOutputStream;->threshold:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 237
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/util/io/output/ThresholdingOutputStream;->thresholdExceeded:Z

    .line 238
    invoke-virtual {p0}, Lcom/broadcom/bt/util/io/output/ThresholdingOutputStream;->thresholdReached()V

    .line 240
    :cond_0
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    :try_start_0
    invoke-virtual {p0}, Lcom/broadcom/bt/util/io/output/ThresholdingOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_0
    invoke-virtual {p0}, Lcom/broadcom/bt/util/io/output/ThresholdingOutputStream;->getStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 179
    return-void

    .line 174
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/broadcom/bt/util/io/output/ThresholdingOutputStream;->getStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 159
    return-void
.end method

.method public getByteCount()J
    .locals 2

    .prologue
    .line 203
    iget-wide v0, p0, Lcom/broadcom/bt/util/io/output/ThresholdingOutputStream;->written:J

    return-wide v0
.end method

.method protected abstract getStream()Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getThreshold()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/broadcom/bt/util/io/output/ThresholdingOutputStream;->threshold:I

    return v0
.end method

.method public isThresholdExceeded()Z
    .locals 4

    .prologue
    .line 216
    iget-wide v0, p0, Lcom/broadcom/bt/util/io/output/ThresholdingOutputStream;->written:J

    iget v2, p0, Lcom/broadcom/bt/util/io/output/ThresholdingOutputStream;->threshold:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected resetByteCount()V
    .locals 2

    .prologue
    .line 248
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/util/io/output/ThresholdingOutputStream;->thresholdExceeded:Z

    .line 249
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/broadcom/bt/util/io/output/ThresholdingOutputStream;->written:J

    .line 250
    return-void
.end method

.method protected abstract thresholdReached()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public write(I)V
    .locals 4
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/util/io/output/ThresholdingOutputStream;->checkThreshold(I)V

    .line 111
    invoke-virtual {p0}, Lcom/broadcom/bt/util/io/output/ThresholdingOutputStream;->getStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 112
    iget-wide v0, p0, Lcom/broadcom/bt/util/io/output/ThresholdingOutputStream;->written:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/broadcom/bt/util/io/output/ThresholdingOutputStream;->written:J

    .line 113
    return-void
.end method

.method public write([B)V
    .locals 4
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/util/io/output/ThresholdingOutputStream;->checkThreshold(I)V

    .line 127
    invoke-virtual {p0}, Lcom/broadcom/bt/util/io/output/ThresholdingOutputStream;->getStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 128
    iget-wide v0, p0, Lcom/broadcom/bt/util/io/output/ThresholdingOutputStream;->written:J

    array-length v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/broadcom/bt/util/io/output/ThresholdingOutputStream;->written:J

    .line 129
    return-void
.end method

.method public write([BII)V
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
    .line 144
    invoke-virtual {p0, p3}, Lcom/broadcom/bt/util/io/output/ThresholdingOutputStream;->checkThreshold(I)V

    .line 145
    invoke-virtual {p0}, Lcom/broadcom/bt/util/io/output/ThresholdingOutputStream;->getStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 146
    iget-wide v0, p0, Lcom/broadcom/bt/util/io/output/ThresholdingOutputStream;->written:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/broadcom/bt/util/io/output/ThresholdingOutputStream;->written:J

    .line 147
    return-void
.end method
