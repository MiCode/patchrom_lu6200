.class public Lcom/lge/camera/command/PlayVideo;
.super Lcom/lge/camera/command/Command;
.source "PlayVideo.java"


# instance fields
.field protected mMediator:Lcom/lge/camera/CamcorderMediator;


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/Mediator;)V

    .line 17
    check-cast p1, Lcom/lge/camera/CamcorderMediator;

    .end local p1
    iput-object p1, p0, Lcom/lge/camera/command/PlayVideo;->mMediator:Lcom/lge/camera/CamcorderMediator;

    .line 18
    return-void
.end method


# virtual methods
.method public createPlayIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 3
    .parameter "uri"

    .prologue
    .line 35
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 36
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "video/mp4"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    const-string v1, "mimeType"

    const-string v2, "video/mp4"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    return-object v0
.end method

.method public execute()V
    .locals 5

    .prologue
    .line 22
    const-string v2, "CameraApp"

    const-string v3, "PlayVideo"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object v2, p0, Lcom/lge/camera/command/PlayVideo;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v2}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/camcorder/RecordingController;->getVideoFile()Lcom/lge/camera/VideoFile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/VideoFile;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lge/camera/command/PlayVideo;->createPlayIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    .line 25
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.finishOnCompletion"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 27
    :try_start_0
    invoke-virtual {p0}, Lcom/lge/camera/command/PlayVideo;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/command/PlayVideo;->mMediator:Lcom/lge/camera/CamcorderMediator;

    const v4, 0x7f0b0121

    invoke-virtual {v3, v4}, Lcom/lge/camera/CamcorderMediator;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const-string v2, "CameraApp"

    const-string v3, "ActivityNotFoundException:"

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    invoke-virtual {p0}, Lcom/lge/camera/command/PlayVideo;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v2

    const v3, 0x7f0b0140

    invoke-virtual {v2, v3}, Lcom/lge/camera/Mediator;->toast(I)V

    goto :goto_0
.end method
