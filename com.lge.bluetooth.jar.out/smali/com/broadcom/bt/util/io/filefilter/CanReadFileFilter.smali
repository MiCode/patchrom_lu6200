.class public Lcom/broadcom/bt/util/io/filefilter/CanReadFileFilter;
.super Lcom/broadcom/bt/util/io/filefilter/AbstractFileFilter;
.source "CanReadFileFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CANNOT_READ:Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;

.field public static final CAN_READ:Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;

.field public static final READ_ONLY:Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 83
    new-instance v0, Lcom/broadcom/bt/util/io/filefilter/CanReadFileFilter;

    invoke-direct {v0}, Lcom/broadcom/bt/util/io/filefilter/CanReadFileFilter;-><init>()V

    sput-object v0, Lcom/broadcom/bt/util/io/filefilter/CanReadFileFilter;->CAN_READ:Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;

    .line 86
    new-instance v0, Lcom/broadcom/bt/util/io/filefilter/NotFileFilter;

    sget-object v1, Lcom/broadcom/bt/util/io/filefilter/CanReadFileFilter;->CAN_READ:Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;

    invoke-direct {v0, v1}, Lcom/broadcom/bt/util/io/filefilter/NotFileFilter;-><init>(Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;)V

    sput-object v0, Lcom/broadcom/bt/util/io/filefilter/CanReadFileFilter;->CANNOT_READ:Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;

    .line 89
    new-instance v0, Lcom/broadcom/bt/util/io/filefilter/AndFileFilter;

    sget-object v1, Lcom/broadcom/bt/util/io/filefilter/CanReadFileFilter;->CAN_READ:Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;

    sget-object v2, Lcom/broadcom/bt/util/io/filefilter/CanWriteFileFilter;->CANNOT_WRITE:Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;

    invoke-direct {v0, v1, v2}, Lcom/broadcom/bt/util/io/filefilter/AndFileFilter;-><init>(Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;)V

    sput-object v0, Lcom/broadcom/bt/util/io/filefilter/CanReadFileFilter;->READ_ONLY:Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/broadcom/bt/util/io/filefilter/AbstractFileFilter;-><init>()V

    .line 96
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 1
    .parameter "file"

    .prologue
    .line 106
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    return v0
.end method
