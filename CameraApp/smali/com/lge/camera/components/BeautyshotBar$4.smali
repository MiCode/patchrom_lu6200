.class Lcom/lge/camera/components/BeautyshotBar$4;
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
    .line 382
    iput-object p1, p0, Lcom/lge/camera/components/BeautyshotBar$4;->this$0:Lcom/lge/camera/components/BeautyshotBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const v6, 0x7f09000e

    const/4 v3, 0x1

    .line 384
    iget-object v4, p0, Lcom/lge/camera/components/BeautyshotBar$4;->this$0:Lcom/lge/camera/components/BeautyshotBar;

    invoke-virtual {v4}, Lcom/lge/camera/components/BeautyshotBar;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_0

    .line 403
    :goto_0
    return v2

    .line 387
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 388
    .local v1, x:F
    invoke-static {}, Lcom/lge/camera/components/BeautyshotBar;->access$400()F

    move-result v4

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    sub-float v4, v1, v4

    invoke-static {}, Lcom/lge/camera/components/BeautyshotBar;->access$500()I

    move-result v5

    div-int/lit8 v5, v5, 0x8

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-int v0, v4

    .line 389
    .local v0, value:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 402
    :goto_1
    iget-object v2, p0, Lcom/lge/camera/components/BeautyshotBar$4;->this$0:Lcom/lge/camera/components/BeautyshotBar;

    invoke-virtual {v2}, Lcom/lge/camera/components/BeautyshotBar;->resetDisplayTimeout()V

    move v2, v3

    .line 403
    goto :goto_0

    .line 391
    :pswitch_0
    iget-object v2, p0, Lcom/lge/camera/components/BeautyshotBar$4;->this$0:Lcom/lge/camera/components/BeautyshotBar;

    invoke-virtual {v2, v6}, Lcom/lge/camera/components/BeautyshotBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setPressed(Z)V

    .line 392
    iget-object v2, p0, Lcom/lge/camera/components/BeautyshotBar$4;->this$0:Lcom/lge/camera/components/BeautyshotBar;

    #calls: Lcom/lge/camera/components/BeautyshotBar;->updateBeautyshotWithValue(I)V
    invoke-static {v2, v0}, Lcom/lge/camera/components/BeautyshotBar;->access$600(Lcom/lge/camera/components/BeautyshotBar;I)V

    goto :goto_1

    .line 395
    :pswitch_1
    iget-object v2, p0, Lcom/lge/camera/components/BeautyshotBar$4;->this$0:Lcom/lge/camera/components/BeautyshotBar;

    invoke-virtual {v2, v6}, Lcom/lge/camera/components/BeautyshotBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setPressed(Z)V

    .line 396
    iget-object v2, p0, Lcom/lge/camera/components/BeautyshotBar$4;->this$0:Lcom/lge/camera/components/BeautyshotBar;

    #calls: Lcom/lge/camera/components/BeautyshotBar;->updateBeautyshotWithValue(I)V
    invoke-static {v2, v0}, Lcom/lge/camera/components/BeautyshotBar;->access$600(Lcom/lge/camera/components/BeautyshotBar;I)V

    goto :goto_1

    .line 399
    :pswitch_2
    iget-object v4, p0, Lcom/lge/camera/components/BeautyshotBar$4;->this$0:Lcom/lge/camera/components/BeautyshotBar;

    invoke-virtual {v4, v6}, Lcom/lge/camera/components/BeautyshotBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->setPressed(Z)V

    goto :goto_1

    .line 389
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
