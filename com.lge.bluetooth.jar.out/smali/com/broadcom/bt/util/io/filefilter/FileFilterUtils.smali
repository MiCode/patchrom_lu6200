.class public Lcom/broadcom/bt/util/io/filefilter/FileFilterUtils;
.super Ljava/lang/Object;
.source "FileFilterUtils.java"


# static fields
.field private static cvsFilter:Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;

.field private static svnFilter:Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method public static ageFileFilter(J)Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;
    .locals 1
    .parameter "cutoff"

    .prologue
    .line 196
    new-instance v0, Lcom/broadcom/bt/util/io/filefilter/AgeFileFilter;

    invoke-direct {v0, p0, p1}, Lcom/broadcom/bt/util/io/filefilter/AgeFileFilter;-><init>(J)V

    return-object v0
.end method

.method public static ageFileFilter(JZ)Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;
    .locals 1
    .parameter "cutoff"
    .parameter "acceptOlder"

    .prologue
    .line 208
    new-instance v0, Lcom/broadcom/bt/util/io/filefilter/AgeFileFilter;

    invoke-direct {v0, p0, p1, p2}, Lcom/broadcom/bt/util/io/filefilter/AgeFileFilter;-><init>(JZ)V

    return-object v0
.end method

.method public static ageFileFilter(Ljava/io/File;)Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;
    .locals 1
    .parameter "cutoffReference"

    .prologue
    .line 245
    new-instance v0, Lcom/broadcom/bt/util/io/filefilter/AgeFileFilter;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/util/io/filefilter/AgeFileFilter;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public static ageFileFilter(Ljava/io/File;Z)Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;
    .locals 1
    .parameter "cutoffReference"
    .parameter "acceptOlder"

    .prologue
    .line 258
    new-instance v0, Lcom/broadcom/bt/util/io/filefilter/AgeFileFilter;

    invoke-direct {v0, p0, p1}, Lcom/broadcom/bt/util/io/filefilter/AgeFileFilter;-><init>(Ljava/io/File;Z)V

    return-object v0
.end method

.method public static ageFileFilter(Ljava/util/Date;)Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;
    .locals 1
    .parameter "cutoffDate"

    .prologue
    .line 220
    new-instance v0, Lcom/broadcom/bt/util/io/filefilter/AgeFileFilter;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/util/io/filefilter/AgeFileFilter;-><init>(Ljava/util/Date;)V

    return-object v0
.end method

.method public static ageFileFilter(Ljava/util/Date;Z)Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;
    .locals 1
    .parameter "cutoffDate"
    .parameter "acceptOlder"

    .prologue
    .line 232
    new-instance v0, Lcom/broadcom/bt/util/io/filefilter/AgeFileFilter;

    invoke-direct {v0, p0, p1}, Lcom/broadcom/bt/util/io/filefilter/AgeFileFilter;-><init>(Ljava/util/Date;Z)V

    return-object v0
.end method

.method public static andFileFilter(Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;)Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;
    .locals 1
    .parameter "filter1"
    .parameter "filter2"

    .prologue
    .line 120
    new-instance v0, Lcom/broadcom/bt/util/io/filefilter/AndFileFilter;

    invoke-direct {v0, p0, p1}, Lcom/broadcom/bt/util/io/filefilter/AndFileFilter;-><init>(Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;)V

    return-object v0
.end method

.method public static asFileFilter(Ljava/io/FileFilter;)Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;
    .locals 1
    .parameter "filter"

    .prologue
    .line 172
    new-instance v0, Lcom/broadcom/bt/util/io/filefilter/DelegateFileFilter;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/util/io/filefilter/DelegateFileFilter;-><init>(Ljava/io/FileFilter;)V

    return-object v0
.end method

.method public static asFileFilter(Ljava/io/FilenameFilter;)Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;
    .locals 1
    .parameter "filter"

    .prologue
    .line 183
    new-instance v0, Lcom/broadcom/bt/util/io/filefilter/DelegateFileFilter;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/util/io/filefilter/DelegateFileFilter;-><init>(Ljava/io/FilenameFilter;)V

    return-object v0
.end method

.method public static directoryFileFilter()Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/broadcom/bt/util/io/filefilter/DirectoryFileFilter;->DIRECTORY:Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;

    return-object v0
.end method

