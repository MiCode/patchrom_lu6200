.class Lcom/lge/camera/PostviewActivity$14;
.super Ljava/lang/Object;
.source "PostviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/PostviewActivity;
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
    .line 2081
    iput-object p1, p0, Lcom/lge/camera/PostviewActivity$14;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/16 v3, 0x64

    .line 2083
    const-string v1, "CameraApp"

    const-string v2, "New clicked"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2084
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity$14;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v1}, Lcom/lge/camera/PostviewActivity;->checkPauseAndAutoReview()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2098
    :goto_0
    return-void

    .line 2087
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity$14;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v1}, Lcom/lge/camera/PostviewActivity;->stopTimeMachineAnimation()V

    .line 2088
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity$14;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v1}, Lcom/lge/camera/PostviewActivity;->isTimeMachineShot()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lge/camera/PostviewActivity$14;->this$0:Lcom/lge/camera/PostviewActivity;

    #getter for: Lcom/lge/camera/PostviewActivity;->mTimeMachineViewMode:I
    invoke-static {v1}, Lcom/lge/camera/PostviewActivity;->access$700(Lcom/lge/camera/PostviewActivity;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 2089
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity$14;->this$0:Lcom/lge/camera/PostviewActivity;

    const v2, 0x7f090036

    invoke-virtual {v1, v2}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Gallery;

    .line 2090
    .local v0, galleryView:Landroid/widget/Gallery;
    invoke-virtual {v0}, Landroid/widget/Gallery;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 2091
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity$14;->this$0:Lcom/lge/camera/PostviewActivity;

    iget-object v2, p0, Lcom/lge/camera/PostviewActivity$14;->this$0:Lcom/lge/camera/PostviewActivity;

    #getter for: Lcom/lge/camera/PostviewActivity;->mExitInteraction:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/lge/camera/PostviewActivity;->access$1600(Lcom/lge/camera/PostviewActivity;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/camera/PostviewActivity;->gallerySlideDownAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2093
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity$14;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v1, v3}, Lcom/lge/camera/PostviewActivity;->exitInteraction(I)V

    goto :goto_0

    .line 2096
    .end local v0           #galleryView:Landroid/widget/Gallery;
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity$14;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v1, v3}, Lcom/lge/camera/PostviewActivity;->exitInteraction(I)V

    goto :goto_0
.end method
