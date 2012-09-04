.class public Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;
.super Ljava/lang/Object;
.source "SimpleCharStream.java"


# static fields
.field public static final staticFlag:Z


# instance fields
.field available:I

.field protected bufcolumn:[I

.field protected buffer:[C

.field protected bufline:[I

.field public bufpos:I

.field bufsize:I

.field protected column:I

.field protected inBuf:I

.field protected inputStream:Ljava/io/Reader;

.field protected line:I

.field protected maxNextCharInd:I

.field protected prevCharIsCR:Z

.field protected prevCharIsLF:Z

.field protected tabSize:I

.field tokenBegin:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .parameter "dstream"

    .prologue
    const/4 v1, 0x1

    .line 341
    const/16 v0, 0x1000

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;-><init>(Ljava/io/InputStream;III)V

    .line 342
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;II)V
    .locals 1
    .parameter "dstream"
    .parameter "startline"
    .parameter "startcolumn"

    .prologue
    .line 331
    const/16 v0, 0x1000

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;-><init>(Ljava/io/InputStream;III)V

    .line 332
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;III)V
    .locals 1
    .parameter "dstream"
    .parameter "startline"
    .parameter "startcolumn"
    .parameter "buffersize"

    .prologue
    .line 319
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;-><init>(Ljava/io/Reader;III)V

    .line 320
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 6
    .parameter "dstream"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 336
    const/16 v5, 0x1000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;III)V

    .line 337
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;II)V
    .locals 6
    .parameter "dstream"
    .parameter "encoding"
    .parameter "startline"
    .parameter "startcolumn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 325
    const/16 v5, 0x1000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;III)V

    .line 326
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;III)V
    .locals 1
    .parameter "dstream"
    .parameter "encoding"
    .parameter "startline"
    .parameter "startcolumn"
    .parameter "buffersize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 313
    if-nez p2, :cond_0

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    :goto_0
    invoke-direct {p0, v0, p3, p4, p5}, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;-><init>(Ljava/io/Reader;III)V

    .line 314
    return-void

    .line 313
    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 2
    .parameter "dstream"

    .prologue
    const/4 v1, 0x1

    .line 279
    const/16 v0, 0x1000

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;-><init>(Ljava/io/Reader;III)V

    .line 280
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;II)V
    .locals 1
    .parameter "dstream"
    .parameter "startline"
    .parameter "startcolumn"

    .prologue
    .line 274
    const/16 v0, 0x1000

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;-><init>(Ljava/io/Reader;III)V

    .line 275
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;III)V
    .locals 2
    .parameter "dstream"
    .parameter "startline"
    .parameter "startcolumn"
    .parameter "buffersize"

    .prologue
    const/4 v1, 0x0

    .line 260
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    .line 35
    iput v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->column:I

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->line:I

    .line 38
    iput-boolean v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->prevCharIsCR:Z

    .line 39
    iput-boolean v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->prevCharIsLF:Z

    .line 44
    iput v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->maxNextCharInd:I

    .line 45
    iput v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->inBuf:I

    .line 46
    const/16 v0, 0x8

    iput v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->tabSize:I

    .line 261
    iput-object p1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->inputStream:Ljava/io/Reader;

    .line 262
    iput p2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->line:I

    .line 263
    add-int/lit8 v0, p3, -0x1

    iput v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->column:I

    .line 265
    iput p4, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    iput p4, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->available:I

    .line 266
    new-array v0, p4, [C

    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->buffer:[C

    .line 267
    new-array v0, p4, [I

    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufline:[I

    .line 268
    new-array v0, p4, [I

    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufcolumn:[I

    .line 269
    return-void
.end method


# virtual methods
.method public BeginToken()C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    const/4 v1, -0x1

    iput v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    .line 150
    invoke-virtual {p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->readChar()C

    move-result v0

    .line 151
    .local v0, c:C
    iget v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    iput v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    .line 153
    return v0
.end method

.method public Done()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 402
    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->buffer:[C

    .line 403
    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufline:[I

    .line 404
    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufcolumn:[I

    .line 405
    return-void
.end method

.method protected ExpandBuff(Z)V
    .locals 10
    .parameter "wrapAround"

    .prologue
    const/4 v9, 0x0

    .line 54
    iget v4, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    add-int/lit16 v4, v4, 0x800

    new-array v1, v4, [C

    .line 55
    .local v1, newbuffer:[C
    iget v4, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    add-int/lit16 v4, v4, 0x800

    new-array v2, v4, [I

    .line 56
    .local v2, newbufline:[I
    iget v4, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    add-int/lit16 v4, v4, 0x800

    new-array v0, v4, [I

    .line 60
    .local v0, newbufcolumn:[I
    if-eqz p1, :cond_0

    .line 62
    :try_start_0
    iget-object v4, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->buffer:[C

    iget v5, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    const/4 v6, 0x0

    iget v7, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    iget v8, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v7, v8

    invoke-static {v4, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    iget-object v4, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->buffer:[C

    const/4 v5, 0x0

    iget v6, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    iget v7, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    invoke-static {v4, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    iput-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->buffer:[C

    .line 67
    iget-object v4, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufline:[I

    iget v5, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    const/4 v6, 0x0

    iget v7, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    iget v8, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v7, v8

    invoke-static {v4, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    iget-object v4, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufline:[I

    const/4 v5, 0x0

    iget v6, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    iget v7, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    invoke-static {v4, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    iput-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufline:[I

    .line 71
    iget-object v4, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufcolumn:[I

    iget v5, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    const/4 v6, 0x0

    iget v7, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    iget v8, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v7, v8

    invoke-static {v4, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    iget-object v4, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufcolumn:[I

    const/4 v5, 0x0

    iget v6, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    iget v7, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    invoke-static {v4, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufcolumn:[I

    .line 75
    iget v4, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    iget v5, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    iget v6, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    iput v4, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->maxNextCharInd:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    iget v4, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    add-int/lit16 v4, v4, 0x800

    iput v4, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    .line 98
    iget v4, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    iput v4, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->available:I

    .line 99
    iput v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    .line 100
    return-void

    .line 79
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->buffer:[C

    iget v5, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    const/4 v6, 0x0

    iget v7, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    iget v8, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v7, v8

    invoke-static {v4, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    iput-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->buffer:[C

    .line 82
    iget-object v4, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufline:[I

    iget v5, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    const/4 v6, 0x0

    iget v7, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    iget v8, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v7, v8

    invoke-static {v4, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    iput-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufline:[I

    .line 85
    iget-object v4, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufcolumn:[I

    iget v5, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    const/4 v6, 0x0

    iget v7, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    iget v8, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v7, v8

    invoke-static {v4, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufcolumn:[I

    .line 88
    iget v4, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    iget v5, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    iput v4, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->maxNextCharInd:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 91
    :catch_0
    move-exception v3

    .line 93
    .local v3, t:Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/Error;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected FillBuff()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x800

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 104
    iget v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->maxNextCharInd:I

    iget v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->available:I

    if-ne v2, v3, :cond_0

    .line 106
    iget v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->available:I

    iget v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    if-ne v2, v3, :cond_4

    .line 108
    iget v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    if-le v2, v4, :cond_2

    .line 110
    iput v7, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->maxNextCharInd:I

    iput v7, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    .line 111
    iget v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    iput v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->available:I

    .line 128
    :cond_0
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->inputStream:Ljava/io/Reader;

    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->buffer:[C

    iget v4, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->maxNextCharInd:I

    iget v5, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->available:I

    iget v6, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->maxNextCharInd:I

    sub-int/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/Reader;->read([CII)I

    move-result v1

    .local v1, i:I
    if-ne v1, v8, :cond_7

    .line 131
    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->inputStream:Ljava/io/Reader;

    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    .line 132
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .end local v1           #i:I
    :catch_0
    move-exception v0

    .line 139
    .local v0, e:Ljava/io/IOException;
    iget v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    .line 140
    invoke-virtual {p0, v7}, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->backup(I)V

    .line 141
    iget v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    if-ne v2, v8, :cond_1

    .line 142
    iget v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    iput v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    .line 143
    :cond_1
    throw v0

    .line 113
    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    iget v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    if-gez v2, :cond_3

    .line 114
    iput v7, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->maxNextCharInd:I

    iput v7, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    goto :goto_0

    .line 116
    :cond_3
    invoke-virtual {p0, v7}, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->ExpandBuff(Z)V

    goto :goto_0

    .line 118
    :cond_4
    iget v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->available:I

    iget v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    if-le v2, v3, :cond_5

    .line 119
    iget v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    iput v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->available:I

    goto :goto_0

    .line 120
    :cond_5
    iget v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    iget v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->available:I

    sub-int/2addr v2, v3

    if-ge v2, v4, :cond_6

    .line 121
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->ExpandBuff(Z)V

    goto :goto_0

    .line 123
    :cond_6
    iget v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    iput v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->available:I

    goto :goto_0

    .line 135
    .restart local v1       #i:I
    :cond_7
    :try_start_1
    iget v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->maxNextCharInd:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->maxNextCharInd:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 136
    return-void
.end method

.method public GetImage()Ljava/lang/String;
    .locals 6

    .prologue
    .line 377
    iget v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    iget v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    if-lt v0, v1, :cond_0

    .line 378
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->buffer:[C

    iget v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    iget v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    iget v4, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 380
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->buffer:[C

    iget v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    iget v4, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    iget v5, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v4, v5

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->buffer:[C

    const/4 v3, 0x0

    iget v4, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public GetSuffix(I)[C
    .locals 5
    .parameter "len"

    .prologue
    const/4 v4, 0x0

    .line 386
    new-array v0, p1, [C

    .line 388
    .local v0, ret:[C
    iget v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    add-int/lit8 v1, v1, 0x1

    if-lt v1, p1, :cond_0

    .line 389
    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->buffer:[C

    iget v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2, v0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 397
    :goto_0
    return-object v0

    .line 392
    :cond_0
    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->buffer:[C

    iget v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    iget v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    sub-int v3, p1, v3

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    sub-int v3, p1, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 394
    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->buffer:[C

    iget v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    sub-int v2, p1, v2

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public ReInit(Ljava/io/InputStream;)V
    .locals 2
    .parameter "dstream"

    .prologue
    const/4 v1, 0x1

    .line 363
    const/16 v0, 0x1000

    invoke-virtual {p0, p1, v1, v1, v0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->ReInit(Ljava/io/InputStream;III)V

    .line 364
    return-void
.end method

.method public ReInit(Ljava/io/InputStream;II)V
    .locals 1
    .parameter "dstream"
    .parameter "startline"
    .parameter "startcolumn"

    .prologue
    .line 373
    const/16 v0, 0x1000

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->ReInit(Ljava/io/InputStream;III)V

    .line 374
    return-void
.end method

.method public ReInit(Ljava/io/InputStream;III)V
    .locals 1
    .parameter "dstream"
    .parameter "startline"
    .parameter "startcolumn"
    .parameter "buffersize"

    .prologue
    .line 353
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->ReInit(Ljava/io/Reader;III)V

    .line 354
    return-void
.end method

.method public ReInit(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 6
    .parameter "dstream"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 358
    const/16 v5, 0x1000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->ReInit(Ljava/io/InputStream;Ljava/lang/String;III)V

    .line 359
    return-void
.end method

.method public ReInit(Ljava/io/InputStream;Ljava/lang/String;II)V
    .locals 6
    .parameter "dstream"
    .parameter "encoding"
    .parameter "startline"
    .parameter "startcolumn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 368
    const/16 v5, 0x1000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->ReInit(Ljava/io/InputStream;Ljava/lang/String;III)V

    .line 369
    return-void
.end method

.method public ReInit(Ljava/io/InputStream;Ljava/lang/String;III)V
    .locals 1
    .parameter "dstream"
    .parameter "encoding"
    .parameter "startline"
    .parameter "startcolumn"
    .parameter "buffersize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 347
    if-nez p2, :cond_0

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    :goto_0
    invoke-virtual {p0, v0, p3, p4, p5}, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->ReInit(Ljava/io/Reader;III)V

    .line 348
    return-void

    .line 347
    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public ReInit(Ljava/io/Reader;)V
    .locals 2
    .parameter "dstream"

    .prologue
    const/4 v1, 0x1

    .line 308
    const/16 v0, 0x1000

    invoke-virtual {p0, p1, v1, v1, v0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->ReInit(Ljava/io/Reader;III)V

    .line 309
    return-void
.end method

.method public ReInit(Ljava/io/Reader;II)V
    .locals 1
    .parameter "dstream"
    .parameter "startline"
    .parameter "startcolumn"

    .prologue
    .line 303
    const/16 v0, 0x1000

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->ReInit(Ljava/io/Reader;III)V

    .line 304
    return-void
.end method

.method public ReInit(Ljava/io/Reader;III)V
    .locals 2
    .parameter "dstream"
    .parameter "startline"
    .parameter "startcolumn"
    .parameter "buffersize"

    .prologue
    const/4 v1, 0x0

    .line 284
    iput-object p1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->inputStream:Ljava/io/Reader;

    .line 285
    iput p2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->line:I

    .line 286
    add-int/lit8 v0, p3, -0x1

    iput v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->column:I

    .line 288
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->buffer:[C

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->buffer:[C

    array-length v0, v0

    if-eq p4, v0, :cond_1

    .line 290
    :cond_0
    iput p4, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    iput p4, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->available:I

    .line 291
    new-array v0, p4, [C

    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->buffer:[C

    .line 292
    new-array v0, p4, [I

    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufline:[I

    .line 293
    new-array v0, p4, [I

    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufcolumn:[I

    .line 295
    :cond_1
    iput-boolean v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->prevCharIsCR:Z

    iput-boolean v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->prevCharIsLF:Z

    .line 296
    iput v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->maxNextCharInd:I

    iput v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->inBuf:I

    iput v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    .line 297
    const/4 v0, -0x1

    iput v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    .line 298
    return-void
.end method

.method protected UpdateLineColumn(C)V
    .locals 4
    .parameter "c"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 158
    iget v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->column:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->column:I

    .line 160
    iget-boolean v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->prevCharIsLF:Z

    if-eqz v0, :cond_1

    .line 162
    iput-boolean v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->prevCharIsLF:Z

    .line 163
    iget v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->line:I

    iput v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->column:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->line:I

    .line 176
    :cond_0
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 192
    :goto_1
    :pswitch_0
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufline:[I

    iget v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    iget v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->line:I

    aput v2, v0, v1

    .line 193
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufcolumn:[I

    iget v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    iget v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->column:I

    aput v2, v0, v1

    .line 194
    return-void

    .line 165
    :cond_1
    iget-boolean v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->prevCharIsCR:Z

    if-eqz v0, :cond_0

    .line 167
    iput-boolean v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->prevCharIsCR:Z

    .line 168
    const/16 v0, 0xa

    if-ne p1, v0, :cond_2

    .line 170
    iput-boolean v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->prevCharIsLF:Z

    goto :goto_0

    .line 173
    :cond_2
    iget v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->line:I

    iput v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->column:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->line:I

    goto :goto_0

    .line 179
    :pswitch_1
    iput-boolean v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->prevCharIsCR:Z

    goto :goto_1

    .line 182
    :pswitch_2
    iput-boolean v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->prevCharIsLF:Z

    goto :goto_1

    .line 185
    :pswitch_3
    iget v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->column:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->column:I

    .line 186
    iget v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->column:I

    iget v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->tabSize:I

    iget v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->column:I

    iget v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->tabSize:I

    rem-int/2addr v2, v3

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->column:I

    goto :goto_1

    .line 176
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public adjustBeginLineColumn(II)V
    .locals 12
    .parameter "newLine"
    .parameter "newCol"

    .prologue
    .line 412
    iget v8, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    .line 415
    .local v8, start:I
    iget v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    iget v10, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    if-lt v9, v10, :cond_0

    .line 417
    iget v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    iget v10, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->inBuf:I

    add-int/2addr v9, v10

    add-int/lit8 v5, v9, 0x1

    .line 424
    .local v5, len:I
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v3, 0x0

    .local v3, j:I
    const/4 v4, 0x0

    .line 425
    .local v4, k:I
    const/4 v7, 0x0

    .local v7, nextColDiff:I
    const/4 v0, 0x0

    .line 428
    .local v0, columnDiff:I
    :goto_1
    if-ge v1, v5, :cond_1

    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufline:[I

    iget v10, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    rem-int v3, v8, v10

    aget v9, v9, v3

    iget-object v10, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufline:[I

    add-int/lit8 v8, v8, 0x1

    iget v11, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    rem-int v4, v8, v11

    aget v10, v10, v4

    if-ne v9, v10, :cond_1

    .line 430
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufline:[I

    aput p1, v9, v3

    .line 431
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufcolumn:[I

    aget v9, v9, v4

    add-int/2addr v9, v0

    iget-object v10, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufcolumn:[I

    aget v10, v10, v3

    sub-int v7, v9, v10

    .line 432
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufcolumn:[I

    add-int v10, p2, v0

    aput v10, v9, v3

    .line 433
    move v0, v7

    .line 434
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 421
    .end local v0           #columnDiff:I
    .end local v1           #i:I
    .end local v3           #j:I
    .end local v4           #k:I
    .end local v5           #len:I
    .end local v7           #nextColDiff:I
    :cond_0
    iget v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    iget v10, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x1

    iget v10, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->inBuf:I

    add-int v5, v9, v10

    .restart local v5       #len:I
    goto :goto_0

    .line 437
    .restart local v0       #columnDiff:I
    .restart local v1       #i:I
    .restart local v3       #j:I
    .restart local v4       #k:I
    .restart local v7       #nextColDiff:I
    :cond_1
    if-ge v1, v5, :cond_4

    .line 439
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufline:[I

    add-int/lit8 v6, p1, 0x1

    .end local p1
    .local v6, newLine:I
    aput p1, v9, v3

    .line 440
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufcolumn:[I

    add-int v10, p2, v0

    aput v10, v9, v3

    move v2, v1

    .line 442
    .end local v1           #i:I
    .local v2, i:I
    :goto_2
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    if-ge v2, v5, :cond_3

    .line 444
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufline:[I

    iget v10, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    rem-int v3, v8, v10

    aget v9, v9, v3

    iget-object v10, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufline:[I

    add-int/lit8 v8, v8, 0x1

    iget v11, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    rem-int v11, v8, v11

    aget v10, v10, v11

    if-eq v9, v10, :cond_2

    .line 445
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufline:[I

    add-int/lit8 p1, v6, 0x1

    .end local v6           #newLine:I
    .restart local p1
    aput v6, v9, v3

    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    move v6, p1

    .end local p1
    .restart local v6       #newLine:I
    goto :goto_2

    .line 447
    .end local v2           #i:I
    .restart local v1       #i:I
    :cond_2
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufline:[I

    aput v6, v9, v3

    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_2

    .end local v2           #i:I
    .restart local v1       #i:I
    :cond_3
    move p1, v6

    .line 451
    .end local v6           #newLine:I
    .restart local p1
    :cond_4
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufline:[I

    aget v9, v9, v3

    iput v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->line:I

    .line 452
    iget-object v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufcolumn:[I

    aget v9, v9, v3

    iput v9, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->column:I

    .line 453
    return-void
.end method

.method public backup(I)V
    .locals 2
    .parameter "amount"

    .prologue
    .line 253
    iget v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->inBuf:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->inBuf:I

    .line 254
    iget v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    if-gez v0, :cond_0

    .line 255
    iget v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    iget v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    .line 256
    :cond_0
    return-void
.end method

.method public getBeginColumn()I
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufcolumn:[I

    iget v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    aget v0, v0, v1

    return v0
.end method

.method public getBeginLine()I
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufline:[I

    iget v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->tokenBegin:I

    aget v0, v0, v1

    return v0
.end method

.method public getColumn()I
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufcolumn:[I

    iget v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method public getEndColumn()I
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufcolumn:[I

    iget v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method public getEndLine()I
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufline:[I

    iget v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method public getLine()I
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufline:[I

    iget v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    aget v0, v0, v1

    return v0
.end method

.method protected getTabSize(I)I
    .locals 1
    .parameter "i"

    .prologue
    .line 49
    iget v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->tabSize:I

    return v0
.end method

.method public readChar()C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    iget v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->inBuf:I

    if-lez v1, :cond_1

    .line 200
    iget v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->inBuf:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->inBuf:I

    .line 202
    iget v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    iget v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufsize:I

    if-ne v1, v2, :cond_0

    .line 203
    const/4 v1, 0x0

    iput v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    .line 205
    :cond_0
    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->buffer:[C

    iget v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    aget-char v0, v1, v2

    .line 214
    :goto_0
    return v0

    .line 208
    :cond_1
    iget v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    iget v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->maxNextCharInd:I

    if-lt v1, v2, :cond_2

    .line 209
    invoke-virtual {p0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->FillBuff()V

    .line 211
    :cond_2
    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->buffer:[C

    iget v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->bufpos:I

    aget-char v0, v1, v2

    .line 213
    .local v0, c:C
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->UpdateLineColumn(C)V

    goto :goto_0
.end method

.method protected setTabSize(I)V
    .locals 0
    .parameter "i"

    .prologue
    .line 48
    iput p1, p0, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleCharStream;->tabSize:I

    return-void
.end method
