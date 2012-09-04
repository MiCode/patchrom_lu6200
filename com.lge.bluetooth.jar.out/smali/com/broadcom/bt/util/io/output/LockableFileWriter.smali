.class public Lcom/broadcom/bt/util/io/output/LockableFileWriter;
.super Ljava/io/Writer;
.source "LockableFileWriter.java"


# static fields
.field private static final LCK:Ljava/lang/String; = ".lck"


# instance fields
.field private final lockFile:Ljava/io/File;

.field private final out:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/broadcom/bt/util/io/output/LockableFileWriter;-><init>(Ljava/io/File;ZLjava/lang/String;)V

    .line 126
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .parameter "file"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/broadcom/bt/util/io/output/LockableFileWriter;-><init>(Ljava/io/File;Ljava/lang/String;ZLjava/lang/String;)V

    .line 163
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 4
    .parameter "file"
    .parameter "encoding"
    .parameter "append"
    .parameter "lockDir"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 179
    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p1

    .line 180
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 181
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/broadcom/bt/util/io/FileUtils;->forceMkdir(Ljava/io/File;)V

    .line 183
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 184
    new-instance v1, Ljava/io/IOException;

    const-string v2, "File specified is a directory"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 188
    :cond_1
    if-nez p4, :cond_2

    .line 189
    const-string v1, "java.io.tmpdir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 191
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 192
    .local v0, lockDirFile:Ljava/io/File;
    invoke-static {v0}, Lcom/broadcom/bt/util/io/FileUtils;->forceMkdir(Ljava/io/File;)V

    .line 193
    invoke-direct {p0, v0}, Lcom/broadcom/bt/util/io/output/LockableFileWriter;->testLockDir(Ljava/io/File;)V

    .line 194
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".lck"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/broadcom/bt/util/io/output/LockableFileWriter;->lockFile:Ljava/io/File;

    .line 197
    invoke-direct {p0}, Lcom/broadcom/bt/util/io/output/LockableFileWriter;->createLock()V

    .line 200
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/util/io/output/LockableFileWriter;->initWriter(Ljava/io/File;Ljava/lang/String;Z)Ljava/io/Writer;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/util/io/output/LockableFileWriter;->out:Ljava/io/Writer;

    .line 201
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .locals 1
    .parameter "file"
    .parameter "append"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/broadcom/bt/util/io/output/LockableFileWriter;-><init>(Ljava/io/File;ZLjava/lang/String;)V

    .line 138
    return-void
.end method

.method public constructor <init>(Ljava/io/File;ZLjava/lang/String;)V
    .locals 1
    .parameter "file"
    .parameter "append"
    .parameter "lockDir"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/broadcom/bt/util/io/output/LockableFileWriter;-><init>(Ljava/io/File;Ljava/lang/String;ZLjava/lang/String;)V

    .line 151
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/broadcom/bt/util/io/output/LockableFileWriter;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .parameter "fileName"
    .parameter "append"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/broadcom/bt/util/io/output/LockableFileWriter;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1
    .parameter "fileName"
    .parameter "append"
    .parameter "lockDir"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/broadcom/bt/util/io/output/LockableFileWriter;-><init>(Ljava/io/File;ZLjava/lang/String;)V

    .line 114
    return-void
.end method

.method private createLock()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    const-class v1, Lcom/broadcom/bt/util/io/output/LockableFileWriter;

    monitor-enter v1

    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/util/io/output/LockableFileWriter;->lockFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t write file, lock "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/broadcom/bt/util/io/output/LockableFileWriter;->lockFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exists"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 233
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/util/io/output/LockableFileWriter;->lockFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 234
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    return-void
.end method

