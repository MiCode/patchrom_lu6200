.class public Lcom/broadcom/bt/util/io/CopyUtils;
.super Ljava/lang/Object;
.source "CopyUtils.java"


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x1000


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 141
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 4
    .parameter "input"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    const/16 v3, 0x1000

    new-array v0, v3, [B

    .line 214
    .local v0, buffer:[B
    const/4 v1, 0x0

    .line 215
    .local v1, count:I
    const/4 v2, 0x0

    .line 216
    .local v2, n:I
    :goto_0
    const/4 v3, -0x1

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-eq v3, v2, :cond_0

    .line 217
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 218
    add-int/2addr v1, v2

    goto :goto_0

    .line 220
    :cond_0
    return v1
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/Writer;)I
    .locals 4
    .parameter "input"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    const/16 v3, 0x1000

    new-array v0, v3, [C

    .line 239
    .local v0, buffer:[C
    const/4 v1, 0x0

    .line 240
    .local v1, count:I
    const/4 v2, 0x0

    .line 241
    .local v2, n:I
    :goto_0
    const/4 v3, -0x1

    invoke-virtual {p0, v0}, Ljava/io/Reader;->read([C)I

    move-result v2

    if-eq v3, v2, :cond_0

    .line 242
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Ljava/io/Writer;->write([CII)V

    .line 243
    add-int/2addr v1, v2

    goto :goto_0

    .line 245
    :cond_0
    return v1
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/Writer;)V
    .locals 1
    .parameter "input"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 264
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 265
    .local v0, in:Ljava/io/InputStreamReader;
    invoke-static {v0, p1}, Lcom/broadcom/bt/util/io/CopyUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    .line 266
    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/lang/String;)V
    .locals 1
    .parameter "input"
    .parameter "output"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 283
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 284
    .local v0, in:Ljava/io/InputStreamReader;
    invoke-static {v0, p1}, Lcom/broadcom/bt/util/io/CopyUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    .line 285
    return-void
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/OutputStream;)V
    .locals 1
    .parameter "input"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 303
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 304
    .local v0, out:Ljava/io/OutputStreamWriter;
    invoke-static {p0, v0}, Lcom/broadcom/bt/util/io/CopyUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    .line 307
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    .line 308
    return-void
.end method

.method public static copy(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 2
    .parameter "input"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 326
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 327
    .local v0, in:Ljava/io/StringReader;
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 328
    .local v1, out:Ljava/io/OutputStreamWriter;
    invoke-static {v0, v1}, Lcom/broadcom/bt/util/io/CopyUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    .line 331
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V

    .line 332
    return-void
.end method

.method public static copy(Ljava/lang/String;Ljava/io/Writer;)V
    .locals 0
    .parameter "input"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 346
    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 347
    return-void
.end method

.method public static copy([BLjava/io/OutputStream;)V
    .locals 0
    .parameter "input"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 156
    return-void
.end method

.method public static copy([BLjava/io/Writer;)V
    .locals 1
    .parameter "input"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 173
    .local v0, in:Ljava/io/ByteArrayInputStream;
    invoke-static {v0, p1}, Lcom/broadcom/bt/util/io/CopyUtils;->copy(Ljava/io/InputStream;Ljava/io/Writer;)V

    .line 174
    return-void
.end method

.method public static copy([BLjava/io/Writer;Ljava/lang/String;)V
    .locals 1
    .parameter "input"
    .parameter "output"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 193
    .local v0, in:Ljava/io/ByteArrayInputStream;
    invoke-static {v0, p1, p2}, Lcom/broadcom/bt/util/io/CopyUtils;->copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/lang/String;)V

    .line 194
    return-void
.end method
