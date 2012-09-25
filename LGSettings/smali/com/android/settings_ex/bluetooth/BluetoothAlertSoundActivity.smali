.class public Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity;
.super Landroid/app/Activity;
.source "BluetoothAlertSoundActivity.java"


# instance fields
.field private mMediaStopHandler:Landroid/os/Handler;

.field private mMediaStopRunnable:Ljava/lang/Runnable;

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity;->mPowerManager:Landroid/os/PowerManager;

    .line 23
    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 24
    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity;->mPlayer:Landroid/media/MediaPlayer;

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity;->mMediaStopHandler:Landroid/os/Handler;

    .line 179
    new-instance v0, Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity$1;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity;->mMediaStopRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity;->mPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity;->mPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method private acquireScreenWakeLock()V
    .locals 3

    .prologue
    .line 41
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity;->mPowerManager:Landroid/os/PowerManager;

    .line 43
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity;->mPowerManager:Landroid/os/PowerManager;

    const v1, 0x3000001a

    const-string v2, "BluetoothAlertSoundActivity"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 54
    :cond_1
    return-void
.end method

.method private delayedQuitActivity()V
    .locals 4

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity;->mMediaStopRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity;->mMediaStopHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity;->mMediaStopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity;->mMediaStopHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity;->mMediaStopRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 177
    return-void
.end method

.method private play()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 63
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 64
    .local v0, audioManager:Landroid/media/AudioManager;
    if-nez v0, :cond_0

    .line 65
    const-string v3, "BluetoothAlertSoundActivity"

    const-string v4, "[BTUI] play() : Audio Manager is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity;->finish()V

    .line 101
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->isRecording()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 73
    const-string v3, "BluetoothAlertSoundActivity"

    const-string v4, "[BTUI] Please be quite. It\'s on RECORDING!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity;->finish()V

    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 81
    .local v1, ringerMode:I
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v2

    .line 83
    .local v2, vibrateMode:I
    packed-switch v1, :pswitch_data_0

    .line 98
    invoke-direct {p0, v4}, Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity;->playSound(Z)Z

    goto :goto_0

    .line 86
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity;->finish()V

    goto :goto_0

    .line 89
    :pswitch_1
    invoke-direct {p0, v4}, Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity;->playVibrate(Z)Z

    goto :goto_0

    .line 92
    :pswitch_2
    if-ne v2, v4, :cond_2

    .line 93
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity;->playSoundAndVibrate()V

    goto :goto_0

    .line 95
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity;->playSound(Z)Z

    goto :goto_0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private playSound(Z)Z
    .locals 3
    .parameter "doFinish"

    .prologue
    const/4 v0, 0x0

    .line 104
    sget-boolean v1, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->isRecordStarted:Z

    if-eqz v1, :cond_1

    .line 105
    const-string v1, "BluetoothAlertSoundActivity"

    const-string v2, "[BTUI] playSound() : isRecordStarted is true"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    if-eqz p1, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity;->finish()V

    .line 130
    :cond_0
    :goto_0
    return v0

    .line 112
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_2

    .line 113
    const/high16 v1, 0x7f07

    invoke-static {p0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity;->mPlayer:Landroid/media/MediaPlayer;

    .line 114
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_2

    .line 115
    const-string v1, "BluetoothAlertSoundActivity"

    const-string v2, "[BTUI] playSound() : mPlayer is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    if-eqz p1, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity;->finish()V

    goto :goto_0

    .line 123
    :cond_2
    const-string v0, "BluetoothAlertSoundActivity"

    const-string v1, "playSound()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 126
    if-eqz p1, :cond_3

    .line 127
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity;->delayedQuitActivity()V

    .line 130
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private playSoundAndVibrate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 157
    const-string v2, "BluetoothAlertSoundActivity"

    const-string v3, "[BTUI] playSoundAndVibrate()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-direct {p0, v4}, Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity;->playSound(Z)Z

    move-result v0

    .line 159
    .local v0, bSoundPlayed:Z
    invoke-direct {p0, v4}, Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity;->playVibrate(Z)Z

    move-result v1

    .line 161
    .local v1, bVibratePlayed:Z
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 163
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity;->delayedQuitActivity()V

    .line 169
    :goto_0
    return-void

    .line 167
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity;->finish()V

    goto :goto_0
.end method

.method private playVibrate(Z)Z
    .locals 3
    .parameter "doFinish"

    .prologue
    .line 134
    new-instance v0, Landroid/os/Vibrator;

    invoke-direct {v0}, Landroid/os/Vibrator;-><init>()V

    .line 136
    .local v0, vibrator:Landroid/os/Vibrator;
    if-nez v0, :cond_1

    .line 137
    const-string v1, "BluetoothAlertSoundActivity"

    const-string v2, "[BTUI] playVibrate() : vibrator is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    if-eqz p1, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity;->finish()V

    .line 141
    :cond_0
    const/4 v1, 0x0

    .line 150
    :goto_0
    return v1

    .line 144
    :cond_1
    const-string v1, "BluetoothAlertSoundActivity"

    const-string v2, "[BTUI] playVibrate()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 147
    if-eqz p1, :cond_2

    .line 148
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity;->delayedQuitActivity()V

    .line 150
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const-string v0, "BluetoothAlertSoundActivity"

    const-string v1, "[BTUI] onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity;->acquireScreenWakeLock()V

    .line 37
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity;->play()V

    .line 38
    return-void
.end method
