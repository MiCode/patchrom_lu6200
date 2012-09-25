.class public Lcom/android/settings_ex/wifi/MovableListView;
.super Landroid/widget/ListView;
.source "MovableListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/wifi/MovableListView$RemoveListener;,
        Lcom/android/settings_ex/wifi/MovableListView$DropListener;,
        Lcom/android/settings_ex/wifi/MovableListView$DragListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDragBitmap:Landroid/graphics/Bitmap;

.field private mDragListener:Lcom/android/settings_ex/wifi/MovableListView$DragListener;

.field private mDragPointX:I

.field private mDragPointY:I

.field private mDragPos:I

.field private mDragView:Landroid/widget/ImageView;

.field private mDropListener:Lcom/android/settings_ex/wifi/MovableListView$DropListener;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHeight:I

.field private mItemHeightExpanded:I

.field private mItemHeightHalf:I

.field private mItemHeightNormal:I

.field private mLowerBound:I

.field private mRemoveListener:Lcom/android/settings_ex/wifi/MovableListView$RemoveListener;

.field private mRemoveMode:I

.field private mSrcDragPos:I

.field private mTempRect:Landroid/graphics/Rect;

.field private final mTouchSlop:I

.field private mTrashcan:Landroid/graphics/drawable/Drawable;

.field private mUpperBound:I

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private mXOffset:I

.field private mYOffset:I

.field private scale:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/android/settings_ex/wifi/MovableListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/wifi/MovableListView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, -0x1

    .line 86
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    iput v4, p0, Lcom/android/settings_ex/wifi/MovableListView;->mRemoveMode:I

    .line 71
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/settings_ex/wifi/MovableListView;->mTempRect:Landroid/graphics/Rect;

    .line 87
    const-string v2, "Music"

    const/4 v3, 0x3

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 88
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v2, "deletemode"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings_ex/wifi/MovableListView;->mRemoveMode:I

    .line 89
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/android/settings_ex/wifi/MovableListView;->mTouchSlop:I

    .line 90
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/MovableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 93
    .local v1, res:Landroid/content/res/Resources;
    if-eqz v1, :cond_0

    .line 95
    const v2, 0x7f0e0038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/settings_ex/wifi/MovableListView;->mItemHeightNormal:I

    .line 96
    iget v2, p0, Lcom/android/settings_ex/wifi/MovableListView;->mItemHeightNormal:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/settings_ex/wifi/MovableListView;->mItemHeightHalf:I

    .line 97
    const v2, 0x7f0e0039

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/settings_ex/wifi/MovableListView;->mItemHeightExpanded:I

    .line 100
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/MovableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/android/settings_ex/wifi/MovableListView;->scale:F

    .line 103
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/wifi/MovableListView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings_ex/wifi/MovableListView;->mDragView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/wifi/MovableListView;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings_ex/wifi/MovableListView;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/wifi/MovableListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/MovableListView;->stopDragging()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/wifi/MovableListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/android/settings_ex/wifi/MovableListView;->mSrcDragPos:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/wifi/MovableListView;)Lcom/android/settings_ex/wifi/MovableListView$RemoveListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings_ex/wifi/MovableListView;->mRemoveListener:Lcom/android/settings_ex/wifi/MovableListView$RemoveListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/wifi/MovableListView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/MovableListView;->unExpandViews(Z)V

    return-void
.end method

.method private adjustScrollBounds(I)V
    .locals 1
    .parameter "y"

    .prologue
    .line 271
    iget v0, p0, Lcom/android/settings_ex/wifi/MovableListView;->mHeight:I

    div-int/lit8 v0, v0, 0x3

    if-lt p1, v0, :cond_0

    .line 273
    iget v0, p0, Lcom/android/settings_ex/wifi/MovableListView;->mHeight:I

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/android/settings_ex/wifi/MovableListView;->mUpperBound:I

    .line 275
    :cond_0
    iget v0, p0, Lcom/android/settings_ex/wifi/MovableListView;->mHeight:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    if-gt p1, v0, :cond_1

    .line 277
    iget v0, p0, Lcom/android/settings_ex/wifi/MovableListView;->mHeight:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/android/settings_ex/wifi/MovableListView;->mLowerBound:I

    .line 279
    :cond_1
    return-void
