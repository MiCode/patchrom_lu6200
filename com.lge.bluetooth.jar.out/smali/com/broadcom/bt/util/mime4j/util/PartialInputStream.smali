.class public Lcom/broadcom/bt/util/mime4j/util/PartialInputStream;
.super Lcom/broadcom/bt/util/mime4j/util/PositionInputStream;
.source "PartialInputStream.java"


# instance fields
.field private final limit:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;JJ)V
    .locals 2
    .parameter "inputStream"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/broadcom/bt/util/mime4j/util/PositionInputStream;-><init>(Ljava/io/InputStream;)V

    .line 48
    invoke-virtual {p1, p2, p3}, Ljava/io/InputStream;->skip(J)J

    .line 49
    add-long v0, p2, p4

    iput-wide v0, p0, Lcom/broadcom/bt/util/mime4j/util/PartialInputStream;->limit:J

    .line 50
    return-void
.end method

.method private getBytesLeft()I
    .locals 6

    .prologue
    .line 78
    const-wide/32 v0, 0x7fffffff

    iget-wide v2, p0, Lcom/broadcom/bt/util/mime4j/util/PartialInputStream;->limit:J

    iget-wide v4, p0, Lcom/broadcom/bt/util/mime4j/util/PositionInputStream;->position:J

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
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
    .line 53
    invoke-super {p0}, Lcom/broadcom/bt/util/mime4j/util/PositionInputStream;->available()I

    move-result v0

    invoke-direct {p0}, Lcom/broadcom/bt/util/mime4j/util/PartialInputStream;->getBytesLeft()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/broadcom/bt/util/mime4j/util/PartialInputStream;->limit:J

    iget-wide v2, p0, Lcom/broadcom/bt/util/mime4j/util/PositionInputStream;->position:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 58
    invoke-super {p0}, Lcom/broadcom/bt/util/mime4j/util/PositionInputStream;->read()I

    move-result v0

    .line 60
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

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
    .line 64
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/broadcom/bt/util/mime4j/util/PartialInputStream;->read([BII)I

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
    .line 68
    invoke-direct {p0}, Lcom/broadcom/bt/util/mime4j/util/PartialInputStream;->getBytesLeft()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 69
    invoke-super {p0, p1, p2, p3}, Lcom/broadcom/bt/util/mime4j/util/PositionInputStream;->read([BII)I

    move-result v0

    return v0
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
    .line 73
    invoke-direct {p0}, Lcom/broadcom/bt/util/mime4j/util/PartialInputStream;->getBytesLeft()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    .line 74
    invoke-super {p0, p1, p2}, Lcom/broadcom/bt/util/mime4j/util/PositionInputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
