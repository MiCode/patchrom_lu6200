.class Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity$1;
.super Ljava/lang/Object;
.source "BluetoothAlertSoundActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity$1;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity$1;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity;

    #getter for: Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity;->access$000(Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity$1;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity;

    #getter for: Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity;->access$000(Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 184
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity$1;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity;

    #getter for: Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity;->access$000(Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 185
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity$1;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity;->access$002(Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 187
    :cond_0
    const-string v0, "BluetoothAlertSoundActivity"

    const-string v1, "[BTUI] finish()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity$1;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/BluetoothAlertSoundActivity;->finish()V

    .line 189
    return-void
.end method
