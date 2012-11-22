.class Lcom/android/settings_ex/wifi/MovableListView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MovableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/MovableListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/MovableListView;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/MovableListView;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/wifi/MovableListView$1;->this$0:Lcom/android/settings_ex/wifi/MovableListView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/settings_ex/wifi/MovableListView$1;->this$0:Lcom/android/settings_ex/wifi/MovableListView;

    #getter for: Lcom/android/settings_ex/wifi/MovableListView;->mDragView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/MovableListView;->access$000(Lcom/android/settings_ex/wifi/MovableListView;)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_1

    const/high16 v2, 0x447a

    cmpl-float v2, p3, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/wifi/MovableListView$1;->this$0:Lcom/android/settings_ex/wifi/MovableListView;

    #getter for: Lcom/android/settings_ex/wifi/MovableListView;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/MovableListView;->access$100(Lcom/android/settings_ex/wifi/MovableListView;)Landroid/graphics/Rect;

    move-result-object v0

    .line 121
    .local v0, r:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/settings_ex/wifi/MovableListView$1;->this$0:Lcom/android/settings_ex/wifi/MovableListView;

    #getter for: Lcom/android/settings_ex/wifi/MovableListView;->mDragView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/MovableListView;->access$000(Lcom/android/settings_ex/wifi/MovableListView;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 122
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const/high16 v4, 0x4040

    div-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/wifi/MovableListView$1;->this$0:Lcom/android/settings_ex/wifi/MovableListView;

    #calls: Lcom/android/settings_ex/wifi/MovableListView;->stopDragging()V
    invoke-static {v2}, Lcom/android/settings_ex/wifi/MovableListView;->access$200(Lcom/android/settings_ex/wifi/MovableListView;)V

    iget-object v2, p0, Lcom/android/settings_ex/wifi/MovableListView$1;->this$0:Lcom/android/settings_ex/wifi/MovableListView;

    #getter for: Lcom/android/settings_ex/wifi/MovableListView;->mRemoveListener:Lcom/android/settings_ex/wifi/MovableListView$RemoveListener;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/MovableListView;->access$400(Lcom/android/settings_ex/wifi/MovableListView;)Lcom/android/settings_ex/wifi/MovableListView$RemoveListener;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/wifi/MovableListView$1;->this$0:Lcom/android/settings_ex/wifi/MovableListView;

    #getter for: Lcom/android/settings_ex/wifi/MovableListView;->mSrcDragPos:I
    invoke-static {v3}, Lcom/android/settings_ex/wifi/MovableListView;->access$300(Lcom/android/settings_ex/wifi/MovableListView;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/settings_ex/wifi/MovableListView$RemoveListener;->remove(I)V

    iget-object v2, p0, Lcom/android/settings_ex/wifi/MovableListView$1;->this$0:Lcom/android/settings_ex/wifi/MovableListView;

    #calls: Lcom/android/settings_ex/wifi/MovableListView;->unExpandViews(Z)V
    invoke-static {v2, v1}, Lcom/android/settings_ex/wifi/MovableListView;->access$500(Lcom/android/settings_ex/wifi/MovableListView;Z)V

    .end local v0           #r:Landroid/graphics/Rect;
    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
