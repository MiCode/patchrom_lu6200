.class public Lcom/broadcom/bt/util/io/LineIterator;
.super Ljava/lang/Object;
.source "LineIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private final bufferedReader:Ljava/io/BufferedReader;

.field private cachedLine:Ljava/lang/String;

.field private finished:Z


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 2
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/util/io/LineIterator;->finished:Z

    .line 86
    if-nez p1, :cond_0

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Reader must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    instance-of v0, p1, Ljava/io/BufferedReader;

    if-eqz v0, :cond_1

    .line 90
    check-cast p1, Ljava/io/BufferedReader;

    .end local p1
    iput-object p1, p0, Lcom/broadcom/bt/util/io/LineIterator;->bufferedReader:Ljava/io/BufferedReader;

    .line 94
    :goto_0
    return-void

    .line 92
    .restart local p1
    :cond_1
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/broadcom/bt/util/io/LineIterator;->bufferedReader:Ljava/io/BufferedReader;

    goto :goto_0
.end method

.method public static closeQuietly(Lcom/broadcom/bt/util/io/LineIterator;)V
    .locals 0
    .parameter "iterator"

    .prologue
    .line 193
    if-eqz p0, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/broadcom/bt/util/io/LineIterator;->close()V

    .line 196
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/util/io/LineIterator;->finished:Z

    .line 173
    iget-object v0, p0, Lcom/broadcom/bt/util/io/LineIterator;->bufferedReader:Ljava/io/BufferedReader;

    invoke-static {v0}, Lcom/broadcom/bt/util/io/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/util/io/LineIterator;->cachedLine:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public hasNext()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 106
    iget-object v4, p0, Lcom/broadcom/bt/util/io/LineIterator;->cachedLine:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 119
    :goto_0
    return v2

    .line 108
    :cond_0
    iget-boolean v4, p0, Lcom/broadcom/bt/util/io/LineIterator;->finished:Z

    if-eqz v4, :cond_1

    move v2, v3

    .line 109
    goto :goto_0

    .line 113
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/broadcom/bt/util/io/LineIterator;->bufferedReader:Ljava/io/BufferedReader;

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, line:Ljava/lang/String;
    if-nez v1, :cond_2

    .line 115
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/broadcom/bt/util/io/LineIterator;->finished:Z

    move v2, v3

    .line 116
    goto :goto_0

    .line 117
    :cond_2
    invoke-virtual {p0, v1}, Lcom/broadcom/bt/util/io/LineIterator;->isValidLine(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 118
    iput-object v1, p0, Lcom/broadcom/bt/util/io/LineIterator;->cachedLine:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 122
    .end local v1           #line:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 123
    .local v0, ioe:Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/broadcom/bt/util/io/LineIterator;->close()V

    .line 124
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected isValidLine(Ljava/lang/String;)Z
    .locals 1
    .parameter "line"

    .prologue
    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/broadcom/bt/util/io/LineIterator;->nextLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextLine()Ljava/lang/String;
    .locals 3

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/broadcom/bt/util/io/LineIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 157
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "No more lines"

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/util/io/LineIterator;->cachedLine:Ljava/lang/String;

    .line 160
    .local v0, currentLine:Ljava/lang/String;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/util/io/LineIterator;->cachedLine:Ljava/lang/String;

    .line 161
    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 183
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Remove unsupported on LineIterator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