.method public static falseFileFilter()Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;
    .locals 1

    .prologue
    .line 160
    sget-object v0, Lcom/broadcom/bt/util/io/filefilter/FalseFileFilter;->FALSE:Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;

    return-object v0
.end method

.method public static fileFileFilter()Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/broadcom/bt/util/io/filefilter/FileFileFilter;->FILE:Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;

    return-object v0
.end method

.method public static makeCVSAware(Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;)Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;
    .locals 2
    .parameter "filter"

    .prologue
    .line 317
    sget-object v0, Lcom/broadcom/bt/util/io/filefilter/FileFilterUtils;->cvsFilter:Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;

    if-nez v0, :cond_0

    .line 318
    invoke-static {}, Lcom/broadcom/bt/util/io/filefilter/FileFilterUtils;->directoryFileFilter()Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;

    move-result-object v0

    const-string v1, "CVS"

    invoke-static {v1}, Lcom/broadcom/bt/util/io/filefilter/FileFilterUtils;->nameFileFilter(Ljava/lang/String;)Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/broadcom/bt/util/io/filefilter/FileFilterUtils;->andFileFilter(Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;)Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;

    move-result-object v0

    invoke-static {v0}, Lcom/broadcom/bt/util/io/filefilter/FileFilterUtils;->notFileFilter(Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;)Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;

    move-result-object v0

    sput-object v0, Lcom/broadcom/bt/util/io/filefilter/FileFilterUtils;->cvsFilter:Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;

    .line 321
    :cond_0
    if-nez p0, :cond_1

    .line 322
    sget-object v0, Lcom/broadcom/bt/util/io/filefilter/FileFilterUtils;->cvsFilter:Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;

    .line 324
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/broadcom/bt/util/io/filefilter/FileFilterUtils;->cvsFilter:Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;

    invoke-static {p0, v0}, Lcom/broadcom/bt/util/io/filefilter/FileFilterUtils;->andFileFilter(Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;)Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;

    move-result-object v0

    goto :goto_0
.end method

.method public static makeDirectoryOnly(Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;)Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;
    .locals 2
    .parameter "filter"

    .prologue
    .line 358
    if-nez p0, :cond_0

    .line 359
    sget-object v0, Lcom/broadcom/bt/util/io/filefilter/DirectoryFileFilter;->DIRECTORY:Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;

    .line 361
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/broadcom/bt/util/io/filefilter/AndFileFilter;

    sget-object v1, Lcom/broadcom/bt/util/io/filefilter/DirectoryFileFilter;->DIRECTORY:Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;

    invoke-direct {v0, v1, p0}, Lcom/broadcom/bt/util/io/filefilter/AndFileFilter;-><init>(Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;)V

    goto :goto_0
.end method

.method public static makeFileOnly(Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;)Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;
    .locals 2
    .parameter "filter"

    .prologue
    .line 372
    if-nez p0, :cond_0

    .line 373
    sget-object v0, Lcom/broadcom/bt/util/io/filefilter/FileFileFilter;->FILE:Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;

    .line 375
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/broadcom/bt/util/io/filefilter/AndFileFilter;

    sget-object v1, Lcom/broadcom/bt/util/io/filefilter/FileFileFilter;->FILE:Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;

    invoke-direct {v0, v1, p0}, Lcom/broadcom/bt/util/io/filefilter/AndFileFilter;-><init>(Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;)V

    goto :goto_0
.end method

.method public static makeSVNAware(Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;)Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;
    .locals 2
    .parameter "filter"

    .prologue
    .line 338
    sget-object v0, Lcom/broadcom/bt/util/io/filefilter/FileFilterUtils;->svnFilter:Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;

    if-nez v0, :cond_0

    .line 339
    invoke-static {}, Lcom/broadcom/bt/util/io/filefilter/FileFilterUtils;->directoryFileFilter()Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;

    move-result-object v0

    const-string v1, ".svn"

    invoke-static {v1}, Lcom/broadcom/bt/util/io/filefilter/FileFilterUtils;->nameFileFilter(Ljava/lang/String;)Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/broadcom/bt/util/io/filefilter/FileFilterUtils;->andFileFilter(Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;)Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;

    move-result-object v0

    invoke-static {v0}, Lcom/broadcom/bt/util/io/filefilter/FileFilterUtils;->notFileFilter(Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;)Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;

    move-result-object v0

    sput-object v0, Lcom/broadcom/bt/util/io/filefilter/FileFilterUtils;->svnFilter:Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;

    .line 342
    :cond_0
    if-nez p0, :cond_1

    .line 343
    sget-object v0, Lcom/broadcom/bt/util/io/filefilter/FileFilterUtils;->svnFilter:Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;

    .line 345
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/broadcom/bt/util/io/filefilter/FileFilterUtils;->svnFilter:Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;

    invoke-static {p0, v0}, Lcom/broadcom/bt/util/io/filefilter/FileFilterUtils;->andFileFilter(Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;)Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;

    move-result-object v0

    goto :goto_0
