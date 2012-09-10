.class public Lcom/lge/camera/components/PanoProgressBar;
.super Landroid/widget/ImageView;
.source "PanoProgressBar.java"


# static fields
.field public static final FORWARD:I = 0x0

.field public static final REVERSE:I = 0x1


# instance fields
.field public final TAG:Ljava/lang/String;

.field private mCurs:I

.field private mDirection:I

.field private mDrawWidth:I

.field private mHeight:I

.field private mMax:I

.field private mPadding:I

.field private mStep:F

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 12
    const-string v0, "PanoProgressBar"

    iput-object v0, p0, Lcom/lge/camera/components/PanoProgressBar;->TAG:Ljava/lang/String;

    .line 16
    const/16 v0, 0x1388

    iput v0, p0, Lcom/lge/camera/components/PanoProgressBar;->mMax:I

    .line 17
    iput v1, p0, Lcom/lge/camera/components/PanoProgressBar;->mPadding:I

    .line 18
    iput v1, p0, Lcom/lge/camera/components/PanoProgressBar;->mCurs:I

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    const-string v0, "PanoProgressBar"

    iput-object v0, p0, Lcom/lge/camera/components/PanoProgressBar;->TAG:Ljava/lang/String;

    .line 16
    const/16 v0, 0x1388

    iput v0, p0, Lcom/lge/camera/components/PanoProgressBar;->mMax:I

    .line 17
    iput v1, p0, Lcom/lge/camera/components/PanoProgressBar;->mPadding:I

    .line 18
    iput v1, p0, Lcom/lge/camera/components/PanoProgressBar;->mCurs:I

    .line 31
    return-void
.end method


# virtual methods
.method public getMax()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/lge/camera/components/PanoProgressBar;->mMax:I

    return v0
.end method

.method public initPanoProgressBar(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 34
    iput p1, p0, Lcom/lge/camera/components/PanoProgressBar;->mWidth:I

    .line 35
    iput p2, p0, Lcom/lge/camera/components/PanoProgressBar;->mHeight:I

    .line 36
    iget v0, p0, Lcom/lge/camera/components/PanoProgressBar;->mWidth:I

    iget v1, p0, Lcom/lge/camera/components/PanoProgressBar;->mPadding:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/components/PanoProgressBar;->mDrawWidth:I

    .line 37
    iget v0, p0, Lcom/lge/camera/components/PanoProgressBar;->mMax:I

    int-to-float v0, v0

    iget v1, p0, Lcom/lge/camera/components/PanoProgressBar;->mDrawWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/components/PanoProgressBar;->mStep:F

    .line 38
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/4 v4, 0x0

    .line 58
    iget v1, p0, Lcom/lge/camera/components/PanoProgressBar;->mCurs:I

    int-to-float v1, v1

    iget v2, p0, Lcom/lge/camera/components/PanoProgressBar;->mStep:F

    div-float/2addr v1, v2

    float-to-int v0, v1

    .line 59
    .local v0, value:I
    iget v1, p0, Lcom/lge/camera/components/PanoProgressBar;->mDirection:I

    if-nez v1, :cond_0

    .line 60
    iget v1, p0, Lcom/lge/camera/components/PanoProgressBar;->mHeight:I

    invoke-virtual {p1, v4, v4, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 63
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 64
    return-void

    .line 62
    :cond_0
    iget v1, p0, Lcom/lge/camera/components/PanoProgressBar;->mDrawWidth:I

    sub-int/2addr v1, v0

    iget v2, p0, Lcom/lge/camera/components/PanoProgressBar;->mDrawWidth:I

    iget v3, p0, Lcom/lge/camera/components/PanoProgressBar;->mHeight:I

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_0
.end method

.method public setDirection(I)V
    .locals 0
    .parameter "direction"

    .prologue
    .line 45
    iput p1, p0, Lcom/lge/camera/components/PanoProgressBar;->mDirection:I

    .line 46
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 49
    iget v0, p0, Lcom/lge/camera/components/PanoProgressBar;->mMax:I

    if-le p1, v0, :cond_0

    .line 50
    iget p1, p0, Lcom/lge/camera/components/PanoProgressBar;->mMax:I

    .line 51
    :cond_0
    iput p1, p0, Lcom/lge/camera/components/PanoProgressBar;->mCurs:I

    .line 52
    invoke-virtual {p0}, Lcom/lge/camera/components/PanoProgressBar;->invalidate()V

    .line 53
    return-void
.end method
