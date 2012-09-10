.class Lcom/lge/camera/components/ZoomBar$3;
.super Ljava/lang/Object;
.source "ZoomBar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/components/ZoomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/components/ZoomBar;


# direct methods
.method constructor <init>(Lcom/lge/camera/components/ZoomBar;)V
    .locals 0
    .parameter

    .prologue
    .line 430
    iput-object p1, p0, Lcom/lge/camera/components/ZoomBar$3;->this$0:Lcom/lge/camera/components/ZoomBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 432
    iget-object v4, p0, Lcom/lge/camera/components/ZoomBar$3;->this$0:Lcom/lge/camera/components/ZoomBar;

    #getter for: Lcom/lge/camera/components/ZoomBar;->mZoomBar:Lcom/lge/camera/components/ZoomBar;
    invoke-static {v4}, Lcom/lge/camera/components/ZoomBar;->access$400(Lcom/lge/camera/components/ZoomBar;)Lcom/lge/camera/components/ZoomBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/components/ZoomBar;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_0

    .line 454
    :goto_0
    return v2

    .line 439
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 440
    .local v1, x:F
    invoke-static {}, Lcom/lge/camera/components/ZoomBar;->access$500()F

    move-result v4

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    sub-float v4, v1, v4

    invoke-static {}, Lcom/lge/camera/components/ZoomBar;->access$200()I

    move-result v5

    iget-object v6, p0, Lcom/lge/camera/components/ZoomBar$3;->this$0:Lcom/lge/camera/components/ZoomBar;

    invoke-virtual {v6}, Lcom/lge/camera/components/ZoomBar;->getCursorMaxStep()I

    move-result v6

    div-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-int v0, v4

    .line 442
    .local v0, value:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 453
    :goto_1
    iget-object v2, p0, Lcom/lge/camera/components/ZoomBar$3;->this$0:Lcom/lge/camera/components/ZoomBar;

    invoke-virtual {v2}, Lcom/lge/camera/components/ZoomBar;->resetDisplayTimeout()V

    move v2, v3

    .line 454
    goto :goto_0

    .line 444
    :pswitch_0
    iget-object v4, p0, Lcom/lge/camera/components/ZoomBar$3;->this$0:Lcom/lge/camera/components/ZoomBar;

    invoke-virtual {v4, v0, v2}, Lcom/lge/camera/components/ZoomBar;->updateZoomWithValue(IZ)V

    goto :goto_1

    .line 447
    :pswitch_1
    iget-object v4, p0, Lcom/lge/camera/components/ZoomBar$3;->this$0:Lcom/lge/camera/components/ZoomBar;

    invoke-virtual {v4, v0, v2}, Lcom/lge/camera/components/ZoomBar;->updateZoomWithValue(IZ)V

    goto :goto_1

    .line 450
    :pswitch_2
    iget-object v2, p0, Lcom/lge/camera/components/ZoomBar$3;->this$0:Lcom/lge/camera/components/ZoomBar;

    invoke-virtual {v2, v0, v3}, Lcom/lge/camera/components/ZoomBar;->updateZoomWithValue(IZ)V

    goto :goto_1

    .line 442
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
