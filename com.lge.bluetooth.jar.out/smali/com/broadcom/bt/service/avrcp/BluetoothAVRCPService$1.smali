.class Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothAVRCPService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;)V
    .locals 0
    .parameter

    .prologue
    .line 408
    iput-object p1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService$1;->this$0:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 410
    if-nez p2, :cond_1

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 411
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, action:Ljava/lang/String;
    const-string v2, "BluetoothAVRCPService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "received intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    const/4 v1, 0x0

    .line 416
    .local v1, type:I
    iget-object v2, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService$1;->this$0:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;

    invoke-virtual {v2, p2}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->fillIntentExtras(Landroid/content/Intent;)V

    .line 420
    const-string v2, "com.android.music.playstatechanged"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.amazon.mp3.playstatechanged"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.htc.music.playstatechanged"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.doubleTwist.androidPlayer.playstatechanged"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.lge.music.playstatechanged"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 425
    :cond_2
    iget-object v2, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService$1;->this$0:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;

    invoke-virtual {v2, p2}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->updatePlayStatus(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 426
    iget-object v2, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService$1;->this$0:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;

    #getter for: Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayStatus:I
    invoke-static {v2}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->access$000(Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;)I

    move-result v2

    #calls: Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->onPlayStateChangedNative(I)V
    invoke-static {v2}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->access$100(I)V

    .line 427
    :cond_3
    iget-object v2, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService$1;->this$0:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;

    invoke-virtual {v2, p2}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->updateMetaData(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 428
    iget-object v2, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService$1;->this$0:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;

    invoke-virtual {v2}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->getTrackNumLong()J

    move-result-wide v2

    #calls: Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->onTrackChangedNative(J)V
    invoke-static {v2, v3}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->access$200(J)V

    goto :goto_0

    .line 432
    :cond_4
    const-string v2, "com.android.music.metachanged"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "com.amazon.mp3.metachanged"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "com.htc.music.metachanged"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "com.doubleTwist.androidPlayer.metachanged"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "com.lge.music.metachanged"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 436
    :cond_5
    iget-object v2, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService$1;->this$0:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;

    invoke-virtual {v2, p2}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->updateMetaData(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 437
    iget-object v2, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService$1;->this$0:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;

    invoke-virtual {v2}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->getTrackNumLong()J

    move-result-wide v2

    #calls: Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->onTrackChangedNative(J)V
    invoke-static {v2, v3}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->access$200(J)V

    goto/16 :goto_0

    .line 442
    :cond_6
    const-string v2, "com.android.music.playstatusresponse"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 443
    iget-object v2, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService$1;->this$0:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;

    #getter for: Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->access$300(Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 444
    iget-object v2, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService$1;->this$0:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;

    invoke-virtual {v2, p2}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->updatePlayStatus(Landroid/content/Intent;)Z

    .line 445
    iget-object v2, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService$1;->this$0:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;

    #getter for: Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayStatus:I
    invoke-static {v2}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->access$000(Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;)I

    move-result v2

    iget-object v3, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService$1;->this$0:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;

    #getter for: Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mDuration:J
    invoke-static {v3}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->access$400(Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;)J

    move-result-wide v3

    long-to-int v3, v3

    iget-object v4, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService$1;->this$0:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;

    #getter for: Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPosition:J
    invoke-static {v4}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->access$500(Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;)J

    move-result-wide v4

    long-to-int v4, v4

    #calls: Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->onPlayStatusAvailableNative(III)V
    invoke-static {v2, v3, v4}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->access$600(III)V

    goto/16 :goto_0

    .line 448
    :cond_7
    const-string v2, "BluetoothAVRCPService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
