.class public abstract Landroid/webkit/LGPopupWindow;
.super Ljava/lang/Object;
.source "LGPopupWindow.java"


# instance fields
.field protected mContentView:Landroid/view/ViewGroup;

.field protected mPopupWindow:Landroid/widget/PopupWindow;

.field mPositionX:I

.field mPositionY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "c"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x2

    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p0, p1}, Landroid/webkit/LGPopupWindow;->createPopupWindow(Landroid/content/Context;)V

    .line 33
    iget-object v1, p0, Landroid/webkit/LGPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 34
    iget-object v1, p0, Landroid/webkit/LGPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 35
    iget-object v1, p0, Landroid/webkit/LGPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 36
    iget-object v1, p0, Landroid/webkit/LGPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const v2, 0x1030002

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 37
    iget-object v1, p0, Landroid/webkit/LGPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 38
    iget-object v1, p0, Landroid/webkit/LGPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 40
    iget-object v1, p0, Landroid/webkit/LGPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/webkit/LGPopupWindow$1;

    invoke-direct {v2, p0}, Landroid/webkit/LGPopupWindow$1;-><init>(Landroid/webkit/LGPopupWindow;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 50
    invoke-virtual {p0}, Landroid/webkit/LGPopupWindow;->initContentView()V

    .line 52
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 55
    .local v0, wrapContent:Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Landroid/webkit/LGPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    iget-object v1, p0, Landroid/webkit/LGPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/webkit/LGPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 57
    return-void
.end method

.method private updatePosition(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v8, -0x1

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 67
    const/4 v4, 0x2

    new-array v1, v4, [I

    .line 68
    .local v1, location:[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 70
    iget v2, p0, Landroid/webkit/LGPopupWindow;->mPositionX:I

    .line 71
    .local v2, positionX:I
    iget v3, p0, Landroid/webkit/LGPopupWindow;->mPositionY:I

    .line 75
    .local v3, positionY:I
    aget v4, v1, v7

    if-ge v2, v4, :cond_0

    .line 76
    aget v2, v1, v7

    .line 81
    :cond_0
    if-gez v3, :cond_1

    .line 82
    invoke-virtual {p0}, Landroid/webkit/LGPopupWindow;->hide()V

    .line 102
    :goto_0
    return-void

    .line 85
    :cond_1
    iget-object v4, p0, Landroid/webkit/LGPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    .line 87
    .local v0, height:I
    aget v4, v1, v5

    if-ge v3, v4, :cond_2

    .line 88
    aget v3, v1, v5

    .line 91
    :cond_2
    add-int v4, v3, v0

    aget v5, v1, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    if-le v4, v5, :cond_3

    .line 92
    sub-int/2addr v3, v0

    .line 96
    :cond_3
    invoke-virtual {p0}, Landroid/webkit/LGPopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 97
    iget-object v4, p0, Landroid/webkit/LGPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v2, v3, v8, v8}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0

    .line 99
    :cond_4
    iget-object v4, p0, Landroid/webkit/LGPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, p1, v7, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method


# virtual methods
.method protected abstract createPopupWindow(Landroid/content/Context;)V
.end method

.method protected abstract getLocalPosition()Landroid/graphics/Point;
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Landroid/webkit/LGPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 106
    return-void
.end method

.method protected abstract initContentView()V
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Landroid/webkit/LGPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public show(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 60
    invoke-virtual {p0}, Landroid/webkit/LGPopupWindow;->getLocalPosition()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    iput v0, p0, Landroid/webkit/LGPopupWindow;->mPositionX:I

    .line 61
    invoke-virtual {p0}, Landroid/webkit/LGPopupWindow;->getLocalPosition()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, p0, Landroid/webkit/LGPopupWindow;->mPositionY:I

    .line 63
    invoke-direct {p0, p1}, Landroid/webkit/LGPopupWindow;->updatePosition(Landroid/view/View;)V

    .line 64
    return-void
.end method
