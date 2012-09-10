.class Lcom/lge/camera/controller/SoundController$1;
.super Ljava/lang/Object;
.source "SoundController.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/SoundController;
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
    .line 118
    iput-object p1, p0, Lcom/lge/camera/controller/SoundController$1;->this$0:Lcom/lge/camera/controller/SoundController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 8
    .parameter "soundPool"
    .parameter "sampleId"
    .parameter "status"

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f80

    .line 120
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLoadComplete() id:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",status:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController$1;->this$0:Lcom/lge/camera/controller/SoundController;

    #calls: Lcom/lge/camera/controller/SoundController;->setLoadedSoundMaskID(I)V
    invoke-static {v0, p2}, Lcom/lge/camera/controller/SoundController;->access$000(Lcom/lge/camera/controller/SoundController;I)V

    .line 123
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController$1;->this$0:Lcom/lge/camera/controller/SoundController;

    #calls: Lcom/lge/camera/controller/SoundController;->getSoundIDPlayedBeforeLoaded()I
    invoke-static {v0}, Lcom/lge/camera/controller/SoundController;->access$100(Lcom/lge/camera/controller/SoundController;)I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 124
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController$1;->this$0:Lcom/lge/camera/controller/SoundController;

    #getter for: Lcom/lge/camera/controller/SoundController;->mSound_continuous_shutter:I
    invoke-static {v0}, Lcom/lge/camera/controller/SoundController;->access$200(Lcom/lge/camera/controller/SoundController;)I

    move-result v0

    if-ne p2, v0, :cond_3

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useContinuousSound()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 126
    iget-object v7, p0, Lcom/lge/camera/controller/SoundController$1;->this$0:Lcom/lge/camera/controller/SoundController;

    iget-object v0, p0, Lcom/lge/camera/controller/SoundController$1;->this$0:Lcom/lge/camera/controller/SoundController;

    #getter for: Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/lge/camera/controller/SoundController;->access$400(Lcom/lge/camera/controller/SoundController;)Landroid/media/SoundPool;

    move-result-object v0

    sget v5, Lcom/lge/camera/controller/SoundController;->MAX_CONTINUOUS_SHOT_SOUND:I

    move v1, p2

    move v3, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    #setter for: Lcom/lge/camera/controller/SoundController;->mContinuousSoundResultID:I
    invoke-static {v7, v0}, Lcom/lge/camera/controller/SoundController;->access$302(Lcom/lge/camera/controller/SoundController;I)I

    .line 130
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController$1;->this$0:Lcom/lge/camera/controller/SoundController;

    #calls: Lcom/lge/camera/controller/SoundController;->setSoundSampleIDBeforeLoaded(I)V
    invoke-static {v0, v4}, Lcom/lge/camera/controller/SoundController;->access$500(Lcom/lge/camera/controller/SoundController;I)V

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController$1;->this$0:Lcom/lge/camera/controller/SoundController;

    #getter for: Lcom/lge/camera/controller/SoundController;->mShutterSoundLoaded:Z
    invoke-static {v0}, Lcom/lge/camera/controller/SoundController;->access$600(Lcom/lge/camera/controller/SoundController;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController$1;->this$0:Lcom/lge/camera/controller/SoundController;

    #calls: Lcom/lge/camera/controller/SoundController;->checkShutterSoundLoaded()Z
    invoke-static {v0}, Lcom/lge/camera/controller/SoundController;->access$700(Lcom/lge/camera/controller/SoundController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController$1;->this$0:Lcom/lge/camera/controller/SoundController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SoundController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v0

    const-string v1, "SoundControllerLockKey"

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->setMainButtonEnable(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController$1;->this$0:Lcom/lge/camera/controller/SoundController;

    const/4 v1, 0x1

    #setter for: Lcom/lge/camera/controller/SoundController;->mShutterSoundLoaded:Z
    invoke-static {v0, v1}, Lcom/lge/camera/controller/SoundController;->access$602(Lcom/lge/camera/controller/SoundController;Z)Z

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController$1;->this$0:Lcom/lge/camera/controller/SoundController;

    #calls: Lcom/lge/camera/controller/SoundController;->checkAllSoundLoaded()Z
    invoke-static {v0}, Lcom/lge/camera/controller/SoundController;->access$800(Lcom/lge/camera/controller/SoundController;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 141
    const-string v0, "CameraApp"

    const-string v1, "All Sound Loaded"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_2
    return-void

    .line 128
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController$1;->this$0:Lcom/lge/camera/controller/SoundController;

    #getter for: Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/lge/camera/controller/SoundController;->access$400(Lcom/lge/camera/controller/SoundController;)Landroid/media/SoundPool;

    move-result-object v0

    move v1, p2

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0
.end method
