.class public Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;
.super Ljava/lang/Object;
.source "VibrateVolumePreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/VibrateVolumePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SeekBarVolumizer"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLastProgress:I

.field private mOriginalVibrateVolume:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mVibrator:Landroid/os/Vibrator;

.field private mVolumeBeforeMute:I

.field private mVolumeObserver:Landroid/database/ContentObserver;

.field final synthetic this$0:Lcom/android/settings_ex/VibrateVolumePreference;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/VibrateVolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "seekBar"

    .prologue
    const/4 v1, -0x1

    iput-object p1, p0, Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;->this$0:Lcom/android/settings_ex/VibrateVolumePreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    iput v1, p0, Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;->mLastProgress:I

    iput v1, p0, Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    new-instance v0, Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer$1;

    iget-object v1, p0, Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer$1;-><init>(Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;->mVolumeObserver:Landroid/database/ContentObserver;

    iput-object p2, p0, Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Vibrator;

    invoke-direct {v0}, Landroid/os/Vibrator;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;->mVibrator:Landroid/os/Vibrator;

    iput-object p3, p0, Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0, p3}, Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;->initSeekBar(Landroid/widget/SeekBar;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private initSeekBar(Landroid/widget/SeekBar;)V
    .locals 4
    .parameter "seekBar"

    .prologue
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->getVibrateVolume()I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;->mOriginalVibrateVolume:I

    iget v0, p0, Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;->mOriginalVibrateVolume:I

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "volume_vibrate"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;->mVolumeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 329
    return-void
.end method

.method private sample()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;->this$0:Lcom/android/settings_ex/VibrateVolumePreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/VibrateVolumePreference;->onSampleStarting(Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;)V

    const-string v0, "VibrateVolumePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ldh mSeekBar.getProgress() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x3e8

    iget-object v3, p0, Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Vibrator;->vibrate(JI)V

    .line 382
    return-void
.end method


# virtual methods
.method public changeVolumeBy(I)V
    .locals 1
    .parameter "amount"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    iget-object v0, p0, Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;->sample()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    .line 347
    if-nez p3, :cond_0

    .line 352
    :goto_0
    return-void

    .line 351
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Lcom/android/settings_ex/VibrateVolumePreference$VolumeStore;)V
    .locals 2
    .parameter "volumeStore"

    .prologue
    iget v0, p1, Lcom/android/settings_ex/VibrateVolumePreference$VolumeStore;->volume:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/android/settings_ex/VibrateVolumePreference$VolumeStore;->originalVolume:I

    iput v0, p0, Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;->mOriginalVibrateVolume:I

    iget v0, p1, Lcom/android/settings_ex/VibrateVolumePreference$VolumeStore;->volume:I

    iput v0, p0, Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;->mLastProgress:I

    iget v0, p0, Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Lcom/android/settings_ex/VibrateVolumePreference$VolumeStore;)V
    .locals 1
    .parameter "volumeStore"

    .prologue
    iget v0, p0, Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;->mLastProgress:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;->mLastProgress:I

    iput v0, p1, Lcom/android/settings_ex/VibrateVolumePreference$VolumeStore;->volume:I

    iget v0, p0, Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;->mOriginalVibrateVolume:I

    iput v0, p1, Lcom/android/settings_ex/VibrateVolumePreference$VolumeStore;->originalVolume:I

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 364
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .parameter "seekBar"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;->sample()V

    :cond_0
    return-void
.end method

.method postSetVolume(I)V
    .locals 1
    .parameter "progress"

    .prologue
    iput p1, p0, Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;->mLastProgress:I

    iget-object v0, p0, Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public revertVolume()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;->mVibrator:Landroid/os/Vibrator;

    iget v1, p0, Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;->mOriginalVibrateVolume:I

    invoke-virtual {v0, v1}, Landroid/os/Vibrator;->setVibrateVolume(I)V

    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;->mVibrator:Landroid/os/Vibrator;

    iget v1, p0, Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {v0, v1}, Landroid/os/Vibrator;->setVibrateVolume(I)V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;->stopSample()V

    iget-object v0, p0, Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;->mVolumeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public stopSample()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    :cond_0
    return-void
.end method
