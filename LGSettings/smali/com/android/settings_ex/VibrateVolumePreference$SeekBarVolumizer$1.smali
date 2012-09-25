.class Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer$1;
.super Landroid/database/ContentObserver;
.source "VibrateVolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 297
    iput-object p1, p0, Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer$1;->this$1:Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    .line 300
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 301
    iget-object v1, p0, Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer$1;->this$1:Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;

    #getter for: Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;->access$000(Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 302
    iget-object v1, p0, Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer$1;->this$1:Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;

    #getter for: Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;->access$100(Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "volume_vibrate"

    const/4 v3, 0x5

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 305
    .local v0, volume:I
    if-ltz v0, :cond_0

    .line 306
    iget-object v1, p0, Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer$1;->this$1:Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;

    #getter for: Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;->access$000(Lcom/android/settings_ex/VibrateVolumePreference$SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 309
    .end local v0           #volume:I
    :cond_0
    return-void
.end method
