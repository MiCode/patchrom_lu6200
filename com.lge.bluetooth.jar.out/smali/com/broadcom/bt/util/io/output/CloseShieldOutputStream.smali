.class public Lcom/broadcom/bt/util/io/output/CloseShieldOutputStream;
.super Lcom/broadcom/bt/util/io/output/ProxyOutputStream;
.source "CloseShieldOutputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .parameter "out"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/broadcom/bt/util/io/output/ProxyOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 58
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/broadcom/bt/util/io/output/ClosedOutputStream;

    invoke-direct {v0}, Lcom/broadcom/bt/util/io/output/ClosedOutputStream;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/util/io/output/ProxyOutputStream;->out:Ljava/io/OutputStream;

    .line 67
    return-void
.end method