.end method

.method public static nameFileFilter(Ljava/lang/String;)Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;
    .locals 1
    .parameter "name"

    .prologue
    .line 90
    new-instance v0, Lcom/broadcom/bt/util/io/filefilter/NameFileFilter;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/util/io/filefilter/NameFileFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static notFileFilter(Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;)Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;
    .locals 1
    .parameter "filter"

    .prologue
    .line 141
    new-instance v0, Lcom/broadcom/bt/util/io/filefilter/NotFileFilter;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/util/io/filefilter/NotFileFilter;-><init>(Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;)V

    return-object v0
.end method

.method public static orFileFilter(Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;)Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;
    .locals 1
    .parameter "filter1"
    .parameter "filter2"

    .prologue
    .line 131
    new-instance v0, Lcom/broadcom/bt/util/io/filefilter/OrFileFilter;

    invoke-direct {v0, p0, p1}, Lcom/broadcom/bt/util/io/filefilter/OrFileFilter;-><init>(Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;)V

    return-object v0
.end method

.method public static prefixFileFilter(Ljava/lang/String;)Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;
    .locals 1
    .parameter "prefix"

    .prologue
    .line 70
    new-instance v0, Lcom/broadcom/bt/util/io/filefilter/PrefixFileFilter;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/util/io/filefilter/PrefixFileFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static sizeFileFilter(J)Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;
    .locals 1
    .parameter "threshold"

    .prologue
    .line 270
    new-instance v0, Lcom/broadcom/bt/util/io/filefilter/SizeFileFilter;

    invoke-direct {v0, p0, p1}, Lcom/broadcom/bt/util/io/filefilter/SizeFileFilter;-><init>(J)V

    return-object v0
.end method

.method public static sizeFileFilter(JZ)Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;
    .locals 1
    .parameter "threshold"
    .parameter "acceptLarger"

    .prologue
    .line 282
    new-instance v0, Lcom/broadcom/bt/util/io/filefilter/SizeFileFilter;

    invoke-direct {v0, p0, p1, p2}, Lcom/broadcom/bt/util/io/filefilter/SizeFileFilter;-><init>(JZ)V

    return-object v0
.end method

.method public static sizeRangeFileFilter(JJ)Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;
    .locals 5
    .parameter "minSizeInclusive"
    .parameter "maxSizeInclusive"

    .prologue
    .line 295
    new-instance v1, Lcom/broadcom/bt/util/io/filefilter/SizeFileFilter;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/broadcom/bt/util/io/filefilter/SizeFileFilter;-><init>(JZ)V

    .line 296
    .local v1, minimumFilter:Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;
    new-instance v0, Lcom/broadcom/bt/util/io/filefilter/SizeFileFilter;

    const-wide/16 v2, 0x1

    add-long/2addr v2, p2

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Lcom/broadcom/bt/util/io/filefilter/SizeFileFilter;-><init>(JZ)V

    .line 297
    .local v0, maximumFilter:Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;
    new-instance v2, Lcom/broadcom/bt/util/io/filefilter/AndFileFilter;

    invoke-direct {v2, v1, v0}, Lcom/broadcom/bt/util/io/filefilter/AndFileFilter;-><init>(Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;)V

    return-object v2
.end method

.method public static suffixFileFilter(Ljava/lang/String;)Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;
    .locals 1
    .parameter "suffix"

    .prologue
    .line 80
    new-instance v0, Lcom/broadcom/bt/util/io/filefilter/SuffixFileFilter;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/util/io/filefilter/SuffixFileFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static trueFileFilter()Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lcom/broadcom/bt/util/io/filefilter/TrueFileFilter;->TRUE:Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;

    return-object v0
.end method
