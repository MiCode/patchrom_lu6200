.class public Lcom/lge/camera/command/setting/SetVideoImageSize;
.super Lcom/lge/camera/command/setting/CamcorderSettingCommand;
.source "SetVideoImageSize.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/CamcorderSettingCommand;-><init>(Lcom/lge/camera/Mediator;)V

    .line 22
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/command/setting/SetVideoImageSize;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/camera/command/setting/SetVideoImageSize;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/camera/command/setting/SetVideoImageSize;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/camera/command/setting/SetVideoImageSize;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/camera/command/setting/SetVideoImageSize;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method


# virtual methods
.method public execute(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .parameter "parameters"

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/command/setting/SetVideoImageSize;->execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V

    .line 27
    return-void
.end method

.method public execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V
    .locals 19
    .parameter "parameters"
    .parameter "arg"

    .prologue
    .line 30
    const-string v16, "CameraApp"

    const-string v17, "SetVideoImageSize-start"

    invoke-static/range {v16 .. v17}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    move-object/from16 v16, v0

    new-instance v17, Lcom/lge/camera/command/setting/SetVideoImageSize$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/camera/command/setting/SetVideoImageSize$1;-><init>(Lcom/lge/camera/command/setting/SetVideoImageSize;)V

    invoke-virtual/range {v16 .. v17}, Lcom/lge/camera/Mediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/lge/camera/controller/PreviewController;->effectsActive()Z

    move-result v16

    if-nez v16, :cond_1

    .line 48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/lge/camera/Mediator;->isMMSIntent()Z

    move-result v16

    if-nez v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/lge/camera/Mediator;->isAttachIntent()Z

    move-result v16

    if-nez v16, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/lge/camera/Mediator;->isAttachMode()Z

    move-result v16

    if-eqz v16, :cond_4

    .line 50
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isOMAP4Chipset()Z

    move-result v16

    if-eqz v16, :cond_3

    .line 51
    const/16 v16, 0x7530

    const/16 v17, 0x7530

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 65
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/command/setting/SetVideoImageSize;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/lge/camera/CamcorderMediator;->getPreviewController()Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->getPreviewSizeOnDevice()Ljava/lang/String;

    move-result-object v14

    .line 66
    .local v14, sizeOnDeviceString:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/command/setting/SetVideoImageSize;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/lge/camera/CamcorderMediator;->getPreviewController()Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->getPreviewSizeOnScreen()Ljava/lang/String;

    move-result-object v15

    .line 69
    .local v15, sizeOnScreenString:Ljava/lang/String;
    if-eqz v14, :cond_2

    if-nez v15, :cond_8

    .line 70
    :cond_2
    const-string v17, "CameraApp"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "error! sizeOnDeviceString or sizeOnScreenString is null:"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    if-nez v14, :cond_7

    const/16 v16, 0x1

    :goto_1
    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :goto_2
    return-void

    .line 53
    .end local v14           #sizeOnDeviceString:Ljava/lang/String;
    .end local v15           #sizeOnScreenString:Ljava/lang/String;
    :cond_3
    const/16 v16, 0x3a98

    const/16 v17, 0x3a98

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_0

    .line 56
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_6

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetProjetCode()I

    move-result v16

    const/16 v17, 0x17

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_5

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetProjetCode()I

    move-result v16

    const/16 v17, 0x15

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_6

    .line 59
    :cond_5
    const/16 v16, 0x3a98

    const/16 v17, 0x3a98

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    goto/16 :goto_0

    .line 61
    :cond_6
    const/16 v16, 0x7530

    const/16 v17, 0x7530

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    goto/16 :goto_0

    .line 70
    .restart local v14       #sizeOnDeviceString:Ljava/lang/String;
    .restart local v15       #sizeOnScreenString:Ljava/lang/String;
    :cond_7
    const/16 v16, 0x0

    goto :goto_1

    .line 73
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v8

    .line 74
    .local v8, oldSizeOnDevice:Landroid/hardware/Camera$Size;
    if-nez v8, :cond_9

    .line 75
    const-string v16, "CameraApp"

    const-string v17, "oldSizeOnDevice is Null"

    invoke-static/range {v16 .. v17}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 79
    :cond_9
    invoke-static {v14}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v11

    .line 80
    .local v11, previewSizeOnDevice:[I
    invoke-static {v15}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v12

    .line 82
    .local v12, previewSizeOnScreen:[I
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v6, v0, [I

    .line 83
    .local v6, oldPreviewSizeOnScreen:[I
    const v16, 0x7f09008d

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/lge/camera/command/setting/SetVideoImageSize;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 84
    .local v10, preview:Landroid/view/View;
    const/16 v16, 0x0

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v17

    aput v17, v6, v16

    .line 85
    const/16 v16, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v17

    aput v17, v6, v16

    .line 88
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v9, v0, [I

    .line 89
    .local v9, oldVideoSize:[I
    const/16 v16, 0x0

    const/16 v17, 0x0

    aput v17, v9, v16

    .line 90
    const/16 v16, 0x1

    const/16 v17, 0x0

    aput v17, v9, v16

    .line 92
    new-instance v7, Ljava/lang/Float;

    const/16 v16, 0x0

    aget v16, v6, v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/16 v17, 0x1

    aget v17, v6, v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v16, v16, v17

    move/from16 v0, v16

    invoke-direct {v7, v0}, Ljava/lang/Float;-><init>(F)V

    .line 93
    .local v7, oldRatio:Ljava/lang/Float;
    new-instance v5, Ljava/lang/Float;

    const/16 v16, 0x0

    aget v16, v12, v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/16 v17, 0x1

    aget v17, v12, v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v16, v16, v17

    move/from16 v0, v16

    invoke-direct {v5, v0}, Ljava/lang/Float;-><init>(F)V

    .line 95
    .local v5, newRatio:Ljava/lang/Float;
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetProjetCode()I

    move-result v16

    const/16 v17, 0x15

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_17

    .line 96
    const-string v16, "CameraApp"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "setPreviewSize :"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x0

    aget v18, v12, v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "x"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x1

    aget v18, v12, v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const/16 v16, 0x0

    aget v16, v12, v16

    const/16 v17, 0x1

    aget v17, v12, v17

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 103
    :goto_3
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isQCTChipset()Z

    move-result v16

    if-nez v16, :cond_a

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isNVIDIAChipset()Z

    move-result v16

    if-eqz v16, :cond_d

    .line 104
    :cond_a
    const/16 v16, 0x0

    aget v16, v11, v16

    sget v17, Lcom/lge/camera/properties/CameraConstants;->LCD_SIZE_WIDTH:I

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_c

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetHDmodel()Z

    move-result v16

    if-nez v16, :cond_b

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetQHDmodel()Z

    move-result v16

    if-nez v16, :cond_b

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetWVGAmodel()Z

    move-result v16

    if-nez v16, :cond_b

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetHVGAmodel()Z

    move-result v16

    if-nez v16, :cond_b

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetXGAmodel()Z

    move-result v16

    if-eqz v16, :cond_c

    .line 111
    :cond_b
    const/16 v16, 0x0

    aget v16, v12, v16

    const/16 v17, 0x1

    aget v17, v12, v17

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 112
    const-string v16, "CameraApp"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "re-set Preview size :"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x0

    aget v18, v12, v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "x"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x1

    aget v18, v12, v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_c
    const-string v16, "video-size"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 116
    .local v13, sOldVideoSize:Ljava/lang/String;
    if-eqz v13, :cond_d

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_d

    .line 117
    invoke-static {v13}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v9

    .line 122
    .end local v13           #sOldVideoSize:Ljava/lang/String;
    :cond_d
    const-string v16, "CameraApp"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "### set video-size "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v16, "video-size"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v14}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isOMAP4Chipset()Z

    move-result v16

    if-eqz v16, :cond_18

    .line 127
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isAvailableLiveShot()Z

    move-result v16

    if-eqz v16, :cond_f

    .line 129
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->isVideoSnapshotSupported()Z

    move-result v16

    if-eqz v16, :cond_e

    .line 130
    const/16 v16, 0x0

    aget v16, v11, v16

    const/16 v17, 0x1

    aget v17, v11, v17

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 132
    :cond_e
    const-string v16, "hdr-mode"

    const-string v17, "0"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :cond_f
    :goto_4
    const/16 v16, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 141
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/command/setting/SetVideoImageSize;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/lge/camera/CamcorderMediator;->getPreviewController()Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    move-result-object v16

    const/16 v17, 0x0

    aget v17, v12, v17

    const/16 v18, 0x1

    aget v18, v12, v18

    invoke-virtual/range {v16 .. v18}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->changePreviewModeOnUiThread(II)V

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/lge/camera/controller/PreviewController;->isPreviewing()Z

    move-result v16

    if-eqz v16, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/lge/camera/controller/PreviewController;->effectsActive()Z

    move-result v16

    if-nez v16, :cond_11

    .line 146
    const/16 v16, 0x0

    aget v16, v6, v16

    const/16 v17, 0x0

    aget v17, v12, v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_19

    const/16 v16, 0x1

    aget v16, v6, v16

    const/16 v17, 0x1

    aget v17, v12, v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_19

    iget v0, v8, Landroid/hardware/Camera$Size;->width:I

    move/from16 v16, v0

    const/16 v17, 0x0

    aget v17, v11, v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_10

    iget v0, v8, Landroid/hardware/Camera$Size;->height:I

    move/from16 v16, v0

    const/16 v17, 0x1

    aget v17, v11, v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_19

    .line 149
    :cond_10
    const-string v16, "CameraApp"

    const-string v17, "Force restart preview. Preview size on device changed but view layout is same. "

    invoke-static/range {v16 .. v17}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/command/setting/SetVideoImageSize;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/lge/camera/CamcorderMediator;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v16

    new-instance v17, Lcom/lge/camera/command/setting/SetVideoImageSize$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/lge/camera/command/setting/SetVideoImageSize$2;-><init>(Lcom/lge/camera/command/setting/SetVideoImageSize;Landroid/hardware/Camera$Parameters;)V

    invoke-virtual/range {v16 .. v17}, Lcom/lge/camera/util/MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 169
    :cond_11
    :goto_5
    invoke-static {v14}, Lcom/lge/camera/properties/ProjectVariables;->isAvailableMmsResolution(Ljava/lang/String;)Z

    move-result v3

    .line 171
    .local v3, isMMS:Z
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->IsLiveEffectSupported()Z

    move-result v16

    if-eqz v16, :cond_12

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetProjetCode()I

    move-result v16

    const/16 v17, 0x13

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_12

    .line 173
    const/4 v3, 0x0

    .line 175
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/command/setting/SetVideoImageSize;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v16

    const-string v17, "com.lge.camera.command.SelectDuration"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Lcom/lge/camera/CamcorderMediator;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 176
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetCarrierCode()I

    move-result v4

    .line 177
    .local v4, mCarrierCode:I
    const/16 v16, 0x5

    move/from16 v0, v16

    if-eq v4, v0, :cond_13

    const/16 v16, 0x15

    move/from16 v0, v16

    if-ne v4, v0, :cond_15

    .line 179
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/lge/camera/Mediator;->isMMSIntent()Z

    move-result v16

    if-nez v16, :cond_14

    if-eqz v3, :cond_15

    .line 180
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    move-object/from16 v16, v0

    check-cast v16, Lcom/lge/camera/CamcorderMediator;

    invoke-virtual/range {v16 .. v16}, Lcom/lge/camera/CamcorderMediator;->showRequestedSizeLimit()V

    .line 187
    :cond_15
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isOMAP4Chipset()Z

    move-result v16

    if-eqz v16, :cond_16

    .line 188
    const-string v16, "mode"

    const-string v17, "video-mode"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v16, "CameraApp"

    const-string v17, "set mode: video-mode"

    invoke-static/range {v16 .. v17}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_16
    const-string v16, "CameraApp"

    const-string v17, "SetVideoImageSize-end"

    invoke-static/range {v16 .. v17}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 99
    .end local v3           #isMMS:Z
    .end local v4           #mCarrierCode:I
    :cond_17
    const-string v16, "CameraApp"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "setPreviewSize :"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x0

    aget v18, v11, v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "x"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x1

    aget v18, v11, v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const/16 v16, 0x0

    aget v16, v11, v16

    const/16 v17, 0x1

    aget v17, v11, v17

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    goto/16 :goto_3

    .line 135
    :cond_18
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->isVideoSnapshotSupported()Z

    move-result v16

    if-eqz v16, :cond_f

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isAvailableLiveShot()Z

    move-result v16

    if-eqz v16, :cond_f

    .line 136
    const/16 v16, 0x0

    aget v16, v11, v16

    const/16 v17, 0x1

    aget v17, v11, v17

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    goto/16 :goto_4

    .line 155
    :cond_19
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isQCTChipset()Z

    move-result v16

    if-eqz v16, :cond_11

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetHDmodel()Z

    move-result v16

    if-eqz v16, :cond_11

    invoke-virtual {v7, v5}, Ljava/lang/Float;->compareTo(Ljava/lang/Float;)I

    move-result v16

    if-nez v16, :cond_11

    const/16 v16, 0x0

    aget v16, v9, v16

    const/16 v17, 0x0

    aget v17, v11, v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_11

    .line 159
    const-string v16, "CameraApp"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Force restart preview. QCT 8k & full hd model have some limitation because of frame drop"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x0

    aget v18, v9, v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "!="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x0

    aget v18, v11, v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/command/setting/SetVideoImageSize;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/lge/camera/CamcorderMediator;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v16

    new-instance v17, Lcom/lge/camera/command/setting/SetVideoImageSize$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/lge/camera/command/setting/SetVideoImageSize$3;-><init>(Lcom/lge/camera/command/setting/SetVideoImageSize;Landroid/hardware/Camera$Parameters;)V

    invoke-virtual/range {v16 .. v17}, Lcom/lge/camera/util/MainHandler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_5
.end method

.method protected onExecuteAlone()V
    .locals 5

    .prologue
    .line 197
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetCarrierCode()I

    move-result v1

    .line 198
    .local v1, mCarrierCode:I
    const/4 v3, 0x5

    if-eq v1, v3, :cond_0

    const/16 v3, 0x15

    if-ne v1, v3, :cond_2

    .line 200
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v4, "key_preview_size_on_device"

    invoke-virtual {v3, v4}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, videoSizeString:Ljava/lang/String;
    invoke-static {v2}, Lcom/lge/camera/properties/ProjectVariables;->isAvailableMmsResolution(Ljava/lang/String;)Z

    move-result v0

    .line 203
    .local v0, isMMS:Z
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->isMMSIntent()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v0, :cond_2

    .line 204
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v3, Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CamcorderMediator;->showRequestedSizeLimit()V

    .line 207
    .end local v0           #isMMS:Z
    .end local v2           #videoSizeString:Ljava/lang/String;
    :cond_2
    return-void
.end method
