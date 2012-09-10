.class Lcom/lge/camera/PostviewActivity$2;
.super Ljava/lang/Object;
.source "PostviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/PostviewActivity;->connectCameraDevice()V
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
    .line 463
    iput-object p1, p0, Lcom/lge/camera/PostviewActivity$2;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 465
    :goto_0
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity$2;->this$0:Lcom/lge/camera/PostviewActivity;

    #getter for: Lcom/lge/camera/PostviewActivity;->mCamera:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/lge/camera/PostviewActivity;->access$000(Lcom/lge/camera/PostviewActivity;)Landroid/hardware/Camera;

    move-result-object v1

    if-nez v1, :cond_0

    .line 466
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 481
    :cond_0
    return-void

    .line 469
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity$2;->this$0:Lcom/lge/camera/PostviewActivity;

    #getter for: Lcom/lge/camera/PostviewActivity;->mCameraId:I
    invoke-static {v1}, Lcom/lge/camera/PostviewActivity;->access$100(Lcom/lge/camera/PostviewActivity;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 470
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity$2;->this$0:Lcom/lge/camera/PostviewActivity;

    new-instance v2, Lcom/lge/camera/setting/ComboPreferences;

    iget-object v3, p0, Lcom/lge/camera/PostviewActivity$2;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v3}, Lcom/lge/camera/PostviewActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/lge/camera/setting/ComboPreferences;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/lge/camera/PostviewActivity;->mPreferences:Lcom/lge/camera/setting/ComboPreferences;

    .line 471
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity$2;->this$0:Lcom/lge/camera/PostviewActivity;

    iget-object v2, p0, Lcom/lge/camera/PostviewActivity$2;->this$0:Lcom/lge/camera/PostviewActivity;

    iget-object v2, v2, Lcom/lge/camera/PostviewActivity;->mPreferences:Lcom/lge/camera/setting/ComboPreferences;

    invoke-static {v2}, Lcom/lge/camera/setting/Setting;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v2

    #setter for: Lcom/lge/camera/PostviewActivity;->mCameraId:I
    invoke-static {v1, v2}, Lcom/lge/camera/PostviewActivity;->access$102(Lcom/lge/camera/PostviewActivity;I)I

    .line 473
    :cond_2
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCameraId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/PostviewActivity$2;->this$0:Lcom/lge/camera/PostviewActivity;

    #getter for: Lcom/lge/camera/PostviewActivity;->mCameraId:I
    invoke-static {v3}, Lcom/lge/camera/PostviewActivity;->access$100(Lcom/lge/camera/PostviewActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity$2;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-static {}, Lcom/lge/camera/util/CameraHolder;->instance()Lcom/lge/camera/util/CameraHolder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/PostviewActivity$2;->this$0:Lcom/lge/camera/PostviewActivity;

    #getter for: Lcom/lge/camera/PostviewActivity;->mCameraId:I
    invoke-static {v3}, Lcom/lge/camera/PostviewActivity;->access$100(Lcom/lge/camera/PostviewActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/lge/camera/util/CameraHolder;->tryOpen(I)Landroid/hardware/Camera;

    move-result-object v2

    #setter for: Lcom/lge/camera/PostviewActivity;->mCamera:Landroid/hardware/Camera;
    invoke-static {v1, v2}, Lcom/lge/camera/PostviewActivity;->access$002(Lcom/lge/camera/PostviewActivity;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    .line 476
    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 477
    :catch_0
    move-exception v0

    .line 478
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
