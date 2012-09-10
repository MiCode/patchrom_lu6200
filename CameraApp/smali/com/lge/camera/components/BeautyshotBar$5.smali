.class Lcom/lge/camera/components/BeautyshotBar$5;
.super Ljava/lang/Object;
.source "BeautyshotBar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/components/BeautyshotBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/components/BeautyshotBar;


# direct methods
.method constructor <init>(Lcom/lge/camera/components/BeautyshotBar;)V
    .locals 0
    .parameter

    .prologue
    .line 407
    iput-object p1, p0, Lcom/lge/camera/components/BeautyshotBar$5;->this$0:Lcom/lge/camera/components/BeautyshotBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 410
    iget-object v2, p0, Lcom/lge/camera/components/BeautyshotBar$5;->this$0:Lcom/lge/camera/components/BeautyshotBar;

    invoke-virtual {v2}, Lcom/lge/camera/components/BeautyshotBar;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 447
    :goto_0
    return v0

    .line 414
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 446
    :cond_1
    :goto_1
    :pswitch_0
    iget-object v0, p0, Lcom/lge/camera/components/BeautyshotBar$5;->this$0:Lcom/lge/camera/components/BeautyshotBar;

    invoke-virtual {v0}, Lcom/lge/camera/components/BeautyshotBar;->resetDisplayTimeout()V

    move v0, v1

    .line 447
    goto :goto_0

    .line 416
    :pswitch_1
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hb v.getId() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    .line 418
    iget-object v2, p0, Lcom/lge/camera/components/BeautyshotBar$5;->this$0:Lcom/lge/camera/components/BeautyshotBar;

    #calls: Lcom/lge/camera/components/BeautyshotBar;->isTouchUpAreaOfButton(Landroid/view/View;Landroid/view/MotionEvent;)Z
    invoke-static {v2, p1, p2}, Lcom/lge/camera/components/BeautyshotBar;->access$700(Lcom/lge/camera/components/BeautyshotBar;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 419
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 420
    iget-object v0, p0, Lcom/lge/camera/components/BeautyshotBar$5;->this$0:Lcom/lge/camera/components/BeautyshotBar;

    invoke-virtual {v0}, Lcom/lge/camera/components/BeautyshotBar;->stopTimerTask()V

    goto :goto_1

    .line 423
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f09000f

    if-ne v2, v3, :cond_3

    .line 424
    iget-object v2, p0, Lcom/lge/camera/components/BeautyshotBar$5;->this$0:Lcom/lge/camera/components/BeautyshotBar;

    #calls: Lcom/lge/camera/components/BeautyshotBar;->updateBeautyshotWithTimer(Landroid/view/View;ILandroid/view/MotionEvent;Z)V
    invoke-static {v2, p1, v1, p2, v0}, Lcom/lge/camera/components/BeautyshotBar;->access$300(Lcom/lge/camera/components/BeautyshotBar;Landroid/view/View;ILandroid/view/MotionEvent;Z)V

    goto :goto_1

    .line 426
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/components/BeautyshotBar$5;->this$0:Lcom/lge/camera/components/BeautyshotBar;

    const/4 v3, -0x1

    #calls: Lcom/lge/camera/components/BeautyshotBar;->updateBeautyshotWithTimer(Landroid/view/View;ILandroid/view/MotionEvent;Z)V
    invoke-static {v2, p1, v3, p2, v0}, Lcom/lge/camera/components/BeautyshotBar;->access$300(Lcom/lge/camera/components/BeautyshotBar;Landroid/view/View;ILandroid/view/MotionEvent;Z)V

    goto :goto_1

    .line 430
    :pswitch_2
    iget-object v2, p0, Lcom/lge/camera/components/BeautyshotBar$5;->this$0:Lcom/lge/camera/components/BeautyshotBar;

    #calls: Lcom/lge/camera/components/BeautyshotBar;->isTouchable(Landroid/view/View;Landroid/view/MotionEvent;)Z
    invoke-static {v2, p1, p2}, Lcom/lge/camera/components/BeautyshotBar;->access$800(Lcom/lge/camera/components/BeautyshotBar;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 431
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 432
    iget-object v0, p0, Lcom/lge/camera/components/BeautyshotBar$5;->this$0:Lcom/lge/camera/components/BeautyshotBar;

    invoke-virtual {v0}, Lcom/lge/camera/components/BeautyshotBar;->stopTimerTask()V

    goto :goto_1

    .line 437
    :pswitch_3
    iget-object v2, p0, Lcom/lge/camera/components/BeautyshotBar$5;->this$0:Lcom/lge/camera/components/BeautyshotBar;

    invoke-virtual {v2, v0}, Lcom/lge/camera/components/BeautyshotBar;->playSoundEffect(I)V

    .line 438
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 439
    iget-object v0, p0, Lcom/lge/camera/components/BeautyshotBar$5;->this$0:Lcom/lge/camera/components/BeautyshotBar;

    invoke-virtual {v0}, Lcom/lge/camera/components/BeautyshotBar;->stopTimerTask()V

    goto :goto_1

    .line 442
    :pswitch_4
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 443
    iget-object v0, p0, Lcom/lge/camera/components/BeautyshotBar$5;->this$0:Lcom/lge/camera/components/BeautyshotBar;

    invoke-virtual {v0}, Lcom/lge/camera/components/BeautyshotBar;->stopTimerTask()V

    goto :goto_1

    .line 414
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
