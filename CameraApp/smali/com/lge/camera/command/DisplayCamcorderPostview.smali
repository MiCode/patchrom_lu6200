.class public Lcom/lge/camera/command/DisplayCamcorderPostview;
.super Lcom/lge/camera/command/Command;
.source "DisplayCamcorderPostview.java"


# instance fields
.field mMediator:Lcom/lge/camera/CamcorderMediator;


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/Mediator;)V

    .line 23
    check-cast p1, Lcom/lge/camera/CamcorderMediator;

    .end local p1
    iput-object p1, p0, Lcom/lge/camera/command/DisplayCamcorderPostview;->mMediator:Lcom/lge/camera/CamcorderMediator;

    .line 25
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 14

    .prologue
    .line 29
    const-string v9, "CameraApp"

    const-string v10, "DisplayAfterCaptureView-start"

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 32
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/lge/camera/command/DisplayCamcorderPostview;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const-class v10, Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .local v7, uriStringList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/lge/camera/command/DisplayCamcorderPostview;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v9}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lge/camera/controller/camcorder/RecordingController;->getVideoFile()Lcom/lge/camera/VideoFile;

    move-result-object v8

    .line 37
    .local v8, video:Lcom/lge/camera/VideoFile;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v4, uriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Lcom/lge/camera/VideoFile;->getUri()Landroid/net/Uri;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 40
    invoke-virtual {v8}, Lcom/lge/camera/VideoFile;->getUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 43
    .local v5, uriListSize:I
    if-nez v5, :cond_0

    .line 44
    iget-object v9, p0, Lcom/lge/camera/command/DisplayCamcorderPostview;->mMediator:Lcom/lge/camera/CamcorderMediator;

    const-string v10, "com.lge.camera.command.DisplayPreview"

    invoke-virtual {v9, v10}, Lcom/lge/camera/CamcorderMediator;->doCommand(Ljava/lang/String;)V

    .line 89
    .end local v4           #uriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v5           #uriListSize:I
    .end local v7           #uriStringList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8           #video:Lcom/lge/camera/VideoFile;
    :goto_0
    return-void

    .line 47
    .restart local v4       #uriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .restart local v5       #uriListSize:I
    .restart local v7       #uriStringList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8       #video:Lcom/lge/camera/VideoFile;
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v5, :cond_1

    .line 48
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    .line 49
    .local v6, uriString:Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    const-string v9, "CameraApp"

    const-string v10, "uri[%d] %s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v6, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 53
    .end local v6           #uriString:Ljava/lang/String;
    :cond_1
    const-string v9, "capturedUriList"

    invoke-virtual {v3, v9, v7}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 54
    const-string v9, "app_mode"

    iget-object v10, p0, Lcom/lge/camera/command/DisplayCamcorderPostview;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v10}, Lcom/lge/camera/CamcorderMediator;->getApplicationMode()I

    move-result v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 55
    const-string v9, "cameraId"

    iget-object v10, p0, Lcom/lge/camera/command/DisplayCamcorderPostview;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v10}, Lcom/lge/camera/CamcorderMediator;->getCameraId()I

    move-result v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 56
    const-string v9, "currentStorageDir"

    iget-object v10, p0, Lcom/lge/camera/command/DisplayCamcorderPostview;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v10}, Lcom/lge/camera/CamcorderMediator;->getStorageController()Lcom/lge/camera/controller/StorageController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/lge/camera/controller/StorageController;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const-string v9, "saveFileName"

    invoke-virtual {v8}, Lcom/lge/camera/VideoFile;->getFileName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v8}, Lcom/lge/camera/VideoFile;->getFileName()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x2e

    invoke-virtual {v12, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    const-string v9, "isAttachMode"

    iget-object v10, p0, Lcom/lge/camera/command/DisplayCamcorderPostview;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v10}, Lcom/lge/camera/CamcorderMediator;->isAttachMode()Z

    move-result v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 59
    const-string v9, "isAttachIntent"

    iget-object v10, p0, Lcom/lge/camera/command/DisplayCamcorderPostview;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v10}, Lcom/lge/camera/CamcorderMediator;->isAttachIntent()Z

    move-result v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 60
    const-string v9, "isMmsVideo"

    iget-object v10, p0, Lcom/lge/camera/command/DisplayCamcorderPostview;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v10}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/lge/camera/controller/camcorder/RecordingController;->needProgressBar()Z

    move-result v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 61
    const-string v9, "autoReview"

    iget-object v10, p0, Lcom/lge/camera/command/DisplayCamcorderPostview;->mMediator:Lcom/lge/camera/CamcorderMediator;

    const-string v11, "key_video_auto_review"

    invoke-virtual {v10, v11}, Lcom/lge/camera/CamcorderMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    const-string v9, "saveFilePath"

    invoke-virtual {v8}, Lcom/lge/camera/VideoFile;->getFilePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    const-string v9, "videoExtension"

    invoke-virtual {v8}, Lcom/lge/camera/VideoFile;->getFileExtension()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    const-string v9, "currentLang"

    iget-object v10, p0, Lcom/lge/camera/command/DisplayCamcorderPostview;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v10}, Lcom/lge/camera/CamcorderMediator;->getLanguageType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    const-string v9, "currentFont"

    iget-object v10, p0, Lcom/lge/camera/command/DisplayCamcorderPostview;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v10}, Lcom/lge/camera/CamcorderMediator;->getKoreanFontIndex()I

    move-result v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 66
    const-string v9, "currentOrientation"

    iget-object v10, p0, Lcom/lge/camera/command/DisplayCamcorderPostview;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v10}, Lcom/lge/camera/CamcorderMediator;->getOrientation()I

    move-result v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 67
    const-string v9, "effectsActive"

    iget-object v10, p0, Lcom/lge/camera/command/DisplayCamcorderPostview;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v10}, Lcom/lge/camera/CamcorderMediator;->getPreviewController()Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->effectsActive()Z

    move-result v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 70
    .end local v2           #i:I
    .end local v5           #uriListSize:I
    :cond_2
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportManualAntibanding()Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/lge/camera/command/DisplayCamcorderPostview;->mMediator:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v9}, Lcom/lge/camera/CamcorderMediator;->getCameraId()I

    move-result v9

    if-nez v9, :cond_3

    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, curzoom:Ljava/lang/String;
    iget-object v9, p0, Lcom/lge/camera/command/DisplayCamcorderPostview;->mMediator:Lcom/lge/camera/CamcorderMediator;

    const-string v10, "key_zoom"

    invoke-virtual {v9, v10}, Lcom/lge/camera/CamcorderMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    const-string v9, "CameraApp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "===> current zoom : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v9, "currentZoom"

    invoke-virtual {v3, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    .end local v0           #curzoom:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/lge/camera/command/DisplayCamcorderPostview;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/lge/camera/Mediator;->setChangingToPostview(Z)V

    .line 78
    invoke-virtual {p0}, Lcom/lge/camera/command/DisplayCamcorderPostview;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/lge/camera/Mediator;->setVideoStateOnly(I)V

    .line 80
    invoke-virtual {p0}, Lcom/lge/camera/command/DisplayCamcorderPostview;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const/16 v10, 0x64

    invoke-virtual {v9, v3, v10}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 88
    .end local v4           #uriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v7           #uriStringList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8           #video:Lcom/lge/camera/VideoFile;
    :goto_2
    const-string v9, "CameraApp"

    const-string v10, "DisplayAfterCaptureView-end"

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 81
    :catch_0
    move-exception v1

    .line 82
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v9, "CameraApp"

    const-string v10, "DisplayCamcorderPostview NullPointerException:"

    invoke-static {v9, v10, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    iget-object v9, p0, Lcom/lge/camera/command/DisplayCamcorderPostview;->mMediator:Lcom/lge/camera/CamcorderMediator;

    const-string v10, "com.lge.camera.command.DisplayPreview"

    invoke-virtual {v9, v10}, Lcom/lge/camera/CamcorderMediator;->doCommand(Ljava/lang/String;)V

    goto :goto_2

    .line 84
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 85
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v9, "CameraApp"

    const-string v10, "DisplayCamcorderPostview IndexOutOfBoundsException:"

    invoke-static {v9, v10, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    iget-object v9, p0, Lcom/lge/camera/command/DisplayCamcorderPostview;->mMediator:Lcom/lge/camera/CamcorderMediator;

    const-string v10, "com.lge.camera.command.DisplayPreview"

    invoke-virtual {v9, v10}, Lcom/lge/camera/CamcorderMediator;->doCommand(Ljava/lang/String;)V

    goto :goto_2
.end method
