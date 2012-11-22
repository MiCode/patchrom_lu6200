.class Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothAuthorizeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenForPairingCancel"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 329
    const-string v0, "BluetoothAuthorizeDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BTUI] ListenForPairingCancel : onReceive() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;

    #calls: Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->onDecline()V
    invoke-static {v0}, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->access$100(Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;)V

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;

    #calls: Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->quitActivity()V
    invoke-static {v0}, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->access$200(Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;)V

    return-void
.end method
