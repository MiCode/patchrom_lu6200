.class public interface abstract Lcom/broadcom/bt/util/mime4j/util/TempPath;
.super Ljava/lang/Object;
.source "TempPath.java"


# virtual methods
.method public abstract createTempFile()Lcom/broadcom/bt/util/mime4j/util/TempFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createTempFile(Ljava/lang/String;Ljava/lang/String;)Lcom/broadcom/bt/util/mime4j/util/TempFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createTempFile(Ljava/lang/String;Ljava/lang/String;Z)Lcom/broadcom/bt/util/mime4j/util/TempFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createTempPath()Lcom/broadcom/bt/util/mime4j/util/TempPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createTempPath(Ljava/lang/String;)Lcom/broadcom/bt/util/mime4j/util/TempPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract delete()V
.end method

.method public abstract getAbsolutePath()Ljava/lang/String;
.end method
