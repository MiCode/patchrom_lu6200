.class Lcom/lge/camera/controller/PreviewController$13;
.super Ljava/lang/Object;
.source "PreviewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/PreviewController;->stopRecordingEffect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/PreviewController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/PreviewController;)V
    .locals 0
    .parameter

    .prologue
    .line 1908
    iput-object p1, p0, Lcom/lge/camera/controller/PreviewController$13;->this$0:Lcom/lge/camera/controller/PreviewController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1910
    const-string v1, "CameraApp"

    const-string v2, "stopRecordingEffect in run()-start"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1911
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController$13;->this$0:Lcom/lge/camera/controller/PreviewController;

    iget-object v1, v1, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    if-nez v1, :cond_0

    .line 1912
    const-string v1, "CameraApp"

    const-string v2, "stopRecordingEffect in run()-end, effectsrecorder is null"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1928
    :goto_0
    return-void

    .line 1915
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController$13;->this$0:Lcom/lge/camera/controller/PreviewController;

    iget-object v1, v1, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    invoke-virtual {v1}, Lcom/lge/camera/EffectsRecorder;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 1916
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController$13;->this$0:Lcom/lge/camera/controller/PreviewController;

    const/4 v2, 0x0

    #setter for: Lcom/lge/camera/controller/PreviewController;->mLiveEffectStopRecordingDone:Z
    invoke-static {v1, v2}, Lcom/lge/camera/controller/PreviewController;->access$602(Lcom/lge/camera/controller/PreviewController;Z)Z

    .line 1918
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController$13;->this$0:Lcom/lge/camera/controller/PreviewController;

    iget-object v1, v1, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    invoke-virtual {v1}, Lcom/lge/camera/EffectsRecorder;->stopRecording()V

    .line 1919
    :goto_1
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController$13;->this$0:Lcom/lge/camera/controller/PreviewController;

    #getter for: Lcom/lge/camera/controller/PreviewController;->mLiveEffectStopRecordingDone:Z
    invoke-static {v1}, Lcom/lge/camera/controller/PreviewController;->access$600(Lcom/lge/camera/controller/PreviewController;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1921
    const-wide/16 v1, 0xc8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 1922
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController$13;->this$0:Lcom/lge/camera/controller/PreviewController;

    invoke-static {v1}, Lcom/lge/camera/controller/PreviewController;->access$708(Lcom/lge/camera/controller/PreviewController;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1923
    :catch_0
    move-exception v0

    .line 1924
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 1927
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_2
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopRecordingEffect in run()-end, tryCnt:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController$13;->this$0:Lcom/lge/camera/controller/PreviewController;

    #getter for: Lcom/lge/camera/controller/PreviewController;->tryCnt:I
    invoke-static {v3}, Lcom/lge/camera/controller/PreviewController;->access$700(Lcom/lge/camera/controller/PreviewController;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mLiveEffectStopRecordingDone:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController$13;->this$0:Lcom/lge/camera/controller/PreviewController;

    #getter for: Lcom/lge/camera/controller/PreviewController;->mLiveEffectStopRecordingDone:Z
    invoke-static {v3}, Lcom/lge/camera/controller/PreviewController;->access$600(Lcom/lge/camera/controller/PreviewController;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
