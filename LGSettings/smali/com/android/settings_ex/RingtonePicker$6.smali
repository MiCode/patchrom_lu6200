.class Lcom/android/settings_ex/RingtonePicker$6;
.super Landroid/os/Handler;
.source "RingtonePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/RingtonePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/RingtonePicker;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/RingtonePicker;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/RingtonePicker$6;->this$0:Lcom/android/settings_ex/RingtonePicker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1577
    const-string v0, "RingtonePicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "media completion handler....msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker$6;->this$0:Lcom/android/settings_ex/RingtonePicker;

    #getter for: Lcom/android/settings_ex/RingtonePicker;->ringtone:Landroid/media/Ringtone;
    invoke-static {v0}, Lcom/android/settings_ex/RingtonePicker;->access$1100(Lcom/android/settings_ex/RingtonePicker;)Landroid/media/Ringtone;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker$6;->this$0:Lcom/android/settings_ex/RingtonePicker;

    #getter for: Lcom/android/settings_ex/RingtonePicker;->ringtone:Landroid/media/Ringtone;
    invoke-static {v0}, Lcom/android/settings_ex/RingtonePicker;->access$1100(Lcom/android/settings_ex/RingtonePicker;)Landroid/media/Ringtone;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker$6;->this$0:Lcom/android/settings_ex/RingtonePicker;

    #getter for: Lcom/android/settings_ex/RingtonePicker;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/settings_ex/RingtonePicker;->access$1300(Lcom/android/settings_ex/RingtonePicker;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/RingtonePicker$6;->this$0:Lcom/android/settings_ex/RingtonePicker;

    #getter for: Lcom/android/settings_ex/RingtonePicker;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;
    invoke-static {v1}, Lcom/android/settings_ex/RingtonePicker;->access$1200(Lcom/android/settings_ex/RingtonePicker;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1585
    :cond_0
    :goto_0
    return-void

    .line 1581
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker$6;->this$0:Lcom/android/settings_ex/RingtonePicker;

    #getter for: Lcom/android/settings_ex/RingtonePicker;->ringtone:Landroid/media/Ringtone;
    invoke-static {v0}, Lcom/android/settings_ex/RingtonePicker;->access$1100(Lcom/android/settings_ex/RingtonePicker;)Landroid/media/Ringtone;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker$6;->this$0:Lcom/android/settings_ex/RingtonePicker;

    #getter for: Lcom/android/settings_ex/RingtonePicker;->ringtone:Landroid/media/Ringtone;
    invoke-static {v0}, Lcom/android/settings_ex/RingtonePicker;->access$1100(Lcom/android/settings_ex/RingtonePicker;)Landroid/media/Ringtone;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    goto :goto_0
.end method
