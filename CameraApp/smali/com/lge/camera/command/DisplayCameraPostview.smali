.class public Lcom/lge/camera/command/DisplayCameraPostview;
.super Lcom/lge/camera/command/Command;
.source "DisplayCameraPostview.java"


# instance fields
.field mMediator:Lcom/lge/camera/CameraMediator;


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/Mediator;)V

    .line 22
    check-cast p1, Lcom/lge/camera/CameraMediator;

    .end local p1
    iput-object p1, p0, Lcom/lge/camera/command/DisplayCameraPostview;->mMediator:Lcom/lge/camera/CameraMediator;

    .line 23
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    .line 28
    const-string v9, "CameraApp"

    const-string v10, "DisplayCameraPostview !"

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 31
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/lge/camera/command/DisplayCameraPostview;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const-class v10, Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    :try_start_0
    iget-object v9, p0, Lcom/lge/camera/command/DisplayCameraPostview;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v9}, Lcom/lge/camera/CameraMediator;->getTimeMachineFileNameList()Ljava/util/ArrayList;

    move-result-object v4

    .line 35
    .local v4, timeMachineFileNameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .local v8, uriStringList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/lge/camera/command/DisplayCameraPostview;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v9}, Lcom/lge/camera/CameraMediator;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v5

    .line 38
    .local v5, uriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 39
    .local v6, uriListSize:I
    if-nez v6, :cond_0

    .line 40
    iget-object v9, p0, Lcom/lge/camera/command/DisplayCameraPostview;->mMediator:Lcom/lge/camera/CameraMediator;

    const-string v10, "com.lge.camera.command.DisplayPreview"

    invoke-virtual {v9, v10}, Lcom/lge/camera/CameraMediator;->doCommand(Ljava/lang/String;)V

    .line 93
    .end local v4           #timeMachineFileNameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5           #uriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v6           #uriListSize:I
    .end local v8           #uriStringList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 44
    .restart local v4       #timeMachineFileNameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5       #uriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .restart local v6       #uriListSize:I
    .restart local v8       #uriStringList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    iget-object v9, p0, Lcom/lge/camera/command/DisplayCameraPostview;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v9}, Lcom/lge/camera/CameraMediator;->isTimeMachineModeOn()Z

    move-result v9

    if-eqz v9, :cond_1

    if-eqz v4, :cond_1

    .line 45
    const-string v9, "timeMachineFileNameList"

    invoke-virtual {v3, v9, v4}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 48
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v6, :cond_2

    .line 49
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    .line 50
    .local v7, uriString:Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    const-string v9, "CameraApp"

    const-string v10, "postview uri[%d] %s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v7, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 53
    .end local v7           #uriString:Ljava/lang/String;
    :cond_2
    const-string v9, "capturedUriList"

    invoke-virtual {v3, v9, v8}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 54
    const-string v9, "app_mode"

    iget-object v10, p0, Lcom/lge/camera/command/DisplayCameraPostview;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v10}, Lcom/lge/camera/CameraMediator;->getApplicationMode()I

    move-result v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 55
    const-string v9, "cameraId"

    iget-object v10, p0, Lcom/lge/camera/command/DisplayCameraPostview;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v10}, Lcom/lge/camera/CameraMediator;->getCameraId()I

    move-result v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 56
    iget-object v9, p0, Lcom/lge/camera/command/DisplayCameraPostview;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v9}, Lcom/lge/camera/CameraMediator;->getApplicationMode()I

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/lge/camera/command/DisplayCameraPostview;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v9}, Lcom/lge/camera/CameraMediator;->getCameraId()I

    move-result v9

    if-nez v9, :cond_3

    .line 57
    const-string v9, "shotMode"

    iget-object v10, p0, Lcom/lge/camera/command/DisplayCameraPostview;->mMediator:Lcom/lge/camera/CameraMediator;

    const-string v11, "key_camera_shot_mode"

    invoke-virtual {v10, v11}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    const-string v9, "shotModeIndex"

    iget-object v10, p0, Lcom/lge/camera/command/DisplayCameraPostview;->mMediator:Lcom/lge/camera/CameraMediator;

    const-string v11, "key_camera_shot_mode"

    invoke-virtual {v10, v11}, Lcom/lge/camera/CameraMediator;->getSettingIndex(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 60
    :cond_3
    const-string v9, "currentStorageDir"

    iget-object v10, p0, Lcom/lge/camera/command/DisplayCameraPostview;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v10}, Lcom/lge/camera/CameraMediator;->getStorageController()Lcom/lge/camera/controller/camera/CameraStorageController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/lge/camera/controller/camera/CameraStorageController;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    const-string v9, "saveFileName"

    iget-object v10, p0, Lcom/lge/camera/command/DisplayCameraPostview;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v10}, Lcom/lge/camera/CameraMediator;->getSavedFileName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    const-string v9, "isAttachMode"

    iget-object v10, p0, Lcom/lge/camera/command/DisplayCameraPostview;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v10}, Lcom/lge/camera/CameraMediator;->isAttachMode()Z

    move-result v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 63
    const-string v9, "isAttachIntent"

    iget-object v10, p0, Lcom/lge/camera/command/DisplayCameraPostview;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v10}, Lcom/lge/camera/CameraMediator;->isAttachIntent()Z

    move-result v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 64
    const-string v9, "autoReview"

    iget-object v10, p0, Lcom/lge/camera/command/DisplayCameraPostview;->mMediator:Lcom/lge/camera/CameraMediator;

    const-string v11, "key_camera_auto_review"

    invoke-virtual {v10, v11}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    const-string v9, "hasSavedUri"

    iget-object v10, p0, Lcom/lge/camera/command/DisplayCameraPostview;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v10}, Lcom/lge/camera/CameraMediator;->hasSaveURI()Z

    move-result v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 66
    const-string v9, "currentLang"

    iget-object v10, p0, Lcom/lge/camera/command/DisplayCameraPostview;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v10}, Lcom/lge/camera/CameraMediator;->getLanguageType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    const-string v9, "currentFont"

    iget-object v10, p0, Lcom/lge/camera/command/DisplayCameraPostview;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v10}, Lcom/lge/camera/CameraMediator;->getKoreanFontIndex()I

    move-result v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 68
    const-string v9, "timeMachineMode"

    iget-object v10, p0, Lcom/lge/camera/command/DisplayCameraPostview;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v10}, Lcom/lge/camera/CameraMediator;->isTimeMachineModeOn()Z

    move-result v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 69
    const-string v9, "currentOrientation"

    iget-object v10, p0, Lcom/lge/camera/command/DisplayCameraPostview;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v10}, Lcom/lge/camera/CameraMediator;->getOrientation()I

    move-result v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 70
    iget-object v9, p0, Lcom/lge/camera/command/DisplayCameraPostview;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v9}, Lcom/lge/camera/CameraMediator;->getApplicationMode()I

    move-result v9

    if-nez v9, :cond_4

    iget-object v9, p0, Lcom/lge/camera/command/DisplayCameraPostview;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v9}, Lcom/lge/camera/CameraMediator;->getCameraId()I

    move-result v9

    if-ne v9, v14, :cond_4

    .line 72
    const-string v9, "Flip"

    iget-object v10, p0, Lcom/lge/camera/command/DisplayCameraPostview;->mMediator:Lcom/lge/camera/CameraMediator;

    const-string v11, "key_save_direction"

    invoke-virtual {v10, v11}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    :cond_4
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportManualAntibanding()Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/lge/camera/command/DisplayCameraPostview;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v9}, Lcom/lge/camera/CameraMediator;->getCameraId()I

    move-result v9

    if-nez v9, :cond_5

    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, curzoom:Ljava/lang/String;
    iget-object v9, p0, Lcom/lge/camera/command/DisplayCameraPostview;->mMediator:Lcom/lge/camera/CameraMediator;

    const-string v10, "key_zoom"

    invoke-virtual {v9, v10}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
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

    .line 79
    const-string v9, "currentZoom"

    invoke-virtual {v3, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    .end local v0           #curzoom:Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/lge/camera/command/DisplayCameraPostview;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/lge/camera/Mediator;->setChangingToPostview(Z)V

    .line 83
    invoke-virtual {p0}, Lcom/lge/camera/command/DisplayCameraPostview;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const/16 v10, 0x64

    invoke-virtual {v9, v3, v10}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 84
    iget-object v9, p0, Lcom/lge/camera/command/DisplayCameraPostview;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v9}, Lcom/lge/camera/CameraMediator;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 85
    iget-object v9, p0, Lcom/lge/camera/command/DisplayCameraPostview;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v9}, Lcom/lge/camera/CameraMediator;->getTimeMachineFileNameList()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 86
    .end local v2           #i:I
    .end local v4           #timeMachineFileNameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5           #uriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v6           #uriListSize:I
    .end local v8           #uriStringList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 87
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v9, "CameraApp"

    const-string v10, "DisplayCameraPostview NullPointerException:"

    invoke-static {v9, v10, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    iget-object v9, p0, Lcom/lge/camera/command/DisplayCameraPostview;->mMediator:Lcom/lge/camera/CameraMediator;

    const-string v10, "com.lge.camera.command.DisplayPreview"

    invoke-virtual {v9, v10}, Lcom/lge/camera/CameraMediator;->doCommand(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 89
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 90
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v9, "CameraApp"

    const-string v10, "DisplayCameraPostview IndexOutOfBoundsException:"

    invoke-static {v9, v10, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    iget-object v9, p0, Lcom/lge/camera/command/DisplayCameraPostview;->mMediator:Lcom/lge/camera/CameraMediator;

    const-string v10, "com.lge.camera.command.DisplayPreview"

    invoke-virtual {v9, v10}, Lcom/lge/camera/CameraMediator;->doCommand(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
