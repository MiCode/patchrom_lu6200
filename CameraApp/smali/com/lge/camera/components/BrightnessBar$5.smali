.class Lcom/lge/camera/components/BrightnessBar$5;
.super Ljava/lang/Object;
.source "BrightnessBar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/components/BrightnessBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/components/BrightnessBar;


# direct methods
.method constructor <init>(Lcom/lge/camera/components/BrightnessBar;)V
    .locals 0
    .parameter

    .prologue
    .line 379
    iput-object p1, p0, Lcom/lge/camera/components/BrightnessBar$5;->this$0:Lcom/lge/camera/components/BrightnessBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 382
    iget-object v2, p0, Lcom/lge/camera/components/BrightnessBar$5;->this$0:Lcom/lge/camera/components/BrightnessBar;

    invoke-virtual {v2}, Lcom/lge/camera/components/BrightnessBar;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 418
    :goto_0
    return v0

    .line 386
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 417
    :cond_1
    :goto_1
    :pswitch_0
    iget-object v0, p0, Lcom/lge/camera/components/BrightnessBar$5;->this$0:Lcom/lge/camera/components/BrightnessBar;

    invoke-virtual {v0}, Lcom/lge/camera/components/BrightnessBar;->resetDisplayTimeout()V

    move v0, v1

    .line 418
    goto :goto_0

    .line 388
    :pswitch_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    .line 389
    iget-object v2, p0, Lcom/lge/camera/components/BrightnessBar$5;->this$0:Lcom/lge/camera/components/BrightnessBar;

    #calls: Lcom/lge/camera/components/BrightnessBar;->isTouchUpAreaOfButton(Landroid/view/View;Landroid/view/MotionEvent;)Z
    invoke-static {v2, p1, p2}, Lcom/lge/camera/components/BrightnessBar;->access$700(Lcom/lge/camera/components/BrightnessBar;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 390
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 391
    iget-object v0, p0, Lcom/lge/camera/components/BrightnessBar$5;->this$0:Lcom/lge/camera/components/BrightnessBar;

    invoke-virtual {v0}, Lcom/lge/camera/components/BrightnessBar;->stopTimerTask()V

    goto :goto_1

    .line 394
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f090019

    if-ne v2, v3, :cond_3

    .line 395
    iget-object v2, p0, Lcom/lge/camera/components/BrightnessBar$5;->this$0:Lcom/lge/camera/components/BrightnessBar;

    #calls: Lcom/lge/camera/components/BrightnessBar;->updateBrightnessWithTimer(Landroid/view/View;ILandroid/view/MotionEvent;Z)V
    invoke-static {v2, p1, v1, p2, v0}, Lcom/lge/camera/components/BrightnessBar;->access$300(Lcom/lge/camera/components/BrightnessBar;Landroid/view/View;ILandroid/view/MotionEvent;Z)V

    goto :goto_1

    .line 397
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/components/BrightnessBar$5;->this$0:Lcom/lge/camera/components/BrightnessBar;

    const/4 v3, -0x1

    #calls: Lcom/lge/camera/components/BrightnessBar;->updateBrightnessWithTimer(Landroid/view/View;ILandroid/view/MotionEvent;Z)V
    invoke-static {v2, p1, v3, p2, v0}, Lcom/lge/camera/components/BrightnessBar;->access$300(Lcom/lge/camera/components/BrightnessBar;Landroid/view/View;ILandroid/view/MotionEvent;Z)V

    goto :goto_1

    .line 401
    :pswitch_2
    iget-object v2, p0, Lcom/lge/camera/components/BrightnessBar$5;->this$0:Lcom/lge/camera/components/BrightnessBar;

    #calls: Lcom/lge/camera/components/BrightnessBar;->isTouchUpAreaOfButton(Landroid/view/View;Landroid/view/MotionEvent;)Z
    invoke-static {v2, p1, p2}, Lcom/lge/camera/components/BrightnessBar;->access$700(Lcom/lge/camera/components/BrightnessBar;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 402
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 403
    iget-object v0, p0, Lcom/lge/camera/components/BrightnessBar$5;->this$0:Lcom/lge/camera/components/BrightnessBar;

    invoke-virtual {v0}, Lcom/lge/camera/components/BrightnessBar;->stopTimerTask()V

    goto :goto_1

    .line 408
    :pswitch_3
    iget-object v2, p0, Lcom/lge/camera/components/BrightnessBar$5;->this$0:Lcom/lge/camera/components/BrightnessBar;

    invoke-virtual {v2, v0}, Lcom/lge/camera/components/BrightnessBar;->playSoundEffect(I)V

    .line 409
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 410
    iget-object v0, p0, Lcom/lge/camera/components/BrightnessBar$5;->this$0:Lcom/lge/camera/components/BrightnessBar;

    invoke-virtual {v0}, Lcom/lge/camera/components/BrightnessBar;->stopTimerTask()V

    goto :goto_1

    .line 413
    :pswitch_4
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 414
    iget-object v0, p0, Lcom/lge/camera/components/BrightnessBar$5;->this$0:Lcom/lge/camera/components/BrightnessBar;

    invoke-virtual {v0}, Lcom/lge/camera/components/BrightnessBar;->stopTimerTask()V

    goto :goto_1

    .line 386
    nop

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
