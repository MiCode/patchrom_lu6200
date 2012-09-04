.class public Lcom/broadcom/bt/util/io/filefilter/NotFileFilter;
.super Lcom/broadcom/bt/util/io/filefilter/AbstractFileFilter;
.source "NotFileFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final filter:Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;


# direct methods
.method public constructor <init>(Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;)V
    .locals 2
    .parameter "filter"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/broadcom/bt/util/io/filefilter/AbstractFileFilter;-><init>()V

    .line 59
    if-nez p1, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The filter must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    iput-object p1, p0, Lcom/broadcom/bt/util/io/filefilter/NotFileFilter;->filter:Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;

    .line 63
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 1
    .parameter "file"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/broadcom/bt/util/io/filefilter/NotFileFilter;->filter:Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;

    invoke-interface {v0, p1}, Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;->accept(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .parameter "file"
    .parameter "name"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/broadcom/bt/util/io/filefilter/NotFileFilter;->filter:Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;

    invoke-interface {v0, p1, p2}, Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/broadcom/bt/util/io/filefilter/AbstractFileFilter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/broadcom/bt/util/io/filefilter/NotFileFilter;->filter:Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
