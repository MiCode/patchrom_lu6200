.class Lcom/lge/camera/PostviewActivity$35;
.super Ljava/util/TimerTask;
.source "PostviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/PostviewActivity;->startTimeMachineShotAnimation()V
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
    .line 3937
    iput-object p1, p0, Lcom/lge/camera/PostviewActivity$35;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3940
    sget v0, Lcom/lge/camera/properties/CameraConstants;->TIME_MACHINE_EFFECT:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3941
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity$35;->this$0:Lcom/lge/camera/PostviewActivity;

    iget-object v1, p0, Lcom/lge/camera/PostviewActivity$35;->this$0:Lcom/lge/camera/PostviewActivity;

    #getter for: Lcom/lge/camera/PostviewActivity;->mTimeMachineAnimationRunnable1:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/lge/camera/PostviewActivity;->access$2800(Lcom/lge/camera/PostviewActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/camera/PostviewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3945
    :goto_0
    return-void

    .line 3943
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity$35;->this$0:Lcom/lge/camera/PostviewActivity;

    iget-object v1, p0, Lcom/lge/camera/PostviewActivity$35;->this$0:Lcom/lge/camera/PostviewActivity;

    #getter for: Lcom/lge/camera/PostviewActivity;->mTimeMachineAnimationRunnable2:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/lge/camera/PostviewActivity;->access$2900(Lcom/lge/camera/PostviewActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/camera/PostviewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
