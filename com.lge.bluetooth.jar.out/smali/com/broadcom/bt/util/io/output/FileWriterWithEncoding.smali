.class public Lcom/broadcom/bt/util/io/output/FileWriterWithEncoding;
.super Ljava/io/Writer;
.source "FileWriterWithEncoding.java"


# instance fields
.field private final out:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .parameter "file"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/broadcom/bt/util/io/output/FileWriterWithEncoding;-><init>(Ljava/io/File;Ljava/lang/String;Z)V

    .line 159
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Z)V
    .locals 1
    .parameter "file"
    .parameter "encoding"
    .parameter "append"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 172
    invoke-static {p1, p2, p3}, Lcom/broadcom/bt/util/io/output/FileWriterWithEncoding;->initWriter(Ljava/io/File;Ljava/lang/Object;Z)Ljava/io/Writer;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/util/io/output/FileWriterWithEncoding;->out:Ljava/io/Writer;

    .line 173
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/nio/charset/Charset;)V
    .locals 1
    .parameter "file"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/broadcom/bt/util/io/output/FileWriterWithEncoding;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;Z)V

    .line 185
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/nio/charset/Charset;Z)V
    .locals 1
    .parameter "file"
    .parameter "encoding"
    .parameter "append"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 198
    invoke-static {p1, p2, p3}, Lcom/broadcom/bt/util/io/output/FileWriterWithEncoding;->initWriter(Ljava/io/File;Ljava/lang/Object;Z)Ljava/io/Writer;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/util/io/output/FileWriterWithEncoding;->out:Ljava/io/Writer;

    .line 199
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/nio/charset/CharsetEncoder;)V
    .locals 1
    .parameter "file"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/broadcom/bt/util/io/output/FileWriterWithEncoding;-><init>(Ljava/io/File;Ljava/nio/charset/CharsetEncoder;Z)V

    .line 211
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/nio/charset/CharsetEncoder;Z)V
    .locals 1
    .parameter "file"
    .parameter "encoding"
    .parameter "append"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 224
    invoke-static {p1, p2, p3}, Lcom/broadcom/bt/util/io/output/FileWriterWithEncoding;->initWriter(Ljava/io/File;Ljava/lang/Object;Z)Ljava/io/Writer;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/util/io/output/FileWriterWithEncoding;->out:Ljava/io/Writer;

    .line 225
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "filename"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcom/broadcom/bt/util/io/output/FileWriterWithEncoding;-><init>(Ljava/io/File;Ljava/lang/String;Z)V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter "filename"
    .parameter "encoding"
    .parameter "append"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/broadcom/bt/util/io/output/FileWriterWithEncoding;-><init>(Ljava/io/File;Ljava/lang/String;Z)V

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 2
    .parameter "filename"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcom/broadcom/bt/util/io/output/FileWriterWithEncoding;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;Z)V

    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;Z)V
    .locals 1
    .parameter "filename"
    .parameter "encoding"
    .parameter "append"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/broadcom/bt/util/io/output/FileWriterWithEncoding;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;Z)V

    .line 122
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/CharsetEncoder;)V
    .locals 2
    .parameter "filename"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcom/broadcom/bt/util/io/output/FileWriterWithEncoding;-><init>(Ljava/io/File;Ljava/nio/charset/CharsetEncoder;Z)V

    .line 134
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/CharsetEncoder;Z)V
    .locals 1
    .parameter "filename"
    .parameter "encoding"
    .parameter "append"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/broadcom/bt/util/io/output/FileWriterWithEncoding;-><init>(Ljava/io/File;Ljava/nio/charset/CharsetEncoder;Z)V

    .line 147
    return-void
.end method

