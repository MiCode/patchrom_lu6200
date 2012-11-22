.class Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog$1;
.super Landroid/os/Handler;
.source "BluetoothRequestServiceDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog$1;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 119
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 127
    :goto_0
    return-void

    .line 121
    :pswitch_0
    const-string v0, "BluetoothRequestServiceDialog"

    const-string v1, "[BTUI] MSG_ACTIVITY_CLOSE"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog$1;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
