.class public Lcom/lge/olaworks/datastruct/Ola_BlinkDetectorInfo;
.super Ljava/lang/Object;
.source "Ola_BlinkDetectorInfo.java"


# instance fields
.field private final MAX_FACE_NUM:I

.field public detectedFaces:[Landroid/graphics/Rect;

.field public leftBlink:[I

.field public numDetectedFaces:I

.field public rightBlink:[I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x5

    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput v3, p0, Lcom/lge/olaworks/datastruct/Ola_BlinkDetectorInfo;->MAX_FACE_NUM:I

    .line 19
    iput v4, p0, Lcom/lge/olaworks/datastruct/Ola_BlinkDetectorInfo;->numDetectedFaces:I

    .line 29
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/lge/olaworks/datastruct/Ola_BlinkDetectorInfo;->leftBlink:[I

    .line 34
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/lge/olaworks/datastruct/Ola_BlinkDetectorInfo;->rightBlink:[I

    .line 40
    new-array v1, v3, [Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/lge/olaworks/datastruct/Ola_BlinkDetectorInfo;->detectedFaces:[Landroid/graphics/Rect;

    .line 41
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 42
    iget-object v1, p0, Lcom/lge/olaworks/datastruct/Ola_BlinkDetectorInfo;->detectedFaces:[Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v1, v0

    .line 43
    iget-object v1, p0, Lcom/lge/olaworks/datastruct/Ola_BlinkDetectorInfo;->detectedFaces:[Landroid/graphics/Rect;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 44
    iget-object v1, p0, Lcom/lge/olaworks/datastruct/Ola_BlinkDetectorInfo;->leftBlink:[I

    iget-object v2, p0, Lcom/lge/olaworks/datastruct/Ola_BlinkDetectorInfo;->rightBlink:[I

    aput v4, v2, v0

    aput v4, v1, v0

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 52
    iput v3, p0, Lcom/lge/olaworks/datastruct/Ola_BlinkDetectorInfo;->numDetectedFaces:I

    .line 53
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 54
    iget-object v1, p0, Lcom/lge/olaworks/datastruct/Ola_BlinkDetectorInfo;->detectedFaces:[Landroid/graphics/Rect;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 55
    iget-object v1, p0, Lcom/lge/olaworks/datastruct/Ola_BlinkDetectorInfo;->leftBlink:[I

    iget-object v2, p0, Lcom/lge/olaworks/datastruct/Ola_BlinkDetectorInfo;->rightBlink:[I

    aput v3, v2, v0

    aput v3, v1, v0

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_0
    return v3
.end method
