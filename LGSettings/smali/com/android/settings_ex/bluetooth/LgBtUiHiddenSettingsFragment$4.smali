.class Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment$4;
.super Ljava/lang/Object;
.source "LgBtUiHiddenSettingsFragment.java"

# interfaces
.implements Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->enterSSPDebugMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 507
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment$4;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProxyAvailable(Ljava/lang/Object;)V
    .locals 4
    .parameter "proxyObject"

    .prologue
    const/4 v3, 0x1

    .line 509
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment$4;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;

    check-cast p1, Lcom/broadcom/bt/service/test/BluetoothTestMode;

    .end local p1
    #setter for: Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mBluetoothTestMode:Lcom/broadcom/bt/service/test/BluetoothTestMode;
    invoke-static {v1, p1}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->access$1202(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;Lcom/broadcom/bt/service/test/BluetoothTestMode;)Lcom/broadcom/bt/service/test/BluetoothTestMode;

    .line 510
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment$4;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;

    #getter for: Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mBluetoothTestMode:Lcom/broadcom/bt/service/test/BluetoothTestMode;
    invoke-static {v1}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->access$1200(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;)Lcom/broadcom/bt/service/test/BluetoothTestMode;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 512
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment$4;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;

    #getter for: Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mBluetoothTestMode:Lcom/broadcom/bt/service/test/BluetoothTestMode;
    invoke-static {v1}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->access$1200(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;)Lcom/broadcom/bt/service/test/BluetoothTestMode;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment$4;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;

    #getter for: Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mCallback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    invoke-static {v2}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->access$1300(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;)Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->createTestMode(BLcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;)I

    .line 513
    new-array v0, v3, [B

    .line 514
    .local v0, payload:[B
    const/4 v1, 0x0

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    .line 515
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment$4;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;

    #getter for: Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mBluetoothTestMode:Lcom/broadcom/bt/service/test/BluetoothTestMode;
    invoke-static {v1}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->access$1200(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;)Lcom/broadcom/bt/service/test/BluetoothTestMode;

    move-result-object v1

    const v2, 0x1011804

    invoke-virtual {v1, v2, v3, v0}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->SendBtldApiCmd(II[B)I

    .line 522
    .end local v0           #payload:[B
    :goto_0
    return-void

    .line 521
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment$4;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;

    const-string v2, "[BTUI] #### Can not bind to TestMode Service ####"

    #calls: Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->BtUiLog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->access$300(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;Ljava/lang/String;)V

    goto :goto_0
.end method
