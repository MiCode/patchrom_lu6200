.class public Lcom/broadcom/bt/util/io/filefilter/RegexFileFilter;
.super Lcom/broadcom/bt/util/io/filefilter/AbstractFileFilter;
.source "RegexFileFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final pattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "pattern"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/broadcom/bt/util/io/filefilter/AbstractFileFilter;-><init>()V

    .line 75
    if-nez p1, :cond_0

    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Pattern is missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/util/io/filefilter/RegexFileFilter;->pattern:Ljava/util/regex/Pattern;

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .parameter "pattern"
    .parameter "flags"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/broadcom/bt/util/io/filefilter/AbstractFileFilter;-><init>()V

    .line 108
    if-nez p1, :cond_0

    .line 109
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Pattern is missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    invoke-static {p1, p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/util/io/filefilter/RegexFileFilter;->pattern:Ljava/util/regex/Pattern;

    .line 112
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/broadcom/bt/util/io/IOCase;)V
    .locals 3
    .parameter "pattern"
    .parameter "caseSensitivity"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/broadcom/bt/util/io/filefilter/AbstractFileFilter;-><init>()V

    .line 90
    if-nez p1, :cond_0

    .line 91
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Pattern is missing"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 93
    :cond_0
    const/4 v0, 0x0

    .line 94
    .local v0, flags:I
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/broadcom/bt/util/io/IOCase;->isCaseSensitive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 95
    const/4 v0, 0x2

    .line 97
    :cond_1
    invoke-static {p1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/util/io/filefilter/RegexFileFilter;->pattern:Ljava/util/regex/Pattern;

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/util/regex/Pattern;)V
    .locals 2
    .parameter "pattern"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/broadcom/bt/util/io/filefilter/AbstractFileFilter;-><init>()V

    .line 121
    if-nez p1, :cond_0

    .line 122
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Pattern is missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_0
    iput-object p1, p0, Lcom/broadcom/bt/util/io/filefilter/RegexFileFilter;->pattern:Ljava/util/regex/Pattern;

    .line 126
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .parameter "dir"
    .parameter "name"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/broadcom/bt/util/io/filefilter/RegexFileFilter;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method
