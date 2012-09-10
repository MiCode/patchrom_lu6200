.class public Lcom/lge/camera/command/setting/SetCameraImageSize;
.super Lcom/lge/camera/command/setting/CameraSettingCommand;
.source "SetCameraImageSize.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/CameraSettingCommand;-><init>(Lcom/lge/camera/Mediator;)V

    .line 21
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/command/setting/SetCameraImageSize;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/camera/command/setting/SetCameraImageSize;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/camera/command/setting/SetCameraImageSize;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/camera/command/setting/SetCameraImageSize;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/camera/command/setting/SetCameraImageSize;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/camera/command/setting/SetCameraImageSize;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lge/camera/command/setting/SetCameraImageSize;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method


# virtual methods
.method public execute(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .parameter "parameters"

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/command/setting/SetCameraImageSize;->execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V

    .line 26
    return-void
.end method

.method public execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V
    .locals 17
    .parameter "parameters"
    .parameter "arg"

    .prologue
    .line 30
    const-string v14, "CameraApp"

    const-string v15, "SetCameraImageSize-start"

    invoke-static {v14, v15}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/command/setting/SetCameraImageSize;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v14

    invoke-virtual {v14}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v14

    invoke-virtual {v14}, Lcom/lge/camera/controller/camera/CameraPreviewController;->getPreviewSizeOnDevice()Ljava/lang/String;

    move-result-object v12

    .line 42
    .local v12, sizeOnDeviceString:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/command/setting/SetCameraImageSize;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v14

    invoke-virtual {v14}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v14

    invoke-virtual {v14}, Lcom/lge/camera/controller/camera/CameraPreviewController;->getPreviewSizeOnScreen()Ljava/lang/String;

    move-result-object v13

    .line 45
    .local v13, sizeOnScreenString:Ljava/lang/String;
    if-eqz v12, :cond_0

    if-nez v13, :cond_2

    .line 46
    :cond_0
    const-string v15, "CameraApp"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "error! sizeOnDeviceString or sizeOnScreenString is null:"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    if-nez v12, :cond_1

    const/4 v14, 0x1

    :goto_0
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :goto_1
    return-void

    .line 46
    :cond_1
    const/4 v14, 0x0

    goto :goto_0

    .line 50
    :cond_2
    invoke-static {v12}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v10

    .line 51
    .local v10, previewSizeOnDevice:[I
    invoke-static {v13}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v11

    .line 53
    .local v11, previewSizeOnScreen:[I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v14}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v14

    const-string v15, "key_camera_picturesize"

    invoke-virtual {v14, v15}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v8

    .line 54
    .local v8, pref:Lcom/lge/camera/setting/ListPreference;
    invoke-virtual {v8}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v7

    .line 55
    .local v7, pictureSize:[I
    const/4 v14, 0x2

    new-array v6, v14, [I

    .line 57
    .local v6, oldPreviewSizeOnScreen:[I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v14}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v14

    invoke-virtual {v14}, Lcom/lge/camera/controller/PreviewController;->beRendered()Z

    move-result v2

    .line 58
    .local v2, beRendered:Z
    if-eqz v2, :cond_3

    .line 59
    const v14, 0x7f09008e

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/lge/camera/command/setting/SetCameraImageSize;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/lge/camera/components/OpenGLSurfaceView;

    .line 60
    .local v9, preview:Lcom/lge/camera/components/OpenGLSurfaceView;
    const/4 v14, 0x0

    invoke-virtual {v9}, Lcom/lge/camera/components/OpenGLSurfaceView;->getWidth()I

    move-result v15

    aput v15, v6, v14

    .line 61
    const/4 v14, 0x1

    invoke-virtual {v9}, Lcom/lge/camera/components/OpenGLSurfaceView;->getHeight()I

    move-result v15

    aput v15, v6, v14

    .line 69
    .end local v9           #preview:Lcom/lge/camera/components/OpenGLSurfaceView;
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v5

    .line 70
    .local v5, oldPreviewSizeOnDevice:Landroid/hardware/Camera$Size;
    if-nez v5, :cond_4

    .line 71
    const-string v14, "CameraApp"

    const-string v15, "oldPreviewSize is Null"

    invoke-static {v14, v15}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 63
    .end local v5           #oldPreviewSizeOnDevice:Landroid/hardware/Camera$Size;
    :cond_3
    const v14, 0x7f09008d

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/lge/camera/command/setting/SetCameraImageSize;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/lge/camera/components/CameraPreview;

    .line 64
    .local v9, preview:Lcom/lge/camera/components/CameraPreview;
    const/4 v14, 0x0

    invoke-virtual {v9}, Lcom/lge/camera/components/CameraPreview;->getWidth()I

    move-result v15

    aput v15, v6, v14

    .line 65
    const/4 v14, 0x1

    invoke-virtual {v9}, Lcom/lge/camera/components/CameraPreview;->getHeight()I

    move-result v15

    aput v15, v6, v14

    .line 66
    const/4 v14, 0x0

    aget v14, v10, v14

    const/4 v15, 0x1

    aget v15, v10, v15

    invoke-virtual {v9, v14, v15}, Lcom/lge/camera/components/CameraPreview;->setSrcImageSize(II)V

    goto :goto_2

    .line 74
    .end local v9           #preview:Lcom/lge/camera/components/CameraPreview;
    .restart local v5       #oldPreviewSizeOnDevice:Landroid/hardware/Camera$Size;
    :cond_4
    const-string v14, "CameraApp"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "PreviewOnScreen "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    aget v16, v6, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "x"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x1

    aget v16, v6, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " -> "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    aget v16, v11, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "x"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x1

    aget v16, v11, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v14, "CameraApp"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "PreviewOnDevice "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v5, Landroid/hardware/Camera$Size;->width:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "x"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v5, Landroid/hardware/Camera$Size;->height:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " -> "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    aget v16, v10, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "x"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x1

    aget v16, v10, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v14}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v14

    invoke-virtual {v14}, Lcom/lge/camera/controller/PreviewController;->effectsActive()Z

    move-result v3

    .line 80
    .local v3, effectsActive:Z
    if-nez v3, :cond_6

    .line 81
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetProjetCode()I

    move-result v14

    const/16 v15, 0x15

    if-ne v14, v15, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v15, "key_camera_shot_mode"

    const-string v16, "shotmode_continuous"

    invoke-virtual/range {v14 .. v16}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v15, "key_camera_shot_mode"

    const-string v16, "shotmode_panorama"

    invoke-virtual/range {v14 .. v16}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 85
    :cond_5
    const/4 v14, 0x0

    aget v14, v10, v14

    const/4 v15, 0x1

    aget v15, v10, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 86
    const-string v14, "CameraApp"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "setPictureSize : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    aget v16, v10, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " x "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x1

    aget v16, v10, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_6
    :goto_3
    const/4 v14, 0x0

    aget v14, v10, v14

    const/4 v15, 0x1

    aget v15, v10, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 94
    const-string v14, "CameraApp"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "setPreviewSize "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    aget v16, v10, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "x"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x1

    aget v16, v10, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    if-nez v3, :cond_7

    .line 98
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isOMAP4Chipset()Z

    move-result v14

    if-eqz v14, :cond_e

    .line 99
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v14}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_d

    .line 100
    const/16 v14, 0x7530

    const/16 v15, 0x7530

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 108
    :cond_7
    :goto_4
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 110
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v15, "key_focus"

    invoke-virtual {v14, v15}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "face_tracking"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 111
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v14, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v14}, Lcom/lge/camera/CameraMediator;->getFacePreviewController()Lcom/lge/camera/controller/camera/FacePreviewController;

    move-result-object v14

    invoke-virtual {v14}, Lcom/lge/camera/controller/camera/FacePreviewController;->initFaceDetectInfo()V

    .line 114
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v14}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v14

    invoke-virtual {v14}, Lcom/lge/camera/controller/PreviewController;->isPreviewing()Z

    move-result v4

    .line 115
    .local v4, isPreviewing:Z
    if-eqz v2, :cond_11

    .line 116
    const/4 v14, 0x0

    aget v14, v6, v14

    const/4 v15, 0x0

    aget v15, v10, v15

    if-ne v14, v15, :cond_9

    const/4 v14, 0x1

    aget v14, v6, v14

    const/4 v15, 0x1

    aget v15, v10, v15

    if-eq v14, v15, :cond_10

    .line 118
    :cond_9
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetHVGAmodel()Z

    move-result v14

    if-eqz v14, :cond_f

    const/4 v14, 0x0

    aget v14, v6, v14

    if-lez v14, :cond_f

    const/4 v14, 0x1

    aget v14, v6, v14

    if-lez v14, :cond_f

    const/4 v14, 0x0

    aget v14, v6, v14

    const/4 v15, 0x0

    aget v15, v10, v15

    if-gt v14, v15, :cond_f

    const/4 v14, 0x1

    aget v14, v6, v14

    const/4 v15, 0x1

    aget v15, v6, v15

    if-gt v14, v15, :cond_f

    .line 136
    :cond_a
    :goto_5
    if-eqz v4, :cond_b

    const/4 v14, 0x0

    aget v14, v6, v14

    const/4 v15, 0x0

    aget v15, v11, v15

    if-ne v14, v15, :cond_b

    const/4 v14, 0x1

    aget v14, v6, v14

    const/4 v15, 0x1

    aget v15, v11, v15

    if-ne v14, v15, :cond_b

    iget v14, v5, Landroid/hardware/Camera$Size;->width:I

    const/4 v15, 0x0

    aget v15, v10, v15

    if-eq v14, v15, :cond_b

    .line 140
    const-string v14, "CameraApp"

    const-string v15, "Preview size on device changed but view layout is same. Force restart preview"

    invoke-static {v14, v15}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/command/setting/SetCameraImageSize;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v14

    new-instance v15, Lcom/lge/camera/command/setting/SetCameraImageSize$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v15, v0, v1}, Lcom/lge/camera/command/setting/SetCameraImageSize$1;-><init>(Lcom/lge/camera/command/setting/SetCameraImageSize;Landroid/hardware/Camera$Parameters;)V

    invoke-virtual {v14, v15}, Lcom/lge/camera/CameraMediator;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 149
    :cond_b
    const-string v14, "CameraApp"

    const-string v15, "SetCameraImageSize-end"

    invoke-static {v14, v15}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 89
    .end local v4           #isPreviewing:Z
    :cond_c
    const/4 v14, 0x0

    aget v14, v7, v14

    const/4 v15, 0x1

    aget v15, v7, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 90
    const-string v14, "CameraApp"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "setPictureSize "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    aget v16, v7, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "x"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x1

    aget v16, v7, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 102
    :cond_d
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getCameraFrameRateNormalRangeMin()I

    move-result v14

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getCameraFrameRateNormalRangeMax()I

    move-result v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    goto/16 :goto_4

    .line 105
    :cond_e
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getCameraFrameRateNormalRangeMin()I

    move-result v14

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getCameraFrameRateNormalRangeMax()I

    move-result v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    goto/16 :goto_4

    .line 124
    .restart local v4       #isPreviewing:Z
    :cond_f
    const-string v14, "CameraApp"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "hb oldPreviewSizeOnScreen[0] = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    aget v16, v6, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " // previewSizeOnDevice[0] = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    aget v16, v10, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v14, "CameraApp"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "hb oldPreviewSizeOnScreen[1] = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x1

    aget v16, v6, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " // previewSizeOnDevice[1] = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x1

    aget v16, v10, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/command/setting/SetCameraImageSize;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v14

    invoke-virtual {v14}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v14

    const/4 v15, 0x0

    aget v15, v11, v15

    const/16 v16, 0x1

    aget v16, v11, v16

    invoke-virtual/range {v14 .. v16}, Lcom/lge/camera/controller/camera/CameraPreviewController;->changePreviewModeOnUiThread(II)V

    goto/16 :goto_5

    .line 129
    :cond_10
    if-nez v4, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v14}, Lcom/lge/camera/Mediator;->getInCaptureProgress()Z

    move-result v14

    if-nez v14, :cond_a

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/command/setting/SetCameraImageSize;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v14

    invoke-virtual {v14}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v14

    const/4 v15, 0x0

    aget v15, v11, v15

    const/16 v16, 0x1

    aget v16, v11, v16

    invoke-virtual/range {v14 .. v16}, Lcom/lge/camera/controller/camera/CameraPreviewController;->changePreviewModeOnUiThread(II)V

    goto/16 :goto_5

    .line 133
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/command/setting/SetCameraImageSize;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v14

    invoke-virtual {v14}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v14

    const/4 v15, 0x0

    aget v15, v11, v15

    const/16 v16, 0x1

    aget v16, v11, v16

    invoke-virtual/range {v14 .. v16}, Lcom/lge/camera/controller/camera/CameraPreviewController;->changePreviewModeOnUiThread(II)V

    goto/16 :goto_5
.end method

.method protected onExecuteAlone()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    new-instance v1, Lcom/lge/camera/command/setting/SetCameraImageSize$2;

    invoke-direct {v1, p0}, Lcom/lge/camera/command/setting/SetCameraImageSize$2;-><init>(Lcom/lge/camera/command/setting/SetCameraImageSize;)V

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 169
    return-void
.end method
