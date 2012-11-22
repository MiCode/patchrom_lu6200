.class Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings$3;
.super Ljava/lang/Object;
.source "LgBtUiDutSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->createDutDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings$3;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 231
    packed-switch p2, :pswitch_data_0

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 233
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings$3;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;

    #getter for: Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v0}, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->access$400(Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDUTMode()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings$3;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;

    const-string v1, "Please wait.\nEntering DUT mode."

    #calls: Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->onPleaseWaitDialog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->access$500(Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings$3;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;

    #getter for: Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->access$300(Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings$3;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;

    #getter for: Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->access$300(Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 240
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings$3;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;

    #getter for: Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v0}, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->access$400(Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDUTMode()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings$3;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;

    #calls: Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->onExitDUTMode()V
    invoke-static {v0}, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->access$600(Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;)V

    goto :goto_0

    .line 231
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
