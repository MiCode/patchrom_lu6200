.class public Lcom/broadcom/bt/util/mime4j/EOLConvertingInputStream;
.super Ljava/io/InputStream;
.source "EOLConvertingInputStream.java"


# static fields
.field public static final CONVERT_BOTH:I = 0x3

.field public static final CONVERT_CR:I = 0x1

.field public static final CONVERT_LF:I = 0x2


# instance fields
.field private flags:I

.field private in:Ljava/io/PushbackInputStream;

.field private previous:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 71
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/broadcom/bt/util/mime4j/EOLConvertingInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 2
    .parameter "in"
    .parameter "flags"

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/EOLConvertingInputStream;->in:Ljava/io/PushbackInputStream;

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/broadcom/bt/util/mime4j/EOLConvertingInputStream;->previous:I

    .line 61
    const/4 v0, 0x3

    iput v0, p0, Lcom/broadcom/bt/util/mime4j/EOLConvertingInputStream;->flags:I

    .line 84
    new-instance v0, Ljava/io/PushbackInputStream;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/EOLConvertingInputStream;->in:Ljava/io/PushbackInputStream;

    .line 85
    iput p2, p0, Lcom/broadcom/bt/util/mime4j/EOLConvertingInputStream;->flags:I

    .line 86
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
    .line 94
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/EOLConvertingInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->close()V

    .line 95
    return-void
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xd

    const/4 v2, -0x1

    const/16 v4, 0xa

    .line 101
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/EOLConvertingInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v3}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    .line 103
    .local v0, b:I
    if-ne v0, v2, :cond_0

    .line 122
    :goto_0
    return v2

    .line 107
    :cond_0
    iget v3, p0, Lcom/broadcom/bt/util/mime4j/EOLConvertingInputStream;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    if-ne v0, v5, :cond_3

    .line 108
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/EOLConvertingInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v3}, Ljava/io/PushbackInputStream;->read()I

    move-result v1

    .line 109
    .local v1, c:I
    if-eq v1, v2, :cond_1

    .line 110
    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/EOLConvertingInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v2, v1}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 112
    :cond_1
    if-eq v1, v4, :cond_2

    .line 113
    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/EOLConvertingInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v2, v4}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 120
    .end local v1           #c:I
    :cond_2
    :goto_1
    iput v0, p0, Lcom/broadcom/bt/util/mime4j/EOLConvertingInputStream;->previous:I

    move v2, v0

    .line 122
    goto :goto_0

    .line 115
    :cond_3
    iget v2, p0, Lcom/broadcom/bt/util/mime4j/EOLConvertingInputStream;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    if-ne v0, v4, :cond_2

    iget v2, p0, Lcom/broadcom/bt/util/mime4j/EOLConvertingInputStream;->previous:I

    if-eq v2, v5, :cond_2

    .line 116
    const/16 v0, 0xd

    .line 117
    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/EOLConvertingInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v2, v4}, Ljava/io/PushbackInputStream;->unread(I)V

    goto :goto_1
.end method
