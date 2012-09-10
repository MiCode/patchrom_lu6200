.class public Lcom/lge/camera/controller/camera/CameraStorageController;
.super Lcom/lge/camera/controller/StorageController;
.source "CameraStorageController.java"


# instance fields
.field mCameraMediator:Lcom/lge/camera/CameraMediator;

.field private mPicturesRemaining:J


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/StorageController;-><init>(Lcom/lge/camera/Mediator;)V

    .line 23
    check-cast p1, Lcom/lge/camera/CameraMediator;

    .end local p1
    iput-object p1, p0, Lcom/lge/camera/controller/camera/CameraStorageController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/controller/camera/CameraStorageController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget v0, p0, Lcom/lge/camera/controller/StorageController;->mStorageState:I

    return v0
.end method

.method static synthetic access$100(Lcom/lge/camera/controller/camera/CameraStorageController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget v0, p0, Lcom/lge/camera/controller/StorageController;->mStorageState:I

    return v0
.end method

.method static synthetic access$200(Lcom/lge/camera/controller/camera/CameraStorageController;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraStorageController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/camera/controller/camera/CameraStorageController;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraStorageController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/camera/controller/camera/CameraStorageController;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraStorageController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/camera/controller/camera/CameraStorageController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget v0, p0, Lcom/lge/camera/controller/StorageController;->mStorageState:I

    return v0
.end method

.method static synthetic access$600(Lcom/lge/camera/controller/camera/CameraStorageController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget v0, p0, Lcom/lge/camera/controller/StorageController;->mStorageState:I

    return v0
.end method

.method private calculateAvailablePictureCountInTargetStorage(I)J
    .locals 14
    .parameter "storageType"

    .prologue
    .line 125
    const-string v9, "CameraApp"

    const-string v10, "calculateAvailablePictureCountInTargetStorage(%d)"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-wide/16 v0, -0x1

    .line 127
    .local v0, freeSpace:J
    const/4 v2, 0x0

    .line 128
    .local v2, isHaveEnoughFreeSpace:Z
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/camera/CameraStorageController;->getStorageState(I)Ljava/lang/String;

    move-result-object v8

    .line 130
    .local v8, state:Ljava/lang/String;
    const-string v9, "CameraApp"

    const-string v10, "storage(%d) state: %s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v8, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0, v8}, Lcom/lge/camera/controller/camera/CameraStorageController;->isStorageReady(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 133
    const-wide/16 v0, -0x1

    .line 148
    :goto_0
    const-wide/16 v3, -0x1

    .line 149
    .local v3, pictureRemaining:J
    if-eqz v2, :cond_6

    .line 150
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraStorageController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v9

    const-string v10, "key_camera_picturesize"

    invoke-virtual {v9, v10}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 154
    .local v7, sizeString:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraStorageController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v9

    const-string v10, "key_camera_shot_mode"

    const-string v11, "shotmode_continuous"

    invoke-virtual {v9, v10, v11}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraStorageController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v9

    const-string v10, "key_camera_shot_mode"

    const-string v11, "shotmode_panorama"

    invoke-virtual {v9, v10, v11}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 156
    :cond_0
    iget-object v9, p0, Lcom/lge/camera/controller/camera/CameraStorageController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v9}, Lcom/lge/camera/CameraMediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v9

    const-string v10, "key_camera_shot_mode"

    invoke-virtual {v9, v10}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v5

    .line 157
    .local v5, shotModePref:Lcom/lge/camera/setting/ListPreference;
    invoke-virtual {v5}, Lcom/lge/camera/setting/ListPreference;->getExtraInfo()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v6

    .line 162
    .end local v5           #shotModePref:Lcom/lge/camera/setting/ListPreference;
    .local v6, size:[I
    :goto_1
    const/4 v9, 0x0

    aget v9, v6, v9

    const/4 v10, 0x1

    aget v10, v6, v10

    invoke-virtual {p0, v9, v10, v0, v1}, Lcom/lge/camera/controller/camera/CameraStorageController;->calculateRemainPictureCount(IIJ)J

    move-result-wide v3

    .line 163
    const-wide/16 v9, 0x0

    cmp-long v9, v3, v9

    if-gez v9, :cond_1

    .line 164
    const-wide/16 v3, 0x0

    .line 171
    .end local v6           #size:[I
    .end local v7           #sizeString:Ljava/lang/String;
    :cond_1
    :goto_2
    return-wide v3

    .line 135
    .end local v3           #pictureRemaining:J
    :cond_2
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/camera/CameraStorageController;->checkFsWritable(I)Z

    move-result v9

    if-nez v9, :cond_4

    .line 136
    const-wide/16 v0, -0x1

    .line 145
    :cond_3
    :goto_3
    const-string v9, "CameraApp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "freeSpace="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " isHaveEnoughFreeSpace="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :cond_4
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/camera/CameraStorageController;->getFreeSpace(I)J

    move-result-wide v0

    .line 140
    const-wide/32 v9, 0x1400000

    cmp-long v9, v0, v9

    if-lez v9, :cond_3

    .line 141
    const/4 v2, 0x1

    goto :goto_3

    .line 159
    .restart local v3       #pictureRemaining:J
    .restart local v7       #sizeString:Ljava/lang/String;
    :cond_5
    invoke-static {v7}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v6

    .restart local v6       #size:[I
    goto :goto_1

    .line 165
    .end local v6           #size:[I
    .end local v7           #sizeString:Ljava/lang/String;
    :cond_6
    const-wide/16 v9, -0x1

    cmp-long v9, v0, v9

    if-nez v9, :cond_7

    .line 166
    const-wide/16 v3, -0x1

    goto :goto_2

    .line 168
    :cond_7
    const-wide/16 v3, 0x0

    goto :goto_2
.end method

.method private getAverageSpace(II)D
    .locals 6
    .parameter "width"
    .parameter "height"

    .prologue
    .line 176
    mul-int v2, p1, p2

    int-to-double v2, v2

    const-wide v4, 0x3fd3333333333333L

    mul-double v0, v2, v4

    .line 178
    .local v0, averageSpace:D
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraStorageController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v2

    const-string v3, "key_camera_shot_mode"

    const-string v4, "shotmode_continuous"

    invoke-virtual {v2, v3, v4}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraStorageController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v2

    const-string v3, "key_camera_shot_mode"

    const-string v4, "shotmode_panorama"

    invoke-virtual {v2, v3, v4}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 180
    :cond_0
    const-wide v2, 0x3ff1c71c53f39d1bL

    mul-double/2addr v0, v2

    .line 188
    :goto_0
    return-wide v0

    .line 183
    :cond_1
    const-wide/high16 v2, 0x3fe0

    mul-double/2addr v0, v2

    goto :goto_0
.end method


# virtual methods
.method public calculateRemainPictureCount(IIJ)J
    .locals 9
    .parameter "width"
    .parameter "height"
    .parameter "freeSpace"

    .prologue
    .line 212
    const-wide/16 v2, 0x0

    .line 213
    .local v2, remain:J
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/controller/camera/CameraStorageController;->getAverageSpace(II)D

    move-result-wide v0

    .line 215
    .local v0, average:D
    const-wide/32 v4, 0x1400000

    sub-long v4, p3, v4

    long-to-double v4, v4

    div-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    .line 216
    const-string v4, "CameraApp"

    const-string v5, "picture count remained : %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    return-wide v2
.end method

.method public checkStorage(Z)V
    .locals 13
    .parameter "showToast"

    .prologue
    .line 34
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

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const/4 v3, 0x0

    .line 37
    .local v3, mIsHaveEnoughFreeSpace:Z
    const-wide/16 v1, -0x1

    .line 38
    .local v1, mExternalFreeSpace:J
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraStorageController;->getCurrentStorageState()Ljava/lang/String;

    move-result-object v7

    .line 40
    .local v7, state:Ljava/lang/String;
    const-string v8, "CameraApp"

    const-string v9, "external storage state: %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0, v7}, Lcom/lge/camera/controller/camera/CameraStorageController;->isStorageReady(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraStorageController;->checkFsWritable()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 43
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraStorageController;->getFreeSpace()J

    move-result-wide v1

    .line 44
    const-wide/32 v8, 0x1400000

    cmp-long v8, v1, v8

    if-lez v8, :cond_0

    .line 45
    const/4 v3, 0x1

    .line 47
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

    .line 50
    :cond_1
    if-eqz v3, :cond_8

    .line 51
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraStorageController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v8

    const-string v9, "key_camera_picturesize"

    invoke-virtual {v8, v9}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 55
    .local v6, sizeString:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraStorageController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v8

    const-string v9, "key_camera_shot_mode"

    const-string v10, "shotmode_continuous"

    invoke-virtual {v8, v9, v10}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraStorageController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v8

    const-string v9, "key_camera_shot_mode"

    const-string v10, "shotmode_panorama"

    invoke-virtual {v8, v9, v10}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 57
    :cond_2
    iget-object v8, p0, Lcom/lge/camera/controller/camera/CameraStorageController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v8}, Lcom/lge/camera/CameraMediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v8

    const-string v9, "key_camera_shot_mode"

    invoke-virtual {v8, v9}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v4

    .line 58
    .local v4, shotModePref:Lcom/lge/camera/setting/ListPreference;
    invoke-virtual {v4}, Lcom/lge/camera/setting/ListPreference;->getExtraInfo()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v5

    .line 63
    .end local v4           #shotModePref:Lcom/lge/camera/setting/ListPreference;
    .local v5, size:[I
    :goto_0
    const/4 v8, 0x0

    aget v8, v5, v8

    const/4 v9, 0x1

    aget v9, v5, v9

    invoke-virtual {p0, v8, v9, v1, v2}, Lcom/lge/camera/controller/camera/CameraStorageController;->calculateRemainPictureCount(IIJ)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/lge/camera/controller/camera/CameraStorageController;->mPicturesRemaining:J

    .line 65
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraStorageController;->isMediaScanning()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 66
    const/4 v8, 0x3

    iput v8, p0, Lcom/lge/camera/controller/StorageController;->mStorageState:I

    .line 93
    .end local v5           #size:[I
    .end local v6           #sizeString:Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraStorageController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lge/camera/Mediator;->getFileHelper()Lcom/lge/camera/util/FileNamingHelper;

    move-result-object v0

    .line 94
    .local v0, fileNamingHelper:Lcom/lge/camera/util/FileNamingHelper;
    if-eqz v0, :cond_3

    .line 95
    iget v8, p0, Lcom/lge/camera/controller/StorageController;->mStorageState:I

    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraStorageController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v9

    invoke-virtual {v0, v8, v9}, Lcom/lge/camera/util/FileNamingHelper;->setStorageState(II)V

    .line 98
    :cond_3
    iget-boolean v8, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/lge/camera/controller/camera/CameraStorageController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v8}, Lcom/lge/camera/CameraMediator;->isPausing()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 121
    :cond_4
    :goto_2
    return-void

    .line 60
    .end local v0           #fileNamingHelper:Lcom/lge/camera/util/FileNamingHelper;
    .restart local v6       #sizeString:Ljava/lang/String;
    :cond_5
    invoke-static {v6}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v5

    .restart local v5       #size:[I
    goto :goto_0

    .line 68
    :cond_6
    iget-wide v8, p0, Lcom/lge/camera/controller/camera/CameraStorageController;->mPicturesRemaining:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_7

    .line 69
    const/4 v8, 0x0

    iput v8, p0, Lcom/lge/camera/controller/StorageController;->mStorageState:I

    goto :goto_1

    .line 71
    :cond_7
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/lge/camera/controller/camera/CameraStorageController;->mPicturesRemaining:J

    .line 72
    const/4 v8, 0x2

    iput v8, p0, Lcom/lge/camera/controller/StorageController;->mStorageState:I

    goto :goto_1

    .line 75
    .end local v5           #size:[I
    .end local v6           #sizeString:Ljava/lang/String;
    :cond_8
    const-wide/16 v8, -0x1

    cmp-long v8, v1, v8

    if-nez v8, :cond_c

    .line 76
    const-wide/16 v8, -0x1

    iput-wide v8, p0, Lcom/lge/camera/controller/camera/CameraStorageController;->mPicturesRemaining:J

    .line 77
    invoke-virtual {p0, v7}, Lcom/lge/camera/controller/camera/CameraStorageController;->isStorageReadOnly(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 78
    const/4 v8, 0x1

    iput v8, p0, Lcom/lge/camera/controller/StorageController;->mStorageState:I

    goto :goto_1

    .line 81
    :cond_9
    const-string v8, "mounted"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    const-string v8, "checking"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 83
    :cond_a
    const/4 v8, 0x3

    iput v8, p0, Lcom/lge/camera/controller/StorageController;->mStorageState:I

    goto :goto_1

    .line 85
    :cond_b
    const/4 v8, 0x1

    iput v8, p0, Lcom/lge/camera/controller/StorageController;->mStorageState:I

    goto :goto_1

    .line 89
    :cond_c
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/lge/camera/controller/camera/CameraStorageController;->mPicturesRemaining:J

    .line 90
    const/4 v8, 0x2

    iput v8, p0, Lcom/lge/camera/controller/StorageController;->mStorageState:I

    goto :goto_1

    .line 102
    .restart local v0       #fileNamingHelper:Lcom/lge/camera/util/FileNamingHelper;
    :cond_d
    iget-object v8, p0, Lcom/lge/camera/controller/camera/CameraStorageController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    new-instance v9, Lcom/lge/camera/controller/camera/CameraStorageController$1;

    invoke-direct {v9, p0, p1}, Lcom/lge/camera/controller/camera/CameraStorageController$1;-><init>(Lcom/lge/camera/controller/camera/CameraStorageController;Z)V

    invoke-virtual {v8, v9}, Lcom/lge/camera/CameraMediator;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2
.end method

.method public getAvailablePictureCount()J
    .locals 2

    .prologue
    .line 192
    iget-wide v0, p0, Lcom/lge/camera/controller/camera/CameraStorageController;->mPicturesRemaining:J

    return-wide v0
.end method

.method public getAvailablePictureCount(I)J
    .locals 2
    .parameter "storageType"

    .prologue
    .line 196
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 197
    iget-wide v0, p0, Lcom/lge/camera/controller/camera/CameraStorageController;->mPicturesRemaining:J

    .line 199
    :goto_0
    return-wide v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/camera/CameraStorageController;->calculateAvailablePictureCountInTargetStorage(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public initController()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 27
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_0

    .line 28
    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/camera/CameraStorageController;->checkStorage(Z)V

    .line 29
    iput-boolean v1, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    .line 31
    :cond_0
    return-void
.end method

.method public isEnoughWorkingStorage(I)Z
    .locals 4
    .parameter "storageType"

    .prologue
    .line 222
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/camera/CameraStorageController;->getAvailablePictureCount(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 223
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-eqz v0, :cond_0

    .line 205
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/camera/CameraStorageController;->checkStorage(Z)V

    .line 207
    :cond_0
    invoke-super {p0}, Lcom/lge/camera/controller/StorageController;->onResume()V

    .line 208
    return-void
.end method
