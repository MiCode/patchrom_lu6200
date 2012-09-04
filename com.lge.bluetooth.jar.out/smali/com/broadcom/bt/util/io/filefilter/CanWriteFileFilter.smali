.class public Lcom/broadcom/bt/util/io/filefilter/CanWriteFileFilter;
.super Lcom/broadcom/bt/util/io/filefilter/AbstractFileFilter;
.source "CanWriteFileFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CANNOT_WRITE:Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;

.field public static final CAN_WRITE:Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 75
    new-instance v0, Lcom/broadcom/bt/util/io/filefilter/CanWriteFileFilter;

    invoke-direct {v0}, Lcom/broadcom/bt/util/io/filefilter/CanWriteFileFilter;-><init>()V

    sput-object v0, Lcom/broadcom/bt/util/io/filefilter/CanWriteFileFilter;->CAN_WRITE:Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;

    .line 78
    new-instance v0, Lcom/broadcom/bt/util/io/filefilter/NotFileFilter;

    sget-object v1, Lcom/broadcom/bt/util/io/filefilter/CanWriteFileFilter;->CAN_WRITE:Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;

    invoke-direct {v0, v1}, Lcom/broadcom/bt/util/io/filefilter/NotFileFilter;-><init>(Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;)V

    sput-object v0, Lcom/broadcom/bt/util/io/filefilter/CanWriteFileFilter;->CANNOT_WRITE:Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/broadcom/bt/util/io/filefilter/AbstractFileFilter;-><init>()V

    .line 84
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 1
    .parameter "file"

    .prologue
    .line 94
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0

    return v0
.end method
