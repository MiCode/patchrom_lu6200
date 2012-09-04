.class public Lcom/broadcom/bt/util/io/filefilter/DelegateFileFilter;
.super Lcom/broadcom/bt/util/io/filefilter/AbstractFileFilter;
.source "DelegateFileFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final fileFilter:Ljava/io/FileFilter;

.field private final filenameFilter:Ljava/io/FilenameFilter;


# direct methods
.method public constructor <init>(Ljava/io/FileFilter;)V
    .locals 2
    .parameter "filter"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/broadcom/bt/util/io/filefilter/AbstractFileFilter;-><init>()V

    .line 75
    if-nez p1, :cond_0

    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The FileFilter must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    iput-object p1, p0, Lcom/broadcom/bt/util/io/filefilter/DelegateFileFilter;->fileFilter:Ljava/io/FileFilter;

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/util/io/filefilter/DelegateFileFilter;->filenameFilter:Ljava/io/FilenameFilter;

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/io/FilenameFilter;)V
    .locals 2
    .parameter "filter"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/broadcom/bt/util/io/filefilter/AbstractFileFilter;-><init>()V

    .line 62
    if-nez p1, :cond_0

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The FilenameFilter must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    iput-object p1, p0, Lcom/broadcom/bt/util/io/filefilter/DelegateFileFilter;->filenameFilter:Ljava/io/FilenameFilter;

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/util/io/filefilter/DelegateFileFilter;->fileFilter:Ljava/io/FileFilter;

    .line 67
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 1
    .parameter "file"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/broadcom/bt/util/io/filefilter/DelegateFileFilter;->fileFilter:Ljava/io/FileFilter;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/broadcom/bt/util/io/filefilter/DelegateFileFilter;->fileFilter:Ljava/io/FileFilter;

    invoke-interface {v0, p1}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v0

    .line 92
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/broadcom/bt/util/io/filefilter/AbstractFileFilter;->accept(Ljava/io/File;)Z

    move-result v0

    goto :goto_0
.end method

.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .parameter "dir"
    .parameter "name"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/broadcom/bt/util/io/filefilter/DelegateFileFilter;->filenameFilter:Ljava/io/FilenameFilter;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/broadcom/bt/util/io/filefilter/DelegateFileFilter;->filenameFilter:Ljava/io/FilenameFilter;

    invoke-interface {v0, p1, p2}, Ljava/io/FilenameFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    .line 107
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/broadcom/bt/util/io/filefilter/AbstractFileFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 117
    iget-object v1, p0, Lcom/broadcom/bt/util/io/filefilter/DelegateFileFilter;->fileFilter:Ljava/io/FileFilter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/broadcom/bt/util/io/filefilter/DelegateFileFilter;->fileFilter:Ljava/io/FileFilter;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, delegate:Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/broadcom/bt/util/io/filefilter/AbstractFileFilter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 117
    .end local v0           #delegate:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/broadcom/bt/util/io/filefilter/DelegateFileFilter;->filenameFilter:Ljava/io/FilenameFilter;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
