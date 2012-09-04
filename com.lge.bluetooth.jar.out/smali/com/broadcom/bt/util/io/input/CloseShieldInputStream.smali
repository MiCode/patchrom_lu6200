.class public Lcom/broadcom/bt/util/io/input/CloseShieldInputStream;
.super Lcom/broadcom/bt/util/io/input/ProxyInputStream;
.source "CloseShieldInputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/broadcom/bt/util/io/input/ProxyInputStream;-><init>(Ljava/io/InputStream;)V

    .line 58
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/broadcom/bt/util/io/input/ClosedInputStream;

    invoke-direct {v0}, Lcom/broadcom/bt/util/io/input/ClosedInputStream;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/util/io/input/CloseShieldInputStream;->in:Ljava/io/InputStream;

    .line 67
    return-void
.end method
