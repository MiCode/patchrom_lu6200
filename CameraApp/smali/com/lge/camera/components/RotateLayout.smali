.class public Lcom/lge/camera/components/RotateLayout;
.super Landroid/widget/RelativeLayout;
.source "RotateLayout.java"


# instance fields
.field private mChild:Landroid/view/View;

.field private mOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 37
    const v0, 0x106000d

    invoke-virtual {p0, v0}, Lcom/lge/camera/components/RotateLayout;->setBackgroundResource(I)V

    .line 39
    :cond_0
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/camera/components/RotateLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/components/RotateLayout;->mChild:Landroid/view/View;

    .line 44
    iget-object v0, p0, Lcom/lge/camera/components/RotateLayout;->mChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/lge/camera/components/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 46
    iget-object v0, p0, Lcom/lge/camera/components/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 48
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "change"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v3, 0x0

    .line 53
    sub-int v1, p4, p2

    .line 54
    .local v1, width:I
    sub-int v0, p5, p3

    .line 55
    .local v0, height:I
    iget v2, p0, Lcom/lge/camera/components/RotateLayout;->mOrientation:I

    sparse-switch v2, :sswitch_data_0

    .line 65
    :goto_0
    return-void

    .line 58
    :sswitch_0
    iget-object v2, p0, Lcom/lge/camera/components/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v3, v3, v1, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 62
    :sswitch_1
    iget-object v2, p0, Lcom/lge/camera/components/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 55
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    const/4 v4, 0x0

    .line 69
    const/4 v1, 0x0

    .local v1, w:I
    const/4 v0, 0x0

    .line 70
    .local v0, h:I
    iget v2, p0, Lcom/lge/camera/components/RotateLayout;->mOrientation:I

    sparse-switch v2, :sswitch_data_0

    .line 84
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/lge/camera/components/RotateLayout;->setMeasuredDimension(II)V

    .line 86
    iget v2, p0, Lcom/lge/camera/components/RotateLayout;->mOrientation:I

    sparse-switch v2, :sswitch_data_1

    .line 104
    :goto_1
    iget-object v2, p0, Lcom/lge/camera/components/RotateLayout;->mChild:Landroid/view/View;

    iget v3, p0, Lcom/lge/camera/components/RotateLayout;->mOrientation:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setRotation(F)V

    .line 105
    return-void

    .line 73
    :sswitch_0
    iget-object v2, p0, Lcom/lge/camera/components/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p0, v2, p1, p2}, Lcom/lge/camera/components/RotateLayout;->measureChild(Landroid/view/View;II)V

    .line 74
    iget-object v2, p0, Lcom/lge/camera/components/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 75
    iget-object v2, p0, Lcom/lge/camera/components/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 76
    goto :goto_0

    .line 79
    :sswitch_1
    iget-object v2, p0, Lcom/lge/camera/components/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p0, v2, p2, p1}, Lcom/lge/camera/components/RotateLayout;->measureChild(Landroid/view/View;II)V

    .line 80
    iget-object v2, p0, Lcom/lge/camera/components/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 81
    iget-object v2, p0, Lcom/lge/camera/components/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    goto :goto_0

    .line 88
    :sswitch_2
    iget-object v2, p0, Lcom/lge/camera/components/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 89
    iget-object v2, p0, Lcom/lge/camera/components/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 92
    :sswitch_3
    iget-object v2, p0, Lcom/lge/camera/components/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 93
    iget-object v2, p0, Lcom/lge/camera/components/RotateLayout;->mChild:Landroid/view/View;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 96
    :sswitch_4
    iget-object v2, p0, Lcom/lge/camera/components/RotateLayout;->mChild:Landroid/view/View;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 97
    iget-object v2, p0, Lcom/lge/camera/components/RotateLayout;->mChild:Landroid/view/View;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 100
    :sswitch_5
    iget-object v2, p0, Lcom/lge/camera/components/RotateLayout;->mChild:Landroid/view/View;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 101
    iget-object v2, p0, Lcom/lge/camera/components/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 70
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch

    .line 86
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_2
        0x5a -> :sswitch_3
        0xb4 -> :sswitch_4
        0x10e -> :sswitch_5
    .end sparse-switch
.end method

.method public setAngle(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 109
    rem-int/lit16 p1, p1, 0x168

    .line 110
    iget v0, p0, Lcom/lge/camera/components/RotateLayout;->mOrientation:I

    if-ne v0, p1, :cond_0

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    iput p1, p0, Lcom/lge/camera/components/RotateLayout;->mOrientation:I

    .line 112
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateLayout;->requestLayout()V

    goto :goto_0
.end method
