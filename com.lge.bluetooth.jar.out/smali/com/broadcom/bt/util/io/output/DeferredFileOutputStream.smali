.class public Lcom/broadcom/bt/util/io/output/DeferredFileOutputStream;
.super Lcom/broadcom/bt/util/io/output/ThresholdingOutputStream;
.source "DeferredFileOutputStream.java"


# instance fields
.field private closed:Z

.field private currentOutputStream:Ljava/io/OutputStream;

.field private directory:Ljava/io/File;

.field private memoryOutputStream:Lcom/broadcom/bt/util/io/output/ByteArrayOutputStream;

.field private outputFile:Ljava/io/File;

.field private prefix:Ljava/lang/String;

.field private suffix:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/io/File;)V
    .locals 1
    .parameter "threshold"
    .parameter "outputFile"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/broadcom/bt/util/io/output/ThresholdingOutputStream;-><init>(I)V

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/util/io/output/DeferredFileOutputStream;->closed:Z

    .line 122
    iput-object p2, p0, Lcom/broadcom/bt/util/io/output/DeferredFileOutputStream;->outputFile:Ljava/io/File;

    .line 124
    new-instance v0, Lcom/broadcom/bt/util/io/output/ByteArrayOutputStream;

    invoke-direct {v0}, Lcom/broadcom/bt/util/io/output/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/util/io/output/DeferredFileOutputStream;->memoryOutputStream:Lcom/broadcom/bt/util/io/output/ByteArrayOutputStream;

    .line 125
    iget-object v0, p0, Lcom/broadcom/bt/util/io/output/DeferredFileOutputStream;->memoryOutputStream:Lcom/broadcom/bt/util/io/output/ByteArrayOutputStream;

    iput-object v0, p0, Lcom/broadcom/bt/util/io/output/DeferredFileOutputStream;->currentOutputStream:Ljava/io/OutputStream;

    .line 126
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 2
    .parameter "threshold"
    .parameter "prefix"
    .parameter "suffix"
    .parameter "directory"

    .prologue
    .line 142
    const/4 v0, 0x0

    check-cast v0, Ljava/io/File;

    invoke-direct {p0, p1, v0}, Lcom/broadcom/bt/util/io/output/DeferredFileOutputStream;-><init>(ILjava/io/File;)V

    .line 143
    if-nez p2, :cond_0

    .line 144
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Temporary file prefix is missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_0
    iput-object p2, p0, Lcom/broadcom/bt/util/io/output/DeferredFileOutputStream;->prefix:Ljava/lang/String;

    .line 147
    iput-object p3, p0, Lcom/broadcom/bt/util/io/output/DeferredFileOutputStream;->suffix:Ljava/lang/String;

    .line 148
    iput-object p4, p0, Lcom/broadcom/bt/util/io/output/DeferredFileOutputStream;->directory:Ljava/io/File;

    .line 149
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 253
    invoke-super {p0}, Lcom/broadcom/bt/util/io/output/ThresholdingOutputStream;->close()V

    .line 254
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/util/io/output/DeferredFileOutputStream;->closed:Z

    .line 256
    iget-object v0, p0, Lcom/broadcom/bt/util/io/output/DeferredFileOutputStream;->currentOutputStream:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/broadcom/bt/util/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 257
    iget-object v0, p0, Lcom/broadcom/bt/util/io/output/DeferredFileOutputStream;->memoryOutputStream:Lcom/broadcom/bt/util/io/output/ByteArrayOutputStream;

    iget-object v1, p0, Lcom/broadcom/bt/util/io/output/DeferredFileOutputStream;->currentOutputStream:Ljava/io/OutputStream;

    if-eq v0, v1, :cond_0

    .line 258
    iget-object v0, p0, Lcom/broadcom/bt/util/io/output/DeferredFileOutputStream;->memoryOutputStream:Lcom/broadcom/bt/util/io/output/ByteArrayOutputStream;

    invoke-static {v0}, Lcom/broadcom/bt/util/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 260
    :cond_0
    iput-object v2, p0, Lcom/broadcom/bt/util/io/output/DeferredFileOutputStream;->currentOutputStream:Ljava/io/OutputStream;

    iput-object v2, p0, Lcom/broadcom/bt/util/io/output/DeferredFileOutputStream;->memoryOutputStream:Lcom/broadcom/bt/util/io/output/ByteArrayOutputStream;

    .line 262
    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/broadcom/bt/util/io/output/DeferredFileOutputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 300
    :try_start_0
    invoke-virtual {p0}, Lcom/broadcom/bt/util/io/output/DeferredFileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 301
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/broadcom/bt/util/io/output/DeferredFileOutputStream;->memoryOutputStream:Lcom/broadcom/bt/util/io/output/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/broadcom/bt/util/io/output/DeferredFileOutputStream;->memoryOutputStream:Lcom/broadcom/bt/util/io/output/ByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/broadcom/bt/util/io/output/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 222
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/broadcom/bt/util/io/output/DeferredFileOutputStream;->outputFile:Ljava/io/File;

    return-object v0
