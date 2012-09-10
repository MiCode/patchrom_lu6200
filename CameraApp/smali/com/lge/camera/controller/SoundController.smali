.class public Lcom/lge/camera/controller/SoundController;
.super Lcom/lge/camera/controller/Controller;
.source "SoundController.java"


# static fields
.field public static MAX_CONTINUOUS_SHOT_SOUND:I = 0x0

.field public static final SHUTTER_SOUND_COUNT:I = 0x4

.field public static final SOUNDCONTROLLER_LOCKKEY:Ljava/lang/String; = "SoundControllerLockKey"


# instance fields
.field private final completeListener:Landroid/media/SoundPool$OnLoadCompleteListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioMode:I

.field private mContinuousSoundResultID:I

.field private mShutter:[I

.field private mShutterSoundLoaded:Z

.field private mSoundBuildThread:Ljava/lang/Thread;

.field private mSoundSampleIDBeforeLoaded:I

.field private mSoundSampleIDLoadedMaskID:I

.field private mSoundSampleIDRegisteredMaskID:I

.field private mSound_Timer1sec:I

.field private mSound_TimerLast:I

.field private mSound_afFail:I

.field private mSound_afSuccess:I

.field private mSound_continuous_shutter:I

.field private mSound_pool:Landroid/media/SoundPool;

.field private mSound_shutter:I

.field private mSound_startRecording:I

.field private mSound_stopRecording:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x5

    sput v0, Lcom/lge/camera/controller/SoundController;->MAX_CONTINUOUS_SHOT_SOUND:I

    return-void
.end method

.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 2
    .parameter "mediator"

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/Controller;-><init>(Lcom/lge/camera/Mediator;)V

    .line 34
    iput v1, p0, Lcom/lge/camera/controller/SoundController;->mSoundSampleIDBeforeLoaded:I

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/camera/controller/SoundController;->mSoundSampleIDRegisteredMaskID:I

    .line 36
    iput v1, p0, Lcom/lge/camera/controller/SoundController;->mSoundSampleIDLoadedMaskID:I

    .line 37
    iput-boolean v1, p0, Lcom/lge/camera/controller/SoundController;->mShutterSoundLoaded:Z

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSoundBuildThread:Ljava/lang/Thread;

    .line 118
    new-instance v0, Lcom/lge/camera/controller/SoundController$1;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/SoundController$1;-><init>(Lcom/lge/camera/controller/SoundController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/SoundController;->completeListener:Landroid/media/SoundPool$OnLoadCompleteListener;

    .line 517
    iput v1, p0, Lcom/lge/camera/controller/SoundController;->mContinuousSoundResultID:I

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/controller/SoundController;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/SoundController;->setLoadedSoundMaskID(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/lge/camera/controller/SoundController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/lge/camera/controller/SoundController;->getSoundIDPlayedBeforeLoaded()I

    move-result v0

    return v0
.end method

.method static synthetic access$1002(Lcom/lge/camera/controller/SoundController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput p1, p0, Lcom/lge/camera/controller/SoundController;->mSoundSampleIDRegisteredMaskID:I

    return p1
.end method

.method static synthetic access$1102(Lcom/lge/camera/controller/SoundController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput p1, p0, Lcom/lge/camera/controller/SoundController;->mSoundSampleIDLoadedMaskID:I

    return p1
.end method

.method static synthetic access$1200(Lcom/lge/camera/controller/SoundController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/lge/camera/controller/SoundController;->loadingCamcorderSoundSourceHWTunned()V

    return-void
.end method

.method static synthetic access$1300(Lcom/lge/camera/controller/SoundController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/lge/camera/controller/SoundController;->loadingCameraSoundSourceHWTunned()V

    return-void
.end method

.method static synthetic access$1400(Lcom/lge/camera/controller/SoundController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/lge/camera/controller/SoundController;->loadingCamcorderSoundSource()V

    return-void
.end method

.method static synthetic access$1500(Lcom/lge/camera/controller/SoundController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/lge/camera/controller/SoundController;->loadingCameraSoundSource()V

    return-void
.end method

.method static synthetic access$200(Lcom/lge/camera/controller/SoundController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_continuous_shutter:I

    return v0
.end method

.method static synthetic access$302(Lcom/lge/camera/controller/SoundController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput p1, p0, Lcom/lge/camera/controller/SoundController;->mContinuousSoundResultID:I

    return p1
.end method

.method static synthetic access$400(Lcom/lge/camera/controller/SoundController;)Landroid/media/SoundPool;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$402(Lcom/lge/camera/controller/SoundController;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$500(Lcom/lge/camera/controller/SoundController;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/SoundController;->setSoundSampleIDBeforeLoaded(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/lge/camera/controller/SoundController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/lge/camera/controller/SoundController;->mShutterSoundLoaded:Z

    return v0
.end method

.method static synthetic access$602(Lcom/lge/camera/controller/SoundController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/lge/camera/controller/SoundController;->mShutterSoundLoaded:Z

    return p1
.end method

.method static synthetic access$700(Lcom/lge/camera/controller/SoundController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/lge/camera/controller/SoundController;->checkShutterSoundLoaded()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/lge/camera/controller/SoundController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/lge/camera/controller/SoundController;->checkAllSoundLoaded()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/lge/camera/controller/SoundController;)Landroid/media/SoundPool$OnLoadCompleteListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->completeListener:Landroid/media/SoundPool$OnLoadCompleteListener;

    return-object v0
.end method

.method private buildSoundPoolSoundSource()V
    .locals 2

    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/lge/camera/controller/SoundController;->waitSoundBuildThreadDone()V

    .line 322
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 355
    :goto_0
    return-void

    .line 325
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lge/camera/controller/SoundController$2;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/SoundController$2;-><init>(Lcom/lge/camera/controller/SoundController;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSoundBuildThread:Ljava/lang/Thread;

    .line 354
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSoundBuildThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private checkAllSoundLoaded()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 93
    const/4 v0, 0x0

    .line 95
    .local v0, result:Z
    iget v1, p0, Lcom/lge/camera/controller/SoundController;->mSoundSampleIDRegisteredMaskID:I

    iget v2, p0, Lcom/lge/camera/controller/SoundController;->mSoundSampleIDLoadedMaskID:I

    if-ne v1, v2, :cond_0

    .line 96
    const/4 v1, -0x1

    iput v1, p0, Lcom/lge/camera/controller/SoundController;->mSoundSampleIDRegisteredMaskID:I

    .line 97
    iput v3, p0, Lcom/lge/camera/controller/SoundController;->mSoundSampleIDLoadedMaskID:I

    .line 98
    iput-boolean v3, p0, Lcom/lge/camera/controller/SoundController;->mShutterSoundLoaded:Z

    .line 99
    const/4 v0, 0x1

    .line 102
    :cond_0
    return v0
.end method

.method private checkShutterSoundLoaded()Z
    .locals 3

    .prologue
    .line 58
    const/4 v0, 0x0

    .line 60
    .local v0, result:Z
    invoke-virtual {p0}, Lcom/lge/camera/controller/SoundController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 61
    iget v1, p0, Lcom/lge/camera/controller/SoundController;->mSound_startRecording:I

    invoke-direct {p0, v1}, Lcom/lge/camera/controller/SoundController;->checkSoundLoaded(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    const/4 v0, 0x1

    .line 73
    :cond_0
    :goto_0
    return v0

    .line 66
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/SoundController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v1

    if-nez v1, :cond_0

    .line 67
    iget v1, p0, Lcom/lge/camera/controller/SoundController;->mSound_shutter:I

    invoke-direct {p0, v1}, Lcom/lge/camera/controller/SoundController;->checkSoundLoaded(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkSoundLoaded(I)Z
    .locals 3
    .parameter "soundID"

    .prologue
    .line 47
    const/4 v0, 0x0

    .line 48
    .local v0, result:Z
    const/4 v1, 0x0

    .line 50
    .local v1, soundMaskID:I
    const/4 v2, 0x1

    shl-int v1, v2, p1

    .line 51
    iget v2, p0, Lcom/lge/camera/controller/SoundController;->mSoundSampleIDLoadedMaskID:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_0

    .line 52
    const/4 v0, 0x1

    .line 54
    :cond_0
    return v0
.end method

.method private getSoundIDPlayedBeforeLoaded()I
    .locals 1

    .prologue
    .line 444
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSoundSampleIDBeforeLoaded:I

    return v0
.end method

.method private loadingCamcorderSoundSource()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 226
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/lge/camera/controller/SoundController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060009

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_startRecording:I

    .line 227
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_startRecording:I

    invoke-direct {p0, v0}, Lcom/lge/camera/controller/SoundController;->setRegisteredSoundMaskID(I)V

    .line 228
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_startRecording:I

    if-nez v0, :cond_0

    .line 229
    const-string v0, "CameraApp"

    const-string v1, "Shutter Sound Load Failed"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0}, Lcom/lge/camera/controller/SoundController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v0

    const-string v1, "SoundControllerLockKey"

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->setMainButtonEnable(Ljava/lang/String;)V

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/lge/camera/controller/SoundController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06000a

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_stopRecording:I

    .line 235
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_stopRecording:I

    invoke-direct {p0, v0}, Lcom/lge/camera/controller/SoundController;->setRegisteredSoundMaskID(I)V

    .line 236
    return-void
.end method

.method private loadingCamcorderSoundSourceHWTunned()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 303
    const-string v2, "system/media/audio/camera/"

    .line 304
    .local v2, SOUND_RESOURCE_PATH:Ljava/lang/String;
    const-string v0, "system/media/audio/camera/camstart.ogg"

    .line 305
    .local v0, REC_START:Ljava/lang/String;
    const-string v1, "system/media/audio/camera/camstop.ogg"

    .line 307
    .local v1, REC_STOP:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    const-string v4, "system/media/audio/camera/camstart.ogg"

    invoke-virtual {v3, v4, v5}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/lge/camera/controller/SoundController;->mSound_startRecording:I

    .line 308
    iget v3, p0, Lcom/lge/camera/controller/SoundController;->mSound_startRecording:I

    invoke-direct {p0, v3}, Lcom/lge/camera/controller/SoundController;->setRegisteredSoundMaskID(I)V

    .line 309
    iget v3, p0, Lcom/lge/camera/controller/SoundController;->mSound_startRecording:I

    if-nez v3, :cond_0

    .line 310
    const-string v3, "CameraApp"

    const-string v4, "Shutter Sound Load Failed"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-virtual {p0}, Lcom/lge/camera/controller/SoundController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v3

    const-string v4, "SoundControllerLockKey"

    invoke-virtual {v3, v4}, Lcom/lge/camera/controller/PreviewPanelController;->setMainButtonEnable(Ljava/lang/String;)V

    .line 315
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    const-string v4, "system/media/audio/camera/camstop.ogg"

    invoke-virtual {v3, v4, v5}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/lge/camera/controller/SoundController;->mSound_stopRecording:I

    .line 316
    iget v3, p0, Lcom/lge/camera/controller/SoundController;->mSound_stopRecording:I

    invoke-direct {p0, v3}, Lcom/lge/camera/controller/SoundController;->setRegisteredSoundMaskID(I)V

    .line 317
    return-void
.end method

.method private loadingCameraSoundSource()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 148
    new-array v4, v10, [I

    iput-object v4, p0, Lcom/lge/camera/controller/SoundController;->mShutter:[I

    .line 149
    new-array v3, v10, [I

    fill-array-data v3, :array_0

    .line 155
    .local v3, shutterSoundResourceId:[I
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v4

    const-string v5, "key_camera_shutter_sound"

    invoke-virtual {v4, v5}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v2

    .line 156
    .local v2, pref:Lcom/lge/camera/setting/ListPreference;
    const/4 v1, 0x0

    .line 157
    .local v1, index:I
    if-eqz v2, :cond_5

    .line 158
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportShutterSoundOff()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "off"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 160
    invoke-virtual {v2}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 171
    :cond_0
    :goto_0
    if-ltz v1, :cond_1

    const/4 v4, 0x3

    if-le v1, v4, :cond_2

    .line 172
    :cond_1
    const/4 v1, 0x0

    .line 174
    :cond_2
    iget-object v4, p0, Lcom/lge/camera/controller/SoundController;->mShutter:[I

    iget-object v5, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/lge/camera/controller/SoundController;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    aget v7, v3, v1

    invoke-virtual {v5, v6, v7, v8}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v5

    aput v5, v4, v1

    .line 175
    iget-object v4, p0, Lcom/lge/camera/controller/SoundController;->mShutter:[I

    aget v4, v4, v1

    iput v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_shutter:I

    .line 176
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v10, :cond_6

    .line 177
    if-eq v0, v1, :cond_3

    .line 178
    iget-object v4, p0, Lcom/lge/camera/controller/SoundController;->mShutter:[I

    iget-object v5, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/lge/camera/controller/SoundController;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    aget v7, v3, v0

    invoke-virtual {v5, v6, v7, v8}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v5

    aput v5, v4, v0

    .line 176
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 163
    .end local v0           #i:I
    :cond_4
    invoke-virtual {v2}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "off"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 164
    invoke-virtual {v2}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 169
    :cond_5
    const-string v4, "CameraApp"

    const-string v5, "KEY_SHUTTER_SOUND is not found."

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 192
    .restart local v0       #i:I
    :cond_6
    iget v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_shutter:I

    invoke-direct {p0, v4}, Lcom/lge/camera/controller/SoundController;->setRegisteredSoundMaskID(I)V

    .line 194
    iget v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_shutter:I

    if-nez v4, :cond_7

    .line 195
    const-string v4, "CameraApp"

    const-string v5, "Shutter Sound Load Failed"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lcom/lge/camera/controller/SoundController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v4

    const-string v5, "SoundControllerLockKey"

    invoke-virtual {v4, v5}, Lcom/lge/camera/controller/PreviewPanelController;->setMainButtonEnable(Ljava/lang/String;)V

    .line 200
    :cond_7
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isFixedFocus()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 201
    iput v9, p0, Lcom/lge/camera/controller/SoundController;->mSound_afSuccess:I

    .line 202
    iput v9, p0, Lcom/lge/camera/controller/SoundController;->mSound_afFail:I

    .line 210
    :goto_2
    iget-object v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/lge/camera/controller/SoundController;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f060007

    invoke-virtual {v4, v5, v6, v8}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    iput v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_Timer1sec:I

    .line 211
    iget v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_Timer1sec:I

    invoke-direct {p0, v4}, Lcom/lge/camera/controller/SoundController;->setRegisteredSoundMaskID(I)V

    .line 213
    iget-object v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/lge/camera/controller/SoundController;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f060008

    invoke-virtual {v4, v5, v6, v8}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    iput v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_TimerLast:I

    .line 214
    iget v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_TimerLast:I

    invoke-direct {p0, v4}, Lcom/lge/camera/controller/SoundController;->setRegisteredSoundMaskID(I)V

    .line 216
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->isAttachMode()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportShotMode()Z

    move-result v4

    if-nez v4, :cond_a

    .line 218
    :cond_8
    iget-object v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/lge/camera/controller/SoundController;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f06000b

    invoke-virtual {v4, v5, v6, v8}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    iput v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_continuous_shutter:I

    .line 219
    iget v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_continuous_shutter:I

    invoke-direct {p0, v4}, Lcom/lge/camera/controller/SoundController;->setRegisteredSoundMaskID(I)V

    .line 223
    :goto_3
    return-void

    .line 204
    :cond_9
    iget-object v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/lge/camera/controller/SoundController;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f060001

    invoke-virtual {v4, v5, v6, v8}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    iput v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_afSuccess:I

    .line 205
    iget-object v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/lge/camera/controller/SoundController;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x7f06

    invoke-virtual {v4, v5, v6, v8}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    iput v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_afFail:I

    .line 206
    iget v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_afSuccess:I

    invoke-direct {p0, v4}, Lcom/lge/camera/controller/SoundController;->setRegisteredSoundMaskID(I)V

    .line 207
    iget v4, p0, Lcom/lge/camera/controller/SoundController;->mSound_afFail:I

    invoke-direct {p0, v4}, Lcom/lge/camera/controller/SoundController;->setRegisteredSoundMaskID(I)V

    goto/16 :goto_2

    .line 221
    :cond_a
    iput v9, p0, Lcom/lge/camera/controller/SoundController;->mSound_continuous_shutter:I

    goto :goto_3

    .line 149
    :array_0
    .array-data 0x4
        0x3t 0x0t 0x6t 0x7ft
        0x4t 0x0t 0x6t 0x7ft
        0x5t 0x0t 0x6t 0x7ft
        0x6t 0x0t 0x6t 0x7ft
    .end array-data
.end method

.method private loadingCameraSoundSourceHWTunned()V
    .locals 18

    .prologue
    .line 240
    const-string v8, "system/media/audio/camera/"

    .line 242
    .local v8, SOUND_RESOURCE_PATH:Ljava/lang/String;
    const-string v4, "system/media/audio/camera/cam_snap_0.ogg"

    .line 243
    .local v4, SHUTTER_SOUND0:Ljava/lang/String;
    const-string v5, "system/media/audio/camera/cam_snap_1.ogg"

    .line 244
    .local v5, SHUTTER_SOUND1:Ljava/lang/String;
    const-string v6, "system/media/audio/camera/cam_snap_2.ogg"

    .line 245
    .local v6, SHUTTER_SOUND2:Ljava/lang/String;
    const-string v7, "system/media/audio/camera/cam_snap_3.ogg"

    .line 247
    .local v7, SHUTTER_SOUND3:Ljava/lang/String;
    const-string v9, "system/media/audio/camera/cameratimer.ogg"

    .line 248
    .local v9, TIMER_COUNT:Ljava/lang/String;
    const-string v10, "system/media/audio/camera/cameratimerlast3.ogg"

    .line 249
    .local v10, TIMER_LAST:Ljava/lang/String;
    const-string v2, "system/media/audio/camera/af_success.ogg"

    .line 250
    .local v2, AF_SUCCESS:Ljava/lang/String;
    const-string v1, "system/media/audio/camera/af_failure.ogg"

    .line 252
    .local v1, AF_FAILURE:Ljava/lang/String;
    const-string v3, "system/media/audio/camera/continuous_shot.ogg"

    .line 256
    .local v3, CONTI_SOUND:Ljava/lang/String;
    const/4 v13, 0x4

    new-array v13, v13, [I

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/lge/camera/controller/SoundController;->mShutter:[I

    .line 257
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/controller/SoundController;->mShutter:[I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    const-string v16, "system/media/audio/camera/cam_snap_0.ogg"

    const/16 v17, 0x1

    invoke-virtual/range {v15 .. v17}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v15

    aput v15, v13, v14

    .line 258
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/controller/SoundController;->mShutter:[I

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    const-string v16, "system/media/audio/camera/cam_snap_1.ogg"

    const/16 v17, 0x1

    invoke-virtual/range {v15 .. v17}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v15

    aput v15, v13, v14

    .line 259
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/controller/SoundController;->mShutter:[I

    const/4 v14, 0x2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    const-string v16, "system/media/audio/camera/cam_snap_2.ogg"

    const/16 v17, 0x1

    invoke-virtual/range {v15 .. v17}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v15

    aput v15, v13, v14

    .line 260
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/controller/SoundController;->mShutter:[I

    const/4 v14, 0x3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    const-string v16, "system/media/audio/camera/cam_snap_3.ogg"

    const/16 v17, 0x1

    invoke-virtual/range {v15 .. v17}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v15

    aput v15, v13, v14

    .line 262
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/controller/SoundController;->mShutter:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/lge/camera/controller/SoundController;->mSound_shutter:I

    .line 264
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v13}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v13

    const-string v14, "key_camera_shutter_sound"

    invoke-virtual {v13, v14}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v12

    .line 265
    .local v12, pref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v12, :cond_2

    .line 266
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportShutterSoundOff()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-virtual {v12}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v13

    const-string v14, "off"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 268
    invoke-virtual {v12}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 269
    .local v11, index:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/controller/SoundController;->mShutter:[I

    aget v13, v13, v11

    move-object/from16 v0, p0

    iput v13, v0, Lcom/lge/camera/controller/SoundController;->mSound_shutter:I

    .line 279
    .end local v11           #index:I
    :goto_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lge/camera/controller/SoundController;->mSound_shutter:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/lge/camera/controller/SoundController;->setRegisteredSoundMaskID(I)V

    .line 280
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lge/camera/controller/SoundController;->mSound_shutter:I

    if-nez v13, :cond_0

    .line 281
    const-string v13, "CameraApp"

    const-string v14, "Shutter Sound Load Failed"

    invoke-static {v13, v14}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/controller/SoundController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v13

    invoke-virtual {v13}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v13

    const-string v14, "SoundControllerLockKey"

    invoke-virtual {v13, v14}, Lcom/lge/camera/controller/PreviewPanelController;->setMainButtonEnable(Ljava/lang/String;)V

    .line 286
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    const-string v14, "system/media/audio/camera/continuous_shot.ogg"

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/lge/camera/controller/SoundController;->mSound_continuous_shutter:I

    .line 287
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lge/camera/controller/SoundController;->mSound_continuous_shutter:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/lge/camera/controller/SoundController;->setRegisteredSoundMaskID(I)V

    .line 289
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    const-string v14, "system/media/audio/camera/af_success.ogg"

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/lge/camera/controller/SoundController;->mSound_afSuccess:I

    .line 290
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lge/camera/controller/SoundController;->mSound_afSuccess:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/lge/camera/controller/SoundController;->setRegisteredSoundMaskID(I)V

    .line 292
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    const-string v14, "system/media/audio/camera/af_failure.ogg"

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/lge/camera/controller/SoundController;->mSound_afFail:I

    .line 293
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lge/camera/controller/SoundController;->mSound_afFail:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/lge/camera/controller/SoundController;->setRegisteredSoundMaskID(I)V

    .line 295
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    const-string v14, "system/media/audio/camera/cameratimer.ogg"

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/lge/camera/controller/SoundController;->mSound_Timer1sec:I

    .line 296
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lge/camera/controller/SoundController;->mSound_Timer1sec:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/lge/camera/controller/SoundController;->setRegisteredSoundMaskID(I)V

    .line 298
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    const-string v14, "system/media/audio/camera/cameratimerlast3.ogg"

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/lge/camera/controller/SoundController;->mSound_TimerLast:I

    .line 299
    move-object/from16 v0, p0

    iget v13, v0, Lcom/lge/camera/controller/SoundController;->mSound_TimerLast:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/lge/camera/controller/SoundController;->setRegisteredSoundMaskID(I)V

    .line 300
    return-void

    .line 272
    :cond_1
    invoke-virtual {v12}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 273
    .restart local v11       #index:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/controller/SoundController;->mShutter:[I

    aget v13, v13, v11

    move-object/from16 v0, p0

    iput v13, v0, Lcom/lge/camera/controller/SoundController;->mSound_shutter:I

    goto/16 :goto_0

    .line 276
    .end local v11           #index:I
    :cond_2
    const-string v13, "CameraApp"

    const-string v14, "KEY_SHUTTER_SOUND is not found."

    invoke-static {v13, v14}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private setLoadedSoundMaskID(I)V
    .locals 2
    .parameter "sampleID"

    .prologue
    .line 106
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSoundSampleIDLoadedMaskID:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/controller/SoundController;->mSoundSampleIDLoadedMaskID:I

    .line 107
    return-void
.end method

.method private setRegisteredSoundMaskID(I)V
    .locals 3
    .parameter "sampleID"

    .prologue
    const/4 v2, 0x1

    .line 110
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSoundSampleIDRegisteredMaskID:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 111
    shl-int v0, v2, p1

    iput v0, p0, Lcom/lge/camera/controller/SoundController;->mSoundSampleIDRegisteredMaskID:I

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_0
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSoundSampleIDRegisteredMaskID:I

    shl-int v1, v2, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/controller/SoundController;->mSoundSampleIDRegisteredMaskID:I

    goto :goto_0
.end method

.method private setSoundSampleIDBeforeLoaded(I)V
    .locals 0
    .parameter "sampleID"

    .prologue
    .line 448
    iput p1, p0, Lcom/lge/camera/controller/SoundController;->mSoundSampleIDBeforeLoaded:I

    .line 449
    return-void
.end method


# virtual methods
.method public StopSoundContinuous()V
    .locals 3

    .prologue
    .line 540
    invoke-virtual {p0}, Lcom/lge/camera/controller/SoundController;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioManager:Landroid/media/AudioManager;

    .line 541
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioMode:I

    .line 543
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioMode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->IsForcedShutterSound()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 545
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isDisableAudioFuction()Z

    move-result v0

    if-nez v0, :cond_2

    .line 546
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    if-eqz v0, :cond_2

    .line 547
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSound_pool.stop "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/controller/SoundController;->mContinuousSoundResultID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mContinuousSoundResultID:I

    if-eqz v0, :cond_2

    .line 549
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/lge/camera/controller/SoundController;->mContinuousSoundResultID:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 554
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/controller/SoundController;->mContinuousSoundResultID:I

    .line 555
    return-void
.end method

.method public changeShutterSound(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 602
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_1

    .line 608
    :cond_0
    :goto_0
    return-void

    .line 604
    :cond_1
    if-ltz p1, :cond_0

    .line 606
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mShutter:[I

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mShutter:[I

    aget v0, v0, p1

    iput v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_shutter:I

    goto :goto_0
.end method

.method public initController()V
    .locals 2

    .prologue
    .line 358
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isDisableAudioFuction()Z

    move-result v0

    if-nez v0, :cond_0

    .line 361
    invoke-direct {p0}, Lcom/lge/camera/controller/SoundController;->buildSoundPoolSoundSource()V

    .line 363
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    .line 367
    :goto_0
    return-void

    .line 365
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/SoundController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v0

    const-string v1, "SoundControllerLockKey"

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->setMainButtonEnable(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isPanoramaSoundLoaded()Z
    .locals 1

    .prologue
    .line 611
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_startRecording:I

    invoke-direct {p0, v0}, Lcom/lge/camera/controller/SoundController;->checkSoundLoaded(I)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 385
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isDisableAudioFuction()Z

    move-result v0

    if-nez v0, :cond_c

    .line 386
    invoke-virtual {p0}, Lcom/lge/camera/controller/SoundController;->waitSoundBuildThreadDone()V

    .line 388
    const-string v0, "CameraApp"

    const-string v1, "onDestroy-start, sound_pool release 1/2"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    if-eqz v0, :cond_b

    .line 402
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mShutter:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mShutter:[I

    aget v0, v0, v3

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/lge/camera/controller/SoundController;->mShutter:[I

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->unload(I)Z

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mShutter:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mShutter:[I

    aget v0, v0, v4

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/lge/camera/controller/SoundController;->mShutter:[I

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->unload(I)Z

    .line 404
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mShutter:[I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mShutter:[I

    aget v0, v0, v5

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/lge/camera/controller/SoundController;->mShutter:[I

    aget v1, v1, v5

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->unload(I)Z

    .line 405
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mShutter:[I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mShutter:[I

    aget v0, v0, v6

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/lge/camera/controller/SoundController;->mShutter:[I

    aget v1, v1, v6

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->unload(I)Z

    .line 407
    :cond_3
    iput-object v2, p0, Lcom/lge/camera/controller/SoundController;->mShutter:[I

    .line 409
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_continuous_shutter:I

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/lge/camera/controller/SoundController;->mSound_continuous_shutter:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->unload(I)Z

    .line 410
    :cond_4
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_afSuccess:I

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/lge/camera/controller/SoundController;->mSound_afSuccess:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->unload(I)Z

    .line 411
    :cond_5
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_afFail:I

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/lge/camera/controller/SoundController;->mSound_afFail:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->unload(I)Z

    .line 412
    :cond_6
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_Timer1sec:I

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/lge/camera/controller/SoundController;->mSound_Timer1sec:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->unload(I)Z

    .line 413
    :cond_7
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_TimerLast:I

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/lge/camera/controller/SoundController;->mSound_TimerLast:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->unload(I)Z

    .line 414
    :cond_8
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_startRecording:I

    if-lez v0, :cond_9

    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/lge/camera/controller/SoundController;->mSound_startRecording:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->unload(I)Z

    .line 415
    :cond_9
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_stopRecording:I

    if-lez v0, :cond_a

    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/lge/camera/controller/SoundController;->mSound_stopRecording:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->unload(I)Z

    .line 417
    :cond_a
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    invoke-virtual {v0, v2}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 418
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 419
    iput-object v2, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    .line 422
    :cond_b
    const-string v0, "CameraApp"

    const-string v1, "onDestroy-end, sound_pool release 2/2"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    :cond_c
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onDestroy()V

    .line 426
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 371
    const-string v0, "CameraApp"

    const-string v1, "onResume-start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isDisableAudioFuction()Z

    move-result v0

    if-nez v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSoundBuildThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 374
    const-string v0, "CameraApp"

    const-string v1, "retry buildSoundPoolSoundSource"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-direct {p0}, Lcom/lge/camera/controller/SoundController;->buildSoundPoolSoundSource()V

    .line 380
    :cond_0
    :goto_0
    const-string v0, "CameraApp"

    const-string v1, "onResume-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    return-void

    .line 378
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/SoundController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v0

    const-string v1, "SoundControllerLockKey"

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->setMainButtonEnable(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public playAFSound(Z)V
    .locals 3
    .parameter "seccess"

    .prologue
    .line 573
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playAFSound : seccess="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    if-eqz p1, :cond_1

    .line 575
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_afSuccess:I

    invoke-direct {p0, v0}, Lcom/lge/camera/controller/SoundController;->checkSoundLoaded(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 576
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_afSuccess:I

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SoundController;->soundPlay(I)V

    .line 583
    :cond_0
    :goto_0
    return-void

    .line 579
    :cond_1
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_afFail:I

    invoke-direct {p0, v0}, Lcom/lge/camera/controller/SoundController;->checkSoundLoaded(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 580
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_afFail:I

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SoundController;->soundPlay(I)V

    goto :goto_0
.end method

.method public playContinuousShutterSound()V
    .locals 2

    .prologue
    .line 558
    const-string v0, "CameraApp"

    const-string v1, "playContinuousShutterSound"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportShutterSoundOff()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "key_camera_shutter_sound"

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    :goto_0
    return-void

    .line 565
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useContinuousSound()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 566
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_continuous_shutter:I

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SoundController;->soundPlaycontinuous(I)V

    goto :goto_0

    .line 568
    :cond_1
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_shutter:I

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SoundController;->soundPlay(I)V

    goto :goto_0
.end method

.method public playRecordingSound(Z)V
    .locals 3
    .parameter "start"

    .prologue
    .line 490
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playRecordingSound : start = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "key_camera_shot_mode"

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "shotmode_panorama"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportShutterSoundOff()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "key_camera_shutter_sound"

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 506
    :cond_0
    :goto_0
    return-void

    .line 499
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->IsEnableNativeSound()Z

    move-result v0

    if-nez v0, :cond_0

    .line 500
    if-eqz p1, :cond_2

    .line 501
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_startRecording:I

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SoundController;->soundPlay(I)V

    goto :goto_0

    .line 503
    :cond_2
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_stopRecording:I

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SoundController;->soundPlay(I)V

    goto :goto_0
.end method

.method public playShutterSound()V
    .locals 2

    .prologue
    .line 481
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportShutterSoundOff()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "key_camera_shutter_sound"

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    :goto_0
    return-void

    .line 486
    :cond_0
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_shutter:I

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SoundController;->soundPlay(I)V

    goto :goto_0
.end method

.method public playTimerSound(I)V
    .locals 3
    .parameter "time"

    .prologue
    .line 509
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playTimerSound : time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    .line 511
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_TimerLast:I

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SoundController;->soundPlay(I)V

    .line 515
    :goto_0
    return-void

    .line 513
    :cond_0
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_Timer1sec:I

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/SoundController;->soundPlay(I)V

    goto :goto_0
.end method

.method public soundPlay(I)V
    .locals 8
    .parameter "soundSource"

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f80

    .line 453
    invoke-virtual {p0}, Lcom/lge/camera/controller/SoundController;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioManager:Landroid/media/AudioManager;

    .line 454
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioMode:I

    .line 455
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioMode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->IsForcedShutterSound()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_shutter:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_startRecording:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_stopRecording:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_continuous_shutter:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_Timer1sec:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_TimerLast:I

    if-ne p1, v0, :cond_2

    .line 463
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isDisableAudioFuction()Z

    move-result v0

    if-nez v0, :cond_2

    .line 466
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    if-eqz v0, :cond_2

    .line 467
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSound_pool.play "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    move v1, p1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v7

    .line 469
    .local v7, result:I
    if-nez v7, :cond_2

    .line 470
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/SoundController;->setSoundSampleIDBeforeLoaded(I)V

    .line 475
    .end local v7           #result:I
    :cond_2
    return-void
.end method

.method public soundPlaycontinuous(I)V
    .locals 7
    .parameter "soundSource"

    .prologue
    const/high16 v2, 0x3f80

    .line 520
    invoke-virtual {p0}, Lcom/lge/camera/controller/SoundController;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioManager:Landroid/media/AudioManager;

    .line 521
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioMode:I

    .line 523
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioMode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mAudioMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->IsForcedShutterSound()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_continuous_shutter:I

    if-ne p1, v0, :cond_2

    .line 526
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isDisableAudioFuction()Z

    move-result v0

    if-nez v0, :cond_2

    .line 527
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    if-eqz v0, :cond_2

    .line 528
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSound_pool.play "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    iget-object v0, p0, Lcom/lge/camera/controller/SoundController;->mSound_pool:Landroid/media/SoundPool;

    const/4 v4, 0x0

    sget v5, Lcom/lge/camera/controller/SoundController;->MAX_CONTINUOUS_SHOT_SOUND:I

    move v1, p1

    move v3, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/SoundController;->mContinuousSoundResultID:I

    .line 531
    iget v0, p0, Lcom/lge/camera/controller/SoundController;->mContinuousSoundResultID:I

    if-nez v0, :cond_2

    .line 532
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/SoundController;->setSoundSampleIDBeforeLoaded(I)V

    .line 537
    :cond_2
    return-void
.end method

.method public waitSoundBuildThreadDone()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 431
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/controller/SoundController;->mSoundBuildThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/SoundController;->mSoundBuildThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 432
    const-string v1, "CameraApp"

    const-string v2, "Wait for sound_pool load.."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    iget-object v1, p0, Lcom/lge/camera/controller/SoundController;->mSoundBuildThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 434
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/camera/controller/SoundController;->mSoundBuildThread:Ljava/lang/Thread;

    .line 435
    const-string v1, "CameraApp"

    const-string v2, "sound_pool loaded.."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    :cond_0
    :goto_0
    return-void

    .line 437
    :catch_0
    move-exception v0

    .line 438
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "CameraApp"

    const-string v2, "Failed to join sound_pool load thread!"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
