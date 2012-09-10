.class public abstract Lcom/lge/camera/command/Command;
.super Ljava/lang/Object;
.source "Command.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final APPLY_ALL_SETTINGS:Ljava/lang/String; = "com.lge.camera.command.setting.ApplyAllSettings"

.field public static final BEAUTY_SHOT:Ljava/lang/String; = "com.lge.camera.command.setting.SetOlaBeautyShot"

.field public static final CAMERA_ANTI_BANDING:Ljava/lang/String; = "com.lge.camera.command.setting.SetCameraAntibanding"

.field public static final CAMERA_COLOR_EFFECT:Ljava/lang/String; = "com.lge.camera.command.setting.SetCameraColorEffect"

.field public static final CAMERA_FLASH_MODE:Ljava/lang/String; = "com.lge.camera.command.setting.SetFlashMode"

.field public static final CAMERA_FOCUS_MODE:Ljava/lang/String; = "com.lge.camera.command.setting.SetCameraFocusMode"

.field public static final CAMERA_GEO_TAG:Ljava/lang/String; = "com.lge.camera.command.setting.SetCameraGeoTag"

.field public static final CAMERA_IMAGE_SIZE:Ljava/lang/String; = "com.lge.camera.command.setting.SetCameraImageSize"

.field public static final CAMERA_ISO:Ljava/lang/String; = "com.lge.camera.command.setting.SetCameraIso"

.field public static final CAMERA_SCENE_MODE:Ljava/lang/String; = "com.lge.camera.command.setting.SetSceneMode"

.field public static final CAMERA_SHOT_MODE:Ljava/lang/String; = "com.lge.camera.command.setting.SetCameraShotMode"

.field public static final CAMERA_SHUTTER_SOUND:Ljava/lang/String; = "com.lge.camera.command.setting.SetCameraShutterSound"

.field public static final CAMERA_TIMER:Ljava/lang/String; = "com.lge.camera.command.setting.SetCameraTimer"

.field public static final CAMERA_WHITE_BALANCE:Ljava/lang/String; = "com.lge.camera.command.setting.SetCameraWhiteBalance"

.field public static final CHANGE_TO_CAMCORDER:Ljava/lang/String; = "com.lge.camera.command.ChangeToCamcorder"

.field public static final CHANGE_TO_CAMERA:Ljava/lang/String; = "com.lge.camera.command.ChangeToCamera"

.field public static final CONTINUOUS_SHOT:Ljava/lang/String; = "com.lge.camera.command.setting.SetOlaContinuousShot"

.field public static final DISPLAY_CAMCORDER_POSTVIEW:Ljava/lang/String; = "com.lge.camera.command.DisplayCamcorderPostview"

.field public static final DISPLAY_CAMERA_POSTVIEW:Ljava/lang/String; = "com.lge.camera.command.DisplayCameraPostview"

.field public static final DISPLAY_PREVIEW:Ljava/lang/String; = "com.lge.camera.command.DisplayPreview"

.field public static final DISPLAY_SETTING_MENU:Ljava/lang/String; = "com.lge.camera.command.DisplaySettingMenu"

.field public static final DO_CAPTURE:Ljava/lang/String; = "com.lge.camera.command.DoCapture"

.field public static final EDIT_ALL_PREF_GEOTAG_OFF:Ljava/lang/String; = "com.lge.camera.command.EditAllPrefGeoTagOff"

.field public static final EDIT_ALL_PREF_GEOTAG_ON:Ljava/lang/String; = "com.lge.camera.command.EditAllPrefGeoTagOn"

.field public static final EXIT_INTERACTION:Ljava/lang/String; = "com.lge.camera.command.ExitInteraction"

.field public static final EXIT_ZOOM_BRIGHTNESS_INTERACTION:Ljava/lang/String; = "com.lge.camera.command.ExitZoomBrightnessInteraction"

.field public static final HDR_SHOT:Ljava/lang/String; = "com.lge.camera.command.setting.SetOlaHDRShot"

.field public static final HIDE_LIVE_SNAPSHOT_BUTTON:Ljava/lang/String; = "com.lge.camera.command.HideLiveSnapshotButton"

.field public static final HIDE_LOADING_SCREEN:Ljava/lang/String; = "com.lge.camera.command.HideLoadingScreen"

.field public static final NORMAL_SHOT:Ljava/lang/String; = "com.lge.camera.command.setting.SetOlaNormalShot"

.field public static final ON_DELAY_OFF:Ljava/lang/String; = "com.lge.camera.command.OnDelayOff"

.field public static final PANORAMA_SHOT:Ljava/lang/String; = "com.lge.camera.command.setting.SetOlaPanoramaShot"

