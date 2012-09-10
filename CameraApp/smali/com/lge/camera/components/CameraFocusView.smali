.class public Lcom/lge/camera/components/CameraFocusView;
.super Landroid/widget/RelativeLayout;
.source "CameraFocusView.java"


# static fields
.field public static final MODE_CENTER:I = 0x0

.field public static final MODE_RECTANGLE:I = 0x1

.field public static final STATE_CONTINUOUS_FAIL:I = 0x5

.field public static final STATE_CONTINUOUS_SEARCHING:I = 0x3

.field public static final STATE_CONTINUOUS_SUCCESS:I = 0x4

.field public static final STATE_FAIL:I = 0x2

.field public static final STATE_NORMAL:I = 0x0

.field public static final STATE_SUCCESS:I = 0x1


# instance fields
.field private mInitialized:Z

.field private mMode:I

.field private mOrientation:I

.field private mRectangle:Lcom/lge/camera/components/FocusRectangle;

.field private mState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/camera/components/CameraFocusView;->mOrientation:I

    .line 36
    iput-boolean v1, p0, Lcom/lge/camera/components/CameraFocusView;->mInitialized:Z

    .line 37
    iput v1, p0, Lcom/lge/camera/components/CameraFocusView;->mState:I

    .line 38
    iput v1, p0, Lcom/lge/camera/components/CameraFocusView;->mMode:I

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/camera/components/CameraFocusView;->mOrientation:I

    .line 36
    iput-boolean v1, p0, Lcom/lge/camera/components/CameraFocusView;->mInitialized:Z

    .line 37
    iput v1, p0, Lcom/lge/camera/components/CameraFocusView;->mState:I

    .line 38
    iput v1, p0, Lcom/lge/camera/components/CameraFocusView;->mMode:I

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/camera/components/CameraFocusView;->mOrientation:I

    .line 36
    iput-boolean v1, p0, Lcom/lge/camera/components/CameraFocusView;->mInitialized:Z

    .line 37
    iput v1, p0, Lcom/lge/camera/components/CameraFocusView;->mState:I

    .line 38
    iput v1, p0, Lcom/lge/camera/components/CameraFocusView;->mMode:I

    .line 50
    return-void
.end method


# virtual methods
.method public getFocusRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lge/camera/components/CameraFocusView;->mRectangle:Lcom/lge/camera/components/FocusRectangle;

    invoke-virtual {v0}, Lcom/lge/camera/components/FocusRectangle;->getFocusRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getRectangle()Lcom/lge/camera/components/FocusRectangle;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/lge/camera/components/CameraFocusView;->mRectangle:Lcom/lge/camera/components/FocusRectangle;

    return-object v0
.end method

.method public initialize(I)V
    .locals 1
    .parameter "degree"

    .prologue
    .line 139
    const v0, 0x7f090052

    invoke-virtual {p0, v0}, Lcom/lge/camera/components/CameraFocusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/FocusRectangle;

    iput-object v0, p0, Lcom/lge/camera/components/CameraFocusView;->mRectangle:Lcom/lge/camera/components/FocusRectangle;

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/components/CameraFocusView;->mInitialized:Z

    .line 141
    invoke-virtual {p0, p1}, Lcom/lge/camera/components/CameraFocusView;->startRotation(I)V

    .line 142
    return-void
.end method

.method public setClearFocusAnimation()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/lge/camera/components/CameraFocusView;->mRectangle:Lcom/lge/camera/components/FocusRectangle;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/lge/camera/components/CameraFocusView;->mRectangle:Lcom/lge/camera/components/FocusRectangle;

    invoke-virtual {v0}, Lcom/lge/camera/components/FocusRectangle;->clearAnimation()V

    .line 156
    :cond_0
    return-void
.end method

.method public setInitializeRect()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lge/camera/components/CameraFocusView;->mRectangle:Lcom/lge/camera/components/FocusRectangle;

    invoke-virtual {v0}, Lcom/lge/camera/components/FocusRectangle;->setFocusResources()V

    .line 68
    return-void
.end method

.method public setMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 75
    iput p1, p0, Lcom/lge/camera/components/CameraFocusView;->mMode:I

    .line 76
    return-void
.end method

