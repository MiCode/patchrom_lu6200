.class Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService$2;
.super Landroid/os/Handler;
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
    .line 453
    iput-object p1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService$2;->this$0:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 456
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 469
    :goto_0
    return-void

    .line 459
    :pswitch_0
    const-string v0, "BluetoothAVRCPService"

    const-string v1, "Sending play position changed event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 465
    :pswitch_1
    const-string v0, "BluetoothAVRCPService"

    const-string v1, "Play status update timed out. Sending cached info"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService$2;->this$0:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;

    #getter for: Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayStatus:I
    invoke-static {v0}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->access$000(Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;)I

    move-result v0

    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService$2;->this$0:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;

    #getter for: Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mDuration:J
    invoke-static {v1}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->access$400(Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;)J

    move-result-wide v1

    long-to-int v1, v1

    iget-object v2, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService$2;->this$0:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;

    #getter for: Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPosition:J
    invoke-static {v2}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->access$500(Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;)J

    move-result-wide v2

    long-to-int v2, v2

    #calls: Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->onPlayStatusAvailableNative(III)V
    invoke-static {v0, v1, v2}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->access$600(III)V

    goto :goto_0

    .line 456
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
