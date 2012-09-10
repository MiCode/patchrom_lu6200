.class Lcom/lge/camera/components/ZoomBar$4;
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
    .line 458
    iput-object p1, p0, Lcom/lge/camera/components/ZoomBar$4;->this$0:Lcom/lge/camera/components/ZoomBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 461
    iget-object v0, p0, Lcom/lge/camera/components/ZoomBar$4;->this$0:Lcom/lge/camera/components/ZoomBar;

    #getter for: Lcom/lge/camera/components/ZoomBar;->mZoomBar:Lcom/lge/camera/components/ZoomBar;
    invoke-static {v0}, Lcom/lge/camera/components/ZoomBar;->access$400(Lcom/lge/camera/components/ZoomBar;)Lcom/lge/camera/components/ZoomBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/components/ZoomBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    :goto_0
    return v4

    .line 464
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 497
    :cond_1
    :goto_1
    :pswitch_0
    iget-object v0, p0, Lcom/lge/camera/components/ZoomBar$4;->this$0:Lcom/lge/camera/components/ZoomBar;

    invoke-virtual {v0}, Lcom/lge/camera/components/ZoomBar;->resetDisplayTimeout()V

    move v4, v8

    .line 498
    goto :goto_0

    .line 466
    :pswitch_1
    invoke-virtual {p1, v8}, Landroid/view/View;->setPressed(Z)V

    .line 467
    iget-object v0, p0, Lcom/lge/camera/components/ZoomBar$4;->this$0:Lcom/lge/camera/components/ZoomBar;

    #calls: Lcom/lge/camera/components/ZoomBar;->isTouchable(Landroid/view/View;Landroid/view/MotionEvent;)Z
    invoke-static {v0, p1, p2}, Lcom/lge/camera/components/ZoomBar;->access$600(Lcom/lge/camera/components/ZoomBar;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 468
    invoke-virtual {p1, v4}, Landroid/view/View;->setPressed(Z)V

    .line 469
    iget-object v0, p0, Lcom/lge/camera/components/ZoomBar$4;->this$0:Lcom/lge/camera/components/ZoomBar;

    invoke-virtual {v0}, Lcom/lge/camera/components/ZoomBar;->stopTimerTask()V

    goto :goto_1

    .line 472
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0900e6

    if-ne v0, v1, :cond_3

    .line 473
    iget-object v0, p0, Lcom/lge/camera/components/ZoomBar$4;->this$0:Lcom/lge/camera/components/ZoomBar;

    const/4 v1, 0x2

    move-object v2, p1

    move-object v3, p2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/lge/camera/components/ZoomBar;->updateZoomWithTimer(ILandroid/view/View;Landroid/view/MotionEvent;ZZ)V

    goto :goto_1

    .line 475
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/components/ZoomBar$4;->this$0:Lcom/lge/camera/components/ZoomBar;

    const/4 v1, -0x2

    move-object v2, p1

    move-object v3, p2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/lge/camera/components/ZoomBar;->updateZoomWithTimer(ILandroid/view/View;Landroid/view/MotionEvent;ZZ)V

    goto :goto_1

    .line 479
    :pswitch_2
    iget-object v0, p0, Lcom/lge/camera/components/ZoomBar$4;->this$0:Lcom/lge/camera/components/ZoomBar;

    #calls: Lcom/lge/camera/components/ZoomBar;->isTouchUpAreaOfButton(Landroid/view/View;Landroid/view/MotionEvent;)Z
    invoke-static {v0, p1, p2}, Lcom/lge/camera/components/ZoomBar;->access$700(Lcom/lge/camera/components/ZoomBar;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 480
    invoke-virtual {p1, v4}, Landroid/view/View;->setPressed(Z)V

    .line 481
    iget-object v3, p0, Lcom/lge/camera/components/ZoomBar$4;->this$0:Lcom/lge/camera/components/ZoomBar;

    move-object v5, p1

    move-object v6, p2

    move v7, v4

    invoke-virtual/range {v3 .. v8}, Lcom/lge/camera/components/ZoomBar;->updateZoomWithTimer(ILandroid/view/View;Landroid/view/MotionEvent;ZZ)V

    .line 482
    iget-object v0, p0, Lcom/lge/camera/components/ZoomBar$4;->this$0:Lcom/lge/camera/components/ZoomBar;

    invoke-virtual {v0}, Lcom/lge/camera/components/ZoomBar;->stopTimerTask()V

    goto :goto_1

    .line 487
    :pswitch_3
    iget-object v0, p0, Lcom/lge/camera/components/ZoomBar$4;->this$0:Lcom/lge/camera/components/ZoomBar;

    invoke-virtual {v0, v4}, Lcom/lge/camera/components/ZoomBar;->playSoundEffect(I)V

    .line 488
    invoke-virtual {p1, v4}, Landroid/view/View;->setPressed(Z)V

    .line 489
    iget-object v3, p0, Lcom/lge/camera/components/ZoomBar$4;->this$0:Lcom/lge/camera/components/ZoomBar;

    move-object v5, p1

    move-object v6, p2

    move v7, v4

    invoke-virtual/range {v3 .. v8}, Lcom/lge/camera/components/ZoomBar;->updateZoomWithTimer(ILandroid/view/View;Landroid/view/MotionEvent;ZZ)V

    .line 490
    iget-object v0, p0, Lcom/lge/camera/components/ZoomBar$4;->this$0:Lcom/lge/camera/components/ZoomBar;

    invoke-virtual {v0}, Lcom/lge/camera/components/ZoomBar;->stopTimerTask()V

    goto :goto_1

    .line 493
    :pswitch_4
    invoke-virtual {p1, v4}, Landroid/view/View;->setPressed(Z)V

    .line 494
    iget-object v0, p0, Lcom/lge/camera/components/ZoomBar$4;->this$0:Lcom/lge/camera/components/ZoomBar;

    invoke-virtual {v0}, Lcom/lge/camera/components/ZoomBar;->stopTimerTask()V

    goto :goto_1

    .line 464
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
