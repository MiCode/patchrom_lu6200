.class Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment$3;
.super Ljava/lang/Object;
.source "BluetoothNameDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment$3;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment$3;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;

    #getter for: Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->access$000(Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 139
    .local v0, mImm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment$3;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;

    iget-object v1, v1, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .end local v0           #mImm:Landroid/view/inputmethod/InputMethodManager;
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v1

    goto :goto_0
.end method
