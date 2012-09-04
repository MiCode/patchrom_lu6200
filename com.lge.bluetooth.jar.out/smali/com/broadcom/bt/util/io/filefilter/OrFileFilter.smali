.class public Lcom/broadcom/bt/util/io/filefilter/OrFileFilter;
.super Lcom/broadcom/bt/util/io/filefilter/AbstractFileFilter;
.source "OrFileFilter.java"

# interfaces
.implements Lcom/broadcom/bt/util/io/filefilter/ConditionalFileFilter;
.implements Ljava/io/Serializable;


# instance fields
.field private fileFilters:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/broadcom/bt/util/io/filefilter/AbstractFileFilter;-><init>()V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/util/io/filefilter/OrFileFilter;->fileFilters:Ljava/util/List;

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;)V
    .locals 2
    .parameter "filter1"
    .parameter "filter2"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/broadcom/bt/util/io/filefilter/AbstractFileFilter;-><init>()V

    .line 94
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The filters must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/util/io/filefilter/OrFileFilter;->fileFilters:Ljava/util/List;

    .line 98
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/util/io/filefilter/OrFileFilter;->addFileFilter(Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;)V

    .line 99
    invoke-virtual {p0, p2}, Lcom/broadcom/bt/util/io/filefilter/OrFileFilter;->addFileFilter(Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .parameter "fileFilters"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/broadcom/bt/util/io/filefilter/AbstractFileFilter;-><init>()V

    .line 79
    if-nez p1, :cond_0

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/util/io/filefilter/OrFileFilter;->fileFilters:Ljava/util/List;

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/broadcom/bt/util/io/filefilter/OrFileFilter;->fileFilters:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 3
    .parameter "file"

    .prologue
    .line 134
    iget-object v2, p0, Lcom/broadcom/bt/util/io/filefilter/OrFileFilter;->fileFilters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iter:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 135
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;

    .line 136
    .local v0, fileFilter:Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;
    invoke-interface {v0, p1}, Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;->accept(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    const/4 v2, 0x1

    .line 140
    .end local v0           #fileFilter:Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 3
    .parameter "file"
    .parameter "name"

    .prologue
    .line 147
    iget-object v2, p0, Lcom/broadcom/bt/util/io/filefilter/OrFileFilter;->fileFilters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iter:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 148
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;

    .line 149
    .local v0, fileFilter:Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;
    invoke-interface {v0, p1, p2}, Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    const/4 v2, 0x1

    .line 153
    .end local v0           #fileFilter:Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public addFileFilter(Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;)V
    .locals 1
    .parameter "ioFileFilter"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/broadcom/bt/util/io/filefilter/OrFileFilter;->fileFilters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    return-void
.end method

.method public getFileFilters()Ljava/util/List;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/broadcom/bt/util/io/filefilter/OrFileFilter;->fileFilters:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeFileFilter(Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;)Z
    .locals 1
    .parameter "ioFileFilter"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/broadcom/bt/util/io/filefilter/OrFileFilter;->fileFilters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setFileFilters(Ljava/util/List;)V
    .locals 0
    .parameter "fileFilters"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/broadcom/bt/util/io/filefilter/OrFileFilter;->fileFilters:Ljava/util/List;

    .line 128
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 162
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 163
    .local v0, buffer:Ljava/lang/StringBuffer;
    invoke-super {p0}, Lcom/broadcom/bt/util/io/filefilter/AbstractFileFilter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    const-string v3, "("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    iget-object v3, p0, Lcom/broadcom/bt/util/io/filefilter/OrFileFilter;->fileFilters:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 166
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/broadcom/bt/util/io/filefilter/OrFileFilter;->fileFilters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 167
    if-lez v2, :cond_0

    .line 168
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    :cond_0
    iget-object v3, p0, Lcom/broadcom/bt/util/io/filefilter/OrFileFilter;->fileFilters:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 171
    .local v1, filter:Ljava/lang/Object;
    if-nez v1, :cond_1

    const-string v3, "null"

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 171
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 174
    .end local v1           #filter:Ljava/lang/Object;
    .end local v2           #i:I
    :cond_2
    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
