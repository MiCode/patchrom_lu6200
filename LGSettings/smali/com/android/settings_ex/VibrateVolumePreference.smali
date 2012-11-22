.class public Lcom/android/settings_ex/VibrateVolumePreference;
.super Landroid/preference/SeekBarDialogPreference;
.source "VibrateVolumePreference.java"

# interfaces
.implements Landroid/preference/PreferenceManager$OnActivityStopListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;,
        Lcom/android/settings_ex/VibrateVolumePreference$SavedState;,
        Lcom/android/settings_ex/VibrateVolumePreference$VolumeStore;
    }
.end annotation


# instance fields
.field current_vibrateMode:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mSeekBarVolumizer:Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/preference/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/VibrateVolumePreference;->current_vibrateMode:I

    iput-object p1, p0, Lcom/android/settings_ex/VibrateVolumePreference;->mContext:Landroid/content/Context;

    const v0, 0x7f040072

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/VibrateVolumePreference;->setDialogLayoutResource(I)V

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings_ex/VibrateVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    .line 75
    return-void
.end method

.method private cleanup()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/settings_ex/VibrateVolumePreference;->mSeekBarVolumizer:Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/settings_ex/VibrateVolumePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 165
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0b0129

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/VibrateVolumePreference;->mSeekBarVolumizer:Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;

    invoke-virtual {v2}, Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;->revertVolume()V

    .end local v1           #view:Landroid/view/View;
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/VibrateVolumePreference;->mSeekBarVolumizer:Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;

    invoke-virtual {v2}, Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;->stop()V

    iput-object v4, p0, Lcom/android/settings_ex/VibrateVolumePreference;->mSeekBarVolumizer:Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;

    .end local v0           #dialog:Landroid/app/Dialog;
    :cond_2
    return-void
.end method


# virtual methods
.method public createActionButtons()V
    .locals 1

    .prologue
    const v0, 0x104000a

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/VibrateVolumePreference;->setPositiveButtonText(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/VibrateVolumePreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onActivityStop()V
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/settings_ex/VibrateVolumePreference;->mSeekBarVolumizer:Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/VibrateVolumePreference;->mSeekBarVolumizer:Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;

    invoke-virtual {v1}, Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;->stopSample()V

    iget-object v1, p0, Lcom/android/settings_ex/VibrateVolumePreference;->mSeekBarVolumizer:Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;

    invoke-virtual {v1}, Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;->revertVolume()V

    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/VibrateVolumePreference;->cleanup()V

    invoke-virtual {p0}, Lcom/android/settings_ex/VibrateVolumePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 81
    const v1, 0x7f0b0129

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 85
    .local v0, seekBar:Landroid/widget/SeekBar;
    iget-object v1, p0, Lcom/android/settings_ex/VibrateVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/VibrateVolumePreference;->current_vibrateMode:I

    .line 86
    const-string v1, "VibrateVolumePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "##### current_vibrateMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings_ex/VibrateVolumePreference;->current_vibrateMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;

    invoke-virtual {p0}, Lcom/android/settings_ex/VibrateVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;-><init>(Lcom/android/settings_ex/VibrateVolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;)V

    iput-object v1, p0, Lcom/android/settings_ex/VibrateVolumePreference;->mSeekBarVolumizer:Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;

    .line 104
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 105
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 106
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 107
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 1
    .parameter "positiveResult"

    .prologue
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onDialogClosed(Z)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/VibrateVolumePreference;->mSeekBarVolumizer:Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/VibrateVolumePreference;->mSeekBarVolumizer:Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;

    invoke-virtual {v0}, Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;->revertVolume()V

    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/VibrateVolumePreference;->cleanup()V

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/android/settings_ex/VibrateVolumePreference;->mSeekBarVolumizer:Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    .local v0, isdown:Z
    :goto_1
    packed-switch p2, :pswitch_data_0

    move v1, v2

    goto :goto_0

    .end local v0           #isdown:Z
    :cond_2
    move v0, v2

    goto :goto_1

    .restart local v0       #isdown:Z
    :pswitch_0
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/VibrateVolumePreference;->mSeekBarVolumizer:Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;->changeVolumeBy(I)V

    goto :goto_0

    :pswitch_1
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/VibrateVolumePreference;->mSeekBarVolumizer:Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;

    invoke-virtual {v2, v1}, Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;->changeVolumeBy(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter

    .prologue
    .line 200
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/settings_ex/VibrateVolumePreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    check-cast p1, Lcom/android/settings_ex/VibrateVolumePreference$SavedState;

    invoke-virtual {p1}, Lcom/android/settings_ex/VibrateVolumePreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/android/settings_ex/VibrateVolumePreference;->mSeekBarVolumizer:Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/VibrateVolumePreference;->mSeekBarVolumizer:Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;

    invoke-virtual {p1}, Lcom/android/settings_ex/VibrateVolumePreference$SavedState;->getVolumeStore()Lcom/android/settings_ex/VibrateVolumePreference$VolumeStore;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;->onRestoreInstanceState(Lcom/android/settings_ex/VibrateVolumePreference$VolumeStore;)V

    goto :goto_0
.end method

.method protected onSampleStarting(Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;)V
    .locals 1
    .parameter "volumizer"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/VibrateVolumePreference;->mSeekBarVolumizer:Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/VibrateVolumePreference;->mSeekBarVolumizer:Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/VibrateVolumePreference;->mSeekBarVolumizer:Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;

    invoke-virtual {v0}, Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;->stopSample()V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 185
    invoke-super {p0}, Landroid/preference/SeekBarDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 186
    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/android/settings_ex/VibrateVolumePreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .end local v1           #superState:Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .restart local v1       #superState:Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lcom/android/settings_ex/VibrateVolumePreference$SavedState;

    invoke-direct {v0, v1}, Lcom/android/settings_ex/VibrateVolumePreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .local v0, myState:Lcom/android/settings_ex/VibrateVolumePreference$SavedState;
    iget-object v2, p0, Lcom/android/settings_ex/VibrateVolumePreference;->mSeekBarVolumizer:Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings_ex/VibrateVolumePreference;->mSeekBarVolumizer:Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;

    invoke-virtual {v0}, Lcom/android/settings_ex/VibrateVolumePreference$SavedState;->getVolumeStore()Lcom/android/settings_ex/VibrateVolumePreference$VolumeStore;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;->onSaveInstanceState(Lcom/android/settings_ex/VibrateVolumePreference$VolumeStore;)V

    :cond_1
    move-object v1, v0

    .line 195
    goto :goto_0
.end method
