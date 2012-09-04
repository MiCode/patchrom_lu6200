.class Lcom/broadcom/bt/util/mime4j/message/MemoryTextBody;
.super Lcom/broadcom/bt/util/mime4j/message/AbstractBody;
.source "MemoryTextBody.java"

# interfaces
.implements Lcom/broadcom/bt/util/mime4j/message/TextBody;


# static fields
.field private static log:Lcom/broadcom/bt/util/mime4j/Log;


# instance fields
.field private mimeCharset:Ljava/lang/String;

.field private tempFile:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-class v0, Lcom/broadcom/bt/util/mime4j/message/MemoryTextBody;

    invoke-static {v0}, Lcom/broadcom/bt/util/mime4j/LogFactory;->getLog(Ljava/lang/Class;)Lcom/broadcom/bt/util/mime4j/Log;

    move-result-object v0

    sput-object v0, Lcom/broadcom/bt/util/mime4j/message/MemoryTextBody;->log:Lcom/broadcom/bt/util/mime4j/Log;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/broadcom/bt/util/mime4j/message/MemoryTextBody;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 3
    .parameter "is"
    .parameter "mimeCharset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 75
    invoke-direct {p0}, Lcom/broadcom/bt/util/mime4j/message/AbstractBody;-><init>()V

    .line 67
    iput-object v2, p0, Lcom/broadcom/bt/util/mime4j/message/MemoryTextBody;->mimeCharset:Ljava/lang/String;

    .line 68
    iput-object v2, p0, Lcom/broadcom/bt/util/mime4j/message/MemoryTextBody;->tempFile:[B

    .line 77
    iput-object p2, p0, Lcom/broadcom/bt/util/mime4j/message/MemoryTextBody;->mimeCharset:Ljava/lang/String;

    .line 79
    invoke-static {}, Lcom/broadcom/bt/util/mime4j/util/TempStorage;->getInstance()Lcom/broadcom/bt/util/mime4j/util/TempStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/broadcom/bt/util/mime4j/util/TempStorage;->getRootTempPath()Lcom/broadcom/bt/util/mime4j/util/TempPath;

    move-result-object v1

    .line 81
    .local v1, tempPath:Lcom/broadcom/bt/util/mime4j/util/TempPath;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 82
    .local v0, out:Ljava/io/ByteArrayOutputStream;
    invoke-static {p1, v0}, Lcom/broadcom/bt/util/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 83
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 84
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lcom/broadcom/bt/util/mime4j/message/MemoryTextBody;->tempFile:[B

    .line 85
    return-void
.end method


# virtual methods
.method public getReader()Ljava/io/Reader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    const/4 v0, 0x0

    .line 92
    .local v0, javaCharset:Ljava/lang/String;
    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/message/MemoryTextBody;->mimeCharset:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/message/MemoryTextBody;->mimeCharset:Ljava/lang/String;

    invoke-static {v1}, Lcom/broadcom/bt/util/mime4j/util/CharsetUtil;->toJavaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    :cond_0
    if-nez v0, :cond_1

    .line 97
    const-string v0, "ISO-8859-1"

    .line 99
    sget-object v1, Lcom/broadcom/bt/util/mime4j/message/MemoryTextBody;->log:Lcom/broadcom/bt/util/mime4j/Log;

    invoke-virtual {v1}, Lcom/broadcom/bt/util/mime4j/Log;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/message/MemoryTextBody;->mimeCharset:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 101
    sget-object v1, Lcom/broadcom/bt/util/mime4j/message/MemoryTextBody;->log:Lcom/broadcom/bt/util/mime4j/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No MIME charset specified. Using "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " instead."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/broadcom/bt/util/mime4j/Log;->warn(Ljava/lang/Object;)V

    .line 125
    :cond_1
    :goto_0
    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/message/MemoryTextBody;->tempFile:[B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v1

    .line 104
    :cond_2
    sget-object v1, Lcom/broadcom/bt/util/mime4j/message/MemoryTextBody;->log:Lcom/broadcom/bt/util/mime4j/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MIME charset \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/message/MemoryTextBody;->mimeCharset:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' has no "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "corresponding Java charset. Using "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " instead."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/broadcom/bt/util/mime4j/Log;->warn(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/message/MemoryTextBody;->tempFile:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0, p1}, Lcom/broadcom/bt/util/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 134
    return-void
.end method