.field public static final RELEASE_TOUCH_FOCUS:Ljava/lang/String; = "com.lge.camera.command.ReleaseTouchFocus"

.field public static final REMOVE_SETTING_MENU:Ljava/lang/String; = "com.lge.camera.command.RemoveSettingMenu"

.field public static final RESET_MENU:Ljava/lang/String; = "com.lge.camera.command.ResetMenu"

.field public static final RESET_MENU_PREPARED:Ljava/lang/String; = "com.lge.camera.command.ResetMenuPrepared"

.field public static final RESTART_PREVIEW:Ljava/lang/String; = "com.lge.camera.command.RestartPreview"

.field public static final ROTATE:Ljava/lang/String; = "com.lge.camera.command.Rotate"

.field public static final SELECT_DURATION:Ljava/lang/String; = "com.lge.camera.command.SelectDuration"

.field public static final SELECT_VIDEO_LENGTH:Ljava/lang/String; = "com.lge.camera.command.SelectVideoLength"

.field public static final SET_BEAUTYSHOT:Ljava/lang/String; = "com.lge.camera.command.setting.SetBeautyshot"

.field public static final SET_BRIGHTNESS:Ljava/lang/String; = "com.lge.camera.command.setting.SetBrightness"

.field public static final SET_CAMERA_ID_BEFORE_START_INIT:Ljava/lang/String; = "com.lge.camera.command.SetCameraIdBeforeStartInit"

.field public static final SET_CAMERA_MODE:Ljava/lang/String; = "com.lge.camera.command.setting.SetCameraMode"

.field public static final SET_LIVE_EFFECT:Ljava/lang/String; = "com.lge.camera.command.setting.SetLiveEffect"

.field public static final SET_NORMALIZED_HDR_OPTIONS:Ljava/lang/String; = "com.lge.camera.command.setting.SetNormalizedHDROptions"

.field public static final SET_PREDEFINED_HDR_OPTIONS:Ljava/lang/String; = "com.lge.camera.command.setting.SetPredefinedHDROptions"

.field public static final SET_STORAGE:Ljava/lang/String; = "com.lge.camera.command.setting.SetStorage"

.field public static final SET_TIMEMACHINE_MODE:Ljava/lang/String; = "com.lge.camera.command.SetTimeMachineMode"

.field public static final SET_VOICE_SHUTTER:Ljava/lang/String; = "com.lge.camera.command.SetVoiceShutterMode"

.field public static final SET_ZOOM:Ljava/lang/String; = "com.lge.camera.command.setting.SetZoom"

.field public static final SHOW_BRIGHTNESS:Ljava/lang/String; = "com.lge.camera.command.ShowBrightness"

.field public static final SHOW_GALLERY:Ljava/lang/String; = "com.lge.camera.command.ShowGallery"

.field public static final SHOW_LIVE_SNAPSHOT_BUTTON:Ljava/lang/String; = "com.lge.camera.command.ShowLiveSnapshotButton"

.field public static final SHOW_SETTING_MENU:Ljava/lang/String; = "com.lge.camera.command.ShowSettingMenu"

.field public static final SHOW_ZOOM:Ljava/lang/String; = "com.lge.camera.command.ShowZoom"

.field public static final SNAPSHOT_EFFECT:Ljava/lang/String; = "com.lge.camera.command.SnapshotEffect"

.field public static final START_INIT:Ljava/lang/String; = "com.lge.camera.command.StartInit"

.field public static final START_PREVIEW:Ljava/lang/String; = "com.lge.camera.command.StartPreview"

.field public static final START_RECORDING:Ljava/lang/String; = "com.lge.camera.command.StartRecording"

.field public static final STOP_PREVIEW:Ljava/lang/String; = "com.lge.camera.command.StopPreview"

.field public static final STOP_RECORDING:Ljava/lang/String; = "com.lge.camera.command.StopRecording"

.field public static final SWAP_CAMERA:Ljava/lang/String; = "com.lge.camera.command.SwapCamera"

.field public static final TAG:Ljava/lang/String; = "CameraApp"

.field public static final TAKE_PICTURE:Ljava/lang/String; = "com.lge.camera.command.TakePicture"

.field public static final TAKE_PICTURE_IN_RECORDING:Ljava/lang/String; = "com.lge.camera.command.TakePictureInRecording"

.field public static final TIME_MACHINE_SHOT:Ljava/lang/String; = "com.lge.camera.command.setting.SetOlaTimeMachineShot"

.field public static final UPDATE_CAPTURE_BUTTON:Ljava/lang/String; = "com.lge.camera.command.UpdateCaptureButton"

.field public static final UPDATE_RECORDING_TIME:Ljava/lang/String; = "com.lge.camera.command.UpdateRecordingTime"

