.class public Lcom/broadcom/bt/util/io/filefilter/DirectoryFileFilter;
.super Lcom/broadcom/bt/util/io/filefilter/AbstractFileFilter;
.source "DirectoryFileFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DIRECTORY:Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;

.field public static final INSTANCE:Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/broadcom/bt/util/io/filefilter/DirectoryFileFilter;

    invoke-direct {v0}, Lcom/broadcom/bt/util/io/filefilter/DirectoryFileFilter;-><init>()V

    sput-object v0, Lcom/broadcom/bt/util/io/filefilter/DirectoryFileFilter;->DIRECTORY:Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;

    .line 72
    sget-object v0, Lcom/broadcom/bt/util/io/filefilter/DirectoryFileFilter;->DIRECTORY:Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;

    sput-object v0, Lcom/broadcom/bt/util/io/filefilter/DirectoryFileFilter;->INSTANCE:Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/broadcom/bt/util/io/filefilter/AbstractFileFilter;-><init>()V

    .line 78
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 1
    .parameter "file"

    .prologue
    .line 87
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0
.end method
