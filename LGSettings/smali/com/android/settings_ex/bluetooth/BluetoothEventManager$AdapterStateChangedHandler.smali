.class Lcom/android/settings_ex/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"

# interfaces
.implements Lcom/android/settings_ex/bluetooth/BluetoothEventManager$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/bluetooth/BluetoothEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterStateChangedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/bluetooth/BluetoothEventManager;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothEventManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/bluetooth/BluetoothEventManager;Lcom/android/settings_ex/bluetooth/BluetoothEventManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothEventManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 6
    .parameter "context"
    .parameter "intent"
    .parameter "device"

    .prologue
    .line 220
    const-string v3, "android.bluetooth.adapter.extra.STATE"

    const/high16 v4, -0x8000

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 222
    .local v2, state:I
    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothEventManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BTUI] onReceive()... "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "==> STATE_OFF"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->BtUiLog(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->access$1100(Lcom/android/settings_ex/bluetooth/BluetoothEventManager;Ljava/lang/String;)V

    .line 227
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;
    invoke-static {v3}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->access$1200(Lcom/android/settings_ex/bluetooth/BluetoothEventManager;)Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->setBluetoothStateInt(I)V

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;
    invoke-static {v3}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/settings_ex/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v4

    monitor-enter v4

    .line 230
    :try_start_0
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;
    invoke-static {v3}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->access$1300(Lcom/android/settings_ex/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/bluetooth/BluetoothCallback;

    .local v0, callback:Lcom/android/settings_ex/bluetooth/BluetoothCallback;
    invoke-interface {v0, v2}, Lcom/android/settings_ex/bluetooth/BluetoothCallback;->onBluetoothStateChanged(I)V

    goto :goto_1

    .end local v0           #callback:Lcom/android/settings_ex/bluetooth/BluetoothCallback;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 223
    :cond_1
    const/16 v3, 0xb

    if-ne v2, v3, :cond_2

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothEventManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BTUI] onReceive()... "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "==> STATE_TURNING_ON"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->BtUiLog(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->access$1100(Lcom/android/settings_ex/bluetooth/BluetoothEventManager;Ljava/lang/String;)V

    goto :goto_0

    .line 224
    :cond_2
    const/16 v3, 0xc

    if-ne v2, v3, :cond_3

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothEventManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BTUI] onReceive()... "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "==> STATE_ON"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->BtUiLog(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->access$1100(Lcom/android/settings_ex/bluetooth/BluetoothEventManager;Ljava/lang/String;)V

    goto :goto_0

    .line 225
    :cond_3
    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothEventManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BTUI] onReceive()... "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "==> STATE_TURNING_OFF"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->BtUiLog(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->access$1100(Lcom/android/settings_ex/bluetooth/BluetoothEventManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 233
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_4
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    return-void
.end method
