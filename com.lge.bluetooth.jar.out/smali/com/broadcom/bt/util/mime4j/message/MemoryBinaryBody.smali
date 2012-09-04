.class Lcom/broadcom/bt/util/mime4j/message/MemoryBinaryBody;
.super Lcom/broadcom/bt/util/mime4j/message/AbstractBody;
.source "MemoryBinaryBody.java"

# interfaces
.implements Lcom/broadcom/bt/util/mime4j/message/BinaryBody;


# static fields
.field private static log:Lcom/broadcom/bt/util/mime4j/Log;


# instance fields
.field private parent:Lcom/broadcom/bt/util/mime4j/message/Entity;

.field private tempFile:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/broadcom/bt/util/mime4j/message/MemoryBinaryBody;

    invoke-static {v0}, Lcom/broadcom/bt/util/mime4j/LogFactory;->getLog(Ljava/lang/Class;)Lcom/broadcom/bt/util/mime4j/Log;

    move-result-object v0

    sput-object v0, Lcom/broadcom/bt/util/mime4j/message/MemoryBinaryBody;->log:Lcom/broadcom/bt/util/mime4j/Log;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 72
    invoke-direct {p0}, Lcom/broadcom/bt/util/mime4j/message/AbstractBody;-><init>()V

    .line 63
    iput-object v2, p0, Lcom/broadcom/bt/util/mime4j/message/MemoryBinaryBody;->parent:Lcom/broadcom/bt/util/mime4j/message/Entity;

    .line 64
    iput-object v2, p0, Lcom/broadcom/bt/util/mime4j/message/MemoryBinaryBody;->tempFile:[B

    .line 74
    invoke-static {}, Lcom/broadcom/bt/util/mime4j/util/TempStorage;->getInstance()Lcom/broadcom/bt/util/mime4j/util/TempStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/broadcom/bt/util/mime4j/util/TempStorage;->getRootTempPath()Lcom/broadcom/bt/util/mime4j/util/TempPath;

    move-result-object v1

    .line 76
    .local v1, tempPath:Lcom/broadcom/bt/util/mime4j/util/TempPath;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 77
    .local v0, out:Ljava/io/ByteArrayOutputStream;
    invoke-static {p1, v0}, Lcom/broadcom/bt/util/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 78
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 79
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lcom/broadcom/bt/util/mime4j/message/MemoryBinaryBody;->tempFile:[B

    .line 80
    return-void
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/message/MemoryBinaryBody;->tempFile:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public getParent()Lcom/broadcom/bt/util/mime4j/message/Entity;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/message/MemoryBinaryBody;->parent:Lcom/broadcom/bt/util/mime4j/message/Entity;

    return-object v0
.end method

.method public setParent(Lcom/broadcom/bt/util/mime4j/message/Entity;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/broadcom/bt/util/mime4j/message/MemoryBinaryBody;->parent:Lcom/broadcom/bt/util/mime4j/message/Entity;

    .line 94
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/broadcom/bt/util/mime4j/message/MemoryBinaryBody;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/broadcom/bt/util/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 108
    return-void
.end method
