.class public Lcom/lge/camera/controller/camcorder/CamcorderStorageController;
.super Lcom/lge/camera/controller/StorageController;
.source "CamcorderStorageController.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/StorageController;-><init>(Lcom/lge/camera/Mediator;)V

    .line 17
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/controller/camcorder/CamcorderStorageController;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/camera/controller/camcorder/CamcorderStorageController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget v0, p0, Lcom/lge/camera/controller/StorageController;->mStorageState:I

    return v0
.end method

.method static synthetic access$200(Lcom/lge/camera/controller/camcorder/CamcorderStorageController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget v0, p0, Lcom/lge/camera/controller/StorageController;->mStorageState:I

    return v0
.end method

.method private getAverageSpace(II)J
    .locals 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 105
    mul-int v2, p1, p2

    int-to-long v0, v2

    .line 106
    .local v0, resolution:J
    const-wide/32 v2, 0x1fe000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 107
    const-wide/16 v2, 0x3

    mul-long/2addr v2, v0

    .line 113
    :goto_0
    return-wide v2

    .line 108
    :cond_0
    const-wide/32 v2, 0x4b000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    .line 109
    const-wide/16 v2, 0x4

    mul-long/2addr v2, v0

    goto :goto_0

    .line 110
    :cond_1
    const-wide/32 v2, 0x12c00

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    .line 111
    const-wide/16 v2, 0xd

    mul-long/2addr v2, v0

    goto :goto_0

    .line 113
    :cond_2
    const-wide/16 v2, 0x23

    mul-long/2addr v2, v0

    goto :goto_0
.end method


# virtual methods
.method public checkStorage()V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/camcorder/CamcorderStorageController;->checkStorage(Z)V

    .line 119
    return-void
.end method

.method public checkStorage(Z)V
    .locals 13
    .parameter "showToast"

    .prologue
    .line 32
    const-string v8, "CameraApp"

    const-string v9, "checkstorage(%b)"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const/4 v3, 0x0

    .line 35
    .local v3, mIsHaveEnoughFreeSpace:Z
    const-wide/16 v1, -0x1

    .line 36
    .local v1, mExternalFreeSpace:J
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderStorageController;->getCurrentStorageState()Ljava/lang/String;

    move-result-object v7

    .line 37
    .local v7, state:Ljava/lang/String;
    iget v4, p0, Lcom/lge/camera/controller/StorageController;->mStorageState:I

    .line 38
    .local v4, oldStorageState:I
    const-string v8, "CameraApp"

    const-string v9, "external storage state: %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0, v7}, Lcom/lge/camera/controller/camcorder/CamcorderStorageController;->isStorageReady(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderStorageController;->checkFsWritable()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 41
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderStorageController;->getFreeSpace()J

    move-result-wide v1

    .line 42
    sget-wide v8, Lcom/lge/camera/properties/CameraConstants;->VIDEO_LOW_STORAGE_THRESHOLD:J

    const-wide/32 v10, 0x80000

    add-long/2addr v8, v10

    cmp-long v8, v1, v8

    if-lez v8, :cond_0

    .line 43
    const/4 v3, 0x1

    .line 45
    :cond_0
    const-string v8, "CameraApp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mExternalFreeSpace="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mIsHaveEnoughFreeSpace="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_1
    if-eqz v3, :cond_6

    .line 49
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderStorageController;->isMediaScanning()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 50
    const/4 v8, 0x3

    iput v8, p0, Lcom/lge/camera/controller/StorageController;->mStorageState:I

    .line 75
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderStorageController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lge/camera/CamcorderMediator;->getFileHelper()Lcom/lge/camera/util/FileNamingHelper;

    move-result-object v0

    .line 76
    .local v0, fileNamingHelper:Lcom/lge/camera/util/FileNamingHelper;
    if-eqz v0, :cond_2

    .line 77
    iget v8, p0, Lcom/lge/camera/controller/StorageController;->mStorageState:I

    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderStorageController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lge/camera/CamcorderMediator;->getApplicationMode()I

    move-result v9

    invoke-virtual {v0, v8, v9}, Lcom/lge/camera/util/FileNamingHelper;->setStorageState(II)V

    .line 80
    :cond_2
    iget-boolean v8, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v8}, Lcom/lge/camera/Mediator;->isPausing()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 102
    :cond_3
    :goto_1
    return-void

    .line 52
    .end local v0           #fileNamingHelper:Lcom/lge/camera/util/FileNamingHelper;
    :cond_4
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderStorageController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v8

    const-string v9, "key_preview_size_on_device"

    invoke-virtual {v8, v9}, Lcom/lge/camera/CamcorderMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 53
    .local v6, sizeString:Ljava/lang/String;
    invoke-static {v6}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v5

    .line 54
    .local v5, size:[I
    const/4 v8, 0x0

    aget v8, v5, v8

    const/4 v9, 0x1

    aget v9, v5, v9

    invoke-direct {p0, v8, v9}, Lcom/lge/camera/controller/camcorder/CamcorderStorageController;->getAverageSpace(II)J

    move-result-wide v8

    sget-wide v10, Lcom/lge/camera/properties/CameraConstants;->VIDEO_LOW_STORAGE_THRESHOLD:J

    add-long/2addr v8, v10

    const-wide/32 v10, 0x80000

    add-long/2addr v8, v10

    cmp-long v8, v1, v8

    if-lez v8, :cond_5

    .line 55
    const/4 v8, 0x0

    iput v8, p0, Lcom/lge/camera/controller/StorageController;->mStorageState:I

    goto :goto_0

    .line 57
    :cond_5
    const/4 v8, 0x2

    iput v8, p0, Lcom/lge/camera/controller/StorageController;->mStorageState:I

    goto :goto_0

    .line 59
    .end local v5           #size:[I
    .end local v6           #sizeString:Ljava/lang/String;
    :cond_6
    const-wide/16 v8, -0x1

    cmp-long v8, v1, v8

    if-nez v8, :cond_a

    .line 60
    invoke-virtual {p0, v7}, Lcom/lge/camera/controller/camcorder/CamcorderStorageController;->isStorageReadOnly(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 61
    const/4 v8, 0x1

    iput v8, p0, Lcom/lge/camera/controller/StorageController;->mStorageState:I

    goto :goto_0

    .line 64
    :cond_7
    const-string v8, "mounted"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "checking"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 66
    :cond_8
    const/4 v8, 0x3

    iput v8, p0, Lcom/lge/camera/controller/StorageController;->mStorageState:I

    goto :goto_0

    .line 68
    :cond_9
    const/4 v8, 0x1

    iput v8, p0, Lcom/lge/camera/controller/StorageController;->mStorageState:I

    goto :goto_0

    .line 72
    :cond_a
    const/4 v8, 0x2

    iput v8, p0, Lcom/lge/camera/controller/StorageController;->mStorageState:I

    goto :goto_0

    .line 84
    .restart local v0       #fileNamingHelper:Lcom/lge/camera/util/FileNamingHelper;
    :cond_b
    iget-object v8, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    new-instance v9, Lcom/lge/camera/controller/camcorder/CamcorderStorageController$1;

    invoke-direct {v9, p0}, Lcom/lge/camera/controller/camcorder/CamcorderStorageController$1;-><init>(Lcom/lge/camera/controller/camcorder/CamcorderStorageController;)V

    invoke-virtual {v8, v9}, Lcom/lge/camera/Mediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 96
    const-string v8, "CameraApp"

    const-string v9, "mStorageState: %d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, p0, Lcom/lge/camera/controller/StorageController;->mStorageState:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v8, "CameraApp"

    const-string v9, "show hint:%b, state %d -> %d"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    iget v12, p0, Lcom/lge/camera/controller/StorageController;->mStorageState:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    if-nez p1, :cond_c

    iget v8, p0, Lcom/lge/camera/controller/StorageController;->mStorageState:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    .line 100
    :cond_c
    iget v8, p0, Lcom/lge/camera/controller/StorageController;->mStorageState:I

    invoke-virtual {p0, v8}, Lcom/lge/camera/controller/camcorder/CamcorderStorageController;->showStorageHint(I)V

    goto/16 :goto_1
.end method

.method protected getMediator()Lcom/lge/camera/CamcorderMediator;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v0, Lcom/lge/camera/CamcorderMediator;

    return-object v0
.end method

.method protected bridge synthetic getMediator()Lcom/lge/camera/Mediator;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderStorageController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    return-object v0
.end method

.method public initController()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 25
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_0

    .line 26
    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/camcorder/CamcorderStorageController;->checkStorage(Z)V

    .line 27
    iput-boolean v1, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    .line 29
    :cond_0
    return-void
.end method

.method public isEnoughWorkingStorage(I)Z
    .locals 12
    .parameter "storageType"

    .prologue
    .line 130
    const-string v7, "CameraApp"

    const-string v8, "isEnoughWorkingStorage(%d)"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const/4 v3, 0x0

    .line 132
    .local v3, result:Z
    const/4 v2, 0x0

    .line 133
    .local v2, isHaveEnoughFreeSpace:Z
    const-wide/16 v0, -0x1

    .line 135
    .local v0, freeSpace:J
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/camcorder/CamcorderStorageController;->getStorageState(I)Ljava/lang/String;

    move-result-object v6

    .line 136
    .local v6, state:Ljava/lang/String;
    const-string v7, "CameraApp"

    const-string v8, "storage(%d) state: %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v6, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0, v6}, Lcom/lge/camera/controller/camcorder/CamcorderStorageController;->isStorageReady(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 139
    const-wide/16 v0, -0x1

    .line 154
    :goto_0
    if-eqz v2, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/CamcorderStorageController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v7

    const-string v8, "key_preview_size_on_device"

    invoke-virtual {v7, v8}, Lcom/lge/camera/CamcorderMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 156
    .local v5, sizeString:Ljava/lang/String;
    invoke-static {v5}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v4

    .line 157
    .local v4, size:[I
    const/4 v7, 0x0

    aget v7, v4, v7

    const/4 v8, 0x1

    aget v8, v4, v8

    invoke-direct {p0, v7, v8}, Lcom/lge/camera/controller/camcorder/CamcorderStorageController;->getAverageSpace(II)J

    move-result-wide v7

    sget-wide v9, Lcom/lge/camera/properties/CameraConstants;->VIDEO_LOW_STORAGE_THRESHOLD:J

    add-long/2addr v7, v9

    const-wide/32 v9, 0x80000

    add-long/2addr v7, v9

    cmp-long v7, v0, v7

    if-lez v7, :cond_4

    .line 158
    const/4 v3, 0x1

    .line 163
    .end local v4           #size:[I
    .end local v5           #sizeString:Ljava/lang/String;
    :cond_0
    :goto_1
    return v3

    .line 141
    :cond_1
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/camcorder/CamcorderStorageController;->checkFsWritable(I)Z

    move-result v7

    if-nez v7, :cond_3

    .line 142
    const-wide/16 v0, -0x1

    .line 151
    :cond_2
    :goto_2
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "freeSpace="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " isHaveEnoughFreeSpace="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :cond_3
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/camcorder/CamcorderStorageController;->getFreeSpace(I)J

    move-result-wide v0

    .line 146
    sget-wide v7, Lcom/lge/camera/properties/CameraConstants;->VIDEO_LOW_STORAGE_THRESHOLD:J

    const-wide/32 v9, 0x80000

    add-long/2addr v7, v9

    cmp-long v7, v0, v7

    if-lez v7, :cond_2

    .line 147
    const/4 v2, 0x1

    goto :goto_2

    .line 160
    .restart local v4       #size:[I
    .restart local v5       #sizeString:Ljava/lang/String;
    :cond_4
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-eqz v0, :cond_0

    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/camcorder/CamcorderStorageController;->checkStorage(Z)V

    .line 126
    :cond_0
    invoke-super {p0}, Lcom/lge/camera/controller/StorageController;->onResume()V

    .line 127
    return-void
.end method