.method private initWriter(Ljava/io/File;Ljava/lang/String;Z)Ljava/io/Writer;
    .locals 7
    .parameter "file"
    .parameter "encoding"
    .parameter "append"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    .line 249
    .local v1, fileExistedAlready:Z
    const/4 v2, 0x0

    .line 250
    .local v2, stream:Ljava/io/OutputStream;
    const/4 v4, 0x0

    .line 252
    .local v4, writer:Ljava/io/Writer;
    if-nez p2, :cond_0

    .line 253
    :try_start_0
    new-instance v5, Ljava/io/FileWriter;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, p3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    .end local v4           #writer:Ljava/io/Writer;
    .local v5, writer:Ljava/io/Writer;
    move-object v4, v5

    .line 275
    .end local v5           #writer:Ljava/io/Writer;
    .restart local v4       #writer:Ljava/io/Writer;
    :goto_0
    return-object v4

    .line 255
    :cond_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 256
    .end local v2           #stream:Ljava/io/OutputStream;
    .local v3, stream:Ljava/io/OutputStream;
    :try_start_1
    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-direct {v5, v3, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .end local v4           #writer:Ljava/io/Writer;
    .restart local v5       #writer:Ljava/io/Writer;
    move-object v4, v5

    .end local v5           #writer:Ljava/io/Writer;
    .restart local v4       #writer:Ljava/io/Writer;
    move-object v2, v3

    .end local v3           #stream:Ljava/io/OutputStream;
    .restart local v2       #stream:Ljava/io/OutputStream;
    goto :goto_0

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, ex:Ljava/io/IOException;
    :goto_1
    invoke-static {v4}, Lcom/broadcom/bt/util/io/IOUtils;->closeQuietly(Ljava/io/Writer;)V

    .line 260
    invoke-static {v2}, Lcom/broadcom/bt/util/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 261
    iget-object v6, p0, Lcom/broadcom/bt/util/io/output/LockableFileWriter;->lockFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 262
    if-nez v1, :cond_1

    .line 263
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 265
    :cond_1
    throw v0

    .line 266
    .end local v0           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 267
    .local v0, ex:Ljava/lang/RuntimeException;
    :goto_2
    invoke-static {v4}, Lcom/broadcom/bt/util/io/IOUtils;->closeQuietly(Ljava/io/Writer;)V

    .line 268
    invoke-static {v2}, Lcom/broadcom/bt/util/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 269
    iget-object v6, p0, Lcom/broadcom/bt/util/io/output/LockableFileWriter;->lockFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 270
    if-nez v1, :cond_2

    .line 271
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 273
    :cond_2
    throw v0

    .line 266
    .end local v0           #ex:Ljava/lang/RuntimeException;
    .end local v2           #stream:Ljava/io/OutputStream;
    .restart local v3       #stream:Ljava/io/OutputStream;
    :catch_2
    move-exception v0

    move-object v2, v3

    .end local v3           #stream:Ljava/io/OutputStream;
    .restart local v2       #stream:Ljava/io/OutputStream;
    goto :goto_2

    .line 258
    .end local v2           #stream:Ljava/io/OutputStream;
    .restart local v3       #stream:Ljava/io/OutputStream;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3           #stream:Ljava/io/OutputStream;
    .restart local v2       #stream:Ljava/io/OutputStream;
    goto :goto_1
.end method

.method private testLockDir(Ljava/io/File;)V
    .locals 3
    .parameter "lockDir"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find lockDir: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_1

    .line 217
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not write to lockDir: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 286
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/util/io/output/LockableFileWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    iget-object v0, p0, Lcom/broadcom/bt/util/io/output/LockableFileWriter;->lockFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 290
    return-void

    .line 288
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/broadcom/bt/util/io/output/LockableFileWriter;->lockFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    throw v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 347
    iget-object v0, p0, Lcom/broadcom/bt/util/io/output/LockableFileWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 348
    return-void
.end method

.method public write(I)V
    .locals 1
    .parameter "idx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 299
    iget-object v0, p0, Lcom/broadcom/bt/util/io/output/LockableFileWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V

    .line 300
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 1
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 328
    iget-object v0, p0, Lcom/broadcom/bt/util/io/output/LockableFileWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 329
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 1
    .parameter "str"
    .parameter "st"
    .parameter "end"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 339
    iget-object v0, p0, Lcom/broadcom/bt/util/io/output/LockableFileWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 340
    return-void
.end method

.method public write([C)V
    .locals 1
    .parameter "chr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 308
    iget-object v0, p0, Lcom/broadcom/bt/util/io/output/LockableFileWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write([C)V

    .line 309
    return-void
.end method

.method public write([CII)V
    .locals 1
    .parameter "chr"
    .parameter "st"
    .parameter "end"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 319
    iget-object v0, p0, Lcom/broadcom/bt/util/io/output/LockableFileWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    .line 320
    return-void
.end method
