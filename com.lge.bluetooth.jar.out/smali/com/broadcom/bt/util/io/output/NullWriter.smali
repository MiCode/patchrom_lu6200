.class public Lcom/broadcom/bt/util/io/output/NullWriter;
.super Ljava/io/Writer;
.source "NullWriter.java"


# static fields
.field public static final NULL_WRITER:Lcom/broadcom/bt/util/io/output/NullWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/broadcom/bt/util/io/output/NullWriter;

    invoke-direct {v0}, Lcom/broadcom/bt/util/io/output/NullWriter;-><init>()V

    sput-object v0, Lcom/broadcom/bt/util/io/output/NullWriter;->NULL_WRITER:Lcom/broadcom/bt/util/io/output/NullWriter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 57
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public write(I)V
    .locals 0
    .parameter "idx"

    .prologue
    .line 65
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 0
    .parameter "str"

    .prologue
    .line 91
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 0
    .parameter "str"
    .parameter "st"
    .parameter "end"

    .prologue
    .line 101
    return-void
.end method

.method public write([C)V
    .locals 0
    .parameter "chr"

    .prologue
    .line 73
    return-void
.end method

.method public write([CII)V
    .locals 0
    .parameter "chr"
    .parameter "st"
    .parameter "end"

    .prologue
    .line 83
    return-void
.end method
