.class public Lcom/lge/sui/widget/control/SUIToggleButtonGroup;
.super Landroid/widget/LinearLayout;
.source "SUIToggleButtonGroup.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private mChecked:Z

.field private mEnd:I

.field private mRect:Landroid/graphics/Rect;

.field private mStart:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->mRect:Landroid/graphics/Rect;

    .line 42
    invoke-direct {p0}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->initWidget()V

    .line 43
    return-void
.end method

.method private getCurrentIndex(II)I
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->getChildCount()I

    move-result v1

    .line 175
    .local v1, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 176
    invoke-virtual {p0, v2}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 178
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 179
    iget-object v3, p0, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 180
    iget-object v3, p0, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 187
    .end local v0           #child:Landroid/view/View;
    .end local v2           #i:I
    :goto_1
    return v2

    .line 175
    .restart local v0       #child:Landroid/view/View;
    .restart local v2       #i:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 187
    .end local v0           #child:Landroid/view/View;
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private initWidget()V
    .locals 4

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_0

    .line 53
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/high16 v3, 0x3f80

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 57
    .local v0, lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    .end local v0           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method private toggle(IIZ)V
    .locals 6
    .parameter "start"
    .parameter "end"
    .parameter "backward"

    .prologue
    .line 192
    if-ne p1, p2, :cond_1

    .line 217
    :cond_0
    return-void

    .line 196
    :cond_1
    const/4 v1, 0x0

    .line 197
    .local v1, child:Landroid/widget/ToggleButton;
    move v2, p1

    .line 198
    .local v2, first:I
    move v4, p2

    .line 200
    .local v4, last:I
    if-eqz p3, :cond_2

    .line 201
    move v2, p2

    .line 202
    move v4, p1

    .line 205
    :cond_2
    const/4 v0, 0x0

    .line 206
    .local v0, checked:Z
    move v3, v2

    .local v3, i:I
    :goto_0
    if-gt v3, v4, :cond_0

    .line 207
    invoke-virtual {p0, v3}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #child:Landroid/widget/ToggleButton;
    check-cast v1, Landroid/widget/ToggleButton;

    .line 208
    .restart local v1       #child:Landroid/widget/ToggleButton;
    if-eqz v1, :cond_4

    .line 209
    if-ne v3, v2, :cond_3

    .line 210
    iget-boolean v5, p0, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->mChecked:Z

    if-nez v5, :cond_5

    const/4 v0, 0x1

    .line 213
    :cond_3
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 206
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 210
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 107
    instance-of v0, p1, Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    .line 108
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 109
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 111
    :cond_0
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "child"
    .parameter "params"

    .prologue
    .line 121
    instance-of v0, p1, Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    .line 122
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 125
    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 130
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v3, v6

    .line 131
    .local v3, x:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v4, v6

    .line 132
    .local v4, y:I
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v6

    add-int/2addr v3, v6

    .line 133
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v6

    add-int/2addr v4, v6

    .line 134
    invoke-direct {p0, v3, v4}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->getCurrentIndex(II)I

    move-result v1

    .line 136
    .local v1, current:I
    const/4 v6, -0x1

    if-ne v1, v6, :cond_1

    .line 137
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 170
    :cond_0
    :goto_0
    return v5

    .line 141
    :cond_1
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v6, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 143
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 145
    :pswitch_0
    iput v1, p0, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->mEnd:I

    iput v1, p0, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->mStart:I

    .line 147
    invoke-virtual {p0, v1}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    .line 148
    .local v2, tb:Landroid/widget/ToggleButton;
    if-eqz v2, :cond_2

    .line 149
    invoke-virtual {v2}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v6

    iput-boolean v6, p0, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->mChecked:Z

    goto :goto_0

    .line 151
    :cond_2
    iput-boolean v5, p0, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->mChecked:Z

    goto :goto_0

    .line 158
    .end local v2           #tb:Landroid/widget/ToggleButton;
    :pswitch_1
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 161
    :pswitch_2
    iget v6, p0, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->mEnd:I

    if-eq v6, v1, :cond_0

    .line 162
    iput v1, p0, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->mEnd:I

    .line 163
    iget v6, p0, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->mEnd:I

    iget v7, p0, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->mStart:I

    if-ge v6, v7, :cond_3

    .line 164
    .local v0, backward:Z
    :goto_1
    iget v6, p0, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->mStart:I

    iget v7, p0, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->mEnd:I

    invoke-direct {p0, v6, v7, v0}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->toggle(IIZ)V

    goto :goto_0

    .end local v0           #backward:Z
    :cond_3
    move v0, v5

    .line 163
    goto :goto_1

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
