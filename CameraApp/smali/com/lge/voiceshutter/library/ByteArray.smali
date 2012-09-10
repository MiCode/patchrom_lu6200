.class public Lcom/lge/voiceshutter/library/ByteArray;
.super Ljava/lang/Object;
.source "ByteArray.java"


# instance fields
.field private array:[B


# direct methods
.method public constructor <init>([BI)V
    .locals 2
    .parameter "ar"
    .parameter "len"

    .prologue
    const/4 v1, 0x0

    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/voiceshutter/library/ByteArray;->array:[B

    .line 9
    new-array v0, p2, [B

    iput-object v0, p0, Lcom/lge/voiceshutter/library/ByteArray;->array:[B

    .line 10
    iget-object v0, p0, Lcom/lge/voiceshutter/library/ByteArray;->array:[B

    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    return-void
.end method


# virtual methods
.method public array()[B
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/lge/voiceshutter/library/ByteArray;->array:[B

    return-object v0
.end method
