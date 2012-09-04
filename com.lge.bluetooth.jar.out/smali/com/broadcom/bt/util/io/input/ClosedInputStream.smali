.class public Lcom/broadcom/bt/util/io/input/ClosedInputStream;
.super Ljava/io/InputStream;
.source "ClosedInputStream.java"


# static fields
.field public static final CLOSED_INPUT_STREAM:Lcom/broadcom/bt/util/io/input/ClosedInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/broadcom/bt/util/io/input/ClosedInputStream;

    invoke-direct {v0}, Lcom/broadcom/bt/util/io/input/ClosedInputStream;-><init>()V

    sput-object v0, Lcom/broadcom/bt/util/io/input/ClosedInputStream;->CLOSED_INPUT_STREAM:Lcom/broadcom/bt/util/io/input/ClosedInputStream;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public read()I
    .locals 1

    .prologue
    .line 62
    const/4 v0, -0x1

    return v0
.end method
