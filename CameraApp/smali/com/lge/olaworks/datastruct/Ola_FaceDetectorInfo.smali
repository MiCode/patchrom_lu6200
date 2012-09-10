.class public Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;
.super Ljava/lang/Object;
.source "Ola_FaceDetectorInfo.java"


# instance fields
.field private final MAX_FACE_NUM:I

.field public detectedFaces:[Landroid/graphics/Rect;

.field public numDetectedFaces:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput v3, p0, Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;->MAX_FACE_NUM:I

    .line 19
    const/4 v1, 0x0

    iput v1, p0, Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;->numDetectedFaces:I

    .line 30
    new-array v1, v3, [Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;->detectedFaces:[Landroid/graphics/Rect;

    .line 31
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 32
    iget-object v1, p0, Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;->detectedFaces:[Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v1, v0

    .line 33
    iget-object v1, p0, Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;->detectedFaces:[Landroid/graphics/Rect;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 31
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 35
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 41
    const/4 v1, 0x0

    iput v1, p0, Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;->numDetectedFaces:I

    .line 42
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 43
    iget-object v1, p0, Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;->detectedFaces:[Landroid/graphics/Rect;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    :cond_0
    return-void
.end method
