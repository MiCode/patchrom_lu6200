.class Lcom/android/internal/app/RingtonePickerActivity$6;
.super Landroid/os/Handler;
.source "RingtonePickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/RingtonePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/RingtonePickerActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/RingtonePickerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 533
    iput-object p1, p0, Lcom/android/internal/app/RingtonePickerActivity$6;->this$0:Lcom/android/internal/app/RingtonePickerActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 535
    const-string v0, "RingtonePickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "media completion handler....msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 537
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity$6;->this$0:Lcom/android/internal/app/RingtonePickerActivity;

    #getter for: Lcom/android/internal/app/RingtonePickerActivity;->ringtone:Landroid/media/Ringtone;
    invoke-static {v0}, Lcom/android/internal/app/RingtonePickerActivity;->access$800(Lcom/android/internal/app/RingtonePickerActivity;)Landroid/media/Ringtone;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity$6;->this$0:Lcom/android/internal/app/RingtonePickerActivity;

    #getter for: Lcom/android/internal/app/RingtonePickerActivity;->ringtone:Landroid/media/Ringtone;
    invoke-static {v0}, Lcom/android/internal/app/RingtonePickerActivity;->access$800(Lcom/android/internal/app/RingtonePickerActivity;)Landroid/media/Ringtone;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity$6;->this$0:Lcom/android/internal/app/RingtonePickerActivity;

    #getter for: Lcom/android/internal/app/RingtonePickerActivity;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/internal/app/RingtonePickerActivity;->access$1000(Lcom/android/internal/app/RingtonePickerActivity;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity$6;->this$0:Lcom/android/internal/app/RingtonePickerActivity;

    #getter for: Lcom/android/internal/app/RingtonePickerActivity;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;
    invoke-static {v1}, Lcom/android/internal/app/RingtonePickerActivity;->access$900(Lcom/android/internal/app/RingtonePickerActivity;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 543
    :cond_0
    :goto_0
    return-void

    .line 539
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 540
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity$6;->this$0:Lcom/android/internal/app/RingtonePickerActivity;

    #getter for: Lcom/android/internal/app/RingtonePickerActivity;->ringtone:Landroid/media/Ringtone;
    invoke-static {v0}, Lcom/android/internal/app/RingtonePickerActivity;->access$800(Lcom/android/internal/app/RingtonePickerActivity;)Landroid/media/Ringtone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity$6;->this$0:Lcom/android/internal/app/RingtonePickerActivity;

    #getter for: Lcom/android/internal/app/RingtonePickerActivity;->ringtone:Landroid/media/Ringtone;
    invoke-static {v0}, Lcom/android/internal/app/RingtonePickerActivity;->access$800(Lcom/android/internal/app/RingtonePickerActivity;)Landroid/media/Ringtone;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    goto :goto_0
.end method
