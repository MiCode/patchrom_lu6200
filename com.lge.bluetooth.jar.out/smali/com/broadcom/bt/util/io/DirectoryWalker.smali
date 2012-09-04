.class public abstract Lcom/broadcom/bt/util/io/DirectoryWalker;
.super Ljava/lang/Object;
.source "DirectoryWalker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/util/io/DirectoryWalker$CancelException;
    }
.end annotation


# instance fields
.field private final depthLimit:I

.field private final filter:Ljava/io/FileFilter;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 283
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/broadcom/bt/util/io/DirectoryWalker;-><init>(Ljava/io/FileFilter;I)V

    .line 284
    return-void
.end method

.method protected constructor <init>(Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;I)V
    .locals 1
    .parameter "directoryFilter"
    .parameter "fileFilter"
    .parameter "depthLimit"

    .prologue
    .line 317
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 318
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 319
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/util/io/DirectoryWalker;->filter:Ljava/io/FileFilter;

    .line 327
    :goto_0
    iput p3, p0, Lcom/broadcom/bt/util/io/DirectoryWalker;->depthLimit:I

    .line 328
    return-void

    .line 321
    :cond_0
    if-eqz p1, :cond_1

    .line 322
    :goto_1
    if-eqz p2, :cond_2

    .line 323
    :goto_2
    invoke-static {p1}, Lcom/broadcom/bt/util/io/filefilter/FileFilterUtils;->makeDirectoryOnly(Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;)Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;

    move-result-object p1

    .line 324
    invoke-static {p2}, Lcom/broadcom/bt/util/io/filefilter/FileFilterUtils;->makeFileOnly(Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;)Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;

    move-result-object p2

    .line 325
    invoke-static {p1, p2}, Lcom/broadcom/bt/util/io/filefilter/FileFilterUtils;->orFileFilter(Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;)Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/util/io/DirectoryWalker;->filter:Ljava/io/FileFilter;

    goto :goto_0

    .line 321
    :cond_1
    sget-object p1, Lcom/broadcom/bt/util/io/filefilter/TrueFileFilter;->TRUE:Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;

    goto :goto_1

    .line 322
    :cond_2
    sget-object p2, Lcom/broadcom/bt/util/io/filefilter/TrueFileFilter;->TRUE:Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;

    goto :goto_2
.end method

.method protected constructor <init>(Ljava/io/FileFilter;I)V
    .locals 0
    .parameter "filter"
    .parameter "depthLimit"

    .prologue
    .line 298
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 299
    iput-object p1, p0, Lcom/broadcom/bt/util/io/DirectoryWalker;->filter:Ljava/io/FileFilter;

    .line 300
    iput p2, p0, Lcom/broadcom/bt/util/io/DirectoryWalker;->depthLimit:I

    .line 301
    return-void
.end method

