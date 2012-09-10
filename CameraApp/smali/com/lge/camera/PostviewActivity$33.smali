.class Lcom/lge/camera/PostviewActivity$33;
.super Ljava/lang/Object;
.source "PostviewActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/PostviewActivity;->setMultiShotGalleryTouchListener(Landroid/widget/Gallery;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/PostviewActivity;


# direct methods
.method constructor <init>(Lcom/lge/camera/PostviewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 3100
    iput-object p1, p0, Lcom/lge/camera/PostviewActivity$33;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 3102
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity$33;->this$0:Lcom/lge/camera/PostviewActivity;

    #getter for: Lcom/lge/camera/PostviewActivity;->mPause:Z
    invoke-static {v1}, Lcom/lge/camera/PostviewActivity;->access$2600(Lcom/lge/camera/PostviewActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/PostviewActivity$33;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v1}, Lcom/lge/camera/PostviewActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3112
    :cond_0
    :goto_0
    return v0

    .line 3105
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 3109
    :pswitch_0
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity$33;->this$0:Lcom/lge/camera/PostviewActivity;

    #calls: Lcom/lge/camera/PostviewActivity;->doContinuousGalleryTouchAction(Landroid/view/View;Landroid/view/MotionEvent;)Z
    invoke-static {v0, p1, p2}, Lcom/lge/camera/PostviewActivity;->access$2700(Lcom/lge/camera/PostviewActivity;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 3105
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
