.class public Lcom/lge/camera/VideoRecorder;
.super Ljava/lang/Object;
.source "VideoRecorder.java"


# static fields
.field private static final DEFAULT_DURATION:I = 0x6ddd00

.field public static final MMS:I = 0x1

#the value of this static final field might be set in the static constructor
.field private static final MMS_DURATION:I = 0x0

.field public static final NORMAL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CameraApp"

.field private static final VALUE_VIDEO_FPS:I = 0x1e

.field private static final VALUE_VIDEO_FPS_MMS:I = 0xf

.field private static mCameraDevice:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/hardware/Camera;",
            ">;"
        }
    .end annotation
.end field

.field private static mIsInitialized:Z

.field private static mIsRecording:Z

.field private static mMaxFileSize:J

.field private static mMediaRecorder:Landroid/media/MediaRecorder;

.field private static mOrientationHint:I

.field private static mPurpose:I

.field private static mVideoFile:Lcom/lge/camera/VideoFile;

.field private static maxDuration:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 27
    sput-object v0, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 28
    sput-object v0, Lcom/lge/camera/VideoRecorder;->mCameraDevice:Ljava/lang/ref/WeakReference;

    .line 29
    sput-boolean v2, Lcom/lge/camera/VideoRecorder;->mIsInitialized:Z

    .line 30
    sput-object v0, Lcom/lge/camera/VideoRecorder;->mVideoFile:Lcom/lge/camera/VideoFile;

    .line 31
    sput-boolean v2, Lcom/lge/camera/VideoRecorder;->mIsRecording:Z

    .line 32
    sput v2, Lcom/lge/camera/VideoRecorder;->mPurpose:I

    .line 33
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/lge/camera/VideoRecorder;->mMaxFileSize:J

    .line 34
    const/4 v0, -0x1

    sput v0, Lcom/lge/camera/VideoRecorder;->maxDuration:I

    .line 35
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetMMSMaxDuration()I

    move-result v0

    sput v0, Lcom/lge/camera/VideoRecorder;->MMS_DURATION:I

    .line 39
    sput v2, Lcom/lge/camera/VideoRecorder;->mOrientationHint:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMaxFileSize()J
    .locals 2

    .prologue
    .line 403
    sget-wide v0, Lcom/lge/camera/VideoRecorder;->mMaxFileSize:J

    return-wide v0
.end method

.method public static getOrientationHint()I
    .locals 1

    .prologue
    .line 399
    sget v0, Lcom/lge/camera/VideoRecorder;->mOrientationHint:I

    return v0
.end method

