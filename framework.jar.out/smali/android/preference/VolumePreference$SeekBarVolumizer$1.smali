.class Landroid/preference/VolumePreference$SeekBarVolumizer$1;
.super Landroid/content/BroadcastReceiver;
.source "VolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/VolumePreference$SeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/preference/VolumePreference$SeekBarVolumizer;


# direct methods
.method constructor <init>(Landroid/preference/VolumePreference$SeekBarVolumizer;)V
    .locals 0
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Landroid/preference/VolumePreference$SeekBarVolumizer$1;->this$1:Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 257
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, action:Ljava/lang/String;
    iget-object v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer$1;->this$1:Landroid/preference/VolumePreference$SeekBarVolumizer;

    iget-object v3, v3, Landroid/preference/VolumePreference$SeekBarVolumizer;->this$0:Landroid/preference/VolumePreference;

    #getter for: Landroid/preference/VolumePreference;->mIsActive:Z
    invoke-static {v3}, Landroid/preference/VolumePreference;->access$000(Landroid/preference/VolumePreference;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "android.media.VOLUME_CHANGED_ACTION_EX"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 259
    const-string v3, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    iget-object v4, p0, Landroid/preference/VolumePreference$SeekBarVolumizer$1;->this$1:Landroid/preference/VolumePreference$SeekBarVolumizer;

    #getter for: Landroid/preference/VolumePreference$SeekBarVolumizer;->mLastProgress:I
    invoke-static {v4}, Landroid/preference/VolumePreference$SeekBarVolumizer;->access$100(Landroid/preference/VolumePreference$SeekBarVolumizer;)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 260
    .local v2, newOriginalvolume:I
    const-string v3, "android.media.EXTRA_HEADSET_STATE"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 261
    .local v1, headsetState:I
    const-string v3, "VolumePreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VolumeReceiver!!! onReceive..... mOriginalStreamVolume = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/preference/VolumePreference$SeekBarVolumizer$1;->this$1:Landroid/preference/VolumePreference$SeekBarVolumizer;

    #getter for: Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I
    invoke-static {v5}, Landroid/preference/VolumePreference$SeekBarVolumizer;->access$200(Landroid/preference/VolumePreference$SeekBarVolumizer;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", newOriginalvolume = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer$1;->this$1:Landroid/preference/VolumePreference$SeekBarVolumizer;

    #getter for: Landroid/preference/VolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v3}, Landroid/preference/VolumePreference$SeekBarVolumizer;->access$300(Landroid/preference/VolumePreference$SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 263
    if-eqz v1, :cond_1

    .line 264
    const-string/jumbo v3, "persist.sys.lge.music_vol"

    iget-object v4, p0, Landroid/preference/VolumePreference$SeekBarVolumizer$1;->this$1:Landroid/preference/VolumePreference$SeekBarVolumizer;

    #getter for: Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I
    invoke-static {v4}, Landroid/preference/VolumePreference$SeekBarVolumizer;->access$200(Landroid/preference/VolumePreference$SeekBarVolumizer;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :goto_0
    iget-object v3, p0, Landroid/preference/VolumePreference$SeekBarVolumizer$1;->this$1:Landroid/preference/VolumePreference$SeekBarVolumizer;

    #setter for: Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I
    invoke-static {v3, v2}, Landroid/preference/VolumePreference$SeekBarVolumizer;->access$202(Landroid/preference/VolumePreference$SeekBarVolumizer;I)I

    .line 270
    .end local v1           #headsetState:I
    .end local v2           #newOriginalvolume:I
    :cond_0
    return-void

    .line 266
    .restart local v1       #headsetState:I
    .restart local v2       #newOriginalvolume:I
    :cond_1
    const-string/jumbo v3, "persist.sys.lge.headset_vol"

    iget-object v4, p0, Landroid/preference/VolumePreference$SeekBarVolumizer$1;->this$1:Landroid/preference/VolumePreference$SeekBarVolumizer;

    #getter for: Landroid/preference/VolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I
    invoke-static {v4}, Landroid/preference/VolumePreference$SeekBarVolumizer;->access$200(Landroid/preference/VolumePreference$SeekBarVolumizer;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
