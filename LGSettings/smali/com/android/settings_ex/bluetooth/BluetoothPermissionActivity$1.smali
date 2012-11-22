.class Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPermissionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity$1;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 80
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 83
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity$1;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;

    #getter for: Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->access$000(Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity$1;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;

    const/4 v3, 0x1

    #setter for: Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mUserConfirmed:Z
    invoke-static {v2, v3}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->access$102(Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;Z)Z

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity$1;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;

    #calls: Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->dismissDialog()V
    invoke-static {v2}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->access$200(Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;)V

    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_0
    return-void
.end method
