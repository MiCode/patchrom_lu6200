.class public Lcom/lge/camera/dialog/SelectVideoLengthRotatableDialog;
.super Lcom/lge/camera/dialog/RotateDialog;
.source "SelectVideoLengthRotatableDialog.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/lge/camera/dialog/RotateDialog;-><init>(Lcom/lge/camera/Mediator;)V

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-static {p0}, Lcom/lge/camera/dialog/SelectVideoLengthRotatableDialog;->onMmsClick(Lcom/lge/camera/Mediator;)V

    return-void
.end method

.method static synthetic access$100(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-static {p0}, Lcom/lge/camera/dialog/SelectVideoLengthRotatableDialog;->onLongVideoClick(Lcom/lge/camera/Mediator;)V

    return-void
.end method

.method private static onLongVideoClick(Lcom/lge/camera/Mediator;)V
    .locals 5
    .parameter "mediator"

    .prologue
    .line 72
    const-string v2, "CameraApp"

    const-string v3, "Long Video Selected"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v2

    const-string v3, "key_preview_size_on_device"

    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 75
    .local v1, pref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getDefaultValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 77
    const-string v2, "key_preview_size_on_device"

    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getDefaultValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/lge/camera/Mediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 81
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 82
    .local v0, params:Landroid/hardware/Camera$Parameters;
    const-string v2, "com.lge.camera.command.setting.SetVideoImageSize"

    invoke-virtual {p0, v2, v0}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    .end local v0           #params:Landroid/hardware/Camera$Parameters;
    :cond_1
    return-void
.end method

.method private static onMmsClick(Lcom/lge/camera/Mediator;)V
    .locals 6
    .parameter "mediator"

    .prologue
    const/4 v5, 0x0

    .line 59
    const-string v2, "CameraApp"

    const-string v3, "Mms Selected"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getMmsResolutions()[Ljava/lang/String;

    move-result-object v2

    aget-object v1, v2, v5

    .line 62
    .local v1, resolution:Ljava/lang/String;
    const-string v2, "key_preview_size_on_device"

    invoke-virtual {p0, v2, v1}, Lcom/lge/camera/Mediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 63
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/lge/camera/Mediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 65
    .local v0, params:Landroid/hardware/Camera$Parameters;
    const-string v2, "com.lge.camera.command.setting.SetVideoImageSize"

    invoke-virtual {p0, v2, v0}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    .end local v0           #params:Landroid/hardware/Camera$Parameters;
    :cond_0
    check-cast p0, Lcom/lge/camera/CamcorderMediator;

    .end local p0
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/camcorder/RecordingController;->show()V

    .line 69
    return-void
.end method


# virtual methods
.method public create()V
    .locals 6

    .prologue
    .line 28
    iget-object v4, p0, Lcom/lge/camera/dialog/RotateDialog;->mMediator:Lcom/lge/camera/Mediator;

    const v5, 0x7f03001d

    invoke-virtual {v4, v5}, Lcom/lge/camera/Mediator;->inflateView(I)Landroid/view/View;

    move-result-object v3

    .line 29
    .local v3, v:Landroid/view/View;
    const v4, 0x7f0900b7

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 30
    .local v2, titleText:Landroid/widget/TextView;
    const v4, 0x7f0900bd

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 31
    .local v1, btnOk:Landroid/widget/Button;
    const v4, 0x7f0900bc

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 32
    .local v0, btnCancel:Landroid/widget/Button;
    const v4, 0x7f0b01db

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 33
    const v4, 0x7f0b01dc

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(I)V

    .line 34
    const v4, 0x7f0b01da

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 36
    invoke-super {p0, v3}, Lcom/lge/camera/dialog/RotateDialog;->create(Landroid/view/View;)V

    .line 39
    new-instance v4, Lcom/lge/camera/dialog/SelectVideoLengthRotatableDialog$1;

    invoke-direct {v4, p0}, Lcom/lge/camera/dialog/SelectVideoLengthRotatableDialog$1;-><init>(Lcom/lge/camera/dialog/SelectVideoLengthRotatableDialog;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    new-instance v4, Lcom/lge/camera/dialog/SelectVideoLengthRotatableDialog$2;

    invoke-direct {v4, p0}, Lcom/lge/camera/dialog/SelectVideoLengthRotatableDialog$2;-><init>(Lcom/lge/camera/dialog/SelectVideoLengthRotatableDialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    return-void
.end method

.method public onDismiss()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 89
    invoke-super {p0}, Lcom/lge/camera/dialog/RotateDialog;->onDismiss()V

    .line 91
    iget-object v0, p0, Lcom/lge/camera/dialog/RotateDialog;->mMediator:Lcom/lge/camera/Mediator;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/lge/camera/dialog/RotateDialog;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionController;->initMenu()V

    .line 93
    iget-object v0, p0, Lcom/lge/camera/dialog/RotateDialog;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0, v2}, Lcom/lge/camera/Mediator;->setVideoState(I)V

    .line 94
    iget-object v0, p0, Lcom/lge/camera/dialog/RotateDialog;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->enableCommand(Z)V

    .line 95
    iget-object v0, p0, Lcom/lge/camera/dialog/RotateDialog;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getStorageController()Lcom/lge/camera/controller/StorageController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/lge/camera/controller/StorageController;->checkStorage(Z)V

    .line 97
    :cond_0
    return-void
.end method
