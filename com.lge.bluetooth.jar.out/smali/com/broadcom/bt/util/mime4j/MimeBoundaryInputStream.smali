.class public Lcom/broadcom/bt/util/mime4j/MimeBoundaryInputStream;
.super Ljava/io/InputStream;
.source "MimeBoundaryInputStream.java"


# instance fields
.field private boundary:[B

.field private eof:Z

.field private first:Z

.field private moreParts:Z

.field private parenteof:Z

.field private s:Ljava/io/PushbackInputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 5
    .parameter "s"
    .parameter "boundary"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 69
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 56
    iput-object v4, p0, Lcom/broadcom/bt/util/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;

    .line 57
    iput-object v4, p0, Lcom/broadcom/bt/util/mime4j/MimeBoundaryInputStream;->boundary:[B

    .line 58
    iput-boolean v3, p0, Lcom/broadcom/bt/util/mime4j/MimeBoundaryInputStream;->first:Z

    .line 59
    iput-boolean v2, p0, Lcom/broadcom/bt/util/mime4j/MimeBoundaryInputStream;->eof:Z

    .line 60
    iput-boolean v2, p0, Lcom/broadcom/bt/util/mime4j/MimeBoundaryInputStream;->parenteof:Z

    .line 61
    iput-boolean v3, p0, Lcom/broadcom/bt/util/mime4j/MimeBoundaryInputStream;->moreParts:Z

    .line 71
    new-instance v2, Ljava/io/PushbackInputStream;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    invoke-direct {v2, p1, v3}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v2, p0, Lcom/broadcom/bt/util/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 74
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/broadcom/bt/util/mime4j/MimeBoundaryInputStream;->boundary:[B

    .line 75
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/MimeBoundaryInputStream;->boundary:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 76
    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/MimeBoundaryInputStream;->boundary:[B

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/broadcom/bt/util/mime4j/MimeBoundaryInputStream;->read()I

    move-result v0

    .line 84
    .local v0, b:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 85
    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;

    invoke-virtual {v2, v0}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 87
    :cond_1
    return-void
.end method

.method private matchBoundary()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x2d

    const/4 v6, 0x0

    const/4 v8, -0x1

    const/4 v7, 0x1

    .line 166
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v5, p0, Lcom/broadcom/bt/util/mime4j/MimeBoundaryInputStream;->boundary:[B

    array-length v5, v5

    if-ge v2, v5, :cond_2

    .line 167
    iget-object v5, p0, Lcom/broadcom/bt/util/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;

    invoke-virtual {v5}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    .line 168
    .local v0, b:I
    iget-object v5, p0, Lcom/broadcom/bt/util/mime4j/MimeBoundaryInputStream;->boundary:[B

    aget-byte v5, v5, v2

    if-eq v0, v5, :cond_1

    .line 169
    if-eq v0, v8, :cond_0

    .line 170
    iget-object v5, p0, Lcom/broadcom/bt/util/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;

    invoke-virtual {v5, v0}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 172
    :cond_0
    add-int/lit8 v3, v2, -0x1

    .local v3, j:I
    :goto_1
    if-ltz v3, :cond_6

    .line 173
    iget-object v5, p0, Lcom/broadcom/bt/util/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;

    iget-object v7, p0, Lcom/broadcom/bt/util/mime4j/MimeBoundaryInputStream;->boundary:[B

    aget-byte v7, v7, v3

    invoke-virtual {v5, v7}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 172
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 166
    .end local v3           #j:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 182
    .end local v0           #b:I
    :cond_2
    iget-object v5, p0, Lcom/broadcom/bt/util/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;

    invoke-virtual {v5}, Ljava/io/PushbackInputStream;->read()I

    move-result v4

    .line 183
    .local v4, prev:I
    iget-object v5, p0, Lcom/broadcom/bt/util/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;

    invoke-virtual {v5}, Ljava/io/PushbackInputStream;->read()I

    move-result v1

    .line 184
    .local v1, curr:I
    if-ne v4, v9, :cond_3

    if-eq v1, v9, :cond_7

    :cond_3
    move v5, v7

    :goto_2
    iput-boolean v5, p0, Lcom/broadcom/bt/util/mime4j/MimeBoundaryInputStream;->moreParts:Z

    .line 186
    :cond_4
    const/16 v5, 0xa

    if-ne v1, v5, :cond_8

    const/16 v5, 0xd

    if-ne v4, v5, :cond_8

    .line 192
    :goto_3
    if-ne v1, v8, :cond_5

    .line 193
    iput-boolean v6, p0, Lcom/broadcom/bt/util/mime4j/MimeBoundaryInputStream;->moreParts:Z

    .line 194
    iput-boolean v7, p0, Lcom/broadcom/bt/util/mime4j/MimeBoundaryInputStream;->parenteof:Z

    .line 197
    :cond_5
    iput-boolean v7, p0, Lcom/broadcom/bt/util/mime4j/MimeBoundaryInputStream;->eof:Z

    move v6, v7

    .line 199
    .end local v1           #curr:I
    .end local v4           #prev:I
    :cond_6
    return v6

    .restart local v1       #curr:I
    .restart local v4       #prev:I
    :cond_7
    move v5, v6

    .line 184
    goto :goto_2

    .line 189
    :cond_8
    move v4, v1

    .line 190
    iget-object v5, p0, Lcom/broadcom/bt/util/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;

    invoke-virtual {v5}, Ljava/io/PushbackInputStream;->read()I

    move-result v1

    if-ne v1, v8, :cond_4

    goto :goto_3
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
    .line 95
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->close()V

    .line 96
    return-void
.end method

.method public consume()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    :cond_0
    invoke-virtual {p0}, Lcom/broadcom/bt/util/mime4j/MimeBoundaryInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 128
    return-void
.end method

.method public hasMoreParts()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/broadcom/bt/util/mime4j/MimeBoundaryInputStream;->moreParts:Z

    return v0
.end method

.method public parentEOF()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/broadcom/bt/util/mime4j/MimeBoundaryInputStream;->parenteof:Z

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
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 134
    iget-boolean v4, p0, Lcom/broadcom/bt/util/mime4j/MimeBoundaryInputStream;->eof:Z

    if-eqz v4, :cond_0

    move v0, v3

    .line 161
    :goto_0
    return v0

    .line 138
    :cond_0
    iget-boolean v4, p0, Lcom/broadcom/bt/util/mime4j/MimeBoundaryInputStream;->first:Z

    if-eqz v4, :cond_1

    .line 139
    iput-boolean v2, p0, Lcom/broadcom/bt/util/mime4j/MimeBoundaryInputStream;->first:Z

    .line 140
    invoke-direct {p0}, Lcom/broadcom/bt/util/mime4j/MimeBoundaryInputStream;->matchBoundary()Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v3

    .line 141
    goto :goto_0

    .line 145
    :cond_1
    iget-object v4, p0, Lcom/broadcom/bt/util/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;

    invoke-virtual {v4}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    .line 146
    .local v0, b1:I
    iget-object v4, p0, Lcom/broadcom/bt/util/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;

    invoke-virtual {v4}, Ljava/io/PushbackInputStream;->read()I

    move-result v1

    .line 148
    .local v1, b2:I
    const/16 v4, 0xd

    if-ne v0, v4, :cond_2

    const/16 v4, 0xa

    if-ne v1, v4, :cond_2

    .line 149
    invoke-direct {p0}, Lcom/broadcom/bt/util/mime4j/MimeBoundaryInputStream;->matchBoundary()Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v3

    .line 150
    goto :goto_0

    .line 154
    :cond_2
    if-eq v1, v3, :cond_3

    .line 155
    iget-object v4, p0, Lcom/broadcom/bt/util/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;

    invoke-virtual {v4, v1}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 158
    :cond_3
    if-ne v0, v3, :cond_4

    const/4 v2, 0x1

    :cond_4
    iput-boolean v2, p0, Lcom/broadcom/bt/util/mime4j/MimeBoundaryInputStream;->parenteof:Z

    .line 159
    iget-boolean v2, p0, Lcom/broadcom/bt/util/mime4j/MimeBoundaryInputStream;->parenteof:Z

    iput-boolean v2, p0, Lcom/broadcom/bt/util/mime4j/MimeBoundaryInputStream;->eof:Z

    goto :goto_0
.end method
