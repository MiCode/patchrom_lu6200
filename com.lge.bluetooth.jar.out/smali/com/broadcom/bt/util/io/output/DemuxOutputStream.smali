.class public Lcom/broadcom/bt/util/io/output/DemuxOutputStream;
.super Ljava/io/OutputStream;
.source "DemuxOutputStream.java"


# instance fields
.field private m_streams:Ljava/lang/InheritableThreadLocal;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 49
    new-instance v0, Ljava/lang/InheritableThreadLocal;

    invoke-direct {v0}, Ljava/lang/InheritableThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/util/io/output/DemuxOutputStream;->m_streams:Ljava/lang/InheritableThreadLocal;

    return-void
.end method

.method private getStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/broadcom/bt/util/io/output/DemuxOutputStream;->m_streams:Ljava/lang/InheritableThreadLocal;

    invoke-virtual {v0}, Ljava/lang/InheritableThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    return-object v0
.end method


# virtual methods
.method public bindStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 2
    .parameter "output"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/broadcom/bt/util/io/output/DemuxOutputStream;->getStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 60
    .local v0, stream:Ljava/io/OutputStream;
    iget-object v1, p0, Lcom/broadcom/bt/util/io/output/DemuxOutputStream;->m_streams:Ljava/lang/InheritableThreadLocal;

    invoke-virtual {v1, p1}, Ljava/lang/InheritableThreadLocal;->set(Ljava/lang/Object;)V

    .line 61
    return-object v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/broadcom/bt/util/io/output/DemuxOutputStream;->getStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 73
    .local v0, output:Ljava/io/OutputStream;
    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 77
    :cond_0
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
    .line 87
    invoke-direct {p0}, Lcom/broadcom/bt/util/io/output/DemuxOutputStream;->getStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 88
    .local v0, output:Ljava/io/OutputStream;
    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 92
    :cond_0
    return-void
.end method

.method public write(I)V
    .locals 1
    .parameter "ch"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/broadcom/bt/util/io/output/DemuxOutputStream;->getStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 104
    .local v0, output:Ljava/io/OutputStream;
    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 108
    :cond_0
    return-void
.end method