.method private static initWriter(Ljava/io/File;Ljava/lang/Object;Z)Ljava/io/Writer;
    .locals 8
    .parameter "file"
    .parameter "encoding"
    .parameter "append"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 240
    if-nez p0, :cond_0

    .line 241
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "File is missing"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 243
    :cond_0
    if-nez p1, :cond_1

    .line 244
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "Encoding is missing"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 246
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    .line 247
    .local v1, fileExistedAlready:Z
    const/4 v2, 0x0

    .line 248
    .local v2, stream:Ljava/io/OutputStream;
    const/4 v4, 0x0

    .line 250
    .local v4, writer:Ljava/io/Writer;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 251
    .end local v2           #stream:Ljava/io/OutputStream;
    .local v3, stream:Ljava/io/OutputStream;
    :try_start_1
    instance-of v6, p1, Ljava/nio/charset/Charset;

    if-eqz v6, :cond_2

    .line 252
    new-instance v5, Ljava/io/OutputStreamWriter;

    check-cast p1, Ljava/nio/charset/Charset;

    .end local p1
    invoke-direct {v5, v3, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .end local v4           #writer:Ljava/io/Writer;
    .local v5, writer:Ljava/io/Writer;
    move-object v4, v5

    .line 273
    .end local v5           #writer:Ljava/io/Writer;
    .restart local v4       #writer:Ljava/io/Writer;
    :goto_0
    return-object v4

    .line 253
    .restart local p1
    :cond_2
    instance-of v6, p1, Ljava/nio/charset/CharsetEncoder;

    if-eqz v6, :cond_3

    .line 254
    new-instance v5, Ljava/io/OutputStreamWriter;

    check-cast p1, Ljava/nio/charset/CharsetEncoder;

    .end local p1
    invoke-direct {v5, v3, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/CharsetEncoder;)V

    .end local v4           #writer:Ljava/io/Writer;
    .restart local v5       #writer:Ljava/io/Writer;
    move-object v4, v5

    .end local v5           #writer:Ljava/io/Writer;
    .restart local v4       #writer:Ljava/io/Writer;
    goto :goto_0

    .line 256
    .restart local p1
    :cond_3
    new-instance v5, Ljava/io/OutputStreamWriter;

    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-direct {v5, v3, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .end local v4           #writer:Ljava/io/Writer;
    .restart local v5       #writer:Ljava/io/Writer;
    move-object v4, v5

    .end local v5           #writer:Ljava/io/Writer;
    .restart local v4       #writer:Ljava/io/Writer;
    goto :goto_0

    .line 258
    .end local v3           #stream:Ljava/io/OutputStream;
    .restart local v2       #stream:Ljava/io/OutputStream;
    .restart local p1
    :catch_0
    move-exception v0

    .line 259
    .end local p1
    .local v0, ex:Ljava/io/IOException;
    :goto_1
    invoke-static {v4}, Lcom/broadcom/bt/util/io/IOUtils;->closeQuietly(Ljava/io/Writer;)V

    .line 260
    invoke-static {v2}, Lcom/broadcom/bt/util/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 261
    if-nez v1, :cond_4

    .line 262
    invoke-static {p0}, Lcom/broadcom/bt/util/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 264
    :cond_4
    throw v0

    .line 265
    .end local v0           #ex:Ljava/io/IOException;
    .restart local p1
    :catch_1
    move-exception v0

    .line 266
    .end local p1
    .local v0, ex:Ljava/lang/RuntimeException;
    :goto_2
    invoke-static {v4}, Lcom/broadcom/bt/util/io/IOUtils;->closeQuietly(Ljava/io/Writer;)V

    .line 267
    invoke-static {v2}, Lcom/broadcom/bt/util/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 268
    if-nez v1, :cond_5

    .line 269
    invoke-static {p0}, Lcom/broadcom/bt/util/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 271
    :cond_5
    throw v0

    .line 265
    .end local v0           #ex:Ljava/lang/RuntimeException;
    .end local v2           #stream:Ljava/io/OutputStream;
    .restart local v3       #stream:Ljava/io/OutputStream;
    :catch_2
    move-exception v0

    move-object v2, v3

    .end local v3           #stream:Ljava/io/OutputStream;
    .restart local v2       #stream:Ljava/io/OutputStream;
    goto :goto_2

    .line 258
    .end local v2           #stream:Ljava/io/OutputStream;
    .restart local v3       #stream:Ljava/io/OutputStream;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3           #stream:Ljava/io/OutputStream;
    .restart local v2       #stream:Ljava/io/OutputStream;
    goto :goto_1
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
    .line 339
    iget-object v0, p0, Lcom/broadcom/bt/util/io/output/FileWriterWithEncoding;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 340
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
    .line 331
    iget-object v0, p0, Lcom/broadcom/bt/util/io/output/FileWriterWithEncoding;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 332
    return-void
.end method

.method public write(I)V
    .locals 1
    .parameter "idx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 283
    iget-object v0, p0, Lcom/broadcom/bt/util/io/output/FileWriterWithEncoding;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V

    .line 284
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 1
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 312
    iget-object v0, p0, Lcom/broadcom/bt/util/io/output/FileWriterWithEncoding;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 313
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 1
    .parameter "str"
    .parameter "st"
    .parameter "end"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 323
    iget-object v0, p0, Lcom/broadcom/bt/util/io/output/FileWriterWithEncoding;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 324
    return-void
.end method

.method public write([C)V
    .locals 1
    .parameter "chr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 292
    iget-object v0, p0, Lcom/broadcom/bt/util/io/output/FileWriterWithEncoding;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write([C)V

    .line 293
    return-void
.end method

.method public write([CII)V
    .locals 1
    .parameter "chr"
    .parameter "st"
    .parameter "end"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 303
    iget-object v0, p0, Lcom/broadcom/bt/util/io/output/FileWriterWithEncoding;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    .line 304
    return-void
.end method
