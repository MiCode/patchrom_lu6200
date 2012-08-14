.class public final Lcom/lge/lgdrm/DrmContentManager;
.super Ljava/lang/Object;
.source "DrmContentManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DrmCntMngr"


# instance fields
.field private contentType:I

.field private filename:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "filename"
    .parameter "contentType"

    .prologue
    .line 80
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/lge/lgdrm/DrmContentManager;->filename:Ljava/lang/String;

    .line 82
    iput p2, p0, Lcom/lge/lgdrm/DrmContentManager;->contentType:I

    .line 83
    return-void
.end method

.method private native nativeDeleteRights(Ljava/lang/String;)I
.end method

.method private native nativePostprocessDistributedContent(Ljava/lang/String;)I
.end method

.method private native nativePreprocessDistributeContent(Ljava/lang/String;)I
.end method


# virtual methods
.method public backupContent(Ljava/lang/String;)I
    .locals 2
    .parameter "dstFilename"

    .prologue
    .line 167
    const-string v0, "DrmCntMngr"

    const-string v1, "backupContent() : Not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const/4 v0, -0x1

    return v0
.end method

.method public copyContent(Ljava/lang/String;)I
    .locals 1
    .parameter "dstFilename"

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public deleteContent()I
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public deleteRights()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-static {}, Lcom/lge/lgdrm/DrmManager;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_0
    iget v0, p0, Lcom/lge/lgdrm/DrmContentManager;->contentType:I

    const/16 v1, 0x51

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/lge/lgdrm/DrmContentManager;->contentType:I

    const/16 v1, 0x3000

    if-gt v0, v1, :cond_1

    .line 101
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentManager;->filename:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/lge/lgdrm/DrmContentManager;->nativeDeleteRights(Ljava/lang/String;)I

    move-result v0

    .line 104
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveContent(Ljava/lang/String;)I
    .locals 1
    .parameter "dstFilename"

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public postprocessDistributedContent()I
    .locals 2

    .prologue
    .line 209
    iget v0, p0, Lcom/lge/lgdrm/DrmContentManager;->contentType:I

    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    .line 210
    const/4 v0, 0x0

    .line 212
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentManager;->filename:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/lge/lgdrm/DrmContentManager;->nativePostprocessDistributedContent(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public preprocessDistributeContent()I
    .locals 2

    .prologue
    .line 193
    iget v0, p0, Lcom/lge/lgdrm/DrmContentManager;->contentType:I

    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/lge/lgdrm/DrmContentManager;->contentType:I

    const/high16 v1, 0x10

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/lge/lgdrm/DrmContentManager;->contentType:I

    const/high16 v1, 0x80

    if-ne v0, v1, :cond_1

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/lge/lgdrm/DrmContentManager;->filename:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/lge/lgdrm/DrmContentManager;->nativePreprocessDistributeContent(Ljava/lang/String;)I

    move-result v0

    .line 198
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public renameContent(Ljava/lang/String;)I
    .locals 1
    .parameter "dstFilename"

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public restoreContent(Ljava/lang/String;)I
    .locals 2
    .parameter "dstFilename"

    .prologue
    .line 181
    const-string v0, "DrmCntMngr"

    const-string/jumbo v1, "restoreContent() : Not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const/4 v0, -0x1

    return v0
.end method
