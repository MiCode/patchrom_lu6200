.class Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings$4;
.super Ljava/lang/Object;
.source "LgBtUiDutSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->onPleaseWaitDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;

.field final synthetic val$progressMsg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings$4;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;

    iput-object p2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings$4;->val$progressMsg:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings$4;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;

    #getter for: Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->mWaitDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->access$700(Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings$4;->val$progressMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings$4;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;

    #getter for: Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->mWaitDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->access$700(Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 257
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings$4;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;

    #getter for: Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->mWaitDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->access$700(Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 258
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings$4;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;

    #getter for: Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->mWaitDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->access$700(Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 259
    return-void
.end method