.method private walk(Ljava/io/File;ILjava/util/Collection;)V
    .locals 5
    .parameter "directory"
    .parameter "depth"
    .parameter "results"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 368
    invoke-virtual {p0, p1, p2, p3}, Lcom/broadcom/bt/util/io/DirectoryWalker;->checkIfCancelled(Ljava/io/File;ILjava/util/Collection;)V

    .line 369
    invoke-virtual {p0, p1, p2, p3}, Lcom/broadcom/bt/util/io/DirectoryWalker;->handleDirectory(Ljava/io/File;ILjava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 370
    invoke-virtual {p0, p1, p2, p3}, Lcom/broadcom/bt/util/io/DirectoryWalker;->handleDirectoryStart(Ljava/io/File;ILjava/util/Collection;)V

    .line 371
    add-int/lit8 v0, p2, 0x1

    .line 372
    .local v0, childDepth:I
    iget v4, p0, Lcom/broadcom/bt/util/io/DirectoryWalker;->depthLimit:I

    if-ltz v4, :cond_0

    iget v4, p0, Lcom/broadcom/bt/util/io/DirectoryWalker;->depthLimit:I

    if-gt v0, v4, :cond_1

    .line 373
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/broadcom/bt/util/io/DirectoryWalker;->checkIfCancelled(Ljava/io/File;ILjava/util/Collection;)V

    .line 374
    iget-object v4, p0, Lcom/broadcom/bt/util/io/DirectoryWalker;->filter:Ljava/io/FileFilter;

    if-nez v4, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 375
    .local v2, childFiles:[Ljava/io/File;
    :goto_0
    if-nez v2, :cond_4

    .line 376
    invoke-virtual {p0, p1, v0, p3}, Lcom/broadcom/bt/util/io/DirectoryWalker;->handleRestricted(Ljava/io/File;ILjava/util/Collection;)V

    .line 390
    .end local v2           #childFiles:[Ljava/io/File;
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/broadcom/bt/util/io/DirectoryWalker;->handleDirectoryEnd(Ljava/io/File;ILjava/util/Collection;)V

    .line 392
    .end local v0           #childDepth:I
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/broadcom/bt/util/io/DirectoryWalker;->checkIfCancelled(Ljava/io/File;ILjava/util/Collection;)V

    .line 393
    return-void

    .line 374
    .restart local v0       #childDepth:I
    :cond_3
    iget-object v4, p0, Lcom/broadcom/bt/util/io/DirectoryWalker;->filter:Ljava/io/FileFilter;

    invoke-virtual {p1, v4}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    goto :goto_0

    .line 378
    .restart local v2       #childFiles:[Ljava/io/File;
    :cond_4
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_1

    .line 379
    aget-object v1, v2, v3

    .line 380
    .local v1, childFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 381
    invoke-direct {p0, v1, v0, p3}, Lcom/broadcom/bt/util/io/DirectoryWalker;->walk(Ljava/io/File;ILjava/util/Collection;)V

    .line 378
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 383
    :cond_5
    invoke-virtual {p0, v1, v0, p3}, Lcom/broadcom/bt/util/io/DirectoryWalker;->checkIfCancelled(Ljava/io/File;ILjava/util/Collection;)V

    .line 384
    invoke-virtual {p0, v1, v0, p3}, Lcom/broadcom/bt/util/io/DirectoryWalker;->handleFile(Ljava/io/File;ILjava/util/Collection;)V

    .line 385
    invoke-virtual {p0, v1, v0, p3}, Lcom/broadcom/bt/util/io/DirectoryWalker;->checkIfCancelled(Ljava/io/File;ILjava/util/Collection;)V

    goto :goto_2
.end method


# virtual methods
.method protected final checkIfCancelled(Ljava/io/File;ILjava/util/Collection;)V
    .locals 1
    .parameter "file"
    .parameter "depth"
    .parameter "results"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 411
    invoke-virtual {p0, p1, p2, p3}, Lcom/broadcom/bt/util/io/DirectoryWalker;->handleIsCancelled(Ljava/io/File;ILjava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    new-instance v0, Lcom/broadcom/bt/util/io/DirectoryWalker$CancelException;

    invoke-direct {v0, p1, p2}, Lcom/broadcom/bt/util/io/DirectoryWalker$CancelException;-><init>(Ljava/io/File;I)V

    throw v0

    .line 414
    :cond_0
    return-void
.end method

.method protected handleCancelled(Ljava/io/File;Ljava/util/Collection;Lcom/broadcom/bt/util/io/DirectoryWalker$CancelException;)V
    .locals 0
    .parameter "startDirectory"
    .parameter "results"
    .parameter "cancel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 473
    throw p3
.end method

.method protected handleDirectory(Ljava/io/File;ILjava/util/Collection;)Z
    .locals 1
    .parameter "directory"
    .parameter "depth"
    .parameter "results"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 507
    const/4 v0, 0x1

    return v0
.end method

.method protected handleDirectoryEnd(Ljava/io/File;ILjava/util/Collection;)V
    .locals 0
    .parameter "directory"
    .parameter "depth"
    .parameter "results"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 564
    return-void
.end method

.method protected handleDirectoryStart(Ljava/io/File;ILjava/util/Collection;)V
    .locals 0
    .parameter "directory"
    .parameter "depth"
    .parameter "results"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 522
    return-void
.end method

.method protected handleEnd(Ljava/util/Collection;)V
    .locals 0
    .parameter "results"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 576
    return-void
.end method

.method protected handleFile(Ljava/io/File;ILjava/util/Collection;)V
    .locals 0
    .parameter "file"
    .parameter "depth"
    .parameter "results"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 536
    return-void
.end method

.method protected handleIsCancelled(Ljava/io/File;ILjava/util/Collection;)Z
    .locals 1
    .parameter "file"
    .parameter "depth"
    .parameter "results"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 454
    const/4 v0, 0x0

    return v0
.end method

.method protected handleRestricted(Ljava/io/File;ILjava/util/Collection;)V
    .locals 0
    .parameter "directory"
    .parameter "depth"
    .parameter "results"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 550
    return-void
.end method

.method protected handleStart(Ljava/io/File;Ljava/util/Collection;)V
    .locals 0
    .parameter "startDirectory"
    .parameter "results"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 488
    return-void
.end method

.method protected final walk(Ljava/io/File;Ljava/util/Collection;)V
    .locals 3
    .parameter "startDirectory"
    .parameter "results"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 347
    if-nez p1, :cond_0

    .line 348
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Start Directory is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 351
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/broadcom/bt/util/io/DirectoryWalker;->handleStart(Ljava/io/File;Ljava/util/Collection;)V

    .line 352
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, p2}, Lcom/broadcom/bt/util/io/DirectoryWalker;->walk(Ljava/io/File;ILjava/util/Collection;)V

    .line 353
    invoke-virtual {p0, p2}, Lcom/broadcom/bt/util/io/DirectoryWalker;->handleEnd(Ljava/util/Collection;)V
    :try_end_0
    .catch Lcom/broadcom/bt/util/io/DirectoryWalker$CancelException; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    :goto_0
    return-void

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, cancel:Lcom/broadcom/bt/util/io/DirectoryWalker$CancelException;
    invoke-virtual {p0, p1, p2, v0}, Lcom/broadcom/bt/util/io/DirectoryWalker;->handleCancelled(Ljava/io/File;Ljava/util/Collection;Lcom/broadcom/bt/util/io/DirectoryWalker$CancelException;)V

    goto :goto_0
.end method
