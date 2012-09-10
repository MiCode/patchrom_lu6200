.class public Lcom/lge/camera/components/RotateImageView;
.super Landroid/widget/ImageView;
.source "RotateImageView.java"


# static fields
.field private static final ANIMATION_SPEED:I = 0xf0

.field private static final TAG:Ljava/lang/String; = "CameraApp"


# instance fields
.field private mAnimationEndTime:J

.field private mAnimationStartTime:J

.field private mClockwise:Z

.field private mCurrentDegree:I

.field private mStartDegree:I

.field private mTargetDegree:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 39
    iput v0, p0, Lcom/lge/camera/components/RotateImageView;->mCurrentDegree:I

    .line 40
    iput v0, p0, Lcom/lge/camera/components/RotateImageView;->mStartDegree:I

    .line 41
    iput v0, p0, Lcom/lge/camera/components/RotateImageView;->mTargetDegree:I

    .line 43
    iput-boolean v0, p0, Lcom/lge/camera/components/RotateImageView;->mClockwise:Z

    .line 45
    iput-wide v1, p0, Lcom/lge/camera/components/RotateImageView;->mAnimationStartTime:J

    .line 46
    iput-wide v1, p0, Lcom/lge/camera/components/RotateImageView;->mAnimationEndTime:J

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    iput v0, p0, Lcom/lge/camera/components/RotateImageView;->mCurrentDegree:I

    .line 40
    iput v0, p0, Lcom/lge/camera/components/RotateImageView;->mStartDegree:I

    .line 41
    iput v0, p0, Lcom/lge/camera/components/RotateImageView;->mTargetDegree:I

    .line 43
    iput-boolean v0, p0, Lcom/lge/camera/components/RotateImageView;->mClockwise:Z

    .line 45
    iput-wide v1, p0, Lcom/lge/camera/components/RotateImageView;->mAnimationStartTime:J

    .line 46
    iput-wide v1, p0, Lcom/lge/camera/components/RotateImageView;->mAnimationEndTime:J

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    iput v0, p0, Lcom/lge/camera/components/RotateImageView;->mCurrentDegree:I

    .line 40
    iput v0, p0, Lcom/lge/camera/components/RotateImageView;->mStartDegree:I

    .line 41
    iput v0, p0, Lcom/lge/camera/components/RotateImageView;->mTargetDegree:I

    .line 43
    iput-boolean v0, p0, Lcom/lge/camera/components/RotateImageView;->mClockwise:Z

    .line 45
    iput-wide v1, p0, Lcom/lge/camera/components/RotateImageView;->mAnimationStartTime:J

    .line 46
    iput-wide v1, p0, Lcom/lge/camera/components/RotateImageView;->mAnimationEndTime:J

    .line 58
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 25
    .parameter "canvas"

    .prologue
    .line 114
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/components/RotateImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 115
    .local v9, drawable:Landroid/graphics/drawable/Drawable;
    if-nez v9, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 118
    .local v6, bounds:Landroid/graphics/Rect;
    iget v0, v6, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    iget v0, v6, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    sub-int v19, v21, v22

    .line 119
    .local v19, w:I
    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    sub-int v11, v21, v22

    .line 121
    .local v11, h:I
    if-eqz v19, :cond_0

    if-eqz v11, :cond_0

    .line 123
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateImageView;->mCurrentDegree:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateImageView;->mTargetDegree:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    .line 124
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v16

    .line 125
    .local v16, time:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/camera/components/RotateImageView;->mAnimationEndTime:J

    move-wide/from16 v21, v0

    cmp-long v21, v16, v21

    if-gez v21, :cond_5

    .line 126
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/camera/components/RotateImageView;->mAnimationStartTime:J

    move-wide/from16 v21, v0

    sub-long v21, v16, v21

    move-wide/from16 v0, v21

    long-to-int v8, v0

    .line 127
    .local v8, deltaTime:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateImageView;->mStartDegree:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/camera/components/RotateImageView;->mClockwise:Z

    move/from16 v22, v0

    if-eqz v22, :cond_3

    .end local v8           #deltaTime:I
    :goto_1
    mul-int/lit16 v0, v8, 0xf0

    move/from16 v22, v0

    move/from16 v0, v22

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v22, v0

    add-int v7, v21, v22

    .line 129
    .local v7, degree:I
    if-ltz v7, :cond_4

    rem-int/lit16 v7, v7, 0x168

    .line 130
    :goto_2
    move-object/from16 v0, p0

    iput v7, v0, Lcom/lge/camera/components/RotateImageView;->mCurrentDegree:I

    .line 131
    const/16 v21, -0x64

    const/16 v22, -0x64

    const/16 v23, 0x12c

    const/16 v24, 0x12c

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lge/camera/components/RotateImageView;->invalidate(IIII)V

    .line 138
    .end local v7           #degree:I
    .end local v16           #time:J
    :cond_2
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/components/RotateImageView;->getPaddingLeft()I

    move-result v13

    .line 139
    .local v13, left:I
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/components/RotateImageView;->getPaddingTop()I

    move-result v18

    .line 140
    .local v18, top:I
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/components/RotateImageView;->getPaddingRight()I

    move-result v14

    .line 141
    .local v14, right:I
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/components/RotateImageView;->getPaddingBottom()I

    move-result v5

    .line 142
    .local v5, bottom:I
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/components/RotateImageView;->getWidth()I

    move-result v21

    sub-int v21, v21, v13

    sub-int v20, v21, v14

    .line 143
    .local v20, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/components/RotateImageView;->getHeight()I

    move-result v21

    sub-int v21, v21, v18

    sub-int v12, v21, v5

    .line 145
    .local v12, height:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v15

    .line 146
    .local v15, saveCount:I
    div-int/lit8 v21, v20, 0x2

    add-int v21, v21, v13

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-int/lit8 v22, v12, 0x2

    add-int v22, v22, v18

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 151
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateImageView;->mCurrentDegree:I

    move/from16 v21, v0

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 153
    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v21, v0

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    neg-int v0, v11

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 155
    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :goto_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0

    .line 127
    .end local v5           #bottom:I
    .end local v12           #height:I
    .end local v13           #left:I
    .end local v14           #right:I
    .end local v15           #saveCount:I
    .end local v18           #top:I
    .end local v20           #width:I
    .restart local v8       #deltaTime:I
    .restart local v16       #time:J
    :cond_3
    neg-int v8, v8

    goto/16 :goto_1

    .line 129
    .end local v8           #deltaTime:I
    .restart local v7       #degree:I
    :cond_4
    rem-int/lit16 v0, v7, 0x168

    move/from16 v21, v0

    move/from16 v0, v21

    add-int/lit16 v7, v0, 0x168

    goto/16 :goto_2

    .line 133
    .end local v7           #degree:I
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateImageView;->mTargetDegree:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/components/RotateImageView;->mCurrentDegree:I

    goto/16 :goto_3

    .line 157
    .end local v16           #time:J
    .restart local v5       #bottom:I
    .restart local v12       #height:I
    .restart local v13       #left:I
    .restart local v14       #right:I
    .restart local v15       #saveCount:I
    .restart local v18       #top:I
    .restart local v20       #width:I
    :catch_0
    move-exception v10

    .line 158
    .local v10, e:Ljava/lang/Exception;
    const-string v21, "CameraApp"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Drawing View Exception : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public setDegree(I)V
    .locals 7
    .parameter "degree"

    .prologue
    const/16 v6, 0x12c

    const/16 v5, -0x64

    .line 62
    if-ltz p1, :cond_0

    rem-int/lit16 p1, p1, 0x168

    .line 63
    :goto_0
    iget v1, p0, Lcom/lge/camera/components/RotateImageView;->mTargetDegree:I

    if-ne p1, v1, :cond_1

    .line 81
    :goto_1
    return-void

    .line 62
    :cond_0
    rem-int/lit16 v1, p1, 0x168

    add-int/lit16 p1, v1, 0x168

    goto :goto_0

    .line 65
    :cond_1
    iput p1, p0, Lcom/lge/camera/components/RotateImageView;->mTargetDegree:I

    .line 66
    iget v1, p0, Lcom/lge/camera/components/RotateImageView;->mCurrentDegree:I

    iput v1, p0, Lcom/lge/camera/components/RotateImageView;->mStartDegree:I

    .line 67
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/lge/camera/components/RotateImageView;->mAnimationStartTime:J

    .line 69
    iget v1, p0, Lcom/lge/camera/components/RotateImageView;->mTargetDegree:I

    iget v2, p0, Lcom/lge/camera/components/RotateImageView;->mCurrentDegree:I

    sub-int v0, v1, v2

    .line 70
    .local v0, diff:I
    if-ltz v0, :cond_3

    .line 74
    :goto_2
    const/16 v1, 0xb4

    if-le v0, v1, :cond_2

    add-int/lit16 v0, v0, -0x168

    .line 76
    :cond_2
    if-ltz v0, :cond_4

    const/4 v1, 0x1

    :goto_3
    iput-boolean v1, p0, Lcom/lge/camera/components/RotateImageView;->mClockwise:Z

    .line 77
    iget-wide v1, p0, Lcom/lge/camera/components/RotateImageView;->mAnimationStartTime:J

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    div-int/lit16 v3, v3, 0xf0

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/lge/camera/components/RotateImageView;->mAnimationEndTime:J

    .line 80
    invoke-virtual {p0, v5, v5, v6, v6}, Lcom/lge/camera/components/RotateImageView;->invalidate(IIII)V

    goto :goto_1

    .line 70
    :cond_3
    add-int/lit16 v0, v0, 0x168

    goto :goto_2

    .line 76
    :cond_4
    const/4 v1, 0x0

    goto :goto_3
