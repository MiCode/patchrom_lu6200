.class public Lcom/broadcom/bt/util/io/filefilter/TrueFileFilter;
.super Ljava/lang/Object;
.source "TrueFileFilter.java"

# interfaces
.implements Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;
.implements Ljava/io/Serializable;


# static fields
.field public static final INSTANCE:Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;

.field public static final TRUE:Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/broadcom/bt/util/io/filefilter/TrueFileFilter;

    invoke-direct {v0}, Lcom/broadcom/bt/util/io/filefilter/TrueFileFilter;-><init>()V

    sput-object v0, Lcom/broadcom/bt/util/io/filefilter/TrueFileFilter;->TRUE:Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;

    .line 60
    sget-object v0, Lcom/broadcom/bt/util/io/filefilter/TrueFileFilter;->TRUE:Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;

    sput-object v0, Lcom/broadcom/bt/util/io/filefilter/TrueFileFilter;->INSTANCE:Lcom/broadcom/bt/util/io/filefilter/IOFileFilter;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 1
    .parameter "file"

    .prologue
    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .parameter "dir"
    .parameter "name"

    .prologue
    .line 86
    const/4 v0, 0x1

    return v0
.end method
