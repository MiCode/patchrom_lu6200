.class Lcom/android/settings_ex/bluetooth/BluetoothSettings$1;
.super Landroid/os/Handler;
.source "BluetoothSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/bluetooth/BluetoothSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/BluetoothSettings;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 160
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 172
    :goto_0
    return-void

    .line 162
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    iget-object v1, v1, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    invoke-virtual {v2, v1}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->onDevicePreferenceClick(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)V

    goto :goto_0

    .line 166
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    #getter for: Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->access$000(Lcom/android/settings_ex/bluetooth/BluetoothSettings;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, message:Landroid/os/Message;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    #getter for: Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->access$000(Lcom/android/settings_ex/bluetooth/BluetoothSettings;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