.end method

.method public setDegree(IZ)V
    .locals 7
    .parameter "degree"
    .parameter "animation"

    .prologue
    const/16 v6, 0x12c

    const/16 v5, -0x64

    .line 85
    if-ltz p1, :cond_0

    rem-int/lit16 p1, p1, 0x168

    .line 86
    :goto_0
    iget v1, p0, Lcom/lge/camera/components/RotateImageView;->mTargetDegree:I

    if-ne p1, v1, :cond_1

    .line 108
    :goto_1
    return-void

    .line 85
    :cond_0
    rem-int/lit16 v1, p1, 0x168

    add-int/lit16 p1, v1, 0x168

    goto :goto_0

    .line 88
    :cond_1
    if-eqz p2, :cond_3

    .line 89
    iput p1, p0, Lcom/lge/camera/components/RotateImageView;->mTargetDegree:I

    .line 90
    iget v1, p0, Lcom/lge/camera/components/RotateImageView;->mCurrentDegree:I

    iput v1, p0, Lcom/lge/camera/components/RotateImageView;->mStartDegree:I

    .line 94
    :goto_2
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/lge/camera/components/RotateImageView;->mAnimationStartTime:J

    .line 96
    iget v1, p0, Lcom/lge/camera/components/RotateImageView;->mTargetDegree:I

    iget v2, p0, Lcom/lge/camera/components/RotateImageView;->mCurrentDegree:I

    sub-int v0, v1, v2

    .line 97
    .local v0, diff:I
    if-ltz v0, :cond_4

    .line 101
    :goto_3
    const/16 v1, 0xb4

    if-le v0, v1, :cond_2

    add-int/lit16 v0, v0, -0x168

    .line 103
    :cond_2
    if-ltz v0, :cond_5

    const/4 v1, 0x1

    :goto_4
    iput-boolean v1, p0, Lcom/lge/camera/components/RotateImageView;->mClockwise:Z

    .line 104
    iget-wide v1, p0, Lcom/lge/camera/components/RotateImageView;->mAnimationStartTime:J

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    div-int/lit16 v3, v3, 0xf0

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/lge/camera/components/RotateImageView;->mAnimationEndTime:J

    .line 107
    invoke-virtual {p0, v5, v5, v6, v6}, Lcom/lge/camera/components/RotateImageView;->invalidate(IIII)V

    goto :goto_1

    .line 92
    .end local v0           #diff:I
    :cond_3
    iput p1, p0, Lcom/lge/camera/components/RotateImageView;->mCurrentDegree:I

    iput p1, p0, Lcom/lge/camera/components/RotateImageView;->mStartDegree:I

    iput p1, p0, Lcom/lge/camera/components/RotateImageView;->mTargetDegree:I

    goto :goto_2

    .line 97
    .restart local v0       #diff:I
    :cond_4
    add-int/lit16 v0, v0, 0x168

    goto :goto_3

    .line 103
    :cond_5
    const/4 v1, 0x0

    goto :goto_4
.end method