.method public static init(Lcom/lge/camera/CamcorderMediator;)Landroid/media/MediaRecorder;
    .locals 15
    .parameter "mediator"

    .prologue
    .line 115
    const/4 v4, 0x0

    .line 116
    .local v4, pref:Lcom/lge/camera/setting/ListPreference;
    const/4 v6, 0x0

    .line 118
    .local v6, sVideoBitrate:Ljava/lang/String;
    const-string v10, "CameraApp"

    const-string v11, "Camcorder(MediaRecorder) init()-start"

    invoke-static {v10, v11}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    sget-boolean v10, Lcom/lge/camera/VideoRecorder;->mIsInitialized:Z

    if-nez v10, :cond_c

    .line 121
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getPreviewController()Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v10

    if-nez v10, :cond_0

    .line 122
    const-string v10, "CameraApp"

    const-string v11, "Surface holder is null. Wait for surface changed."

    invoke-static {v10, v11}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const/4 v10, 0x0

    .line 310
    :goto_0
    return-object v10

    .line 126
    :cond_0
    sget-object v10, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v10, :cond_1

    .line 127
    const-string v10, "CameraApp"

    const-string v11, "Camcorder new MediaRecorder()"

    invoke-static {v10, v11}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    new-instance v10, Landroid/media/MediaRecorder;

    invoke-direct {v10}, Landroid/media/MediaRecorder;-><init>()V

    sput-object v10, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 131
    :cond_1
    new-instance v10, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v10, Lcom/lge/camera/VideoRecorder;->mCameraDevice:Ljava/lang/ref/WeakReference;

    .line 132
    sget-object v10, Lcom/lge/camera/VideoRecorder;->mCameraDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera;

    .line 133
    .local v0, camera:Landroid/hardware/Camera;
    if-eqz v0, :cond_d

    .line 134
    invoke-virtual {v0}, Landroid/hardware/Camera;->unlock()V

    .line 139
    sget-object v10, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v10, v0}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 141
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v5

    .line 142
    .local v5, prefGroup:Lcom/lge/camera/setting/PreferenceGroup;
    const-string v10, "key_video_audio_recording"

    invoke-virtual {v5, v10}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v4

    .line 144
    if-eqz v4, :cond_e

    invoke-virtual {v4}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v10

    const-string v11, "unmute"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 145
    const-string v10, "CameraApp"

    const-string v11, "AUDIO is unmute"

    invoke-static {v10, v11}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    sget-object v10, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v11, 0x5

    invoke-virtual {v10, v11}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 151
    :goto_1
    sget-object v10, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 152
    sget v10, Lcom/lge/camera/VideoRecorder;->mPurpose:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_f

    .line 153
    sget-object v10, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 158
    :goto_2
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getRecordLocation()Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getCurrentLocation()Landroid/location/Location;

    move-result-object v3

    .line 159
    .local v3, loc:Landroid/location/Location;
    :goto_3
    if-eqz v3, :cond_2

    .line 160
    sget-object v10, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v11

    double-to-float v11, v11

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v12

    double-to-float v12, v12

    invoke-virtual {v10, v11, v12}, Landroid/media/MediaRecorder;->setLocation(FF)V

    .line 164
    :cond_2
    const/4 v9, 0x0

    .line 165
    .local v9, videoSize:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getPreviewController()Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 166
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getPreviewController()Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->getPreviewSizeOnDevice()Ljava/lang/String;

    move-result-object v9

    .line 169
    :cond_3
    if-eqz v9, :cond_11

    .line 170
    invoke-static {v9}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v7

    .line 172
    .local v7, size:[I
    sget-object v10, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v11, 0x0

    aget v11, v7, v11

    const/4 v12, 0x1

    aget v12, v7, v12

    invoke-virtual {v10, v11, v12}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 173
    const-string v10, "CameraApp"

    const-string v11, "setVideoSize width = %d , hegiht = %d"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/4 v14, 0x0

    aget v14, v7, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x1

    aget v14, v7, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .end local v7           #size:[I
    :goto_4
    const/4 v4, 0x0

    .line 179
    const-string v10, "key_preview_size_on_device"

    invoke-virtual {v5, v10}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v4

    .line 181
    if-eqz v4, :cond_4

    .line 182
    invoke-virtual {v4}, Lcom/lge/camera/setting/ListPreference;->getExtraInfo2()Ljava/lang/String;

    move-result-object v6

    .line 185
    :cond_4
    const/4 v2, 0x0

    .line 186
    .local v2, iVideoBitrate:I
    if-eqz v6, :cond_5

    .line 187
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 190
    :cond_5
    sget v10, Lcom/lge/camera/VideoRecorder;->mPurpose:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_13

    .line 191
    sget-object v10, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const v11, 0x1f400

    invoke-virtual {v10, v11}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 193
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isOMAP4Chipset()Z

    move-result v10

    if-eqz v10, :cond_12

    .line 194
    sget-object v10, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v11, 0x1e

    invoke-virtual {v10, v11}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 207
    :goto_5
    const-string v10, "key_video_audio_recording"

    invoke-virtual {v5, v10}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v4

    .line 208
    if-eqz v4, :cond_19

    invoke-virtual {v4}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v10

    const-string v11, "unmute"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_19

    .line 209
    sget v10, Lcom/lge/camera/VideoRecorder;->mPurpose:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_15

    .line 210
    sget-object v10, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetMmsAudioEncodingType()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 212
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetMmsAudioEncodingType()I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_6

    .line 213
    sget-object v10, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const v11, 0xbb80

    invoke-virtual {v10, v11}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 214
    sget-object v10, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 215
    sget-object v10, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v11, 0x1f40

    invoke-virtual {v10, v11}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 218
    :cond_6
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetProjetCode()I

    move-result v10

    const/4 v11, 0x7

    if-eq v10, v11, :cond_7

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetProjetCode()I

    move-result v10

    const/4 v11, 0x5

    if-eq v10, v11, :cond_7

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetProjetCode()I

    move-result v10

    const/4 v11, 0x6

    if-eq v10, v11, :cond_7

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetProjetCode()I

    move-result v10

    const/16 v11, 0x15

    if-eq v10, v11, :cond_7

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isB2Model()Z

    move-result v10

    if-nez v10, :cond_7

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetProjetCode()I

    move-result v10

    const/16 v11, 0x21

    if-eq v10, v11, :cond_7

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetProjetCode()I

    move-result v10

    const/16 v11, 0x22

    if-ne v10, v11, :cond_8

    .line 226
    :cond_7
    sget-object v10, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v11, 0x2fa8

    invoke-virtual {v10, v11}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 227
    sget-object v10, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 228
    sget-object v10, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v11, 0x1f40

    invoke-virtual {v10, v11}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 252
    :cond_8
    :goto_6
    const/4 v4, 0x0

    .line 257
    :goto_7
    sget v10, Lcom/lge/camera/VideoRecorder;->mPurpose:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1a

    .line 258
    sget-object v10, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetMmsVideoEncodingType()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 264
    :goto_8
    sget-object v10, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    sget-wide v11, Lcom/lge/camera/VideoRecorder;->mMaxFileSize:J

    invoke-virtual {v10, v11, v12}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    .line 266
    sget v10, Lcom/lge/camera/VideoRecorder;->mPurpose:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1c

    .line 267
    const v10, 0x6ddd00

    sput v10, Lcom/lge/camera/VideoRecorder;->maxDuration:I

    .line 268
    sget v10, Lcom/lge/camera/VideoRecorder;->MMS_DURATION:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_1b

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->isMMSIntent()Z

    move-result v10

    if-nez v10, :cond_9

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/lge/camera/controller/camcorder/RecordingController;->needProgressBar()Z

    move-result v10

    if-eqz v10, :cond_1b

    .line 270
    :cond_9
    sget v10, Lcom/lge/camera/VideoRecorder;->MMS_DURATION:I

    sput v10, Lcom/lge/camera/VideoRecorder;->maxDuration:I

    .line 278
    :cond_a
    :goto_9
    sget-object v10, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    sget v11, Lcom/lge/camera/VideoRecorder;->maxDuration:I

    invoke-virtual {v10, v11}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 280
    sget-object v10, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getPreviewController()Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    move-result-object v11

    invoke-virtual {v11}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v11

    invoke-interface {v11}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    .line 282
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetUseVideoOrientationHint()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 283
    sget-object v10, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    sget v11, Lcom/lge/camera/VideoRecorder;->mOrientationHint:I

    invoke-virtual {v10, v11}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 286
    :cond_b
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/lge/camera/controller/camcorder/RecordingController;->getVideoFile()Lcom/lge/camera/VideoFile;

    move-result-object v8

    .line 287
    .local v8, videoFile:Lcom/lge/camera/VideoFile;
    if-eqz v8, :cond_1d

    invoke-virtual {v8}, Lcom/lge/camera/VideoFile;->isInitialized()Z

    move-result v10

    if-eqz v10, :cond_1d

    .line 288
    sput-object v8, Lcom/lge/camera/VideoRecorder;->mVideoFile:Lcom/lge/camera/VideoFile;

    .line 289
    sget-object v10, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v8}, Lcom/lge/camera/VideoFile;->getFileExternalPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 292
    :try_start_0
    sget-object v10, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v10}, Landroid/media/MediaRecorder;->prepare()V

    .line 293
    const-string v10, "CameraApp"

    const-string v11, "Media recorder initialized."

    invoke-static {v10, v11}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const/4 v10, 0x1

    sput-boolean v10, Lcom/lge/camera/VideoRecorder;->mIsInitialized:Z

    .line 295
    const-string v10, "CameraApp"

    const-string v11, "RECORDER_INIT_DONE"

    invoke-static {v10, v11}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 309
    .end local v0           #camera:Landroid/hardware/Camera;
    .end local v2           #iVideoBitrate:I
    .end local v3           #loc:Landroid/location/Location;
    .end local v5           #prefGroup:Lcom/lge/camera/setting/PreferenceGroup;
    .end local v8           #videoFile:Lcom/lge/camera/VideoFile;
    .end local v9           #videoSize:Ljava/lang/String;
    :cond_c
    :goto_a
    const-string v10, "CameraApp"

    const-string v11, "Camcorder(MediaRecorder) init()-end"

    invoke-static {v10, v11}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    sget-object v10, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    goto/16 :goto_0

    .line 137
    .restart local v0       #camera:Landroid/hardware/Camera;
    :cond_d
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 148
    .restart local v5       #prefGroup:Lcom/lge/camera/setting/PreferenceGroup;
    :cond_e
    const-string v10, "CameraApp"

    const-string v11, "AUDIO is mute"

    invoke-static {v10, v11}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 155
    :cond_f
    sget-object v10, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    goto/16 :goto_2

    .line 158
    :cond_10
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 175
    .restart local v3       #loc:Landroid/location/Location;
    .restart local v9       #videoSize:Ljava/lang/String;
    :cond_11
    const-string v10, "CameraApp"

    const-string v11, "error!! videoSize is null"

    invoke-static {v10, v11}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 196
    .restart local v2       #iVideoBitrate:I
    :cond_12
    sget-object v10, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v11, 0xf

    invoke-virtual {v10, v11}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    goto/16 :goto_5

    .line 199
    :cond_13
    sget-object v10, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v10, v2}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 200
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getCameraMode()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_14

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetProjetCode()I

    move-result v10

    const/16 v11, 0x15

    if-ne v10, v11, :cond_14

    .line 202
    sget-object v10, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v11, 0xf

    invoke-virtual {v10, v11}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    goto/16 :goto_5

    .line 204
    :cond_14
    sget-object v10, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v11, 0x1e

    invoke-virtual {v10, v11}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    goto/16 :goto_5

    .line 231
    :cond_15
    sget-object v10, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 232
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetProjetCode()I

    move-result v10

    const/4 v11, 0x7

    if-eq v10, v11, :cond_16

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetProjetCode()I

    move-result v10

    const/4 v11, 0x5

    if-eq v10, v11, :cond_16

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetProjetCode()I

    move-result v10

    const/4 v11, 0x6

    if-eq v10, v11, :cond_16

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetProjetCode()I

    move-result v10

    const/16 v11, 0x15

    if-eq v10, v11, :cond_16

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetProjetCode()I

    move-result v10

    const/16 v11, 0x21

    if-eq v10, v11, :cond_16

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetProjetCode()I

    move-result v10

    const/16 v11, 0x22

    if-ne v10, v11, :cond_18

    .line 239
    :cond_16
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetProjetCode()I

    move-result v10

    const/16 v11, 0x15

    if-ne v10, v11, :cond_17

    .line 240
    sget-object v10, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const v11, 0x26160

    invoke-virtual {v10, v11}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 244
    :goto_b
    sget-object v10, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 245
    sget-object v10, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const v11, 0xac44

    invoke-virtual {v10, v11}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    goto/16 :goto_6

    .line 242
    :cond_17
    sget-object v10, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const v11, 0x17700

    invoke-virtual {v10, v11}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    goto :goto_b

    .line 246
    :cond_18
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isOMAP4Chipset()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 247
    sget-object v10, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const v11, 0xbb80

    invoke-virtual {v10, v11}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 248
    sget-object v10, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 249
    sget-object v10, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v11, 0x5622

    invoke-virtual {v10, v11}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    goto/16 :goto_6

    .line 254
    :cond_19
    const-string v10, "CameraApp"

    const-string v11, "AUDIO REC OFF -> Audio Encorder NOT SET"

    invoke-static {v10, v11}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 261
    :cond_1a
    sget-object v10, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    goto/16 :goto_8

    .line 271
    :cond_1b
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/lge/camera/controller/camcorder/RecordingController;->getRecordingDurationLimit()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_a

    .line 272
    invoke-virtual {p0}, Lcom/lge/camera/CamcorderMediator;->getRecordingController()Lcom/lge/camera/controller/camcorder/RecordingController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/lge/camera/controller/camcorder/RecordingController;->getRecordingDurationLimit()J

    move-result-wide v10

    long-to-int v10, v10

    sput v10, Lcom/lge/camera/VideoRecorder;->maxDuration:I

    goto/16 :goto_9

    .line 275
    :cond_1c
    const v10, 0x6ddd00

    sput v10, Lcom/lge/camera/VideoRecorder;->maxDuration:I

    goto/16 :goto_9

    .line 296
    .restart local v8       #videoFile:Lcom/lge/camera/VideoFile;
    :catch_0
    move-exception v1

    .line 297
    .local v1, exception:Ljava/lang/IllegalStateException;
    const-string v10, "CameraApp"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IllegalStateException in init recorder prepare : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-static {}, Lcom/lge/camera/VideoRecorder;->release()V

    goto/16 :goto_a

    .line 299
    .end local v1           #exception:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    .line 300
    .local v1, exception:Ljava/io/IOException;
    const-string v10, "CameraApp"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "recorder prepare error: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v10, "CameraApp"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "prepare failed ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Lcom/lge/camera/VideoFile;->getFilePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-static {}, Lcom/lge/camera/VideoRecorder;->release()V

    goto/16 :goto_a

    .line 305
    .end local v1           #exception:Ljava/io/IOException;
    :cond_1d
    const-string v10, "CameraApp"

    const-string v11, "Video file not ready!"

    invoke-static {v10, v11}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-static {}, Lcom/lge/camera/VideoRecorder;->release()V

    goto/16 :goto_a
