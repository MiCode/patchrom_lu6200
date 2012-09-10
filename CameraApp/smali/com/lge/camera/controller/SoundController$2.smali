.class Lcom/lge/camera/controller/SoundController$2;
.super Ljava/lang/Object;
.source "SoundController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/SoundController;->buildSoundPoolSoundSource()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/SoundController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/SoundController;)V
    .locals 0
    .parameter

    .prologue
    .line 325
    iput-object p1, p0, Lcom/lge/camera/controller/SoundController$2;->this$0:Lcom/lge/camera/controller/SoundController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 328
    iget-object v1, p0, Lcom/lge/camera/controller/SoundController$2;->this$0:Lcom/lge/camera/controller/SoundController;

    invoke-virtual {v1}, Lcom/lge/camera/controller/SoundController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    .line 329
    .local v0, app_mode:I
    iget-object v1, p0, Lcom/lge/camera/controller/SoundController$2;->this$0:Lcom/lge/camera/controller/SoundController;

    new-instance v2, Landroid/media/SoundPool;

    const/4 v3, 0x6

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetShutterStreamType()I

    move-result v4

    invoke-direct {v2, v3, v4, v5}, Landroid/media/SoundPool;-><init>(III)V

    #setter for: Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;
    invoke-static {v1, v2}, Lcom/lge/camera/controller/SoundController;->access$402(Lcom/lge/camera/controller/SoundController;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 330
    iget-object v1, p0, Lcom/lge/camera/controller/SoundController$2;->this$0:Lcom/lge/camera/controller/SoundController;

    #getter for: Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;
    invoke-static {v1}, Lcom/lge/camera/controller/SoundController;->access$400(Lcom/lge/camera/controller/SoundController;)Landroid/media/SoundPool;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/SoundController$2;->this$0:Lcom/lge/camera/controller/SoundController;

    #getter for: Lcom/lge/camera/controller/SoundController;->completeListener:Landroid/media/SoundPool$OnLoadCompleteListener;
    invoke-static {v2}, Lcom/lge/camera/controller/SoundController;->access$900(Lcom/lge/camera/controller/SoundController;)Landroid/media/SoundPool$OnLoadCompleteListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 331
    iget-object v1, p0, Lcom/lge/camera/controller/SoundController$2;->this$0:Lcom/lge/camera/controller/SoundController;

    const/4 v2, -0x1

    #setter for: Lcom/lge/camera/controller/SoundController;->mSoundSampleIDRegisteredMaskID:I
    invoke-static {v1, v2}, Lcom/lge/camera/controller/SoundController;->access$1002(Lcom/lge/camera/controller/SoundController;I)I

    .line 332
    iget-object v1, p0, Lcom/lge/camera/controller/SoundController$2;->this$0:Lcom/lge/camera/controller/SoundController;

    #setter for: Lcom/lge/camera/controller/SoundController;->mSoundSampleIDLoadedMaskID:I
    invoke-static {v1, v5}, Lcom/lge/camera/controller/SoundController;->access$1102(Lcom/lge/camera/controller/SoundController;I)I

    .line 333
    iget-object v1, p0, Lcom/lge/camera/controller/SoundController$2;->this$0:Lcom/lge/camera/controller/SoundController;

    #setter for: Lcom/lge/camera/controller/SoundController;->mShutterSoundLoaded:Z
    invoke-static {v1, v5}, Lcom/lge/camera/controller/SoundController;->access$602(Lcom/lge/camera/controller/SoundController;Z)Z

    .line 335
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sound Load-Start, app_mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->IsHwTuning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 337
    if-ne v0, v6, :cond_1

    .line 338
    iget-object v1, p0, Lcom/lge/camera/controller/SoundController$2;->this$0:Lcom/lge/camera/controller/SoundController;

    #calls: Lcom/lge/camera/controller/SoundController;->loadingCamcorderSoundSourceHWTunned()V
    invoke-static {v1}, Lcom/lge/camera/controller/SoundController;->access$1200(Lcom/lge/camera/controller/SoundController;)V

    .line 351
    :cond_0
    :goto_0
    const-string v1, "CameraApp"

    const-string v2, "Sound Load-end"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    return-void

    .line 339
    :cond_1
    if-nez v0, :cond_0

    .line 340
    iget-object v1, p0, Lcom/lge/camera/controller/SoundController$2;->this$0:Lcom/lge/camera/controller/SoundController;

    #calls: Lcom/lge/camera/controller/SoundController;->loadingCameraSoundSourceHWTunned()V
    invoke-static {v1}, Lcom/lge/camera/controller/SoundController;->access$1300(Lcom/lge/camera/controller/SoundController;)V

    .line 341
    iget-object v1, p0, Lcom/lge/camera/controller/SoundController$2;->this$0:Lcom/lge/camera/controller/SoundController;

    #calls: Lcom/lge/camera/controller/SoundController;->loadingCamcorderSoundSourceHWTunned()V
    invoke-static {v1}, Lcom/lge/camera/controller/SoundController;->access$1200(Lcom/lge/camera/controller/SoundController;)V

    goto :goto_0

    .line 344
    :cond_2
    if-ne v0, v6, :cond_3

    .line 345
    iget-object v1, p0, Lcom/lge/camera/controller/SoundController$2;->this$0:Lcom/lge/camera/controller/SoundController;

    #calls: Lcom/lge/camera/controller/SoundController;->loadingCamcorderSoundSource()V
    invoke-static {v1}, Lcom/lge/camera/controller/SoundController;->access$1400(Lcom/lge/camera/controller/SoundController;)V

    goto :goto_0

    .line 346
    :cond_3
    if-nez v0, :cond_0

    .line 347
    iget-object v1, p0, Lcom/lge/camera/controller/SoundController$2;->this$0:Lcom/lge/camera/controller/SoundController;

    #calls: Lcom/lge/camera/controller/SoundController;->loadingCameraSoundSource()V
    invoke-static {v1}, Lcom/lge/camera/controller/SoundController;->access$1500(Lcom/lge/camera/controller/SoundController;)V

    .line 348
    iget-object v1, p0, Lcom/lge/camera/controller/SoundController$2;->this$0:Lcom/lge/camera/controller/SoundController;

    #calls: Lcom/lge/camera/controller/SoundController;->loadingCamcorderSoundSource()V
    invoke-static {v1}, Lcom/lge/camera/controller/SoundController;->access$1400(Lcom/lge/camera/controller/SoundController;)V

    goto :goto_0
.end method
