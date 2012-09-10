.class public Lcom/lge/camera/CamcorderMediator;
.super Lcom/lge/camera/Mediator;
.source "CamcorderMediator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/CamcorderMediator$Heatingwarning;,
        Lcom/lge/camera/CamcorderMediator$LiveSnapshotSaver;,
        Lcom/lge/camera/CamcorderMediator$SaveRequest;
    }
.end annotation


# instance fields
.field private final HeatDelay1:J

.field private final HeatDelay2:J

.field private final MSG_SHOW:I

.field private final MSG_START:I

.field private final MSG_STOP:I

.field count:I

.field private mBackKeyRecStop:Z

.field private mCaptureData:[B

.field public mCount:I

.field private final mHeatingHandler:Lcom/lge/camera/CamcorderMediator$Heatingwarning;

.field private mLiveSnapshotSaver:Lcom/lge/camera/CamcorderMediator$LiveSnapshotSaver;

.field private mLocationListeners:[Lcom/lge/camera/listeners/LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mMaxVideoDurationInMs:I

.field protected mRecordingController:Lcom/lge/camera/controller/camcorder/RecordingController;

.field private mRequestedSizeLimit:J


# direct methods
.method public constructor <init>(Lcom/lge/camera/Camcorder;)V
    .locals 5
    .parameter "activity"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    invoke-direct {p0, p1}, Lcom/lge/camera/Mediator;-><init>(Landroid/app/Activity;)V

    .line 50
    iput-object v4, p0, Lcom/lge/camera/CamcorderMediator;->mLocationManager:Landroid/location/LocationManager;

    .line 57
    iput-boolean v2, p0, Lcom/lge/camera/CamcorderMediator;->mBackKeyRecStop:Z

    .line 60
    iput v2, p0, Lcom/lge/camera/CamcorderMediator;->MSG_START:I

    .line 61
    iput v3, p0, Lcom/lge/camera/CamcorderMediator;->MSG_STOP:I

    .line 62
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/camera/CamcorderMediator;->MSG_SHOW:I

    .line 64
    const-wide/32 v0, 0x927c0

    iput-wide v0, p0, Lcom/lge/camera/CamcorderMediator;->HeatDelay1:J

    .line 65
    const-wide/32 v0, 0x2bf20

    iput-wide v0, p0, Lcom/lge/camera/CamcorderMediator;->HeatDelay2:J

    .line 67
    new-instance v0, Lcom/lge/camera/CamcorderMediator$Heatingwarning;

    invoke-direct {v0, p0, v4}, Lcom/lge/camera/CamcorderMediator$Heatingwarning;-><init>(Lcom/lge/camera/CamcorderMediator;Lcom/lge/camera/CamcorderMediator$1;)V

    iput-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mHeatingHandler:Lcom/lge/camera/CamcorderMediator$Heatingwarning;

    .line 68
    iput v2, p0, Lcom/lge/camera/CamcorderMediator;->mCount:I

    .line 255
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/camera/CamcorderMediator;->mRequestedSizeLimit:J

    .line 256
    iput v2, p0, Lcom/lge/camera/CamcorderMediator;->mMaxVideoDurationInMs:I

    .line 593
    iput v2, p0, Lcom/lge/camera/CamcorderMediator;->count:I

    .line 72
    invoke-virtual {p0, v3}, Lcom/lge/camera/CamcorderMediator;->setApplicationMode(I)V

    .line 73
    return-void
.end method


# virtual methods
.method public ShowHeatingwarning()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 848
    const-string v2, "CameraApp"

    const-string v3, "===> ShowHeatingwarning"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getIsCharging()Z

    move-result v2

    if-nez v2, :cond_0

    .line 857
    :goto_0
    return-void

    .line 852
    :cond_0
    const v2, 0x7f0b0204

    invoke-virtual {p0, v2}, Lcom/lge/camera/CamcorderMediator;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 853
    .local v1, notifyMsg:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getToastController()Lcom/lge/camera/controller/ToastController;

    move-result-object v2

    const-wide/16 v3, 0xbb8

    invoke-virtual {v2, v1, v3, v4}, Lcom/lge/camera/controller/ToastController;->show(Ljava/lang/String;J)V

    .line 854
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 855
    .local v0, msg:Landroid/os/Message;
    iput v5, v0, Landroid/os/Message;->what:I

    .line 856
    iget-object v2, p0, Lcom/lge/camera/CamcorderMediator;->mHeatingHandler:Lcom/lge/camera/CamcorderMediator$Heatingwarning;

    invoke-virtual {v2, v0}, Lcom/lge/camera/CamcorderMediator$Heatingwarning;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public StartHeatingwarning()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 818
    const-string v3, "CameraApp"

    const-string v4, "===> StartHeatingwarning"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 822
    .local v2, msg:Landroid/os/Message;
    const/4 v3, 0x2

    iput v3, v2, Landroid/os/Message;->what:I

    .line 824
    iget v3, p0, Lcom/lge/camera/CamcorderMediator;->mCount:I

    if-ne v3, v5, :cond_0

    .line 825
    const-wide/32 v0, 0x2bf20

    .line 834
    .local v0, delay:J
    :goto_0
    iget v3, p0, Lcom/lge/camera/CamcorderMediator;->mCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/lge/camera/CamcorderMediator;->mCount:I

    .line 835
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "===> delay :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    iget-object v3, p0, Lcom/lge/camera/CamcorderMediator;->mHeatingHandler:Lcom/lge/camera/CamcorderMediator$Heatingwarning;

    invoke-virtual {v3, v2, v0, v1}, Lcom/lge/camera/CamcorderMediator$Heatingwarning;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 837
    return-void

    .line 826
    .end local v0           #delay:J
    :cond_0
    iget v3, p0, Lcom/lge/camera/CamcorderMediator;->mCount:I

    if-nez v3, :cond_1

    .line 827
    const-wide/32 v0, 0x927c0

    .restart local v0       #delay:J
    goto :goto_0

    .line 830
    .end local v0           #delay:J
    :cond_1
    iput v5, v2, Landroid/os/Message;->what:I

    .line 831
    const-wide/16 v0, 0x0

    .restart local v0       #delay:J
    goto :goto_0
.end method

.method public StopHeatingwarning()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 839
    const-string v0, "CameraApp"

    const-string v1, "===> StopHeatingwarning"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mHeatingHandler:Lcom/lge/camera/CamcorderMediator$Heatingwarning;

    invoke-virtual {v0, v2}, Lcom/lge/camera/CamcorderMediator$Heatingwarning;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 842
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mHeatingHandler:Lcom/lge/camera/CamcorderMediator$Heatingwarning;

    invoke-virtual {v0, v2}, Lcom/lge/camera/CamcorderMediator$Heatingwarning;->removeMessages(I)V

    .line 844
    :cond_0
    iget v0, p0, Lcom/lge/camera/CamcorderMediator;->mCount:I

    if-eqz v0, :cond_1

    .line 845
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/CamcorderMediator;->mCount:I

    .line 846
    :cond_1
    return-void
.end method

.method public addMMSTexture(Lcom/lge/camera/setting/PreferenceGroup;)Lcom/lge/camera/setting/PreferenceGroup;
    .locals 11
    .parameter "pg"

    .prologue
    .line 324
    const-string v7, "key_preview_size_on_device"

    invoke-virtual {p1, v7}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/camera/setting/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 325
    .local v0, entries:[Ljava/lang/CharSequence;
    const-string v7, "key_preview_size_on_device"

    invoke-virtual {p1, v7}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/camera/setting/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 327
    .local v1, entryValues:[Ljava/lang/CharSequence;
    const/4 v5, 0x0

    .line 328
    .local v5, size:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v7, v1

    if-ge v2, v7, :cond_3

    .line 329
    aget-object v7, v1, v2

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 330
    invoke-static {v5}, Lcom/lge/camera/properties/ProjectVariables;->isAvailableMmsResolution(Ljava/lang/String;)Z

    move-result v3

    .line 331
    .local v3, isMMSSize:Z
    if-eqz v3, :cond_0

    .line 333
    const-string v7, "key_preview_size_on_device"

    invoke-virtual {p1, v7}, Lcom/lge/camera/setting/PreferenceGroup;->findPreferenceIndex(Ljava/lang/String;)I

    move-result v6

    .line 334
    .local v6, videoSizePrefIndex:I
    const/4 v7, 0x5

    if-ge v6, v7, :cond_1

    .line 335
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b0111

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 336
    .local v4, mmsString:Ljava/lang/String;
    const-string v7, "%s%n(%s)"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aget-object v10, v0, v2

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v4, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v2

    .line 328
    .end local v4           #mmsString:Ljava/lang/String;
    .end local v6           #videoSizePrefIndex:I
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 339
    .restart local v6       #videoSizePrefIndex:I
    :cond_1
    aget-object v7, v0, v2

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0108

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 340
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b01f7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v2

    goto :goto_1

    .line 341
    :cond_2
    aget-object v7, v0, v2

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0109

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 342
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b01f6

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v2

    goto :goto_1

    .line 347
    .end local v3           #isMMSSize:Z
    .end local v6           #videoSizePrefIndex:I
    :cond_3
    const-string v7, "key_preview_size_on_device"

    invoke-virtual {p1, v7}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/lge/camera/setting/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 348
    return-object p1
.end method

.method protected createControllers()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;-><init>(Lcom/lge/camera/Mediator;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    .line 80
    :cond_0
    new-instance v0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewPanelController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewPanelController;-><init>(Lcom/lge/camera/CamcorderMediator;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    .line 81
    new-instance v0, Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController;-><init>(Lcom/lge/camera/Mediator;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    .line 82
    new-instance v0, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;-><init>(Lcom/lge/camera/Mediator;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    .line 83
    new-instance v0, Lcom/lge/camera/controller/camcorder/CamcorderFocusController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/camcorder/CamcorderFocusController;-><init>(Lcom/lge/camera/CamcorderMediator;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    .line 84
    new-instance v0, Lcom/lge/camera/controller/camcorder/CamcorderStorageController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/camcorder/CamcorderStorageController;-><init>(Lcom/lge/camera/Mediator;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    .line 85
    new-instance v0, Lcom/lge/camera/controller/camcorder/RecordingController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/camcorder/RecordingController;-><init>(Lcom/lge/camera/Mediator;)V

    iput-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mRecordingController:Lcom/lge/camera/controller/camcorder/RecordingController;

    .line 87
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/CamcorderMediator;->mRecordingController:Lcom/lge/camera/controller/camcorder/RecordingController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-super {p0}, Lcom/lge/camera/Mediator;->createControllers()V

    .line 96
    return-void
.end method

.method protected createPreviewController()V
    .locals 1

    .prologue
    .line 162
    new-instance v0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;-><init>(Lcom/lge/camera/Mediator;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    .line 163
    return-void
.end method

.method public doAttach()V
    .locals 1

    .prologue
    .line 386
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/camera/CamcorderMediator;->doReturnToCaller(Z)V

    .line 387
    return-void
.end method

.method public doReturnToCaller(Z)V
    .locals 6
    .parameter "valid"

    .prologue
    .line 360
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 362
    .local v1, resultIntent:Landroid/content/Intent;
    const/4 v2, 0x0

    .line 370
    .local v2, savedVideoUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/lge/camera/Camcorder;

    invoke-virtual {v3}, Lcom/lge/camera/Camcorder;->getPostviewUri()Landroid/net/Uri;

    move-result-object v2

    .line 371
    if-eqz v2, :cond_0

    .line 372
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "attached file uri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const/4 v0, -0x1

    .line 376
    .local v0, resultCode:I
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 381
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 382
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 383
    return-void

    .line 378
    .end local v0           #resultCode:I
    :cond_0
    const-string v3, "CameraApp"

    const-string v4, "attached file uri is null"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const/4 v0, 0x0

    .restart local v0       #resultCode:I
    goto :goto_0
.end method

.method public getBackKeyRecStop()Z
    .locals 1

    .prologue
    .line 439
    iget-boolean v0, p0, Lcom/lge/camera/CamcorderMediator;->mBackKeyRecStop:Z

    return v0
.end method

.method public getCaptureData()[B
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mCaptureData:[B

    return-object v0
.end method

.method public getCurrentLocation()Landroid/location/Location;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 803
    iget-object v3, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    const-string v4, "key_camera_tag_location"

    invoke-virtual {v3, v4}, Lcom/lge/camera/controller/SettingController;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "off"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 815
    :goto_0
    return-object v1

    .line 807
    :cond_0
    const/4 v0, 0x0

    .local v0, index:I
    :goto_1
    iget-object v3, p0, Lcom/lge/camera/CamcorderMediator;->mLocationListeners:[Lcom/lge/camera/listeners/LocationListener;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 808
    iget-object v3, p0, Lcom/lge/camera/CamcorderMediator;->mLocationListeners:[Lcom/lge/camera/listeners/LocationListener;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/lge/camera/listeners/LocationListener;->current()Landroid/location/Location;

    move-result-object v1

    .line 809
    .local v1, location:Landroid/location/Location;
    if-eqz v1, :cond_1

    .line 810
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentLocation return = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 807
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 814
    .end local v1           #location:Landroid/location/Location;
    :cond_2
    const-string v3, "CameraApp"

    const-string v4, "getCurrentLocation return = null"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 815
    goto :goto_0
.end method

.method public bridge synthetic getFocusController()Lcom/lge/camera/controller/FocusController;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getFocusController()Lcom/lge/camera/controller/camcorder/CamcorderFocusController;

    move-result-object v0

    return-object v0
.end method

.method public getFocusController()Lcom/lge/camera/controller/camcorder/CamcorderFocusController;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    check-cast v0, Lcom/lge/camera/controller/camcorder/CamcorderFocusController;

    return-object v0
.end method

.method public bridge synthetic getIndicatorController()Lcom/lge/camera/controller/IndicatorController;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getIndicatorController()Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;

    move-result-object v0

    return-object v0
.end method

.method public getIndicatorController()Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    check-cast v0, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;

    return-object v0
.end method

.method public getLastThumbnail(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "uri"

    .prologue
    .line 443
    const-wide/16 v2, -0x1

    .line 444
    .local v2, id:J
    if-eqz p1, :cond_0

    .line 445
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lge/camera/util/Util;->getIdFromUri(Landroid/app/Activity;Landroid/net/Uri;)J

    move-result-wide v2

    .line 446
    const-string v0, "CameraApp"

    const-string v1, "GET VIDEO THUMB start id is %d, and uri is %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    :cond_0
    const-wide/16 v0, -0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    .line 449
    const-string v0, "CameraApp"

    const-string v1, "GET VIDEO THUMB end: uri not valid"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    const/4 v10, 0x0

    .line 469
    :goto_0
    return-object v10

    .line 452
    :cond_1
    const/4 v10, 0x0

    .line 454
    .local v10, thumbnail:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isOMAP4Chipset()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 455
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lge/camera/util/BitmapManager;->getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    .line 457
    .local v7, filePath:Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 458
    const/4 v0, 0x1

    invoke-static {v7, v0}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 468
    .end local v7           #filePath:Ljava/lang/String;
    :cond_2
    :goto_1
    const-string v0, "CameraApp"

    const-string v1, "GET VIDEO THUMB stop"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 461
    :cond_3
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getVideoState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isAvailableLiveShot()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 462
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lge/camera/util/BitmapManager;->getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/ImageManager;->getExifOrientation(Ljava/lang/String;)I

    move-result v8

    .line 463
    .local v8, orientation:I
    invoke-static {}, Lcom/lge/camera/util/BitmapManager;->instance()Lcom/lge/camera/util/BitmapManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/lge/camera/util/BitmapManager;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 464
    .local v9, thumb:Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/lge/camera/Mediator;->imageHandler:Lcom/lge/camera/util/ImageHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v9, v8, v1}, Lcom/lge/camera/util/ImageHandler;->getImage(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 465
    goto :goto_1

    .line 466
    .end local v8           #orientation:I
    .end local v9           #thumb:Landroid/graphics/Bitmap;
    :cond_4
    invoke-static {}, Lcom/lge/camera/util/BitmapManager;->instance()Lcom/lge/camera/util/BitmapManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/lge/camera/util/BitmapManager;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    goto :goto_1
.end method

.method public getLocationListener()[Lcom/lge/camera/listeners/LocationListener;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mLocationListeners:[Lcom/lge/camera/listeners/LocationListener;

    return-object v0
.end method

.method public getLocationManager()Landroid/location/LocationManager;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method public getMaxVideoDurationInMs()I
    .locals 1

    .prologue
    .line 356
    iget v0, p0, Lcom/lge/camera/CamcorderMediator;->mMaxVideoDurationInMs:I

    return v0
.end method

.method public bridge synthetic getPreviewController()Lcom/lge/camera/controller/PreviewController;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getPreviewController()Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    move-result-object v0

    return-object v0
.end method

.method public getPreviewController()Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    check-cast v0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    return-object v0
.end method

.method public bridge synthetic getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getPreviewPanelController()Lcom/lge/camera/controller/camcorder/CamcorderPreviewPanelController;

    move-result-object v0

    return-object v0
.end method

.method public getPreviewPanelController()Lcom/lge/camera/controller/camcorder/CamcorderPreviewPanelController;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    check-cast v0, Lcom/lge/camera/controller/camcorder/CamcorderPreviewPanelController;

    return-object v0
.end method

.method public getQueueCount()I
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mLiveSnapshotSaver:Lcom/lge/camera/CamcorderMediator$LiveSnapshotSaver;

    if-eqz v0, :cond_0

    .line 596
    iget v0, p0, Lcom/lge/camera/CamcorderMediator;->count:I

    .line 598
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getQuickFunctionController()Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController;

    move-result-object v0

    return-object v0
.end method

.method public getQuickFunctionController()Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    check-cast v0, Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController;

    return-object v0
.end method

.method public getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mRecordingController:Lcom/lge/camera/controller/camcorder/RecordingController;

    return-object v0
.end method

.method public getRequestedVideoSizeLimit()J
    .locals 2

    .prologue
    .line 352
    iget-wide v0, p0, Lcom/lge/camera/CamcorderMediator;->mRequestedSizeLimit:J

    return-wide v0
.end method

.method public getSettingMenu()Lcom/lge/camera/setting/SettingMenu;
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingController;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v0

    return-object v0
.end method

.method public hideLiveSnapshotButton()V
    .locals 1

    .prologue
    .line 481
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isAvailableLiveShot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    const-string v0, "com.lge.camera.command.HideLiveSnapshotButton"

    invoke-virtual {p0, v0}, Lcom/lge/camera/CamcorderMediator;->doCommandUi(Ljava/lang/String;)V

    .line 485
    :cond_0
    return-void
.end method

.method public hideOsd()V
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/camera/CamcorderMediator;->hideOsd(Z)V

    .line 147
    return-void
.end method

.method public hideOsd(Z)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionController;->hide()V

    .line 153
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/FocusController;->hideFocus()Z

    .line 154
    return-void
.end method

.method public hideOsdByForce()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionController;->hideControlsByForce()V

    .line 158
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/FocusController;->hideFocus()Z

    .line 159
    return-void
.end method

.method public initControllers()V
    .locals 2

    .prologue
    .line 100
    invoke-super {p0}, Lcom/lge/camera/Mediator;->initControllers()V

    .line 101
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mRecordingController:Lcom/lge/camera/controller/camcorder/RecordingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->initController()V

    .line 103
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mLocationManager:Landroid/location/LocationManager;

    .line 105
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    const-string v1, "key_camera_tag_location"

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/SettingController;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/Mediator;->mRecordLocation:Z

    .line 108
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->mRecordLocation:Z

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->startReceivingLocationUpdates()V

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/Mediator;->mRecordLocation:Z

    goto :goto_0
.end method

.method public isAttachIntent()Z
    .locals 2

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 404
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isAttachMode()Z
    .locals 4

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v2

    const-string v3, "key_preview_size_on_device"

    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 393
    .local v1, videoSize:Ljava/lang/String;
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getMmsResolutionsLength()I

    move-result v2

    if-nez v2, :cond_1

    .line 394
    const/4 v0, 0x0

    .line 399
    .local v0, isMmsVideoSetting:Z
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->isAttachIntent()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 396
    .end local v0           #isMmsVideoSetting:Z
    :cond_1
    invoke-static {v1}, Lcom/lge/camera/properties/ProjectVariables;->isAvailableMmsResolution(Ljava/lang/String;)Z

    move-result v0

    .restart local v0       #isMmsVideoSetting:Z
    goto :goto_0

    .line 399
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isMMSIntent()Z
    .locals 6

    .prologue
    .line 408
    const/4 v3, 0x0

    .line 409
    .local v3, isMMScalling:Z
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 410
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, callingPackage:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 413
    const-string v4, "MMSAttach"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    .line 415
    :cond_0
    const-string v4, "intentFrom"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 416
    .local v2, intentFrom:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 417
    const-string v4, "MMSAttach"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    .line 423
    .end local v2           #intentFrom:Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_2

    const-string v4, "com.android.mms"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 424
    const/4 v3, 0x1

    .line 427
    :cond_2
    return v3
.end method

.method public isMMSRecording()Z
    .locals 1

    .prologue
    .line 431
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->isMMSIntent()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->isAttachIntent()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->isAttachMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 167
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/lge/camera/listeners/LocationListener;

    const/4 v1, 0x0

    new-instance v2, Lcom/lge/camera/listeners/LocationListener;

    const-string v3, "gps"

    invoke-direct {v2, p0, v3}, Lcom/lge/camera/listeners/LocationListener;-><init>(Lcom/lge/camera/Mediator;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/lge/camera/listeners/LocationListener;

    const-string v3, "network"

    invoke-direct {v2, p0, v3}, Lcom/lge/camera/listeners/LocationListener;-><init>(Lcom/lge/camera/Mediator;Ljava/lang/String;)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mLocationListeners:[Lcom/lge/camera/listeners/LocationListener;

    .line 172
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->createControllers()V

    .line 173
    invoke-super {p0}, Lcom/lge/camera/Mediator;->onCreate()V

    .line 174
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 224
    const-string v0, "CameraApp"

    const-string v1, "onDestroy()-start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iput-object v2, p0, Lcom/lge/camera/CamcorderMediator;->mLocationListeners:[Lcom/lge/camera/listeners/LocationListener;

    .line 227
    iput-object v2, p0, Lcom/lge/camera/CamcorderMediator;->mCaptureData:[B

    .line 228
    invoke-super {p0}, Lcom/lge/camera/Mediator;->onDestroy()V

    .line 229
    const-string v0, "CameraApp"

    const-string v1, "onDestroy()-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 234
    const-string v0, "CameraApp"

    const-string v1, "onPause()-start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->onPause()V

    .line 238
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getFocusController()Lcom/lge/camera/controller/camcorder/CamcorderFocusController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 239
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getFocusController()Lcom/lge/camera/controller/camcorder/CamcorderFocusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/CamcorderFocusController;->onPause()V

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mLiveSnapshotSaver:Lcom/lge/camera/CamcorderMediator$LiveSnapshotSaver;

    if-eqz v0, :cond_2

    .line 243
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mLiveSnapshotSaver:Lcom/lge/camera/CamcorderMediator$LiveSnapshotSaver;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator$LiveSnapshotSaver;->finish()V

    .line 244
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mLiveSnapshotSaver:Lcom/lge/camera/CamcorderMediator$LiveSnapshotSaver;

    .line 247
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->stopReceivingLocationUpdates()V

    .line 249
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->StopHeatingwarning()V

    .line 251
    invoke-super {p0}, Lcom/lge/camera/Mediator;->onPause()V

    .line 252
    const-string v0, "CameraApp"

    const-string v1, "onPause()-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 178
    new-instance v1, Lcom/lge/camera/CamcorderMediator$LiveSnapshotSaver;

    invoke-direct {v1, p0}, Lcom/lge/camera/CamcorderMediator$LiveSnapshotSaver;-><init>(Lcom/lge/camera/CamcorderMediator;)V

    iput-object v1, p0, Lcom/lge/camera/CamcorderMediator;->mLiveSnapshotSaver:Lcom/lge/camera/CamcorderMediator$LiveSnapshotSaver;

    .line 179
    invoke-super {p0}, Lcom/lge/camera/Mediator;->onResume()V

    .line 181
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getVideoState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 182
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->isAttachIntent()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->isMMSIntent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 183
    :cond_0
    const-string v1, "com.lge.camera.command.DisplayCamcorderPostview"

    invoke-virtual {p0, v1}, Lcom/lge/camera/CamcorderMediator;->doCommand(Ljava/lang/String;)V

    .line 220
    :goto_0
    return-void

    .line 184
    :cond_1
    const-string v1, "key_video_auto_review"

    invoke-virtual {p0, v1}, Lcom/lge/camera/CamcorderMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 185
    const-string v1, "com.lge.camera.command.DisplayPreview"

    invoke-virtual {p0, v1}, Lcom/lge/camera/CamcorderMediator;->doCommand(Ljava/lang/String;)V

    goto :goto_0

    .line 187
    :cond_2
    const-string v1, "com.lge.camera.command.DisplayCamcorderPostview"

    invoke-virtual {p0, v1}, Lcom/lge/camera/CamcorderMediator;->doCommand(Ljava/lang/String;)V

    goto :goto_0

    .line 192
    :cond_3
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/Camcorder;

    invoke-virtual {v1}, Lcom/lge/camera/Camcorder;->getPostviewRequestCode()I

    move-result v0

    .line 193
    .local v0, requestCode:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 194
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->doAttach()V

    .line 195
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/Camcorder;

    invoke-virtual {v1}, Lcom/lge/camera/Camcorder;->setPostviewRequestInitCode()V

    goto :goto_0

    .line 199
    :cond_4
    new-instance v1, Lcom/lge/camera/CamcorderMediator$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/CamcorderMediator$1;-><init>(Lcom/lge/camera/CamcorderMediator;)V

    invoke-virtual {p0, v1}, Lcom/lge/camera/CamcorderMediator;->postOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public readVideoIntentExtras()V
    .locals 15

    .prologue
    const-wide/16 v13, 0x7800

    const-wide/16 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 261
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 262
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "android.intent.extra.videoQuality"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 263
    const-string v4, "android.intent.extra.videoQuality"

    invoke-virtual {v2, v4, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 264
    .local v0, extraVideoQuality:I
    const-string v4, "CameraApp"

    const-string v5, "extra video quality request: %d"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    .end local v0           #extraVideoQuality:I
    :cond_0
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 268
    .local v1, getExBundle:Landroid/os/Bundle;
    if-nez v1, :cond_3

    .line 269
    const-string v4, "CameraApp"

    const-string v5, "intent.getExtras() is null. assume no limit."

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iput-wide v11, p0, Lcom/lge/camera/CamcorderMediator;->mRequestedSizeLimit:J

    .line 280
    :cond_1
    :goto_0
    const-string v4, "CameraApp"

    const-string v5, "reduced safe filesize limit: %d"

    new-array v6, v10, [Ljava/lang/Object;

    iget-wide v7, p0, Lcom/lge/camera/CamcorderMediator;->mRequestedSizeLimit:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-wide v4, p0, Lcom/lge/camera/CamcorderMediator;->mRequestedSizeLimit:J

    cmp-long v4, v4, v11

    if-nez v4, :cond_2

    const-string v4, "android.intent.extra.durationLimit"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 285
    const-string v4, "android.intent.extra.durationLimit"

    invoke-virtual {v2, v4, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 286
    .local v3, seconds:I
    const-string v4, "CameraApp"

    const-string v5, "duration limit: %d"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    mul-int/lit16 v4, v3, 0x3e8

    iput v4, p0, Lcom/lge/camera/CamcorderMediator;->mMaxVideoDurationInMs:I

    .line 293
    .end local v3           #seconds:I
    :cond_2
    return-void

    .line 272
    :cond_3
    const-string v4, "android.intent.extra.sizeLimit"

    invoke-virtual {v1, v4, v11, v12}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/lge/camera/CamcorderMediator;->mRequestedSizeLimit:J

    .line 273
    const-string v4, "CameraApp"

    const-string v5, "requested file size limit: %d"

    new-array v6, v10, [Ljava/lang/Object;

    iget-wide v7, p0, Lcom/lge/camera/CamcorderMediator;->mRequestedSizeLimit:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isB2Model()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 275
    iget-wide v4, p0, Lcom/lge/camera/CamcorderMediator;->mRequestedSizeLimit:J

    cmp-long v4, v4, v11

    if-eqz v4, :cond_1

    iget-wide v4, p0, Lcom/lge/camera/CamcorderMediator;->mRequestedSizeLimit:J

    cmp-long v4, v4, v13

    if-gez v4, :cond_1

    .line 276
    iput-wide v13, p0, Lcom/lge/camera/CamcorderMediator;->mRequestedSizeLimit:J

    goto :goto_0
.end method

.method public saveLiveSnapshot([BLandroid/graphics/Bitmap;)Z
    .locals 2
    .parameter "jpegData"
    .parameter "bitmap"

    .prologue
    .line 585
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mLiveSnapshotSaver:Lcom/lge/camera/CamcorderMediator$LiveSnapshotSaver;

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mLiveSnapshotSaver:Lcom/lge/camera/CamcorderMediator$LiveSnapshotSaver;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/CamcorderMediator$LiveSnapshotSaver;->addImage([BLandroid/graphics/Bitmap;)Z

    move-result v0

    .line 589
    :goto_0
    return v0

    .line 588
    :cond_0
    const-string v0, "CameraApp"

    const-string v1, "ImageSave is null!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public savePicture([BLandroid/graphics/Bitmap;)Z
    .locals 14
    .parameter "data"
    .parameter "bitmap"

    .prologue
    .line 490
    const/4 v13, 0x0

    .line 491
    .local v13, ret:Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 492
    .local v3, dateTaken:J
    const-string v0, "CameraApp"

    const-string v1, "Camcorder savePicture()-start "

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    const/4 v6, 0x0

    .line 494
    .local v6, path:Ljava/lang/String;
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/StorageController;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v6

    .line 496
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getDeviceDegree()I

    move-result v0

    iput v0, p0, Lcom/lge/camera/Mediator;->mImageRotationDegree:I

    .line 514
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetCarrierCode()I

    move-result v11

    .line 515
    .local v11, CarrierCode:I
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Camcorder savePicture()-CarrierCode: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    const/4 v2, 0x0

    .line 518
    .local v2, fileName:Ljava/lang/String;
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFileHelper:Lcom/lge/camera/util/FileNamingHelper;

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFileHelper:Lcom/lge/camera/util/FileNamingHelper;

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0, v1, v5, v7, v8}, Lcom/lge/camera/util/FileNamingHelper;->getFileName(IZZI)Ljava/lang/String;

    move-result-object v2

    .line 522
    :cond_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "savePicture >  fileName :"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    if-nez v2, :cond_1

    .line 525
    const-string v0, "CameraApp"

    const-string v1, "error get file name!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    const/4 v0, 0x0

    .line 568
    :goto_0
    return v0

    .line 530
    :cond_1
    :try_start_0
    const-string v0, "CameraApp"

    const-string v1, "imageHandler.addImage-start "

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    iget-object v0, p0, Lcom/lge/camera/Mediator;->imageHandler:Lcom/lge/camera/util/ImageHandler;

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getCurrentLocation()Landroid/location/Location;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v10, p0, Lcom/lge/camera/Mediator;->mImageRotationDegree:I

    move-object/from16 v8, p2

    move-object v9, p1

    invoke-virtual/range {v0 .. v10}, Lcom/lge/camera/util/ImageHandler;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[BI)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    .line 551
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    .line 552
    const/4 v13, 0x1

    .line 558
    :cond_2
    :goto_1
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "imageHandler.addImage-end "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    if-eqz v13, :cond_3

    .line 561
    iput-object v2, p0, Lcom/lge/camera/Mediator;->mSavedFileName:Ljava/lang/String;

    .line 562
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/lge/camera/util/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 565
    :cond_3
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getStorageController()Lcom/lge/camera/controller/StorageController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/StorageController;->checkStorage(Z)V

    .line 567
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Camcorder savePicture()-end, return "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v13

    .line 568
    goto/16 :goto_0

    .line 554
    :catch_0
    move-exception v12

    .line 555
    .local v12, ex:Ljava/lang/Exception;
    const-string v0, "CameraApp"

    const-string v1, "Exception while compressing liveSnapshot image."

    invoke-static {v0, v1, v12}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 556
    const/4 v13, 0x0

    goto :goto_1
.end method

.method public setBackKeyRecStop(Z)V
    .locals 0
    .parameter "con"

    .prologue
    .line 435
    iput-boolean p1, p0, Lcom/lge/camera/CamcorderMediator;->mBackKeyRecStop:Z

    .line 436
    return-void
.end method

.method public setCaptureData([B)V
    .locals 0
    .parameter "data"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/lge/camera/CamcorderMediator;->mCaptureData:[B

    .line 122
    return-void
.end method

.method public showLiveSnapshotButton()V
    .locals 1

    .prologue
    .line 474
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isAvailableLiveShot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    const-string v0, "com.lge.camera.command.ShowLiveSnapshotButton"

    invoke-virtual {p0, v0}, Lcom/lge/camera/CamcorderMediator;->doCommandUi(Ljava/lang/String;)V

    .line 478
    :cond_0
    return-void
.end method

.method public showOsd()V
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/camera/CamcorderMediator;->showOsd(Z)V

    .line 137
    return-void
.end method

.method public showOsd(Z)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionController;->show()V

    .line 141
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/IndicatorController;->show()V

    .line 142
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getFocusController()Lcom/lge/camera/controller/camcorder/CamcorderFocusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/CamcorderFocusController;->showFocus()Z

    .line 143
    return-void
.end method

.method public showRequestedSizeLimit()V
    .locals 10

    .prologue
    const v9, 0x7f0b01eb

    const/16 v8, 0x32

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 296
    const-string v1, ""

    .line 297
    .local v1, notifyMsg:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->isAttachIntent()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 298
    iget-wide v2, p0, Lcom/lge/camera/CamcorderMediator;->mRequestedSizeLimit:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 300
    invoke-virtual {p0, v9}, Lcom/lge/camera/CamcorderMediator;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 302
    :try_start_0
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getToastController()Lcom/lge/camera/controller/ToastController;

    move-result-object v2

    const-wide/16 v3, 0x1388

    invoke-virtual {v2, v1, v3, v4}, Lcom/lge/camera/controller/ToastController;->show(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not provided this language in AT&T :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 311
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    invoke-virtual {p0, v9}, Lcom/lge/camera/CamcorderMediator;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 313
    :try_start_1
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getToastController()Lcom/lge/camera/controller/ToastController;

    move-result-object v2

    const-wide/16 v3, 0x1388

    invoke-virtual {v2, v1, v3, v4}, Lcom/lge/camera/controller/ToastController;->show(Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 315
    :catch_1
    move-exception v0

    .line 316
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not provided this language in AT&T :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startReceivingLocationUpdates()V
    .locals 8

    .prologue
    .line 760
    const-string v0, "CameraApp"

    const-string v1, "startReceivingLocationUpdates()"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    const-string v1, "key_camera_tag_location"

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/SettingController;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 785
    :cond_0
    :goto_0
    return-void

    .line 766
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 768
    :try_start_0
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/lge/camera/CamcorderMediator;->mLocationListeners:[Lcom/lge/camera/listeners/LocationListener;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 776
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/lge/camera/CamcorderMediator;->mLocationListeners:[Lcom/lge/camera/listeners/LocationListener;

    const/4 v7, 0x0

    aget-object v5, v5, v7

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    .line 783
    :goto_2
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getIndicatorController()Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->updateGpsIndicator()V

    goto :goto_0

    .line 769
    :catch_0
    move-exception v6

    .line 770
    .local v6, ex:Ljava/lang/SecurityException;
    const-string v0, "CameraApp"

    const-string v1, "fail to request location update, ignore"

    invoke-static {v0, v1, v6}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 771
    .end local v6           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v6

    .line 772
    .local v6, ex:Ljava/lang/IllegalArgumentException;
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "provider does not exist "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 777
    .end local v6           #ex:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v6

    .line 778
    .local v6, ex:Ljava/lang/SecurityException;
    const-string v0, "CameraApp"

    const-string v1, "fail to request location update, ignore"

    invoke-static {v0, v1, v6}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 779
    .end local v6           #ex:Ljava/lang/SecurityException;
    :catch_3
    move-exception v6

    .line 780
    .local v6, ex:Ljava/lang/IllegalArgumentException;
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "provider does not exist "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public stopReceivingLocationUpdates()V
    .locals 4

    .prologue
    .line 788
    const-string v2, "CameraApp"

    const-string v3, "stopReceivingLocationUpdates"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    iget-object v2, p0, Lcom/lge/camera/CamcorderMediator;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v2, :cond_1

    .line 790
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/lge/camera/CamcorderMediator;->mLocationListeners:[Lcom/lge/camera/listeners/LocationListener;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 792
    :try_start_0
    iget-object v2, p0, Lcom/lge/camera/CamcorderMediator;->mLocationManager:Landroid/location/LocationManager;

    iget-object v3, p0, Lcom/lge/camera/CamcorderMediator;->mLocationListeners:[Lcom/lge/camera/listeners/LocationListener;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 790
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 793
    :catch_0
    move-exception v0

    .line 794
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "CameraApp"

    const-string v3, "fail to remove location listners, ignore"

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 798
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getIndicatorController()Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->updateGpsIndicator()V

    .line 800
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method public waitSaveImageTreadDone()V
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mLiveSnapshotSaver:Lcom/lge/camera/CamcorderMediator$LiveSnapshotSaver;

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/lge/camera/CamcorderMediator;->mLiveSnapshotSaver:Lcom/lge/camera/CamcorderMediator$LiveSnapshotSaver;

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator$LiveSnapshotSaver;->waitDone()V

    .line 582
    :cond_0
    return-void
.end method
