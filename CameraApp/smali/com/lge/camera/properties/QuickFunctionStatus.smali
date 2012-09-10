.class public Lcom/lge/camera/properties/QuickFunctionStatus;
.super Ljava/lang/Object;
.source "QuickFunctionStatus.java"


# instance fields
.field public bEVEnable:Z

.field public bFlashEnable:Z

.field public iCameraID:I

.field public iCameraMode:I

.field public strFlashMode:Ljava/lang/String;

.field public strScenaMode:Ljava/lang/String;

.field public strShotMode:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 0
    .parameter "iCameraMode"
    .parameter "iCameraID"
    .parameter "strShotMode"
    .parameter "strScenaMode"
    .parameter "bEVEnable"
    .parameter "bFlashEnable"
    .parameter "strFlashMode"

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Lcom/lge/camera/properties/QuickFunctionStatus;->iCameraMode:I

    .line 8
    iput p2, p0, Lcom/lge/camera/properties/QuickFunctionStatus;->iCameraID:I

    .line 9
    iput-object p3, p0, Lcom/lge/camera/properties/QuickFunctionStatus;->strShotMode:Ljava/lang/String;

    .line 10
    iput-object p4, p0, Lcom/lge/camera/properties/QuickFunctionStatus;->strScenaMode:Ljava/lang/String;

    .line 11
    iput-boolean p5, p0, Lcom/lge/camera/properties/QuickFunctionStatus;->bEVEnable:Z

    .line 12
    iput-boolean p6, p0, Lcom/lge/camera/properties/QuickFunctionStatus;->bFlashEnable:Z

    .line 13
    iput-object p7, p0, Lcom/lge/camera/properties/QuickFunctionStatus;->strFlashMode:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public Compare(IILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "iCameraMode"
    .parameter "iCameraID"
    .parameter "strShotMode"
    .parameter "strScenaMode"

    .prologue
    .line 36
    iget v0, p0, Lcom/lge/camera/properties/QuickFunctionStatus;->iCameraMode:I

    if-ne v0, p1, :cond_2

    iget v0, p0, Lcom/lge/camera/properties/QuickFunctionStatus;->iCameraID:I

    if-ne v0, p2, :cond_2

    iget-object v0, p0, Lcom/lge/camera/properties/QuickFunctionStatus;->strShotMode:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/lge/camera/properties/QuickFunctionStatus;->strShotMode:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/lge/camera/properties/QuickFunctionStatus;->strScenaMode:Ljava/lang/String;

    if-eqz v0, :cond_1

    if-eqz p4, :cond_1

    iget-object v0, p0, Lcom/lge/camera/properties/QuickFunctionStatus;->strScenaMode:Ljava/lang/String;

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sets(IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 0
    .parameter "iCameraMode"
    .parameter "iCameraID"
    .parameter "strShotMode"
    .parameter "strScenaMode"
    .parameter "bEVEnable"
    .parameter "bFlashEnable"
    .parameter "strFlashMode"

    .prologue
    .line 19
    iput p1, p0, Lcom/lge/camera/properties/QuickFunctionStatus;->iCameraMode:I

    .line 20
    iput p2, p0, Lcom/lge/camera/properties/QuickFunctionStatus;->iCameraID:I

    .line 21
    iput-object p3, p0, Lcom/lge/camera/properties/QuickFunctionStatus;->strShotMode:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lcom/lge/camera/properties/QuickFunctionStatus;->strScenaMode:Ljava/lang/String;

    .line 23
    iput-boolean p5, p0, Lcom/lge/camera/properties/QuickFunctionStatus;->bEVEnable:Z

    .line 24
    iput-boolean p6, p0, Lcom/lge/camera/properties/QuickFunctionStatus;->bFlashEnable:Z

    .line 25
    iput-object p7, p0, Lcom/lge/camera/properties/QuickFunctionStatus;->strFlashMode:Ljava/lang/String;

    .line 26
    return-void
.end method
