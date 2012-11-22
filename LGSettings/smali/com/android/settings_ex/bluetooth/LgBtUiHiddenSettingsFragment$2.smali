.class Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment$2;
.super Ljava/lang/Object;
.source "LgBtUiHiddenSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment$2;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment$2;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;

    const-string v1, "[BTUI] ### OnOff Test : onClick()... STOP test"

    #calls: Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->BtUiLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->access$300(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment$2;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mOnOffTest:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->access$002(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;Z)Z

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment$2;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;

    #calls: Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->closeOnOffTestDialog()V
    invoke-static {v0}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->access$600(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;)V

    return-void
.end method
