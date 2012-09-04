.class public Lcom/broadcom/bt/util/io/filefilter/HiddenFileFilter;
.super Lcom/broadcom/bt/util/io/filefilter/AbstractFileFilter;
.source "HiddenFileFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final HIDDEN:Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;

.field public static final VISIBLE:Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 71
    new-instance v0, Lcom/broadcom/bt/util/io/filefilter/HiddenFileFilter;

    invoke-direct {v0}, Lcom/broadcom/bt/util/io/filefilter/HiddenFileFilter;-><init>()V

    sput-object v0, Lcom/broadcom/bt/util/io/filefilter/HiddenFileFilter;->HIDDEN:Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;

    .line 74
    new-instance v0, Lcom/broadcom/bt/util/io/filefilter/NotFileFilter;

    sget-object v1, Lcom/broadcom/bt/util/io/filefilter/HiddenFileFilter;->HIDDEN:Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;

    invoke-direct {v0, v1}, Lcom/broadcom/bt/util/io/filefilter/NotFileFilter;-><init>(Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;)V

    sput-object v0, Lcom/broadcom/bt/util/io/filefilter/HiddenFileFilter;->VISIBLE:Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/broadcom/bt/util/io/filefilter/AbstractFileFilter;-><init>()V

    .line 80
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 1
    .parameter "file"

    .prologue
    .line 90
    invoke-virtual {p1}, Ljava/io/File;->isHidden()Z

    move-result v0

    return v0
.end method
