.class public Lcom/broadcom/bt/util/io/filefilter/SuffixFileFilter;
.super Lcom/broadcom/bt/util/io/filefilter/AbstractFileFilter;
.source "SuffixFileFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final caseSensitivity:Lcom/broadcom/bt/util/io/IOCase;

.field private final suffixes:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "suffix"

    .prologue
    .line 80
    sget-object v0, Lcom/broadcom/bt/util/io/IOCase;->SENSITIVE:Lcom/broadcom/bt/util/io/IOCase;

    invoke-direct {p0, p1, v0}, Lcom/broadcom/bt/util/io/filefilter/SuffixFileFilter;-><init>(Ljava/lang/String;Lcom/broadcom/bt/util/io/IOCase;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/broadcom/bt/util/io/IOCase;)V
    .locals 2
    .parameter "suffix"
    .parameter "caseSensitivity"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/broadcom/bt/util/io/filefilter/AbstractFileFilter;-><init>()V

    .line 93
    if-nez p1, :cond_0

    .line 94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The suffix must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/broadcom/bt/util/io/filefilter/SuffixFileFilter;->suffixes:[Ljava/lang/String;

    .line 97
    if-nez p2, :cond_1

    sget-object p2, Lcom/broadcom/bt/util/io/IOCase;->SENSITIVE:Lcom/broadcom/bt/util/io/IOCase;

    .end local p2
    :cond_1
    iput-object p2, p0, Lcom/broadcom/bt/util/io/filefilter/SuffixFileFilter;->caseSensitivity:Lcom/broadcom/bt/util/io/IOCase;

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .parameter "suffixes"

    .prologue
    .line 141
    sget-object v0, Lcom/broadcom/bt/util/io/IOCase;->SENSITIVE:Lcom/broadcom/bt/util/io/IOCase;

    invoke-direct {p0, p1, v0}, Lcom/broadcom/bt/util/io/filefilter/SuffixFileFilter;-><init>(Ljava/util/List;Lcom/broadcom/bt/util/io/IOCase;)V

    .line 142
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/broadcom/bt/util/io/IOCase;)V
    .locals 2
    .parameter "suffixes"
    .parameter "caseSensitivity"

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/broadcom/bt/util/io/filefilter/AbstractFileFilter;-><init>()V

    .line 155
    if-nez p1, :cond_0

    .line 156
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The list of suffixes must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/broadcom/bt/util/io/filefilter/SuffixFileFilter;->suffixes:[Ljava/lang/String;

    .line 159
    if-nez p2, :cond_1

    sget-object p2, Lcom/broadcom/bt/util/io/IOCase;->SENSITIVE:Lcom/broadcom/bt/util/io/IOCase;

    .end local p2
    :cond_1
    iput-object p2, p0, Lcom/broadcom/bt/util/io/filefilter/SuffixFileFilter;->caseSensitivity:Lcom/broadcom/bt/util/io/IOCase;

    .line 160
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 1
    .parameter "suffixes"

    .prologue
    .line 110
    sget-object v0, Lcom/broadcom/bt/util/io/IOCase;->SENSITIVE:Lcom/broadcom/bt/util/io/IOCase;

    invoke-direct {p0, p1, v0}, Lcom/broadcom/bt/util/io/filefilter/SuffixFileFilter;-><init>([Ljava/lang/String;Lcom/broadcom/bt/util/io/IOCase;)V

    .line 111
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Lcom/broadcom/bt/util/io/IOCase;)V
    .locals 2
    .parameter "suffixes"
    .parameter "caseSensitivity"

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/broadcom/bt/util/io/filefilter/AbstractFileFilter;-><init>()V

    .line 126
    if-nez p1, :cond_0

    .line 127
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The array of suffixes must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    iput-object p1, p0, Lcom/broadcom/bt/util/io/filefilter/SuffixFileFilter;->suffixes:[Ljava/lang/String;

    .line 130
    if-nez p2, :cond_1

    sget-object p2, Lcom/broadcom/bt/util/io/IOCase;->SENSITIVE:Lcom/broadcom/bt/util/io/IOCase;

    .end local p2
    :cond_1
    iput-object p2, p0, Lcom/broadcom/bt/util/io/filefilter/SuffixFileFilter;->caseSensitivity:Lcom/broadcom/bt/util/io/IOCase;

    .line 131
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 4
    .parameter "file"

    .prologue
    .line 169
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, name:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/broadcom/bt/util/io/filefilter/SuffixFileFilter;->suffixes:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 171
    iget-object v2, p0, Lcom/broadcom/bt/util/io/filefilter/SuffixFileFilter;->caseSensitivity:Lcom/broadcom/bt/util/io/IOCase;

    iget-object v3, p0, Lcom/broadcom/bt/util/io/filefilter/SuffixFileFilter;->suffixes:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v1, v3}, Lcom/broadcom/bt/util/io/IOCase;->checkEndsWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    const/4 v2, 0x1

    .line 175
    :goto_1
    return v2

    .line 170
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 175
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 3
    .parameter "file"
    .parameter "name"

    .prologue
    .line 186
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/broadcom/bt/util/io/filefilter/SuffixFileFilter;->suffixes:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 187
    iget-object v1, p0, Lcom/broadcom/bt/util/io/filefilter/SuffixFileFilter;->caseSensitivity:Lcom/broadcom/bt/util/io/IOCase;

    iget-object v2, p0, Lcom/broadcom/bt/util/io/filefilter/SuffixFileFilter;->suffixes:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, p2, v2}, Lcom/broadcom/bt/util/io/IOCase;->checkEndsWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    const/4 v1, 0x1

    .line 191
    :goto_1
    return v1

    .line 186
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 191
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 200
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 201
    .local v0, buffer:Ljava/lang/StringBuffer;
    invoke-super {p0}, Lcom/broadcom/bt/util/io/filefilter/AbstractFileFilter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 202
    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 203
    iget-object v2, p0, Lcom/broadcom/bt/util/io/filefilter/SuffixFileFilter;->suffixes:[Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 204
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/broadcom/bt/util/io/filefilter/SuffixFileFilter;->suffixes:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 205
    if-lez v1, :cond_0

    .line 206
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 208
    :cond_0
    iget-object v2, p0, Lcom/broadcom/bt/util/io/filefilter/SuffixFileFilter;->suffixes:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 204
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    .end local v1           #i:I
    :cond_1
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 212
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