.end method

.method protected getStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lcom/broadcom/bt/util/io/output/DeferredFileOutputStream;->currentOutputStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public isInMemory()Z
    .locals 1

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/broadcom/bt/util/io/output/DeferredFileOutputStream;->isThresholdExceeded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected thresholdReached()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    iget-object v1, p0, Lcom/broadcom/bt/util/io/output/DeferredFileOutputStream;->prefix:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/broadcom/bt/util/io/output/DeferredFileOutputStream;->prefix:Ljava/lang/String;

    iget-object v2, p0, Lcom/broadcom/bt/util/io/output/DeferredFileOutputStream;->suffix:Ljava/lang/String;

    iget-object v3, p0, Lcom/broadcom/bt/util/io/output/DeferredFileOutputStream;->directory:Ljava/io/File;

    invoke-static {v1, v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/util/io/output/DeferredFileOutputStream;->outputFile:Ljava/io/File;

    .line 182
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/broadcom/bt/util/io/output/DeferredFileOutputStream;->outputFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 183
    .local v0, fos:Ljava/io/FileOutputStream;
    iget-object v1, p0, Lcom/broadcom/bt/util/io/output/DeferredFileOutputStream;->memoryOutputStream:Lcom/broadcom/bt/util/io/output/ByteArrayOutputStream;

    invoke-virtual {v1, v0}, Lcom/broadcom/bt/util/io/output/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 184
    iput-object v0, p0, Lcom/broadcom/bt/util/io/output/DeferredFileOutputStream;->currentOutputStream:Ljava/io/OutputStream;

    .line 185
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/util/io/output/DeferredFileOutputStream;->memoryOutputStream:Lcom/broadcom/bt/util/io/output/ByteArrayOutputStream;

    .line 187
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 189
    :cond_1
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 277
    iget-boolean v1, p0, Lcom/broadcom/bt/util/io/output/DeferredFileOutputStream;->closed:Z

    if-nez v1, :cond_0

    .line 279
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Stream not closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 282
    :cond_0
    invoke-virtual {p0}, Lcom/broadcom/bt/util/io/output/DeferredFileOutputStream;->isInMemory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 284
    iget-object v1, p0, Lcom/broadcom/bt/util/io/output/DeferredFileOutputStream;->memoryOutputStream:Lcom/broadcom/bt/util/io/output/ByteArrayOutputStream;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/util/io/output/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 295
    :goto_0
    return-void

    .line 288
    :cond_1
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/broadcom/bt/util/io/output/DeferredFileOutputStream;->outputFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 290
    .local v0, fis:Ljava/io/FileInputStream;
    :try_start_0
    invoke-static {v0, p1}, Lcom/broadcom/bt/util/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    invoke-static {v0}, Lcom/broadcom/bt/util/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/broadcom/bt/util/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v1
.end method
