.class Landroid/server/BluetoothService$3;
.super Ljava/lang/Object;
.source "BluetoothService.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothService;


# direct methods
.method constructor <init>(Landroid/server/BluetoothService;)V
    .locals 0
    .parameter

    .prologue
    .line 2572
    iput-object p1, p0, Landroid/server/BluetoothService$3;->this$0:Landroid/server/BluetoothService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 3
    .parameter "profile"
    .parameter "proxy"

    .prologue
    .line 2574
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 2576
    iget-object v0, p0, Landroid/server/BluetoothService$3;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0}, Landroid/server/BluetoothService;->access$1600(Landroid/server/BluetoothService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2577
    const-string v0, "btservice.cpp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceConnected(), calling BluetoothAdapter.closeProfileProxy(), mHeadsetProxy is not null: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/server/BluetoothService$3;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v2}, Landroid/server/BluetoothService;->access$1600(Landroid/server/BluetoothService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2579
    iget-object v0, p0, Landroid/server/BluetoothService$3;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v0}, Landroid/server/BluetoothService;->access$1700(Landroid/server/BluetoothService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v1, p0, Landroid/server/BluetoothService$3;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Landroid/server/BluetoothService;->access$1600(Landroid/server/BluetoothService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 2582
    :cond_0
    iget-object v0, p0, Landroid/server/BluetoothService$3;->this$0:Landroid/server/BluetoothService;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    .end local p2
    #setter for: Landroid/server/BluetoothService;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0, p2}, Landroid/server/BluetoothService;->access$1602(Landroid/server/BluetoothService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 2588
    :cond_1
    :goto_0
    return-void

    .line 2583
    .restart local p2
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 2584
    iget-object v0, p0, Landroid/server/BluetoothService$3;->this$0:Landroid/server/BluetoothService;

    check-cast p2, Landroid/bluetooth/BluetoothInputDevice;

    .end local p2
    #setter for: Landroid/server/BluetoothService;->mInputDevice:Landroid/bluetooth/BluetoothInputDevice;
    invoke-static {v0, p2}, Landroid/server/BluetoothService;->access$1802(Landroid/server/BluetoothService;Landroid/bluetooth/BluetoothInputDevice;)Landroid/bluetooth/BluetoothInputDevice;

    goto :goto_0

    .line 2585
    .restart local p2
    :cond_3
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 2586
    iget-object v0, p0, Landroid/server/BluetoothService$3;->this$0:Landroid/server/BluetoothService;

    check-cast p2, Landroid/bluetooth/BluetoothPan;

    .end local p2
    #setter for: Landroid/server/BluetoothService;->mPan:Landroid/bluetooth/BluetoothPan;
    invoke-static {v0, p2}, Landroid/server/BluetoothService;->access$1902(Landroid/server/BluetoothService;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;

    goto :goto_0
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .parameter "profile"

    .prologue
    const/4 v1, 0x0

    .line 2590
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2591
    iget-object v0, p0, Landroid/server/BluetoothService$3;->this$0:Landroid/server/BluetoothService;

    #setter for: Landroid/server/BluetoothService;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0, v1}, Landroid/server/BluetoothService;->access$1602(Landroid/server/BluetoothService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 2597
    :cond_0
    :goto_0
    return-void

    .line 2592
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 2593
    iget-object v0, p0, Landroid/server/BluetoothService$3;->this$0:Landroid/server/BluetoothService;

    #setter for: Landroid/server/BluetoothService;->mInputDevice:Landroid/bluetooth/BluetoothInputDevice;
    invoke-static {v0, v1}, Landroid/server/BluetoothService;->access$1802(Landroid/server/BluetoothService;Landroid/bluetooth/BluetoothInputDevice;)Landroid/bluetooth/BluetoothInputDevice;

    goto :goto_0

    .line 2594
    :cond_2
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 2595
    iget-object v0, p0, Landroid/server/BluetoothService$3;->this$0:Landroid/server/BluetoothService;

    #setter for: Landroid/server/BluetoothService;->mPan:Landroid/bluetooth/BluetoothPan;
    invoke-static {v0, v1}, Landroid/server/BluetoothService;->access$1902(Landroid/server/BluetoothService;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;

    goto :goto_0
.end method
