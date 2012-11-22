.class Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment$4;
.super Ljava/lang/Object;
.source "BluetoothNameDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final BTUI_ENTER_KEY:Ljava/lang/String;

.field private enterBTHidden:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;)V
    .locals 1
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment$4;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "2233"

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment$4;->BTUI_ENTER_KEY:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment$4;->enterBTHidden:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 152
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    sparse-switch p2, :sswitch_data_0

    const-string v1, "fail"

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment$4;->enterBTHidden:Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment$4;->enterBTHidden:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment$4;->enterBTHidden:Ljava/lang/String;

    const-string v2, "2233"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.btui.action_btui_hidden_ics"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment$4;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;

    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment$4;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;

    #getter for: Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->access$000(Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 174
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 155
    :sswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment$4;->enterBTHidden:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment$4;->enterBTHidden:Ljava/lang/String;

    goto :goto_0

    .line 158
    :sswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment$4;->enterBTHidden:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment$4;->enterBTHidden:Ljava/lang/String;

    goto :goto_0

    .line 161
    :sswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment$4;->enterBTHidden:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment$4;->enterBTHidden:Ljava/lang/String;

    goto :goto_0

    .line 153
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_1
        0x19 -> :sswitch_2
        0x52 -> :sswitch_0
    .end sparse-switch
.end method
