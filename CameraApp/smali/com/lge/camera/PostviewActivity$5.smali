.class Lcom/lge/camera/PostviewActivity$5;
.super Landroid/view/OrientationEventListener;
.source "PostviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/PostviewActivity;->setOrientationListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/PostviewActivity;


# direct methods
.method constructor <init>(Lcom/lge/camera/PostviewActivity;Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 717
    iput-object p1, p0, Lcom/lge/camera/PostviewActivity$5;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 5
    .parameter "orientation"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/16 v2, 0x64

    const/4 v1, 0x1

    .line 720
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/PostviewActivity$5;->this$0:Lcom/lge/camera/PostviewActivity;

    #getter for: Lcom/lge/camera/PostviewActivity;->mOrientationChangeEnabled:Z
    invoke-static {v0}, Lcom/lge/camera/PostviewActivity;->access$400(Lcom/lge/camera/PostviewActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 722
    invoke-static {}, Lcom/lge/camera/util/Common;->isScreenLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 723
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity$5;->this$0:Lcom/lge/camera/PostviewActivity;

    #setter for: Lcom/lge/camera/PostviewActivity;->mOrientation:I
    invoke-static {v0, v1}, Lcom/lge/camera/PostviewActivity;->access$502(Lcom/lge/camera/PostviewActivity;I)I

    .line 771
    :cond_0
    :goto_0
    return-void

    .line 727
    :cond_1
    const/16 v0, 0xfa

    if-le p1, v0, :cond_2

    const/16 v0, 0x122

    if-ge p1, v0, :cond_2

    .line 730
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity$5;->this$0:Lcom/lge/camera/PostviewActivity;

    #getter for: Lcom/lge/camera/PostviewActivity;->mOrientation:I
    invoke-static {v0}, Lcom/lge/camera/PostviewActivity;->access$500(Lcom/lge/camera/PostviewActivity;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 731
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity$5;->this$0:Lcom/lge/camera/PostviewActivity;

    const/4 v1, 0x0

    #setter for: Lcom/lge/camera/PostviewActivity;->mOrientation:I
    invoke-static {v0, v1}, Lcom/lge/camera/PostviewActivity;->access$502(Lcom/lge/camera/PostviewActivity;I)I

    .line 732
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity$5;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v0, v2}, Lcom/lge/camera/PostviewActivity;->setActivityOrientationRun(I)V

    .line 733
    const-string v0, "CameraApp"

    const-string v1, "mOrientationListener:ORIENTATION_LANDSCAPE"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 735
    :cond_2
    const/16 v0, 0x154

    if-gt p1, v0, :cond_3

    const/16 v0, 0x14

    if-ge p1, v0, :cond_4

    .line 738
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity$5;->this$0:Lcom/lge/camera/PostviewActivity;

    #getter for: Lcom/lge/camera/PostviewActivity;->mOrientation:I
    invoke-static {v0}, Lcom/lge/camera/PostviewActivity;->access$500(Lcom/lge/camera/PostviewActivity;)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 739
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity$5;->this$0:Lcom/lge/camera/PostviewActivity;

    #setter for: Lcom/lge/camera/PostviewActivity;->mOrientation:I
    invoke-static {v0, v1}, Lcom/lge/camera/PostviewActivity;->access$502(Lcom/lge/camera/PostviewActivity;I)I

    .line 740
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity$5;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v0, v2}, Lcom/lge/camera/PostviewActivity;->setActivityOrientationRun(I)V

    .line 741
    const-string v0, "CameraApp"

    const-string v1, "mOrientationListener:ORIENTATION_PORTRAIT"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 743
    :cond_4
    const/16 v0, 0xa0

    if-le p1, v0, :cond_6

    const/16 v0, 0xc8

    if-ge p1, v0, :cond_6

    .line 747
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity$5;->this$0:Lcom/lge/camera/PostviewActivity;

    #getter for: Lcom/lge/camera/PostviewActivity;->mDisplayOrientationSetting:I
    invoke-static {v0}, Lcom/lge/camera/PostviewActivity;->access$600(Lcom/lge/camera/PostviewActivity;)I

    move-result v0

    if-nez v0, :cond_5

    .line 748
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity$5;->this$0:Lcom/lge/camera/PostviewActivity;

    #getter for: Lcom/lge/camera/PostviewActivity;->mOrientation:I
    invoke-static {v0}, Lcom/lge/camera/PostviewActivity;->access$500(Lcom/lge/camera/PostviewActivity;)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 749
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity$5;->this$0:Lcom/lge/camera/PostviewActivity;

    #setter for: Lcom/lge/camera/PostviewActivity;->mOrientation:I
    invoke-static {v0, v1}, Lcom/lge/camera/PostviewActivity;->access$502(Lcom/lge/camera/PostviewActivity;I)I

    .line 750
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity$5;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v0, v2}, Lcom/lge/camera/PostviewActivity;->setActivityOrientationRun(I)V

    .line 751
    const-string v0, "CameraApp"

    const-string v1, "mOrientationListener:mDisplayOrientationSetting is set 1 = ORIENTATION_PORTRAIT"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 754
    :cond_5
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity$5;->this$0:Lcom/lge/camera/PostviewActivity;

    #getter for: Lcom/lge/camera/PostviewActivity;->mOrientation:I
    invoke-static {v0}, Lcom/lge/camera/PostviewActivity;->access$500(Lcom/lge/camera/PostviewActivity;)I

    move-result v0

    if-eq v0, v4, :cond_0

    .line 755
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity$5;->this$0:Lcom/lge/camera/PostviewActivity;

    #setter for: Lcom/lge/camera/PostviewActivity;->mOrientation:I
    invoke-static {v0, v4}, Lcom/lge/camera/PostviewActivity;->access$502(Lcom/lge/camera/PostviewActivity;I)I

    .line 756
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity$5;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v0, v2}, Lcom/lge/camera/PostviewActivity;->setActivityOrientationRun(I)V

    .line 757
    const-string v0, "CameraApp"

    const-string v1, "mOrientationListener:ORIENTATION_PORTRAIT_OPPOSITE"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 760
    :cond_6
    const/16 v0, 0x46

    if-le p1, v0, :cond_0

    const/16 v0, 0x6e

    if-ge p1, v0, :cond_0

    .line 763
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity$5;->this$0:Lcom/lge/camera/PostviewActivity;

    #getter for: Lcom/lge/camera/PostviewActivity;->mOrientation:I
    invoke-static {v0}, Lcom/lge/camera/PostviewActivity;->access$500(Lcom/lge/camera/PostviewActivity;)I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 764
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity$5;->this$0:Lcom/lge/camera/PostviewActivity;

    #setter for: Lcom/lge/camera/PostviewActivity;->mOrientation:I
    invoke-static {v0, v3}, Lcom/lge/camera/PostviewActivity;->access$502(Lcom/lge/camera/PostviewActivity;I)I

    .line 765
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity$5;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v0, v2}, Lcom/lge/camera/PostviewActivity;->setActivityOrientationRun(I)V

    .line 766
    const-string v0, "CameraApp"

    const-string v1, "mOrientationListener:ORIENTATION_LANDSCAPE_OPPOSITE"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
