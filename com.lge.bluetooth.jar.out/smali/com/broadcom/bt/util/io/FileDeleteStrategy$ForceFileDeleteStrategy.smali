.class Lcom/broadcom/bt/util/io/FileDeleteStrategy$ForceFileDeleteStrategy;
.super Lcom/broadcom/bt/util/io/FileDeleteStrategy;
.source "FileDeleteStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/util/io/FileDeleteStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ForceFileDeleteStrategy"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 153
    const-string v0, "Force"

    invoke-direct {p0, v0}, Lcom/broadcom/bt/util/io/FileDeleteStrategy;-><init>(Ljava/lang/String;)V

    .line 154
    return-void
.end method


# virtual methods
.method protected doDelete(Ljava/io/File;)Z
    .locals 1
    .parameter "fileToDelete"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    invoke-static {p1}, Lcom/broadcom/bt/util/io/FileUtils;->forceDelete(Ljava/io/File;)V

    .line 169
    const/4 v0, 0x1

    return v0
.end method
