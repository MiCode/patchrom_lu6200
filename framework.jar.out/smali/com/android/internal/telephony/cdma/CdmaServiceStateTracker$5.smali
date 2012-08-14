.class Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$5;
.super Ljava/lang/Object;
.source "CdmaServiceStateTracker.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->PlayVZWERISound(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 2998
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$5;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 6
    .parameter "mp"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 3000
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$5;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    #getter for: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$500(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)Landroid/media/AudioManager;

    move-result-object v1

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$5;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    #getter for: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->restoreVolume:I
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$400(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)I

    move-result v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 3002
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$5;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    #getter for: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$600(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 3003
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$5;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    #getter for: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$600(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 3004
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$5;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isVZWERISoundPlaying:Z

    .line 3005
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$5;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-boolean v1, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isEriRingtoneStart:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3006
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.finishEriSound"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3007
    .local v0, finishEriSound:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$5;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3008
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$5;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isEriRingtoneStart:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3011
    .end local v0           #finishEriSound:Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$5;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    #setter for: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$602(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 3013
    return-void

    .line 3011
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$5;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    #setter for: Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$602(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    throw v1
.end method
