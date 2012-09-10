.class public abstract Lcom/lge/olaworks/library/BaseEngine;
.super Ljava/lang/Object;
.source "BaseEngine.java"

# interfaces
.implements Lcom/lge/olaworks/library/IEngine;


# static fields
.field public static final DEFAULT_PRIORITY:I = 0xa


# instance fields
.field protected mEnable:Z

.field protected mFlipH:Z

.field protected mPriority:I

.field protected mStart:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/16 v0, 0xa

    iput v0, p0, Lcom/lge/olaworks/library/BaseEngine;->mPriority:I

    .line 40
    iput-boolean v1, p0, Lcom/lge/olaworks/library/BaseEngine;->mStart:Z

    .line 41
    iput-boolean v1, p0, Lcom/lge/olaworks/library/BaseEngine;->mEnable:Z

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/olaworks/library/BaseEngine;->mFlipH:Z

    return-void
.end method


# virtual methods
.method public drawOverlay(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 64
    return-void
.end method

.method public enable(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/lge/olaworks/library/BaseEngine;->mEnable:Z

    .line 46
    return-void
.end method

.method protected getPriority()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/lge/olaworks/library/BaseEngine;->mPriority:I

    return v0
.end method

.method public needRenderMode()Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public setFlipHorizontal(Z)V
    .locals 0
    .parameter "flipH"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/lge/olaworks/library/BaseEngine;->mFlipH:Z

    .line 62
    return-void
.end method

.method protected setPriority(I)V
    .locals 0
    .parameter "priority"

    .prologue
    .line 53
    iput p1, p0, Lcom/lge/olaworks/library/BaseEngine;->mPriority:I

    .line 54
    return-void
.end method
