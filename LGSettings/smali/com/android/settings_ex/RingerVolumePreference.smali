.class public Lcom/android/settings_ex/RingerVolumePreference;
.super Landroid/preference/VolumePreference;
.source "RingerVolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/RingerVolumePreference$SavedState;
    }
.end annotation


# static fields
.field private static final CHECKBOX_VIEW_ID:[I

.field private static final SEEKBAR_ID:[I

.field private static SEEKBAR_MUTED_RES_ID:[I

.field private static final SEEKBAR_TYPE:[I

.field private static SEEKBAR_UNMUTED_RES_ID:[I


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCheckBoxes:[Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private mIsSoundException:Z

.field private mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

.field private mSeekBars:[Landroid/widget/SeekBar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 79
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings_ex/RingerVolumePreference;->SEEKBAR_ID:[I

    .line 87
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings_ex/RingerVolumePreference;->SEEKBAR_TYPE:[I

    .line 95
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/settings_ex/RingerVolumePreference;->CHECKBOX_VIEW_ID:[I

    .line 103
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/settings_ex/RingerVolumePreference;->SEEKBAR_MUTED_RES_ID:[I

    .line 111
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/settings_ex/RingerVolumePreference;->SEEKBAR_UNMUTED_RES_ID:[I

    return-void

    .line 79
    nop

    :array_0
    .array-data 0x4
        0x1bt 0x1t 0xbt 0x7ft
        0x1ft 0x1t 0xbt 0x7ft
        0x21t 0x1t 0xbt 0x7ft
        0x23t 0x1t 0xbt 0x7ft
        0x25t 0x1t 0xbt 0x7ft
    .end array-data

    .line 87
    :array_1
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 95
    :array_2
    .array-data 0x4
        0x1at 0x1t 0xbt 0x7ft
        0x1et 0x1t 0xbt 0x7ft
        0x20t 0x1t 0xbt 0x7ft
        0x22t 0x1t 0xbt 0x7ft
        0x24t 0x1t 0xbt 0x7ft
    .end array-data

    .line 103
    :array_3
    .array-data 0x4
        0x9bt 0x2t 0x8t 0x1t
        0x98t 0x2t 0x8t 0x1t
        0x28t 0x1t 0x2t 0x7ft
        0x9et 0x2t 0x8t 0x1t
        0xa9t 0x0t 0x2t 0x7ft
    .end array-data

    .line 111
    :array_4
    .array-data 0x4
        0x9at 0x2t 0x8t 0x1t
        0x97t 0x2t 0x8t 0x1t
        0x29t 0x1t 0x2t 0x7ft
        0x9dt 0x2t 0x8t 0x1t
        0xa9t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 170
    invoke-direct {p0, p1, p2}, Landroid/preference/VolumePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    iput-boolean v1, p0, Lcom/android/settings_ex/RingerVolumePreference;->mIsSoundException:Z

    .line 119
    sget-object v0, Lcom/android/settings_ex/RingerVolumePreference;->SEEKBAR_MUTED_RES_ID:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    .line 120
    sget-object v0, Lcom/android/settings_ex/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/settings_ex/RingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    .line 122
    new-instance v0, Lcom/android/settings_ex/RingerVolumePreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/RingerVolumePreference$1;-><init>(Lcom/android/settings_ex/RingerVolumePreference;)V

    iput-object v0, p0, Lcom/android/settings_ex/RingerVolumePreference;->mHandler:Landroid/os/Handler;

    .line 173
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/RingerVolumePreference;->setStreamType(I)V

    .line 175
    const v0, 0x7f040070

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/RingerVolumePreference;->setDialogLayoutResource(I)V

    .line 178
    sget-object v0, Lcom/android/settings_ex/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/preference/VolumePreference$SeekBarVolumizer;

    iput-object v0, p0, Lcom/android/settings_ex/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    .line 180
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings_ex/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    .line 184
    const-string v0, "ro.lge.audio_soundexception"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/RingerVolumePreference;->mIsSoundException:Z

    .line 188
    invoke-direct {p0}, Lcom/android/settings_ex/RingerVolumePreference;->setItemImage()V

    .line 190
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/RingerVolumePreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/settings_ex/RingerVolumePreference;->updateSlidersAndMutedStates()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/RingerVolumePreference;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings_ex/RingerVolumePreference;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200()[I
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/android/settings_ex/RingerVolumePreference;->SEEKBAR_ID:[I

    return-object v0
.end method

.method private cleanup()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 353
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v2, Lcom/android/settings_ex/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 354
    iget-object v2, p0, Lcom/android/settings_ex/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    .line 355
    invoke-virtual {p0}, Lcom/android/settings_ex/RingerVolumePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 356
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 358
    iget-object v2, p0, Lcom/android/settings_ex/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/preference/VolumePreference$SeekBarVolumizer;->revertVolume()V

    .line 360
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/preference/VolumePreference$SeekBarVolumizer;->stop()V

    .line 361
    iget-object v2, p0, Lcom/android/settings_ex/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aput-object v4, v2, v1

    .line 353
    .end local v0           #dialog:Landroid/app/Dialog;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 364
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/RingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_3

    .line 365
    invoke-virtual {p0}, Lcom/android/settings_ex/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/RingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 366
    iput-object v4, p0, Lcom/android/settings_ex/RingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 368
    :cond_3
    return-void
.end method

.method private final setItemImage()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 194
    const-string v0, "p2"

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->isbuildProduct(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    sget-object v0, Lcom/android/settings_ex/RingerVolumePreference;->SEEKBAR_MUTED_RES_ID:[I

    const v1, 0x7f0200e5

    aput v1, v0, v2

    .line 196
    sget-object v0, Lcom/android/settings_ex/RingerVolumePreference;->SEEKBAR_MUTED_RES_ID:[I

    const v1, 0x7f0200e3

    aput v1, v0, v3

    .line 197
    sget-object v0, Lcom/android/settings_ex/RingerVolumePreference;->SEEKBAR_MUTED_RES_ID:[I

    const v1, 0x7f0200e9

    aput v1, v0, v4

    .line 198
    sget-object v0, Lcom/android/settings_ex/RingerVolumePreference;->SEEKBAR_MUTED_RES_ID:[I

    const v1, 0x7f0200e7

    aput v1, v0, v5

    .line 199
    sget-object v0, Lcom/android/settings_ex/RingerVolumePreference;->SEEKBAR_MUTED_RES_ID:[I

    const v1, 0x7f0200e1

    aput v1, v0, v6

    .line 202
    sget-object v0, Lcom/android/settings_ex/RingerVolumePreference;->SEEKBAR_UNMUTED_RES_ID:[I

    const v1, 0x7f0200e4

    aput v1, v0, v2

    .line 203
    sget-object v0, Lcom/android/settings_ex/RingerVolumePreference;->SEEKBAR_UNMUTED_RES_ID:[I

    const v1, 0x7f0200e2

    aput v1, v0, v3

    .line 204
    sget-object v0, Lcom/android/settings_ex/RingerVolumePreference;->SEEKBAR_UNMUTED_RES_ID:[I

    const v1, 0x7f0200ea

    aput v1, v0, v4

    .line 205
    sget-object v0, Lcom/android/settings_ex/RingerVolumePreference;->SEEKBAR_UNMUTED_RES_ID:[I

    const v1, 0x7f0200e7

    aput v1, v0, v5

    .line 206
    sget-object v0, Lcom/android/settings_ex/RingerVolumePreference;->SEEKBAR_UNMUTED_RES_ID:[I

    const v1, 0x7f0200e1

    aput v1, v0, v6

    .line 209
    :cond_0
    return-void
.end method

.method private updateSlidersAndMutedStates()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 135
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v5, Lcom/android/settings_ex/RingerVolumePreference;->SEEKBAR_TYPE:[I

    array-length v5, v5

    if-ge v0, v5, :cond_7

    .line 136
    sget-object v5, Lcom/android/settings_ex/RingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v3, v5, v0

    .line 137
    .local v3, streamType:I
    iget-object v5, p0, Lcom/android/settings_ex/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v3}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v1

    .line 139
    .local v1, muted:Z
    iget-object v5, p0, Lcom/android/settings_ex/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v5, v5, v0

    if-eqz v5, :cond_0

    .line 140
    const/4 v5, 0x2

    if-ne v3, v5, :cond_3

    if-eqz v1, :cond_3

    iget-object v5, p0, Lcom/android/settings_ex/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->shouldVibrate(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 142
    const-string v5, "p2"

    invoke-static {v5}, Lcom/android/settings_ex/Utils;->isbuildProduct(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const v2, 0x7f0200e6

    .line 143
    .local v2, res:I
    :goto_1
    iget-object v5, p0, Lcom/android/settings_ex/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v5, v5, v0

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 150
    .end local v2           #res:I
    :cond_0
    :goto_2
    iget-object v5, p0, Lcom/android/settings_ex/RingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v7, v5, v0

    if-eqz v1, :cond_5

    move v5, v6

    :goto_3
    invoke-virtual {v7, v5}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 153
    iget-object v5, p0, Lcom/android/settings_ex/RingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v5, v5, v0

    if-eqz v5, :cond_1

    .line 155
    if-eqz v1, :cond_6

    iget-boolean v5, p0, Lcom/android/settings_ex/RingerVolumePreference;->mIsSoundException:Z

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/android/settings_ex/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v3}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v4

    .line 158
    .local v4, volume:I
    :goto_4
    iget-object v5, p0, Lcom/android/settings_ex/RingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v5, v5, v0

    invoke-virtual {v5, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 135
    .end local v4           #volume:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :cond_2
    const v2, 0x7f0200aa

    goto :goto_1

    .line 145
    :cond_3
    iget-object v5, p0, Lcom/android/settings_ex/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v7, v5, v0

    if-eqz v1, :cond_4

    sget-object v5, Lcom/android/settings_ex/RingerVolumePreference;->SEEKBAR_MUTED_RES_ID:[I

    aget v5, v5, v0

    :goto_5
    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_4
    sget-object v5, Lcom/android/settings_ex/RingerVolumePreference;->SEEKBAR_UNMUTED_RES_ID:[I

    aget v5, v5, v0

    goto :goto_5

    .line 150
    :cond_5
    const/4 v5, 0x1

    goto :goto_3

    .line 155
    :cond_6
    iget-object v5, p0, Lcom/android/settings_ex/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    goto :goto_4

    .line 161
    .end local v1           #muted:Z
    .end local v3           #streamType:I
    :cond_7
    return-void
.end method


# virtual methods
.method public RingStop()V
    .locals 6

    .prologue
    .line 468
    invoke-virtual {p0}, Lcom/android/settings_ex/RingerVolumePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    .line 469
    .local v1, dialog:Landroid/app/Dialog;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 471
    iget-object v0, p0, Lcom/android/settings_ex/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    .local v0, arr$:[Landroid/preference/VolumePreference$SeekBarVolumizer;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 472
    .local v4, vol:Landroid/preference/VolumePreference$SeekBarVolumizer;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/preference/VolumePreference$SeekBarVolumizer;->stopSample()V

    .line 471
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 476
    .end local v0           #arr$:[Landroid/preference/VolumePreference$SeekBarVolumizer;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #vol:Landroid/preference/VolumePreference$SeekBarVolumizer;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/RingerVolumePreference;->onActivityStop()V

    .line 477
    return-void
.end method

.method public createActionButtons()V
    .locals 1

    .prologue
    .line 130
    const v0, 0x104000a

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/RingerVolumePreference;->setPositiveButtonText(I)V

    .line 131
    const/high16 v0, 0x104

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/RingerVolumePreference;->setNegativeButtonText(I)V

    .line 132
    return-void
.end method

.method public onActivityStop()V
    .locals 4

    .prologue
    .line 304
    invoke-super {p0}, Landroid/preference/VolumePreference;->onActivityStop()V

    .line 306
    iget-object v0, p0, Lcom/android/settings_ex/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    .local v0, arr$:[Landroid/preference/VolumePreference$SeekBarVolumizer;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 307
    .local v3, vol:Landroid/preference/VolumePreference$SeekBarVolumizer;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/preference/VolumePreference$SeekBarVolumizer;->stopSample()V

    .line 306
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 309
    .end local v3           #vol:Landroid/preference/VolumePreference$SeekBarVolumizer;
    :cond_1
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 9
    .parameter "view"

    .prologue
    .line 214
    invoke-super {p0, p1}, Landroid/preference/VolumePreference;->onBindDialogView(Landroid/view/View;)V

    .line 216
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sget-object v5, Lcom/android/settings_ex/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v5, v5

    if-ge v2, v5, :cond_0

    .line 217
    sget-object v5, Lcom/android/settings_ex/RingerVolumePreference;->SEEKBAR_ID:[I

    aget v5, v5, v2

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    .line 218
    .local v3, seekBar:Landroid/widget/SeekBar;
    iget-object v5, p0, Lcom/android/settings_ex/RingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    aput-object v3, v5, v2

    .line 226
    iget-object v5, p0, Lcom/android/settings_ex/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    new-instance v6, Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {p0}, Lcom/android/settings_ex/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v7

    sget-object v8, Lcom/android/settings_ex/RingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v8, v8, v2

    invoke-direct {v6, p0, v7, v3, v8}, Landroid/preference/VolumePreference$SeekBarVolumizer;-><init>(Landroid/preference/VolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;I)V

    aput-object v6, v5, v2

    .line 216
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 231
    .end local v3           #seekBar:Landroid/widget/SeekBar;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mode_ringer_streams_affected"

    const/16 v7, 0x24

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 235
    .local v4, silentableStreams:I
    const/4 v2, 0x0

    :goto_1
    iget-object v5, p0, Lcom/android/settings_ex/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    array-length v5, v5

    if-ge v2, v5, :cond_1

    .line 236
    sget-object v5, Lcom/android/settings_ex/RingerVolumePreference;->CHECKBOX_VIEW_ID:[I

    aget v5, v5, v2

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 242
    .local v0, checkbox:Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/android/settings_ex/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    aput-object v0, v5, v2

    .line 235
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 246
    .end local v0           #checkbox:Landroid/widget/ImageView;
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/RingerVolumePreference;->updateSlidersAndMutedStates()V

    .line 249
    iget-object v5, p0, Lcom/android/settings_ex/RingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-nez v5, :cond_2

    .line 250
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 251
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v5, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 252
    new-instance v5, Lcom/android/settings_ex/RingerVolumePreference$2;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/RingerVolumePreference$2;-><init>(Lcom/android/settings_ex/RingerVolumePreference;)V

    iput-object v5, p0, Lcom/android/settings_ex/RingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 261
    invoke-virtual {p0}, Lcom/android/settings_ex/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/RingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 277
    .end local v1           #filter:Landroid/content/IntentFilter;
    :cond_2
    return-void
.end method

.method protected onClick()V
    .locals 1

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/android/settings_ex/RingerVolumePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 395
    invoke-super {p0}, Landroid/preference/VolumePreference;->onClick()V

    .line 397
    :cond_0
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 4
    .parameter "positiveResult"

    .prologue
    .line 287
    invoke-super {p0, p1}, Landroid/preference/VolumePreference;->onDialogClosed(Z)V

    .line 289
    if-nez p1, :cond_1

    .line 290
    iget-object v0, p0, Lcom/android/settings_ex/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    .local v0, arr$:[Landroid/preference/VolumePreference$SeekBarVolumizer;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 291
    .local v3, vol:Landroid/preference/VolumePreference$SeekBarVolumizer;
    if-eqz v3, :cond_0

    .line 293
    invoke-virtual {v3}, Landroid/preference/VolumePreference$SeekBarVolumizer;->stopSample()V

    .line 295
    invoke-virtual {v3}, Landroid/preference/VolumePreference$SeekBarVolumizer;->revertVolume()V

    .line 290
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 299
    .end local v0           #arr$:[Landroid/preference/VolumePreference$SeekBarVolumizer;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #vol:Landroid/preference/VolumePreference$SeekBarVolumizer;
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/RingerVolumePreference;->cleanup()V

    .line 300
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 314
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_1

    move v0, v2

    .line 315
    .local v0, isdown:Z
    :goto_0
    iget-object v4, p0, Lcom/android/settings_ex/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 318
    .local v1, ringerMode:I
    sparse-switch p2, :sswitch_data_0

    move v2, v3

    .line 336
    :cond_0
    :goto_1
    :sswitch_0
    return v2

    .end local v0           #isdown:Z
    .end local v1           #ringerMode:I
    :cond_1
    move v0, v3

    .line 314
    goto :goto_0

    .line 320
    .restart local v0       #isdown:Z
    .restart local v1       #ringerMode:I
    :sswitch_1
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eq v1, v2, :cond_0

    .line 321
    iget-object v4, p0, Lcom/android/settings_ex/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aget-object v3, v4, v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/preference/VolumePreference$SeekBarVolumizer;->changeVolumeBy(I)V

    goto :goto_1

    .line 326
    :sswitch_2
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eq v1, v2, :cond_0

    .line 327
    iget-object v4, p0, Lcom/android/settings_ex/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aget-object v3, v4, v3

    invoke-virtual {v3, v2}, Landroid/preference/VolumePreference$SeekBarVolumizer;->changeVolumeBy(I)V

    goto :goto_1

    .line 318
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_2
        0x19 -> :sswitch_1
        0xa4 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter

    .prologue
    .line 402
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/settings_ex/RingerVolumePreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 404
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/VolumePreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 417
    :cond_1
    return-void

    .line 408
    :cond_2
    check-cast p1, Lcom/android/settings_ex/RingerVolumePreference$SavedState;

    .line 409
    invoke-virtual {p1}, Lcom/android/settings_ex/RingerVolumePreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/VolumePreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 410
    sget-object v0, Lcom/android/settings_ex/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Lcom/android/settings_ex/RingerVolumePreference$SavedState;->getVolumeStore(I)[Landroid/preference/VolumePreference$VolumeStore;

    move-result-object v1

    .line 411
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/android/settings_ex/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 412
    iget-object v2, p0, Lcom/android/settings_ex/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aget-object v2, v2, v0

    .line 413
    if-eqz v2, :cond_3

    .line 414
    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Landroid/preference/VolumePreference$SeekBarVolumizer;->onRestoreInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V

    .line 411
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onSampleStarting(Landroid/preference/VolumePreference$SeekBarVolumizer;)V
    .locals 4
    .parameter "volumizer"

    .prologue
    .line 346
    invoke-super {p0, p1}, Landroid/preference/VolumePreference;->onSampleStarting(Landroid/preference/VolumePreference$SeekBarVolumizer;)V

    .line 347
    iget-object v0, p0, Lcom/android/settings_ex/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    .local v0, arr$:[Landroid/preference/VolumePreference$SeekBarVolumizer;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 348
    .local v3, vol:Landroid/preference/VolumePreference$SeekBarVolumizer;
    if-eqz v3, :cond_0

    if-eq v3, p1, :cond_0

    invoke-virtual {v3}, Landroid/preference/VolumePreference$SeekBarVolumizer;->stopSample()V

    .line 347
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 350
    .end local v3           #vol:Landroid/preference/VolumePreference$SeekBarVolumizer;
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 372
    invoke-super {p0}, Landroid/preference/VolumePreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    .line 373
    .local v2, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/android/settings_ex/RingerVolumePreference;->isPersistent()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 386
    .end local v2           #superState:Landroid/os/Parcelable;
    :goto_0
    return-object v2

    .line 378
    .restart local v2       #superState:Landroid/os/Parcelable;
    :cond_0
    new-instance v1, Lcom/android/settings_ex/RingerVolumePreference$SavedState;

    invoke-direct {v1, v2}, Lcom/android/settings_ex/RingerVolumePreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 379
    .local v1, myState:Lcom/android/settings_ex/RingerVolumePreference$SavedState;
    sget-object v5, Lcom/android/settings_ex/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v5, v5

    invoke-virtual {v1, v5}, Lcom/android/settings_ex/RingerVolumePreference$SavedState;->getVolumeStore(I)[Landroid/preference/VolumePreference$VolumeStore;

    move-result-object v4

    .line 380
    .local v4, volumeStore:[Landroid/preference/VolumePreference$VolumeStore;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v5, Lcom/android/settings_ex/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v5, v5

    if-ge v0, v5, :cond_2

    .line 381
    iget-object v5, p0, Lcom/android/settings_ex/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aget-object v3, v5, v0

    .line 382
    .local v3, vol:Landroid/preference/VolumePreference$SeekBarVolumizer;
    if-eqz v3, :cond_1

    .line 383
    aget-object v5, v4, v0

    invoke-virtual {v3, v5}, Landroid/preference/VolumePreference$SeekBarVolumizer;->onSaveInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V

    .line 380
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v3           #vol:Landroid/preference/VolumePreference$SeekBarVolumizer;
    :cond_2
    move-object v2, v1

    .line 386
    goto :goto_0
.end method
