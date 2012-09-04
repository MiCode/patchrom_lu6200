.class public Lcom/broadcom/bt/util/io/comparator/SizeFileComparator;
.super Ljava/lang/Object;
.source "SizeFileComparator.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# static fields
.field public static final SIZE_COMPARATOR:Ljava/util/Comparator;

.field public static final SIZE_REVERSE:Ljava/util/Comparator;

.field public static final SIZE_SUMDIR_COMPARATOR:Ljava/util/Comparator;

.field public static final SIZE_SUMDIR_REVERSE:Ljava/util/Comparator;


# instance fields
.field private final sumDirectoryContents:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 72
    new-instance v0, Lcom/broadcom/bt/util/io/comparator/SizeFileComparator;

    invoke-direct {v0}, Lcom/broadcom/bt/util/io/comparator/SizeFileComparator;-><init>()V

    sput-object v0, Lcom/broadcom/bt/util/io/comparator/SizeFileComparator;->SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 75
    new-instance v0, Lcom/broadcom/bt/util/io/comparator/ReverseComparator;

    sget-object v1, Lcom/broadcom/bt/util/io/comparator/SizeFileComparator;->SIZE_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Lcom/broadcom/bt/util/io/comparator/ReverseComparator;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lcom/broadcom/bt/util/io/comparator/SizeFileComparator;->SIZE_REVERSE:Ljava/util/Comparator;

    .line 81
    new-instance v0, Lcom/broadcom/bt/util/io/comparator/SizeFileComparator;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/broadcom/bt/util/io/comparator/SizeFileComparator;-><init>(Z)V

    sput-object v0, Lcom/broadcom/bt/util/io/comparator/SizeFileComparator;->SIZE_SUMDIR_COMPARATOR:Ljava/util/Comparator;

    .line 87
    new-instance v0, Lcom/broadcom/bt/util/io/comparator/ReverseComparator;

    sget-object v1, Lcom/broadcom/bt/util/io/comparator/SizeFileComparator;->SIZE_SUMDIR_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Lcom/broadcom/bt/util/io/comparator/ReverseComparator;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lcom/broadcom/bt/util/io/comparator/SizeFileComparator;->SIZE_SUMDIR_REVERSE:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 95
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/util/io/comparator/SizeFileComparator;->sumDirectoryContents:Z

    .line 97
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .parameter "sumDirectoryContents"

    .prologue
    .line 110
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-boolean p1, p0, Lcom/broadcom/bt/util/io/comparator/SizeFileComparator;->sumDirectoryContents:Z

    .line 112
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 11
    .parameter "obj1"
    .parameter "obj2"

    .prologue
    const-wide/16 v8, 0x0

    .line 126
    move-object v0, p1

    check-cast v0, Ljava/io/File;

    .local v0, file1:Ljava/io/File;
    move-object v1, p2

    .line 127
    check-cast v1, Ljava/io/File;

    .line 128
    .local v1, file2:Ljava/io/File;
    const-wide/16 v4, 0x0

    .line 129
    .local v4, size1:J
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 130
    iget-boolean v10, p0, Lcom/broadcom/bt/util/io/comparator/SizeFileComparator;->sumDirectoryContents:Z

    if-eqz v10, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-static {v0}, Lcom/broadcom/bt/util/io/FileUtils;->sizeOfDirectory(Ljava/io/File;)J

    move-result-wide v4

    .line 134
    :goto_0
    const-wide/16 v6, 0x0

    .line 135
    .local v6, size2:J
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 136
    iget-boolean v10, p0, Lcom/broadcom/bt/util/io/comparator/SizeFileComparator;->sumDirectoryContents:Z

    if-eqz v10, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-static {v1}, Lcom/broadcom/bt/util/io/FileUtils;->sizeOfDirectory(Ljava/io/File;)J

    move-result-wide v6

    .line 140
    :goto_1
    sub-long v2, v4, v6

    .line 141
    .local v2, result:J
    cmp-long v10, v2, v8

    if-gez v10, :cond_4

    .line 142
    const/4 v8, -0x1

    .line 146
    :goto_2
    return v8

    .end local v2           #result:J
    .end local v6           #size2:J
    :cond_0
    move-wide v4, v8

    .line 130
    goto :goto_0

    .line 132
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    goto :goto_0

    .restart local v6       #size2:J
    :cond_2
    move-wide v6, v8

    .line 136
    goto :goto_1

    .line 138
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    goto :goto_1

    .line 143
    .restart local v2       #result:J
    :cond_4
    cmp-long v8, v2, v8

    if-lez v8, :cond_5

    .line 144
    const/4 v8, 0x1

    goto :goto_2

    .line 146
    :cond_5
    const/4 v8, 0x0

    goto :goto_2
.end method
