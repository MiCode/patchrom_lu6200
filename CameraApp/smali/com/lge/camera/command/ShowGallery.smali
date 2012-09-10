.class public Lcom/lge/camera/command/ShowGallery;
.super Lcom/lge/camera/command/Command;
.source "ShowGallery.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/Mediator;)V

    .line 15
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 19
    invoke-virtual {p0}, Lcom/lge/camera/command/ShowGallery;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/camera/Mediator;->getDialogController()Lcom/lge/camera/controller/DialogController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/camera/controller/DialogController;->isRotateDialogVisible()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 20
    const-string v7, "CameraApp"

    const-string v8, "Dialog is already showing"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Lcom/lge/camera/command/ShowGallery;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/lge/camera/controller/PreviewPanelController;->setGalleryLaunching(Z)V

    .line 22
    iget-object v7, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v7}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/lge/camera/controller/PreviewPanelController;->enableCommand(Z)V

    .line 23
    iget-object v7, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v7}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v7

    invoke-virtual {v7, v10, v9}, Lcom/lge/camera/controller/QuickFunctionController;->setAllMenuEnabled(ZZ)V

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 26
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/command/ShowGallery;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/camera/controller/PreviewPanelController;->getThumbController()Lcom/lge/camera/components/ThumbnailController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/camera/components/ThumbnailController;->getUri()Landroid/net/Uri;

    move-result-object v5

    .line 27
    .local v5, thumbnailUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/lge/camera/command/ShowGallery;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7, v5}, Lcom/lge/camera/util/BitmapManager;->getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    .line 29
    .local v6, uriPath:Ljava/lang/String;
    if-nez v6, :cond_2

    .line 30
    invoke-virtual {p0}, Lcom/lge/camera/command/ShowGallery;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/lge/camera/controller/PreviewPanelController;->setGalleryLaunching(Z)V

    .line 31
    invoke-virtual {p0}, Lcom/lge/camera/command/ShowGallery;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/camera/controller/PreviewPanelController;->getThumbnailAndUpdateButton()V

    .line 32
    const-string v7, "CameraApp"

    const-string v8, "Uri is not valid"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 36
    :cond_2
    iget-object v7, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v7}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/camera/controller/PreviewController;->isPreviewOnGoing()Z

    move-result v7

    if-nez v7, :cond_3

    if-nez v5, :cond_4

    .line 37
    :cond_3
    invoke-virtual {p0}, Lcom/lge/camera/command/ShowGallery;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/lge/camera/controller/PreviewPanelController;->setGalleryLaunching(Z)V

    .line 38
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "show gallery return - thumbnailUri:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_4
    iget-object v7, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v7}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v7

    if-nez v7, :cond_5

    .line 43
    iget-object v7, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v7}, Lcom/lge/camera/Mediator;->getFocusController()Lcom/lge/camera/controller/FocusController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/camera/controller/FocusController;->getFocusState()I

    move-result v7

    if-eqz v7, :cond_5

    .line 44
    iget-object v7, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v7, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v7}, Lcom/lge/camera/CameraMediator;->getFocusController()Lcom/lge/camera/controller/camera/CameraFocusController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/camera/controller/camera/CameraFocusController;->cancelAutoFocus()V

    .line 45
    iget-object v7, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v7, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v7}, Lcom/lge/camera/CameraMediator;->getFocusController()Lcom/lge/camera/controller/camera/CameraFocusController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/camera/controller/camera/CameraFocusController;->setFocusRectangleInitialize()V

    .line 46
    iget-object v7, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v7, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v7}, Lcom/lge/camera/CameraMediator;->getFocusController()Lcom/lge/camera/controller/camera/CameraFocusController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/camera/controller/camera/CameraFocusController;->clearFocusState()V

    .line 50
    :cond_5
    invoke-virtual {p0}, Lcom/lge/camera/command/ShowGallery;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 51
    .local v4, pm:Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 55
    .local v2, info:Landroid/content/pm/ApplicationInfo;
    #:try_start_0
    #const-string v7, "com.android.gallery3d"

    #const/16 v8, 0x80

    #invoke-virtual {v4, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    #:try_end_0
    #.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #move-result-object v2

    .line 62
    const/4 v3, 0x0

    .line 64
    .local v3, intent:Landroid/content/Intent;
    #iget-boolean v7, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    const/4 v7, 0x1

    if-nez v7, :cond_6

    .line 65
    invoke-virtual {p0}, Lcom/lge/camera/command/ShowGallery;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/lge/camera/controller/PreviewPanelController;->setGalleryLaunching(Z)V

    .line 66
    invoke-virtual {p0}, Lcom/lge/camera/command/ShowGallery;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/camera/controller/QuickFunctionController;->clearSubMenu()V

    .line 67
    invoke-virtual {p0}, Lcom/lge/camera/command/ShowGallery;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v7

    const-string v8, "com.lge.camera.command.ExitZoomBrightnessInteraction"

    invoke-virtual {v7, v8}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/lge/camera/command/ShowGallery;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v7

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Lcom/lge/camera/Mediator;->showDialogPopup(I)V

    .line 70
    iget-object v7, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v7}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/lge/camera/controller/PreviewPanelController;->enableCommand(Z)V

    .line 71
    iget-object v7, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v7}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v7

    invoke-virtual {v7, v10, v9}, Lcom/lge/camera/controller/QuickFunctionController;->setAllMenuEnabled(ZZ)V

    goto/16 :goto_0

    .line 56
    .end local v3           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 57
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "CameraApp"

    const-string v8, "Gallery is not founded:"

    invoke-static {v7, v8, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    invoke-virtual {p0}, Lcom/lge/camera/command/ShowGallery;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/lge/camera/controller/PreviewPanelController;->setGalleryLaunching(Z)V

    goto/16 :goto_0

    .line 75
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3       #intent:Landroid/content/Intent;
    :cond_6
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v7, "com.android.camera.action.REVIEW"

    invoke-direct {v3, v7, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 76
    .restart local v3       #intent:Landroid/content/Intent;
    const/high16 v7, 0x400

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 78
    :try_start_1
    iget-object v7, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v7}, Lcom/lge/camera/Mediator;->getStorageController()Lcom/lge/camera/controller/StorageController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/camera/controller/StorageController;->getStorageState()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_7

    iget-object v7, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v7}, Lcom/lge/camera/Mediator;->getStorageController()Lcom/lge/camera/controller/StorageController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/camera/controller/StorageController;->getStorageState()I

    move-result v7

    if-nez v7, :cond_0

    .line 80
    :cond_7
    invoke-virtual {p0}, Lcom/lge/camera/command/ShowGallery;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 82
    :catch_1
    move-exception v1

    .line 83
    .local v1, ex:Landroid/content/ActivityNotFoundException;
    const-string v7, "CameraApp"

    const-string v8, "review fail"

    invoke-static {v7, v8, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    invoke-virtual {p0}, Lcom/lge/camera/command/ShowGallery;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/lge/camera/controller/PreviewPanelController;->setGalleryLaunching(Z)V

    goto/16 :goto_0
.end method