.field public static final UPDATE_REC_INDICATOR:Ljava/lang/String; = "com.lge.camera.command.UpdateRecIndicator"

.field public static final UPDATE_THUMBNAIL_BUTTON:Ljava/lang/String; = "com.lge.camera.command.UpdateThumbnailButton"

.field public static final VIDEO_COLOR_EFFECT:Ljava/lang/String; = "com.lge.camera.command.setting.SetVideoColorEffect"

.field public static final VIDEO_DURATION:Ljava/lang/String; = "com.lge.camera.command.setting.SetVideoDuration"

.field public static final VIDEO_IMAGE_SIZE:Ljava/lang/String; = "com.lge.camera.command.setting.SetVideoImageSize"

.field public static final VIDEO_SCENE_MODE:Ljava/lang/String; = "com.lge.camera.command.setting.SetVideoSceneMode"

.field public static final VIDEO_VOICE:Ljava/lang/String; = "com.lge.camera.command.setting.SetVideoVoice"

.field public static final VIDEO_WHITE_BALANCE:Ljava/lang/String; = "com.lge.camera.command.setting.SetVideoWhiteBalance"


# instance fields
.field private mArgment:Ljava/lang/Object;

.field protected mMediator:Lcom/lge/camera/Mediator;

.field private mPeriod:J

.field private mPosted:Z

.field private mStartTime:J


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 3
    .parameter "mediator"

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 109
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    .line 104
    iput-wide v1, p0, Lcom/lge/camera/command/Command;->mPeriod:J

    .line 105
    iput-wide v1, p0, Lcom/lge/camera/command/Command;->mStartTime:J

    .line 106
    iput-object v0, p0, Lcom/lge/camera/command/Command;->mArgment:Ljava/lang/Object;

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/command/Command;->mPosted:Z

    .line 110
    iput-object p1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    .line 111
    return-void
.end method


# virtual methods
.method public abstract execute()V
.end method

.method public execute(Ljava/lang/Object;)V
    .locals 1
    .parameter "arg"

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/lge/camera/command/Command;->mPosted:Z

    if-eqz v0, :cond_0

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/command/Command;->mPosted:Z

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/command/Command;->execute()V

    .line 130
    return-void
.end method

.method public execute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/lge/camera/command/Command;->mPosted:Z

    if-eqz v0, :cond_0

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/command/Command;->mPosted:Z

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/command/Command;->execute()V

    .line 136
    return-void
.end method

.method protected findViewById(I)Landroid/view/View;
    .locals 1
    .parameter "id"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0, p1}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getArgument()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mArgment:Ljava/lang/Object;

    return-object v0
.end method

.method public getMediator()Lcom/lge/camera/Mediator;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method

.method public getPosted()Z
    .locals 1

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/lge/camera/command/Command;->mPosted:Z

    return v0
.end method

.method public resetStartTime()V
    .locals 2

    .prologue
    .line 139
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/camera/command/Command;->mStartTime:J

    .line 140
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 147
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0, p0}, Lcom/lge/camera/Mediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 149
    iget-wide v0, p0, Lcom/lge/camera/command/Command;->mStartTime:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 150
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/camera/command/Command;->mStartTime:J

    .line 152
    :cond_0
    iget-wide v0, p0, Lcom/lge/camera/command/Command;->mStartTime:J

    iget-wide v2, p0, Lcom/lge/camera/command/Command;->mPeriod:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lge/camera/command/Command;->mStartTime:J

    .line 153
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mArgment:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 154
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mArgment:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/lge/camera/command/Command;->execute(Ljava/lang/Object;)V

    .line 159
    :goto_0
    iget-wide v0, p0, Lcom/lge/camera/command/Command;->mPeriod:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v0

    iget-wide v1, p0, Lcom/lge/camera/command/Command;->mStartTime:J

    invoke-virtual {v0, p0, v1, v2}, Lcom/lge/camera/util/MainHandler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 162
    :cond_1
    return-void

    .line 157
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/command/Command;->execute()V

    goto :goto_0
.end method

.method public setArgument(Ljava/lang/Object;)V
    .locals 0
    .parameter "arg"

    .prologue
    .line 169
    iput-object p1, p0, Lcom/lge/camera/command/Command;->mArgment:Ljava/lang/Object;

    .line 170
    return-void
.end method

.method public setPosted(Z)V
    .locals 0
    .parameter "con"

    .prologue
    .line 181
    iput-boolean p1, p0, Lcom/lge/camera/command/Command;->mPosted:Z

    .line 182
    return-void
.end method

.method public setRepeat(J)V
    .locals 0
    .parameter "period"

    .prologue
    .line 143
    iput-wide p1, p0, Lcom/lge/camera/command/Command;->mPeriod:J

    .line 144
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/camera/util/MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 166
    return-void
.end method
