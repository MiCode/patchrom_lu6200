.class Landroid/server/BluetoothAdapterStateMachine$PerProcessState;
.super Lcom/android/internal/util/State;
.source "BluetoothAdapterStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothAdapterStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerProcessState"
.end annotation


# instance fields
.field isTurningOn:Z

.field mCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

.field final synthetic this$0:Landroid/server/BluetoothAdapterStateMachine;


# direct methods
.method private constructor <init>(Landroid/server/BluetoothAdapterStateMachine;)V
    .locals 1
    .parameter

    .prologue
    .line 635
    iput-object p1, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 636
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->mCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 637
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->isTurningOn:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/server/BluetoothAdapterStateMachine;Landroid/server/BluetoothAdapterStateMachine$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 635
    invoke-direct {p0, p1}, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;-><init>(Landroid/server/BluetoothAdapterStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    .line 641
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$6500(Landroid/server/BluetoothAdapterStateMachine;)Landroid/os/Message;

    move-result-object v1

    iget v0, v1, Landroid/os/Message;->what:I

    .line 642
    .local v0, what:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter PerProcessState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/server/BluetoothAdapterStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$700(Ljava/lang/String;)V

    .line 644
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 645
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->isTurningOn:Z

    .line 651
    :goto_0
    return-void

    .line 646
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 647
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->isTurningOn:Z

    goto :goto_0

    .line 649
    :cond_1
    const-string v1, "BluetoothAdapterStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enter PerProcessState: wrong msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 10
    .parameter "message"

    .prologue
    const/16 v9, 0x69

    const/16 v8, 0x66

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 655
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PerProcessState process message: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Landroid/server/BluetoothAdapterStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v4}, Landroid/server/BluetoothAdapterStateMachine;->access$700(Ljava/lang/String;)V

    .line 657
    const/4 v3, 0x1

    .line 658
    .local v3, retValue:Z
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    move v3, v5

    .line 781
    .end local v3           #retValue:Z
    :cond_0
    :goto_0
    return v3

    .line 660
    .restart local v3       #retValue:Z
    :sswitch_0
    iget-object v4, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v4}, Landroid/server/BluetoothAdapterStateMachine;->access$6600(Landroid/server/BluetoothAdapterStateMachine;)Landroid/os/Message;

    move-result-object v4

    iget-object v4, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/bluetooth/IBluetoothStateChangeCallback;

    iput-object v4, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->mCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 663
    iget-object v4, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v4}, Landroid/server/BluetoothAdapterStateMachine;->access$2500(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v4

    invoke-virtual {v4}, Landroid/server/BluetoothService;->getNumberOfApplicationStateChangeTrackers()I

    move-result v4

    if-le v4, v7, :cond_0

    .line 664
    iget-object v4, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v5, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->mCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->perProcessCallback(ZLandroid/bluetooth/IBluetoothStateChangeCallback;)V
    invoke-static {v4, v7, v5}, Landroid/server/BluetoothAdapterStateMachine;->access$2400(Landroid/server/BluetoothAdapterStateMachine;ZLandroid/bluetooth/IBluetoothStateChangeCallback;)V

    goto :goto_0

    .line 668
    :sswitch_1
    iget-boolean v4, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->isTurningOn:Z

    if-eqz v4, :cond_0

    .line 669
    iget-object v4, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v6, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->mCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->perProcessCallback(ZLandroid/bluetooth/IBluetoothStateChangeCallback;)V
    invoke-static {v4, v7, v6}, Landroid/server/BluetoothAdapterStateMachine;->access$2400(Landroid/server/BluetoothAdapterStateMachine;ZLandroid/bluetooth/IBluetoothStateChangeCallback;)V

    .line 670
    iput-boolean v5, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->isTurningOn:Z

    goto :goto_0

    .line 674
    :sswitch_2
    iget-object v4, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->removeMessages(I)V
    invoke-static {v4, v9}, Landroid/server/BluetoothAdapterStateMachine;->access$6700(Landroid/server/BluetoothAdapterStateMachine;I)V

    .line 675
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1

    .line 676
    iget-object v4, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v5, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mHotOff:Landroid/server/BluetoothAdapterStateMachine$HotOff;
    invoke-static {v5}, Landroid/server/BluetoothAdapterStateMachine;->access$2900(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothAdapterStateMachine$HotOff;

    move-result-object v5

    #calls: Landroid/server/BluetoothAdapterStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Landroid/server/BluetoothAdapterStateMachine;->access$6800(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V

    .line 677
    iget-object v4, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/server/BluetoothAdapterStateMachine;->access$2100(Landroid/server/BluetoothAdapterStateMachine;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1110022

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 681
    :try_start_0
    iget-object v4, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v5, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v6, 0x66

    invoke-virtual {v5, v6}, Landroid/server/BluetoothAdapterStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    #calls: Landroid/server/BluetoothAdapterStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v4, v5}, Landroid/server/BluetoothAdapterStateMachine;->access$6900(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 682
    :catch_0
    move-exception v1

    .local v1, ex:Ljava/lang/NullPointerException;
    const-string v4, "BluetoothAdapterStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NullpointerException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 686
    .end local v1           #ex:Ljava/lang/NullPointerException;
    :cond_1
    iget-boolean v4, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->isTurningOn:Z

    if-nez v4, :cond_0

    .line 687
    iget-object v4, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/4 v5, 0x0

    #calls: Landroid/server/BluetoothAdapterStateMachine;->recoverStateMachine(ILjava/lang/Object;)V
    invoke-static {v4, v8, v5}, Landroid/server/BluetoothAdapterStateMachine;->access$4200(Landroid/server/BluetoothAdapterStateMachine;ILjava/lang/Object;)V

    .line 691
    :try_start_1
    iget-object v4, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v4}, Landroid/server/BluetoothAdapterStateMachine;->access$2500(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v4

    invoke-virtual {v4}, Landroid/server/BluetoothService;->getApplicationStateChangeCallbacks()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 692
    .local v0, c:Landroid/bluetooth/IBluetoothStateChangeCallback;
    iget-object v4, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/4 v5, 0x0

    #calls: Landroid/server/BluetoothAdapterStateMachine;->perProcessCallback(ZLandroid/bluetooth/IBluetoothStateChangeCallback;)V
    invoke-static {v4, v5, v0}, Landroid/server/BluetoothAdapterStateMachine;->access$2400(Landroid/server/BluetoothAdapterStateMachine;ZLandroid/bluetooth/IBluetoothStateChangeCallback;)V

    .line 693
    iget-object v4, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v5, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/4 v6, 0x3

    invoke-virtual {v5, v6, v0}, Landroid/server/BluetoothAdapterStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    #calls: Landroid/server/BluetoothAdapterStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v4, v5}, Landroid/server/BluetoothAdapterStateMachine;->access$7000(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 695
    .end local v0           #c:Landroid/bluetooth/IBluetoothStateChangeCallback;
    .end local v2           #i$:Ljava/util/Iterator;
    :catch_1
    move-exception v1

    .restart local v1       #ex:Ljava/lang/NullPointerException;
    const-string v4, "BluetoothAdapterStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NullpointerException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 701
    .end local v1           #ex:Ljava/lang/NullPointerException;
    :sswitch_3
    iget-object v4, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v5, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mHotOff:Landroid/server/BluetoothAdapterStateMachine$HotOff;
    invoke-static {v5}, Landroid/server/BluetoothAdapterStateMachine;->access$2900(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothAdapterStateMachine$HotOff;

    move-result-object v5

    #calls: Landroid/server/BluetoothAdapterStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Landroid/server/BluetoothAdapterStateMachine;->access$7100(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V

    .line 702
    const-string v4, "BluetoothAdapterStateMachine"

    const-string v5, "Power-down timed out, resetting..."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :try_start_2
    iget-object v4, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v5, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v6, 0x66

    invoke-virtual {v5, v6}, Landroid/server/BluetoothAdapterStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    #calls: Landroid/server/BluetoothAdapterStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v4, v5}, Landroid/server/BluetoothAdapterStateMachine;->access$7200(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V

    .line 705
    iget-object v4, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/server/BluetoothAdapterStateMachine;->access$2100(Landroid/server/BluetoothAdapterStateMachine;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1110022

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 707
    iget-object v4, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v5, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/server/BluetoothAdapterStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    #calls: Landroid/server/BluetoothAdapterStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v4, v5}, Landroid/server/BluetoothAdapterStateMachine;->access$7300(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 709
    :catch_2
    move-exception v1

    .restart local v1       #ex:Ljava/lang/NullPointerException;
    const-string v4, "BluetoothAdapterStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NullpointerException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 712
    .end local v1           #ex:Ljava/lang/NullPointerException;
    :sswitch_4
    iget-object v4, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v5, 0xb

    #calls: Landroid/server/BluetoothAdapterStateMachine;->broadcastState(I)V
    invoke-static {v4, v5}, Landroid/server/BluetoothAdapterStateMachine;->access$800(Landroid/server/BluetoothAdapterStateMachine;I)V

    .line 713
    iget-object v4, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->persistSwitchSetting(Z)V
    invoke-static {v4, v7}, Landroid/server/BluetoothAdapterStateMachine;->access$1100(Landroid/server/BluetoothAdapterStateMachine;Z)V

    .line 714
    iget-object v4, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v4}, Landroid/server/BluetoothAdapterStateMachine;->access$2500(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v4

    invoke-virtual {v4}, Landroid/server/BluetoothService;->initBluetoothAfterTurningOn()V

    .line 715
    iget-object v4, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v5, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mBluetoothOn:Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;
    invoke-static {v5}, Landroid/server/BluetoothAdapterStateMachine;->access$4500(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;

    move-result-object v5

    #calls: Landroid/server/BluetoothAdapterStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Landroid/server/BluetoothAdapterStateMachine;->access$7400(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V

    .line 716
    iget-object v4, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v5, 0xc

    #calls: Landroid/server/BluetoothAdapterStateMachine;->broadcastState(I)V
    invoke-static {v4, v5}, Landroid/server/BluetoothAdapterStateMachine;->access$800(Landroid/server/BluetoothAdapterStateMachine;I)V

    .line 718
    iget-object v4, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v4}, Landroid/server/BluetoothAdapterStateMachine;->access$2500(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v4

    invoke-virtual {v4}, Landroid/server/BluetoothService;->runBluetooth()V

    goto/16 :goto_0

    .line 721
    :sswitch_5
    iget-object v4, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v5, 0xd

    #calls: Landroid/server/BluetoothAdapterStateMachine;->broadcastState(I)V
    invoke-static {v4, v5}, Landroid/server/BluetoothAdapterStateMachine;->access$800(Landroid/server/BluetoothAdapterStateMachine;I)V

    .line 722
    iget-object v4, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v4}, Landroid/server/BluetoothAdapterStateMachine;->access$2500(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v4

    invoke-virtual {v4}, Landroid/server/BluetoothService;->getAdapterConnectionState()I

    move-result v4

    if-eqz v4, :cond_2

    .line 724
    iget-object v4, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v4}, Landroid/server/BluetoothAdapterStateMachine;->access$2500(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v4

    invoke-virtual {v4}, Landroid/server/BluetoothService;->disconnectDevices()V

    .line 725
    iget-object v4, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v5, 0x67

    const-wide/16 v6, 0xbb8

    invoke-virtual {v4, v5, v6, v7}, Landroid/server/BluetoothAdapterStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_0

    .line 731
    :cond_2
    :sswitch_6
    iget-object v4, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v5, 0x67

    #calls: Landroid/server/BluetoothAdapterStateMachine;->removeMessages(I)V
    invoke-static {v4, v5}, Landroid/server/BluetoothAdapterStateMachine;->access$7500(Landroid/server/BluetoothAdapterStateMachine;I)V

    .line 732
    iget-object v4, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->finishSwitchingOff()V
    invoke-static {v4}, Landroid/server/BluetoothAdapterStateMachine;->access$4900(Landroid/server/BluetoothAdapterStateMachine;)V

    goto/16 :goto_0

    .line 735
    :sswitch_7
    iget-object v4, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->finishSwitchingOff()V
    invoke-static {v4}, Landroid/server/BluetoothAdapterStateMachine;->access$4900(Landroid/server/BluetoothAdapterStateMachine;)V

    .line 736
    const-string v4, "BluetoothAdapterStateMachine"

    const-string v5, "Devices fail to disconnect, reseting..."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    iget-object v4, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v5, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mHotOff:Landroid/server/BluetoothAdapterStateMachine$HotOff;
    invoke-static {v5}, Landroid/server/BluetoothAdapterStateMachine;->access$2900(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothAdapterStateMachine$HotOff;

    move-result-object v5

    #calls: Landroid/server/BluetoothAdapterStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Landroid/server/BluetoothAdapterStateMachine;->access$7600(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V

    .line 740
    :try_start_3
    iget-object v4, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v5, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v6, 0x66

    invoke-virtual {v5, v6}, Landroid/server/BluetoothAdapterStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    #calls: Landroid/server/BluetoothAdapterStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v4, v5}, Landroid/server/BluetoothAdapterStateMachine;->access$7700(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V

    .line 742
    iget-object v4, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v4}, Landroid/server/BluetoothAdapterStateMachine;->access$2500(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v4

    invoke-virtual {v4}, Landroid/server/BluetoothService;->getApplicationStateChangeCallbacks()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 743
    .restart local v0       #c:Landroid/bluetooth/IBluetoothStateChangeCallback;
    iget-object v4, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/4 v5, 0x0

    #calls: Landroid/server/BluetoothAdapterStateMachine;->perProcessCallback(ZLandroid/bluetooth/IBluetoothStateChangeCallback;)V
    invoke-static {v4, v5, v0}, Landroid/server/BluetoothAdapterStateMachine;->access$2400(Landroid/server/BluetoothAdapterStateMachine;ZLandroid/bluetooth/IBluetoothStateChangeCallback;)V

    .line 744
    iget-object v4, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v5, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/4 v6, 0x3

    invoke-virtual {v5, v6, v0}, Landroid/server/BluetoothAdapterStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    #calls: Landroid/server/BluetoothAdapterStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v4, v5}, Landroid/server/BluetoothAdapterStateMachine;->access$7800(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    .line 746
    .end local v0           #c:Landroid/bluetooth/IBluetoothStateChangeCallback;
    .end local v2           #i$:Ljava/util/Iterator;
    :catch_3
    move-exception v1

    .restart local v1       #ex:Ljava/lang/NullPointerException;
    const-string v4, "BluetoothAdapterStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NullpointerException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 750
    .end local v1           #ex:Ljava/lang/NullPointerException;
    :sswitch_8
    iget-object v6, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/bluetooth/IBluetoothStateChangeCallback;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->perProcessCallback(ZLandroid/bluetooth/IBluetoothStateChangeCallback;)V
    invoke-static {v6, v5, v4}, Landroid/server/BluetoothAdapterStateMachine;->access$2400(Landroid/server/BluetoothAdapterStateMachine;ZLandroid/bluetooth/IBluetoothStateChangeCallback;)V

    .line 751
    iget-object v4, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v4}, Landroid/server/BluetoothAdapterStateMachine;->access$2500(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v4

    invoke-virtual {v4}, Landroid/server/BluetoothService;->isApplicationStateChangeTrackerEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 752
    iget-object v4, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v4}, Landroid/server/BluetoothAdapterStateMachine;->access$2500(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/server/BluetoothService;->switchConnectable(Z)V

    .line 753
    iget-object v4, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const-wide/16 v5, 0x1388

    invoke-virtual {v4, v9, v5, v6}, Landroid/server/BluetoothAdapterStateMachine;->sendMessageDelayed(IJ)V

    goto/16 :goto_0

    .line 760
    :sswitch_9
    iget-object v4, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v4}, Landroid/server/BluetoothAdapterStateMachine;->access$2500(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/server/BluetoothService;->switchConnectable(Z)V

    .line 761
    iget-object v4, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v9, v6, v7}, Landroid/server/BluetoothAdapterStateMachine;->sendMessageDelayed(IJ)V

    .line 762
    iget-object v4, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->allProcessesCallback(Z)V
    invoke-static {v4, v5}, Landroid/server/BluetoothAdapterStateMachine;->access$6300(Landroid/server/BluetoothAdapterStateMachine;Z)V

    .line 765
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x37

    if-ne v4, v5, :cond_0

    .line 770
    :try_start_4
    iget-object v4, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v5, p0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v6, 0x37

    invoke-virtual {v5, v6}, Landroid/server/BluetoothAdapterStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    #calls: Landroid/server/BluetoothAdapterStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v4, v5}, Landroid/server/BluetoothAdapterStateMachine;->access$7900(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 771
    :catch_4
    move-exception v1

    .restart local v1       #ex:Ljava/lang/NullPointerException;
    const-string v4, "BluetoothAdapterStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NullpointerException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 776
    .end local v1           #ex:Ljava/lang/NullPointerException;
    :sswitch_a
    const-string v4, "BluetoothAdapterStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PerProcessState received: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 658
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_a
        0x3 -> :sswitch_0
        0x4 -> :sswitch_8
        0x5 -> :sswitch_5
        0x34 -> :sswitch_6
        0x35 -> :sswitch_1
        0x36 -> :sswitch_2
        0x37 -> :sswitch_9
        0x3a -> :sswitch_9
        0x67 -> :sswitch_7
        0x69 -> :sswitch_3
    .end sparse-switch
.end method
