.class public Lcom/broadcom/bt/util/io/filefilter/WildcardFileFilter;
.super Lcom/broadcom/bt/util/io/filefilter/AbstractFileFilter;
.source "WildcardFileFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final caseSensitivity:Lcom/broadcom/bt/util/io/IOCase;

.field private final wildcards:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "wildcard"

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/broadcom/bt/util/io/filefilter/WildcardFileFilter;-><init>(Ljava/lang/String;Lcom/broadcom/bt/util/io/IOCase;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/broadcom/bt/util/io/IOCase;)V
    .locals 2
    .parameter "wildcard"
    .parameter "caseSensitivity"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/broadcom/bt/util/io/filefilter/AbstractFileFilter;-><init>()V

    .line 94
    if-nez p1, :cond_0

    .line 95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The wildcard must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/broadcom/bt/util/io/filefilter/WildcardFileFilter;->wildcards:[Ljava/lang/String;

    .line 98
    if-nez p2, :cond_1

    sget-object p2, Lcom/broadcom/bt/util/io/IOCase;->SENSITIVE:Lcom/broadcom/bt/util/io/IOCase;

    .end local p2
    :cond_1
    iput-object p2, p0, Lcom/broadcom/bt/util/io/filefilter/WildcardFileFilter;->caseSensitivity:Lcom/broadcom/bt/util/io/IOCase;

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .parameter "wildcards"

    .prologue
    .line 140
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/broadcom/bt/util/io/filefilter/WildcardFileFilter;-><init>(Ljava/util/List;Lcom/broadcom/bt/util/io/IOCase;)V

    .line 141
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/broadcom/bt/util/io/IOCase;)V
    .locals 2
    .parameter "wildcards"
    .parameter "caseSensitivity"

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/broadcom/bt/util/io/filefilter/AbstractFileFilter;-><init>()V

    .line 152
    if-nez p1, :cond_0

    .line 153
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The wildcard list must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/broadcom/bt/util/io/filefilter/WildcardFileFilter;->wildcards:[Ljava/lang/String;

    .line 156
    if-nez p2, :cond_1

    sget-object p2, Lcom/broadcom/bt/util/io/IOCase;->SENSITIVE:Lcom/broadcom/bt/util/io/IOCase;

    .end local p2
    :cond_1
    iput-object p2, p0, Lcom/broadcom/bt/util/io/filefilter/WildcardFileFilter;->caseSensitivity:Lcom/broadcom/bt/util/io/IOCase;

    .line 157
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 1
    .parameter "wildcards"

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/broadcom/bt/util/io/filefilter/WildcardFileFilter;-><init>([Ljava/lang/String;Lcom/broadcom/bt/util/io/IOCase;)V

    .line 112
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Lcom/broadcom/bt/util/io/IOCase;)V
    .locals 2
    .parameter "wildcards"
    .parameter "caseSensitivity"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/broadcom/bt/util/io/filefilter/AbstractFileFilter;-><init>()V

    .line 125
    if-nez p1, :cond_0

    .line 126
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The wildcard array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    iput-object p1, p0, Lcom/broadcom/bt/util/io/filefilter/WildcardFileFilter;->wildcards:[Ljava/lang/String;

    .line 129
    if-nez p2, :cond_1

    sget-object p2, Lcom/broadcom/bt/util/io/IOCase;->SENSITIVE:Lcom/broadcom/bt/util/io/IOCase;

    .end local p2
    :cond_1
    iput-object p2, p0, Lcom/broadcom/bt/util/io/filefilter/WildcardFileFilter;->caseSensitivity:Lcom/broadcom/bt/util/io/IOCase;

    .line 130
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 4
    .parameter "file"

    .prologue
    .line 183
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, name:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/broadcom/bt/util/io/filefilter/WildcardFileFilter;->wildcards:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 185
    iget-object v2, p0, Lcom/broadcom/bt/util/io/filefilter/WildcardFileFilter;->wildcards:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/broadcom/bt/util/io/filefilter/WildcardFileFilter;->caseSensitivity:Lcom/broadcom/bt/util/io/IOCase;

    invoke-static {v1, v2, v3}, Lcom/broadcom/bt/util/io/FilenameUtils;->wildcardMatch(Ljava/lang/String;Ljava/lang/String;Lcom/broadcom/bt/util/io/IOCase;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 186
    const/4 v2, 0x1

    .line 189
    :goto_1
    return v2

    .line 184
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 3
    .parameter "dir"
    .parameter "name"

    .prologue
    .line 168
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/broadcom/bt/util/io/filefilter/WildcardFileFilter;->wildcards:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 169
    iget-object v1, p0, Lcom/broadcom/bt/util/io/filefilter/WildcardFileFilter;->wildcards:[Ljava/lang/String;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/broadcom/bt/util/io/filefilter/WildcardFileFilter;->caseSensitivity:Lcom/broadcom/bt/util/io/IOCase;

    invoke-static {p2, v1, v2}, Lcom/broadcom/bt/util/io/FilenameUtils;->wildcardMatch(Ljava/lang/String;Ljava/lang/String;Lcom/broadcom/bt/util/io/IOCase;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    const/4 v1, 0x1

    .line 173
    :goto_1
    return v1

    .line 168
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 198
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 199
    .local v0, buffer:Ljava/lang/StringBuffer;
    invoke-super {p0}, Lcom/broadcom/bt/util/io/filefilter/AbstractFileFilter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 200
    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 201
    iget-object v2, p0, Lcom/broadcom/bt/util/io/filefilter/WildcardFileFilter;->wildcards:[Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 202
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/broadcom/bt/util/io/filefilter/WildcardFileFilter;->wildcards:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 203
    if-lez v1, :cond_0

    .line 204
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 206
    :cond_0
    iget-object v2, p0, Lcom/broadcom/bt/util/io/filefilter/WildcardFileFilter;->wildcards:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 202
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 209
    .end local v1           #i:I
    :cond_1
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 210
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