.end method

.method private doExpansion()V
    .locals 10

    .prologue
    .line 340
    iget v8, p0, Lcom/android/settings_ex/wifi/MovableListView;->mDragPos:I

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/MovableListView;->getFirstVisiblePosition()I

    move-result v9

    sub-int v0, v8, v9

    .line 341
    .local v0, childnum:I
    iget v8, p0, Lcom/android/settings_ex/wifi/MovableListView;->mDragPos:I

    iget v9, p0, Lcom/android/settings_ex/wifi/MovableListView;->mSrcDragPos:I

    if-le v8, v9, :cond_0

    .line 343
    add-int/lit8 v0, v0, 0x1

    .line 345
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/MovableListView;->getHeaderViewsCount()I

    move-result v4

    .line 347
    .local v4, numheaders:I
    iget v8, p0, Lcom/android/settings_ex/wifi/MovableListView;->mSrcDragPos:I

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/MovableListView;->getFirstVisiblePosition()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/wifi/MovableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 348
    .local v1, first:Landroid/view/View;
    const/4 v3, 0x0

    .line 350
    .local v3, i:I
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/wifi/MovableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 351
    .local v7, vv:Landroid/view/View;
    if-nez v7, :cond_1

    .line 400
    return-void

    .line 356
    :cond_1
    iget v2, p0, Lcom/android/settings_ex/wifi/MovableListView;->mItemHeightNormal:I

    .line 357
    .local v2, height:I
    const/4 v6, 0x0

    .line 358
    .local v6, visibility:I
    iget v8, p0, Lcom/android/settings_ex/wifi/MovableListView;->mDragPos:I

    if-ge v8, v4, :cond_4

    if-ne v3, v4, :cond_4

    .line 362
    invoke-virtual {v7, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 364
    const/4 v6, 0x4

    .line 395
    :cond_2
    :goto_1
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 396
    .local v5, params:Landroid/view/ViewGroup$LayoutParams;
    iput v2, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 397
    invoke-virtual {v7, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 398
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 348
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 368
    .end local v5           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    iget v2, p0, Lcom/android/settings_ex/wifi/MovableListView;->mItemHeightExpanded:I

    goto :goto_1

    .line 371
    :cond_4
    invoke-virtual {v7, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 374
    iget v8, p0, Lcom/android/settings_ex/wifi/MovableListView;->mDragPos:I

    iget v9, p0, Lcom/android/settings_ex/wifi/MovableListView;->mSrcDragPos:I

    if-eq v8, v9, :cond_5

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/wifi/MovableListView;->getPositionForView(Landroid/view/View;)I

    move-result v8

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/MovableListView;->getCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v8, v9, :cond_6

    .line 377
    :cond_5
    const/4 v6, 0x4

    goto :goto_1

    .line 385
    :cond_6
    const/4 v2, 0x1

    goto :goto_1

    .line 388
    :cond_7
    if-ne v3, v0, :cond_2

    .line 390
    iget v8, p0, Lcom/android/settings_ex/wifi/MovableListView;->mDragPos:I

    if-lt v8, v4, :cond_2

    iget v8, p0, Lcom/android/settings_ex/wifi/MovableListView;->mDragPos:I

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/MovableListView;->getCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ge v8, v9, :cond_2

    .line 392
    iget v2, p0, Lcom/android/settings_ex/wifi/MovableListView;->mItemHeightExpanded:I

    goto :goto_1
.end method

.method private dragView(II)V
    .locals 8
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 555
    iget-object v2, p0, Lcom/android/settings_ex/wifi/MovableListView;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/wifi/MovableListView;->mDragView:Landroid/widget/ImageView;

    if-nez v2, :cond_1

    .line 595
    :cond_0
    :goto_0
    return-void

    .line 557
    :cond_1
    iget v2, p0, Lcom/android/settings_ex/wifi/MovableListView;->mRemoveMode:I

    if-ne v2, v6, :cond_3

    .line 559
    const/high16 v0, 0x3f80

    .line 560
    .local v0, alpha:F
    iget-object v2, p0, Lcom/android/settings_ex/wifi/MovableListView;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    .line 561
    .local v1, width:I
    div-int/lit8 v2, v1, 0x2

    if-le p1, v2, :cond_2

    .line 563
    sub-int v2, v1, p1

    int-to-float v2, v2

    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 565
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/wifi/MovableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 568
    .end local v0           #alpha:F
    .end local v1           #width:I
    :cond_3
    iget v2, p0, Lcom/android/settings_ex/wifi/MovableListView;->mRemoveMode:I

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/settings_ex/wifi/MovableListView;->mRemoveMode:I

    if-ne v2, v7, :cond_5

    .line 570
    :cond_4
    iget-object v2, p0, Lcom/android/settings_ex/wifi/MovableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/android/settings_ex/wifi/MovableListView;->mDragPointX:I

    sub-int v3, p1, v3

    iget v4, p0, Lcom/android/settings_ex/wifi/MovableListView;->mXOffset:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 576
    :goto_1
    iget-object v2, p0, Lcom/android/settings_ex/wifi/MovableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/android/settings_ex/wifi/MovableListView;->mDragPointY:I

    sub-int v3, p2, v3

    iget v4, p0, Lcom/android/settings_ex/wifi/MovableListView;->mYOffset:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 577
    iget-object v2, p0, Lcom/android/settings_ex/wifi/MovableListView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/settings_ex/wifi/MovableListView;->mDragView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/settings_ex/wifi/MovableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 579
    iget-object v2, p0, Lcom/android/settings_ex/wifi/MovableListView;->mTrashcan:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 581
    iget-object v2, p0, Lcom/android/settings_ex/wifi/MovableListView;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    .line 582
    .restart local v1       #width:I
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/MovableListView;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    if-le p2, v2, :cond_6

    .line 584
    iget-object v2, p0, Lcom/android/settings_ex/wifi/MovableListView;->mTrashcan:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_0

    .line 574
    .end local v1           #width:I
    :cond_5
    iget-object v2, p0, Lcom/android/settings_ex/wifi/MovableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_1

    .line 586
    .restart local v1       #width:I
    :cond_6
    if-lez v1, :cond_7

    div-int/lit8 v2, v1, 0x4

    if-le p1, v2, :cond_7

    .line 588
    iget-object v2, p0, Lcom/android/settings_ex/wifi/MovableListView;->mTrashcan:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v6}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_0

    .line 592
    :cond_7
    iget-object v2, p0, Lcom/android/settings_ex/wifi/MovableListView;->mTrashcan:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_0
.end method

.method private getItemForPosition(I)I
    .locals 4
    .parameter "y"

    .prologue
    .line 251
    iget v2, p0, Lcom/android/settings_ex/wifi/MovableListView;->mDragPointY:I

    sub-int v2, p1, v2

    iget v3, p0, Lcom/android/settings_ex/wifi/MovableListView;->mItemHeightHalf:I

    sub-int v0, v2, v3

    .line 252
    .local v0, adjustedy:I
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Lcom/android/settings_ex/wifi/MovableListView;->myPointToPosition(II)I

    move-result v1

    .line 253
    .local v1, pos:I
    if-ltz v1, :cond_1

    .line 255
    iget v2, p0, Lcom/android/settings_ex/wifi/MovableListView;->mSrcDragPos:I

    if-gt v1, v2, :cond_0

    .line 257
    add-int/lit8 v1, v1, 0x1

    .line 266
    :cond_0
    :goto_0
    return v1

    .line 260
    :cond_1
    if-gez v0, :cond_0

    .line 264
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private myPointToPosition(II)I
    .locals 8
    .parameter "x"
    .parameter "y"

    .prologue
    .line 215
    if-gez p2, :cond_0

    .line 219
    iget v6, p0, Lcom/android/settings_ex/wifi/MovableListView;->mItemHeightNormal:I

    add-int/2addr v6, p2

    invoke-direct {p0, p1, v6}, Lcom/android/settings_ex/wifi/MovableListView;->myPointToPosition(II)I

    move-result v5

    .line 220
    .local v5, pos:I
    if-lez v5, :cond_0

    .line 222
    add-int/lit8 v6, v5, -0x1

    .line 246
    .end local v5           #pos:I
    :goto_0
    return v6

    .line 226
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/wifi/MovableListView;->mTempRect:Landroid/graphics/Rect;

    .line 227
    .local v3, frame:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/MovableListView;->getChildCount()I

    move-result v1

    .line 228
    .local v1, count:I
    add-int/lit8 v4, v1, -0x1

    .local v4, i:I
    :goto_1
    if-ltz v4, :cond_3

    .line 232
    :try_start_0
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/wifi/MovableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 233
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 234
    invoke-virtual {v0, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    .end local v0           #child:Landroid/view/View;
    :cond_1
    :goto_2
    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 243
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/MovableListView;->getFirstVisiblePosition()I

    move-result v6

    add-int/2addr v6, v4

    goto :goto_0

    .line 236
    :catch_0
    move-exception v2

    .line 238
    .local v2, e:Ljava/lang/Exception;
    sget-object v6, Lcom/android/settings_ex/wifi/MovableListView;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 228
    .end local v2           #e:Ljava/lang/Exception;
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 246
    :cond_3
    const/4 v6, -0x1

    goto :goto_0
.end method

.method private startDragging(Landroid/graphics/Bitmap;II)V
    .locals 7
    .parameter "bm"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 518
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/MovableListView;->stopDragging()V

    .line 520
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v2, p0, Lcom/android/settings_ex/wifi/MovableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 521
    iget-object v2, p0, Lcom/android/settings_ex/wifi/MovableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x33

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 522
    iget-object v2, p0, Lcom/android/settings_ex/wifi/MovableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/android/settings_ex/wifi/MovableListView;->mDragPointX:I

    sub-int v3, p2, v3

    iget v4, p0, Lcom/android/settings_ex/wifi/MovableListView;->mXOffset:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 523
    iget-object v2, p0, Lcom/android/settings_ex/wifi/MovableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/android/settings_ex/wifi/MovableListView;->mDragPointY:I

    sub-int v3, p3, v3

    iget v4, p0, Lcom/android/settings_ex/wifi/MovableListView;->mYOffset:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 525
    iget-object v2, p0, Lcom/android/settings_ex/wifi/MovableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 526
    iget-object v2, p0, Lcom/android/settings_ex/wifi/MovableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 527
    iget-object v2, p0, Lcom/android/settings_ex/wifi/MovableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x398

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 528
    iget-object v2, p0, Lcom/android/settings_ex/wifi/MovableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 529
    iget-object v2, p0, Lcom/android/settings_ex/wifi/MovableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 531
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/MovableListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 532
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 534
    .local v1, v:Landroid/widget/ImageView;
    if-eqz v1, :cond_1

    .line 539
    invoke-virtual {v1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 540
    const v2, 0x7f02013b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 542
    :cond_0
    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 543
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 544
    iput-object p1, p0, Lcom/android/settings_ex/wifi/MovableListView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 546
    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/android/settings_ex/wifi/MovableListView;->mWindowManager:Landroid/view/WindowManager;

    .line 547
    iget-object v2, p0, Lcom/android/settings_ex/wifi/MovableListView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/settings_ex/wifi/MovableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v1, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 548
    iput-object v1, p0, Lcom/android/settings_ex/wifi/MovableListView;->mDragView:Landroid/widget/ImageView;

    .line 551
    :cond_1
    return-void
.end method

.method private stopDragging()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 599
    iget-object v1, p0, Lcom/android/settings_ex/wifi/MovableListView;->mDragView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 601
    iget-object v1, p0, Lcom/android/settings_ex/wifi/MovableListView;->mDragView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 602
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/MovableListView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 603
    .local v0, wm:Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/android/settings_ex/wifi/MovableListView;->mDragView:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 604
    iget-object v1, p0, Lcom/android/settings_ex/wifi/MovableListView;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 605
    iput-object v3, p0, Lcom/android/settings_ex/wifi/MovableListView;->mDragView:Landroid/widget/ImageView;

    .line 607
    .end local v0           #wm:Landroid/view/WindowManager;
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/MovableListView;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 609
    iget-object v1, p0, Lcom/android/settings_ex/wifi/MovableListView;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 610
    iput-object v3, p0, Lcom/android/settings_ex/wifi/MovableListView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 612
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/wifi/MovableListView;->mTrashcan:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 614
    iget-object v1, p0, Lcom/android/settings_ex/wifi/MovableListView;->mTrashcan:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 616
    :cond_2
    return-void
.end method

.method private unExpandViews(Z)V
    .locals 8
    .parameter "deletion"

    .prologue
    const/4 v7, 0x0

    .line 286
    const/4 v0, 0x0

    .line 288
    .local v0, i:I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/MovableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 289
    .local v3, v:Landroid/view/View;
    if-nez v3, :cond_2

    .line 291
    if-eqz p1, :cond_1

    .line 294
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/MovableListView;->getFirstVisiblePosition()I

    move-result v2

    .line 297
    .local v2, position:I
    const/4 v5, 0x0

    .line 298
    .local v5, y:I
    invoke-virtual {p0, v7}, Lcom/android/settings_ex/wifi/MovableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 299
    .local v4, vv:Landroid/view/View;
    if-eqz v4, :cond_0

    .line 300
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    .line 302
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/MovableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/wifi/MovableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 303
    invoke-virtual {p0, v2, v5}, Lcom/android/settings_ex/wifi/MovableListView;->setSelectionFromTop(II)V

    .line 308
    .end local v2           #position:I
    .end local v4           #vv:Landroid/view/View;
    .end local v5           #y:I
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/MovableListView;->layoutChildren()V

    .line 309
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/MovableListView;->getChildAt(I)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 317
    :goto_1
    if-nez v3, :cond_2

    .line 319
    return-void

    .line 322
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 323
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    iget v6, p0, Lcom/android/settings_ex/wifi/MovableListView;->mItemHeightNormal:I

    iput v6, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 324
    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 325
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 286
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 311
    .end local v1           #params:Landroid/view/ViewGroup$LayoutParams;
    :catch_0
    move-exception v6

    goto :goto_1
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "ev"

    .prologue
    const/4 v8, 0x0

    .line 108
    iget-object v9, p0, Lcom/android/settings_ex/wifi/MovableListView;->mRemoveListener:Lcom/android/settings_ex/wifi/MovableListView$RemoveListener;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/settings_ex/wifi/MovableListView;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v9, :cond_0

    .line 110
    iget v9, p0, Lcom/android/settings_ex/wifi/MovableListView;->mRemoveMode:I

    if-nez v9, :cond_0

    .line 112
    new-instance v9, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/MovableListView;->getContext()Landroid/content/Context;

    move-result-object v10

    new-instance v11, Lcom/android/settings_ex/wifi/MovableListView$1;

    invoke-direct {v11, p0}, Lcom/android/settings_ex/wifi/MovableListView$1;-><init>(Lcom/android/settings_ex/wifi/MovableListView;)V

    invoke-direct {v9, v10, v11}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v9, p0, Lcom/android/settings_ex/wifi/MovableListView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 138
    :cond_0
    iget-object v9, p0, Lcom/android/settings_ex/wifi/MovableListView;->mDragListener:Lcom/android/settings_ex/wifi/MovableListView$DragListener;

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/android/settings_ex/wifi/MovableListView;->mDropListener:Lcom/android/settings_ex/wifi/MovableListView$DropListener;

    if-eqz v9, :cond_2

    .line 140
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 205
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    :cond_3
    :goto_1
    return v8

    .line 143
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v6, v9

    .line 144
    .local v6, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v7, v9

    .line 145
    .local v7, y:I
    invoke-virtual {p0, v6, v7}, Lcom/android/settings_ex/wifi/MovableListView;->pointToPosition(II)I

    move-result v3

    .line 146
    .local v3, itemnum:I
    const/4 v9, -0x1

    if-eq v3, v9, :cond_2

    .line 152
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/MovableListView;->getFirstVisiblePosition()I

    move-result v9

    sub-int v9, v3, v9

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/wifi/MovableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 154
    .local v2, item:Landroid/view/ViewGroup;
    if-eqz v2, :cond_4

    .line 156
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v9

    sub-int v9, v6, v9

    iput v9, p0, Lcom/android/settings_ex/wifi/MovableListView;->mDragPointX:I

    .line 157
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTop()I

    move-result v9

    sub-int v9, v7, v9

    iput v9, p0, Lcom/android/settings_ex/wifi/MovableListView;->mDragPointY:I

    .line 159
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    float-to-int v9, v9

    sub-int/2addr v9, v6

    iput v9, p0, Lcom/android/settings_ex/wifi/MovableListView;->mXOffset:I

    .line 160
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    float-to-int v9, v9

    sub-int/2addr v9, v7

    iput v9, p0, Lcom/android/settings_ex/wifi/MovableListView;->mYOffset:I

    .line 163
    const/high16 v9, 0x4280

    iget v10, p0, Lcom/android/settings_ex/wifi/MovableListView;->scale:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    if-ge v6, v9, :cond_4

    .line 166
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->setDrawingCacheEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 173
    :try_start_1
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 174
    .local v4, temp:Landroid/graphics/Bitmap;
    if-eqz v4, :cond_3

    .line 175
    invoke-static {v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 179
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->setDrawingCacheEnabled(Z)V

    .line 180
    invoke-direct {p0, v0, v6, v7}, Lcom/android/settings_ex/wifi/MovableListView;->startDragging(Landroid/graphics/Bitmap;II)V

    .line 181
    iput v3, p0, Lcom/android/settings_ex/wifi/MovableListView;->mDragPos:I

    .line 182
    iget v9, p0, Lcom/android/settings_ex/wifi/MovableListView;->mDragPos:I

    iput v9, p0, Lcom/android/settings_ex/wifi/MovableListView;->mSrcDragPos:I

    .line 183
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/MovableListView;->getHeight()I

    move-result v9

    iput v9, p0, Lcom/android/settings_ex/wifi/MovableListView;->mHeight:I

    .line 184
    iget v5, p0, Lcom/android/settings_ex/wifi/MovableListView;->mTouchSlop:I

    .line 185
    .local v5, touchSlop:I
    sub-int v9, v7, v5

    iget v10, p0, Lcom/android/settings_ex/wifi/MovableListView;->mHeight:I

    div-int/lit8 v10, v10, 0x3

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    iput v9, p0, Lcom/android/settings_ex/wifi/MovableListView;->mUpperBound:I

    .line 186
    add-int v9, v7, v5

    iget v10, p0, Lcom/android/settings_ex/wifi/MovableListView;->mHeight:I

    mul-int/lit8 v10, v10, 0x2

    div-int/lit8 v10, v10, 0x3

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, p0, Lcom/android/settings_ex/wifi/MovableListView;->mLowerBound:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 189
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #temp:Landroid/graphics/Bitmap;
    .end local v5           #touchSlop:I
    :catch_0
    move-exception v1

    .line 191
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    sget-object v8, Lcom/android/settings_ex/wifi/MovableListView;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    .end local v1           #e:Ljava/lang/Exception;
    :cond_4
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/MovableListView;->stopDragging()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 198
    .end local v2           #item:Landroid/view/ViewGroup;
    :catch_1
    move-exception v1

    .line 200
    .restart local v1       #e:Ljava/lang/Exception;
    sget-object v8, Lcom/android/settings_ex/wifi/MovableListView;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 140
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "ev"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 405
    iget-object v10, p0, Lcom/android/settings_ex/wifi/MovableListView;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v10, :cond_0

    .line 407
    iget-object v10, p0, Lcom/android/settings_ex/wifi/MovableListView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v10, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 409
    :cond_0
    iget-object v10, p0, Lcom/android/settings_ex/wifi/MovableListView;->mDragListener:Lcom/android/settings_ex/wifi/MovableListView$DragListener;

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/android/settings_ex/wifi/MovableListView;->mDropListener:Lcom/android/settings_ex/wifi/MovableListView$DropListener;

    if-eqz v10, :cond_e

    :cond_1
    iget-object v10, p0, Lcom/android/settings_ex/wifi/MovableListView;->mDragView:Landroid/widget/ImageView;

    if-eqz v10, :cond_e

    .line 411
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 412
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 511
    .end local v0           #action:I
    :cond_2
    :goto_0
    return v8

    .line 416
    .restart local v0       #action:I
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings_ex/wifi/MovableListView;->mTempRect:Landroid/graphics/Rect;

    .line 417
    .local v3, r:Landroid/graphics/Rect;
    iget-object v10, p0, Lcom/android/settings_ex/wifi/MovableListView;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v10, v3}, Landroid/widget/ImageView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 418
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/MovableListView;->stopDragging()V

    .line 420
    iget v10, p0, Lcom/android/settings_ex/wifi/MovableListView;->mRemoveMode:I

    if-ne v10, v8, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    iget v11, v3, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v11, v11, 0x3

    int-to-float v11, v11

    const/high16 v12, 0x4080

    div-float/2addr v11, v12

    cmpl-float v10, v10, v11

    if-lez v10, :cond_4

    .line 422
    iget-object v9, p0, Lcom/android/settings_ex/wifi/MovableListView;->mRemoveListener:Lcom/android/settings_ex/wifi/MovableListView$RemoveListener;

    if-eqz v9, :cond_3

    .line 424
    iget-object v9, p0, Lcom/android/settings_ex/wifi/MovableListView;->mRemoveListener:Lcom/android/settings_ex/wifi/MovableListView$RemoveListener;

    iget v10, p0, Lcom/android/settings_ex/wifi/MovableListView;->mSrcDragPos:I

    invoke-interface {v9, v10}, Lcom/android/settings_ex/wifi/MovableListView$RemoveListener;->remove(I)V

    .line 426
    :cond_3
    invoke-direct {p0, v8}, Lcom/android/settings_ex/wifi/MovableListView;->unExpandViews(Z)V

    goto :goto_0

    .line 430
    :cond_4
    iget-object v10, p0, Lcom/android/settings_ex/wifi/MovableListView;->mDropListener:Lcom/android/settings_ex/wifi/MovableListView$DropListener;

    if-eqz v10, :cond_5

    iget v10, p0, Lcom/android/settings_ex/wifi/MovableListView;->mDragPos:I

    if-ltz v10, :cond_5

    iget v10, p0, Lcom/android/settings_ex/wifi/MovableListView;->mDragPos:I

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/MovableListView;->getCount()I

    move-result v11

    if-ge v10, v11, :cond_5

    .line 432
    iget-object v10, p0, Lcom/android/settings_ex/wifi/MovableListView;->mDropListener:Lcom/android/settings_ex/wifi/MovableListView$DropListener;

    iget v11, p0, Lcom/android/settings_ex/wifi/MovableListView;->mSrcDragPos:I

    iget v12, p0, Lcom/android/settings_ex/wifi/MovableListView;->mDragPos:I

    invoke-interface {v10, v11, v12}, Lcom/android/settings_ex/wifi/MovableListView$DropListener;->drop(II)V

    .line 434
    :cond_5
    invoke-direct {p0, v9}, Lcom/android/settings_ex/wifi/MovableListView;->unExpandViews(Z)V

    goto :goto_0

    .line 440
    .end local v3           #r:Landroid/graphics/Rect;
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v6, v9

    .line 441
    .local v6, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v7, v9

    .line 442
    .local v7, y:I
    invoke-direct {p0, v6, v7}, Lcom/android/settings_ex/wifi/MovableListView;->dragView(II)V

    .line 443
    invoke-direct {p0, v7}, Lcom/android/settings_ex/wifi/MovableListView;->getItemForPosition(I)I

    move-result v2

    .line 444
    .local v2, itemnum:I
    if-ltz v2, :cond_2

    .line 446
    if-eqz v0, :cond_6

    iget v9, p0, Lcom/android/settings_ex/wifi/MovableListView;->mDragPos:I

    if-eq v2, v9, :cond_8

    .line 448
    :cond_6
    iget-object v9, p0, Lcom/android/settings_ex/wifi/MovableListView;->mDragListener:Lcom/android/settings_ex/wifi/MovableListView$DragListener;

    if-eqz v9, :cond_7

    .line 450
    iget-object v9, p0, Lcom/android/settings_ex/wifi/MovableListView;->mDragListener:Lcom/android/settings_ex/wifi/MovableListView$DragListener;

    iget v10, p0, Lcom/android/settings_ex/wifi/MovableListView;->mDragPos:I

    invoke-interface {v9, v10, v2}, Lcom/android/settings_ex/wifi/MovableListView$DragListener;->drag(II)V

    .line 452
    :cond_7
    iput v2, p0, Lcom/android/settings_ex/wifi/MovableListView;->mDragPos:I

    .line 453
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/MovableListView;->doExpansion()V

    .line 455
    :cond_8
    const/4 v4, 0x0

    .line 456
    .local v4, speed:I
    invoke-direct {p0, v7}, Lcom/android/settings_ex/wifi/MovableListView;->adjustScrollBounds(I)V

    .line 457
    iget v9, p0, Lcom/android/settings_ex/wifi/MovableListView;->mLowerBound:I

    if-le v7, v9, :cond_c

    .line 460
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/MovableListView;->getLastVisiblePosition()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/MovableListView;->getCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ge v9, v10, :cond_b

    .line 462
    iget v9, p0, Lcom/android/settings_ex/wifi/MovableListView;->mHeight:I

    iget v10, p0, Lcom/android/settings_ex/wifi/MovableListView;->mLowerBound:I

    add-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    if-le v7, v9, :cond_a

    const/16 v4, 0x10

    .line 494
    :cond_9
    :goto_1
    if-eqz v4, :cond_2

    .line 496
    const/16 v9, 0x1e

    invoke-virtual {p0, v4, v9}, Lcom/android/settings_ex/wifi/MovableListView;->smoothScrollBy(II)V

    goto/16 :goto_0

    .line 462
    :cond_a
    const/4 v4, 0x4

    goto :goto_1

    .line 466
    :cond_b
    const/4 v4, 0x1

    goto :goto_1

    .line 469
    :cond_c
    iget v9, p0, Lcom/android/settings_ex/wifi/MovableListView;->mUpperBound:I

    if-ge v7, v9, :cond_9

    .line 474
    :try_start_0
    iget v9, p0, Lcom/android/settings_ex/wifi/MovableListView;->mUpperBound:I

    div-int/lit8 v9, v9, 0x2

    if-ge v7, v9, :cond_d

    const/16 v4, -0x10

    .line 476
    :goto_2
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/wifi/MovableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 477
    .local v5, vv:Landroid/view/View;
    if-eqz v5, :cond_9

    .line 479
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/MovableListView;->getFirstVisiblePosition()I

    move-result v9

    if-nez v9, :cond_9

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/MovableListView;->getPaddingTop()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-lt v9, v10, :cond_9

    .line 484
    const/4 v4, 0x0

    goto :goto_1

    .line 474
    .end local v5           #vv:Landroid/view/View;
    :cond_d
    const/4 v4, -0x4

    goto :goto_2

    .line 489
    :catch_0
    move-exception v1

    .line 491
    .local v1, e:Ljava/lang/Exception;
    sget-object v9, Lcom/android/settings_ex/wifi/MovableListView;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 507
    .end local v0           #action:I
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #itemnum:I
    .end local v4           #speed:I
    .end local v6           #x:I
    .end local v7           #y:I
    :cond_e
    :try_start_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    goto/16 :goto_0

    .line 509
    :catch_1
    move-exception v1

    .restart local v1       #e:Ljava/lang/Exception;
    move v8, v9

    .line 511
    goto/16 :goto_0

    .line 412
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