.method public setNormalFocusRect(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/lge/camera/components/CameraFocusView;->mRectangle:Lcom/lge/camera/components/FocusRectangle;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lge/camera/components/CameraFocusView;->mInitialized:Z

    if-nez v0, :cond_1

    .line 146
    :cond_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNormalFocusRect : mInitialized is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lge/camera/components/CameraFocusView;->mInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/components/CameraFocusView;->mRectangle:Lcom/lge/camera/components/FocusRectangle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/components/CameraFocusView;->mRectangle:Lcom/lge/camera/components/FocusRectangle;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/components/FocusRectangle;->setMoveNormalFocusRect(II)V

    goto :goto_0
.end method

.method public setRect(IIII)V
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/lge/camera/components/CameraFocusView;->mInitialized:Z

    if-nez v0, :cond_0

    .line 64
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/components/CameraFocusView;->mRectangle:Lcom/lge/camera/components/FocusRectangle;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lge/camera/components/FocusRectangle;->setRect(IIII)V

    goto :goto_0
.end method

.method public setRect(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "rect"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/lge/camera/components/CameraFocusView;->mInitialized:Z

    if-nez v0, :cond_0

    .line 57
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/components/CameraFocusView;->mRectangle:Lcom/lge/camera/components/FocusRectangle;

    invoke-virtual {v0, p1}, Lcom/lge/camera/components/FocusRectangle;->setRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public setState(I)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x3

    .line 83
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setState state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iput p1, p0, Lcom/lge/camera/components/CameraFocusView;->mState:I

    .line 85
    packed-switch p1, :pswitch_data_0

    .line 121
    const-string v0, "CameraApp"

    const-string v1, "focus indicator state out of range!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :goto_0
    return-void

    .line 88
    :pswitch_0
    iget-object v0, p0, Lcom/lge/camera/components/CameraFocusView;->mRectangle:Lcom/lge/camera/components/FocusRectangle;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/FocusRectangle;->setState(I)V

    .line 89
    iget-object v0, p0, Lcom/lge/camera/components/CameraFocusView;->mRectangle:Lcom/lge/camera/components/FocusRectangle;

    invoke-virtual {v0}, Lcom/lge/camera/components/FocusRectangle;->postInvalidate()V

    goto :goto_0

    .line 93
    :pswitch_1
    iget-object v0, p0, Lcom/lge/camera/components/CameraFocusView;->mRectangle:Lcom/lge/camera/components/FocusRectangle;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/FocusRectangle;->setState(I)V

    .line 94
    iget-object v0, p0, Lcom/lge/camera/components/CameraFocusView;->mRectangle:Lcom/lge/camera/components/FocusRectangle;

    invoke-virtual {v0}, Lcom/lge/camera/components/FocusRectangle;->setMoveNormalFocusRectCenter()V

    .line 95
    iget-object v0, p0, Lcom/lge/camera/components/CameraFocusView;->mRectangle:Lcom/lge/camera/components/FocusRectangle;

    invoke-virtual {v0}, Lcom/lge/camera/components/FocusRectangle;->postInvalidate()V

    goto :goto_0

    .line 98
    :pswitch_2
    iget-object v0, p0, Lcom/lge/camera/components/CameraFocusView;->mRectangle:Lcom/lge/camera/components/FocusRectangle;

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/FocusRectangle;->setState(I)V

    .line 99
    iget-object v0, p0, Lcom/lge/camera/components/CameraFocusView;->mRectangle:Lcom/lge/camera/components/FocusRectangle;

    invoke-virtual {v0}, Lcom/lge/camera/components/FocusRectangle;->postInvalidate()V

    goto :goto_0

    .line 102
    :pswitch_3
    iget v0, p0, Lcom/lge/camera/components/CameraFocusView;->mMode:I

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/lge/camera/components/CameraFocusView;->mRectangle:Lcom/lge/camera/components/FocusRectangle;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/FocusRectangle;->setState(I)V

    .line 108
    :goto_1
    iget-object v0, p0, Lcom/lge/camera/components/CameraFocusView;->mRectangle:Lcom/lge/camera/components/FocusRectangle;

    invoke-virtual {v0}, Lcom/lge/camera/components/FocusRectangle;->postInvalidate()V

    goto :goto_0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/components/CameraFocusView;->mRectangle:Lcom/lge/camera/components/FocusRectangle;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/FocusRectangle;->setState(I)V

    goto :goto_1

    .line 112
    :pswitch_4
    iget v0, p0, Lcom/lge/camera/components/CameraFocusView;->mMode:I

    if-nez v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/lge/camera/components/CameraFocusView;->mRectangle:Lcom/lge/camera/components/FocusRectangle;

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/FocusRectangle;->setState(I)V

    .line 118
    :goto_2
    iget-object v0, p0, Lcom/lge/camera/components/CameraFocusView;->mRectangle:Lcom/lge/camera/components/FocusRectangle;

    invoke-virtual {v0}, Lcom/lge/camera/components/FocusRectangle;->postInvalidate()V

    goto :goto_0

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/components/CameraFocusView;->mRectangle:Lcom/lge/camera/components/FocusRectangle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/FocusRectangle;->setState(I)V

    goto :goto_2

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public startRotation(I)V
    .locals 4
    .parameter "degree"

    .prologue
    .line 127
    if-nez p1, :cond_2

    const/4 v0, 0x0

    .line 128
    .local v0, orientation:I
    :goto_0
    iget v1, p0, Lcom/lge/camera/components/CameraFocusView;->mOrientation:I

    if-ne v1, v0, :cond_0

    iget v1, p0, Lcom/lge/camera/components/CameraFocusView;->mOrientation:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/lge/camera/components/CameraFocusView;->mInitialized:Z

    if-nez v1, :cond_3

    .line 136
    :cond_1
    :goto_1
    return-void

    .line 127
    .end local v0           #orientation:I
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 132
    .restart local v0       #orientation:I
    :cond_3
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CameraFocusView startRotation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", focus state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lge/camera/components/CameraFocusView;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iput v0, p0, Lcom/lge/camera/components/CameraFocusView;->mOrientation:I

    goto :goto_1
.end method

.method public unbind()V
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/lge/camera/components/CameraFocusView;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/lge/camera/components/CameraFocusView;->mRectangle:Lcom/lge/camera/components/FocusRectangle;

    invoke-virtual {v0}, Lcom/lge/camera/components/FocusRectangle;->clear()V

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/components/CameraFocusView;->mRectangle:Lcom/lge/camera/components/FocusRectangle;

    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/components/CameraFocusView;->mInitialized:Z

    .line 164
    :cond_0
    return-void
.end method
