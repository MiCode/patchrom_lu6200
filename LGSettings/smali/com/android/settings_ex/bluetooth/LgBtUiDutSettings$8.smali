.class Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings$8;
.super Ljava/lang/Object;
.source "LgBtUiDutSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->closeDUTModeDialog()V
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
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings$8;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings$8;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;

    #getter for: Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->mDutDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->access$800(Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings$8;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;

    #getter for: Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->mDutDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->access$800(Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings$8;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->mDutDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->access$802(Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 333
    :cond_0
    return-void
.end method