.end method

.method public static isInitialized()Z
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Lcom/lge/camera/VideoRecorder;->mIsInitialized:Z

    return v0
.end method

.method public static isRecording()Z
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Lcom/lge/camera/VideoRecorder;->mIsRecording:Z

    return v0
.end method

.method public static declared-synchronized release()V
    .locals 6

    .prologue
    .line 348
    const-class v3, Lcom/lge/camera/VideoRecorder;

    monitor-enter v3

    :try_start_0
    const-string v2, "CameraApp"

    const-string v4, "Camcorder release()-start"

    invoke-static {v2, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    sget-object v2, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v2, :cond_2

    .line 350
    sget-boolean v2, Lcom/lge/camera/VideoRecorder;->mIsRecording:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 352
    :try_start_1
    invoke-static {}, Lcom/lge/camera/VideoRecorder;->stop()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 362
    .local v1, e:Ljava/lang/Exception;
    :cond_0
    :goto_0
    :try_start_2
    const-string v2, "CameraApp"

    const-string v4, "Release MediaRecorder"

    invoke-static {v2, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    sget-object v2, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->release()V

    .line 364
    const/4 v2, 0x0

    sput-object v2, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 366
    const-string v2, "CameraApp"

    const-string v4, "UNLOCK CAMERA"

    invoke-static {v2, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    sget-object v2, Lcom/lge/camera/VideoRecorder;->mCameraDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 370
    .local v0, camera:Landroid/hardware/Camera;
    if-eqz v0, :cond_1

    .line 371
    :try_start_3
    invoke-virtual {v0}, Landroid/hardware/Camera;->lock()V

    .line 373
    const-string v2, "CameraApp"

    const-string v4, "### mCameraDevice.reconnect()"

    invoke-static {v2, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    invoke-virtual {v0}, Landroid/hardware/Camera;->reconnect()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 383
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    :goto_1
    :try_start_4
    const-string v2, "CameraApp"

    const-string v4, "camera reconnected"

    invoke-static {v2, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const/4 v2, 0x0

    sput-object v2, Lcom/lge/camera/VideoRecorder;->mCameraDevice:Ljava/lang/ref/WeakReference;

    .line 387
    :cond_2
    const/4 v2, 0x0

    sput-boolean v2, Lcom/lge/camera/VideoRecorder;->mIsInitialized:Z

    .line 388
    const-string v2, "CameraApp"

    const-string v4, "Camcorder release()-end"

    invoke-static {v2, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 389
    monitor-exit v3

    return-void

    .line 353
    .end local v0           #camera:Landroid/hardware/Camera;
    :catch_0
    move-exception v1

    .line 354
    .restart local v1       #e:Ljava/lang/Exception;
    :try_start_5
    const-string v2, "CameraApp"

    const-string v4, "[VideoRecorder::release()] stop Exception !!"

    invoke-static {v2, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 356
    sget-object v2, Lcom/lge/camera/VideoRecorder;->mVideoFile:Lcom/lge/camera/VideoFile;

    if-eqz v2, :cond_0

    .line 357
    const-string v2, "CameraApp"

    const-string v4, "[VideoRecorder::release()] videoFile delete !!"

    invoke-static {v2, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    sget-object v2, Lcom/lge/camera/VideoRecorder;->mVideoFile:Lcom/lge/camera/VideoFile;

    invoke-virtual {v2}, Lcom/lge/camera/VideoFile;->deleteFile()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 348
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #camera:Landroid/hardware/Camera;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 376
    .restart local v1       #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 377
    .local v1, e:Ljava/lang/RuntimeException;
    :try_start_6
    const-string v2, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCameraDevice.get().lock() or reconnect() RuntimeException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1

    .line 379
    .local v1, e:Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 380
    .local v1, e:Ljava/io/IOException;
    const-string v2, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reconnect failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method

.method public static setErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)Z
    .locals 1
    .parameter "l"

    .prologue
    .line 50
    sget-object v0, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 51
    sget-object v0, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 52
    const/4 v0, 0x1

    .line 54
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)Z
    .locals 1
    .parameter "l"

    .prologue
    .line 59
    sget-object v0, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 60
    sget-object v0, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 61
    const/4 v0, 0x1

    .line 63
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setMaxDuration(Z)V
    .locals 1
    .parameter "isMMS"

    .prologue
    .line 103
    if-eqz p0, :cond_0

    sget v0, Lcom/lge/camera/VideoRecorder;->MMS_DURATION:I

    :goto_0
    sput v0, Lcom/lge/camera/VideoRecorder;->maxDuration:I

    .line 104
    return-void

    .line 103
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static setMaxFileSize(JJI)Z
    .locals 6
    .parameter "maxFileSize"
    .parameter "freeSpace"
    .parameter "storage"

    .prologue
    const-wide/16 v4, 0x0

    .line 77
    sput-wide p0, Lcom/lge/camera/VideoRecorder;->mMaxFileSize:J

    .line 78
    sget-wide v0, Lcom/lge/camera/VideoRecorder;->mMaxFileSize:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    .line 79
    sget-wide v0, Lcom/lge/camera/properties/CameraConstants;->VIDEO_LOW_STORAGE_THRESHOLD:J

    sub-long v0, p2, v0

    sput-wide v0, Lcom/lge/camera/VideoRecorder;->mMaxFileSize:J

    .line 81
    sget-wide v0, Lcom/lge/camera/VideoRecorder;->mMaxFileSize:J

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetMediaRecoderLimitSize()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 82
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetMediaRecoderLimitSize()J

    move-result-wide v0

    sput-wide v0, Lcom/lge/camera/VideoRecorder;->mMaxFileSize:J

    .line 85
    :cond_0
    sget-wide v0, Lcom/lge/camera/VideoRecorder;->mMaxFileSize:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_2

    .line 86
    sget-wide v0, Lcom/lge/camera/properties/CameraConstants;->VIDEO_LOW_STORAGE_THRESHOLD:J

    sput-wide v0, Lcom/lge/camera/VideoRecorder;->mMaxFileSize:J

    .line 88
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMaxFileSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/lge/camera/VideoRecorder;->mMaxFileSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " freeSpace: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " storage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const/4 v0, 0x0

    .line 99
    :goto_0
    return v0

    .line 94
    :cond_1
    sget-wide v0, Lcom/lge/camera/VideoRecorder;->mMaxFileSize:J

    cmp-long v0, p2, v0

    if-gtz v0, :cond_2

    .line 95
    sput-wide p2, Lcom/lge/camera/VideoRecorder;->mMaxFileSize:J

    .line 98
    :cond_2
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMaxFileSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/lge/camera/VideoRecorder;->mMaxFileSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " freeSpace: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " storage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static setOrientationHint(I)V
    .locals 0
    .parameter "degree"

    .prologue
    .line 392
    if-gez p0, :cond_0

    .line 393
    const/4 p0, 0x0

    .line 395
    :cond_0
    sput p0, Lcom/lge/camera/VideoRecorder;->mOrientationHint:I

    .line 396
    return-void
.end method

.method public static setVideoSize(I)Z
    .locals 1
    .parameter "purpose"

    .prologue
    .line 69
    sput p0, Lcom/lge/camera/VideoRecorder;->mPurpose:I

    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method public static setZoomValue(F)V
    .locals 0
    .parameter "zoomValue"

    .prologue
    .line 112
    return-void
.end method

.method public static start()Z
    .locals 4

    .prologue
    .line 314
    const-string v1, "CameraApp"

    const-string v2, "Camcorder start()-start"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    sget-boolean v1, Lcom/lge/camera/VideoRecorder;->mIsInitialized:Z

    if-eqz v1, :cond_0

    .line 317
    :try_start_0
    const-string v1, "CameraApp"

    const-string v2, "##### video recording start - mMediaRecorder.start()"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    sget-object v1, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V

    .line 319
    const/4 v1, 0x1

    sput-boolean v1, Lcom/lge/camera/VideoRecorder;->mIsRecording:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    .local v0, e:Ljava/lang/IllegalStateException;
    :cond_0
    :goto_0
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Camcorder start()-end, return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/lge/camera/VideoRecorder;->mIsRecording:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    sget-boolean v1, Lcom/lge/camera/VideoRecorder;->mIsRecording:Z

    return v1

    .line 320
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_0
    move-exception v0

    .line 321
    .restart local v0       #e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 322
    const-string v1, "CameraApp"

    const-string v2, "error recording start"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    sget-object v1, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    goto :goto_0
.end method

.method public static stop()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 331
    const-string v0, "CameraApp"

    const-string v3, "Camcorder stop()-start"

    invoke-static {v0, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    sget-boolean v0, Lcom/lge/camera/VideoRecorder;->mIsRecording:Z

    if-eqz v0, :cond_0

    .line 333
    const-string v0, "CameraApp"

    const-string v3, "##### video recording stop - mMediaRecorder.stop()"

    invoke-static {v0, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    sget-object v0, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v4}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 335
    sget-object v0, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v4}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 336
    sget-object v0, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 337
    sput-boolean v2, Lcom/lge/camera/VideoRecorder;->mIsRecording:Z

    .line 338
    sget-object v0, Lcom/lge/camera/VideoRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 339
    sput-boolean v2, Lcom/lge/camera/VideoRecorder;->mIsInitialized:Z

    .line 341
    sget-object v0, Lcom/lge/camera/VideoRecorder;->mVideoFile:Lcom/lge/camera/VideoFile;

    invoke-virtual {v0}, Lcom/lge/camera/VideoFile;->clearEmptyFile()V

    .line 343
    :cond_0
    const-string v3, "CameraApp"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Camcorder stop()-end, return "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v0, Lcom/lge/camera/VideoRecorder;->mIsRecording:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    sget-boolean v0, Lcom/lge/camera/VideoRecorder;->mIsRecording:Z

    if-nez v0, :cond_2

    :goto_1
    return v1

    :cond_1
    move v0, v2

    .line 343
    goto :goto_0

    :cond_2
    move v1, v2

    .line 344
    goto :goto_1
.end method
