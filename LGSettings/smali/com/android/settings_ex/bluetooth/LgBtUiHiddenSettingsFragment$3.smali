.class Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment$3;
.super Ljava/lang/Object;
.source "LgBtUiHiddenSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->onOnOffTestDialog()V
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
    .line 480
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment$3;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment$3;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;

    const-string v1, "[BTUI] ### OnOff Test : onCancel()... STOP test"

    #calls: Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->BtUiLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->access$300(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;Ljava/lang/String;)V

    .line 483
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment$3;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mOnOffTest:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->access$002(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;Z)Z

    .line 484
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment$3;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;

    #calls: Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->closeOnOffTestDialog()V
    invoke-static {v0}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->access$600(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;)V

    .line 485
    return-void
.end method
