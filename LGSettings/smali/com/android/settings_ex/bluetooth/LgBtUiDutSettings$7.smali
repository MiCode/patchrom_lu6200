.class Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings$7;
.super Ljava/lang/Object;
.source "LgBtUiDutSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings$7;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;

    #calls: Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->onExitDUTMode()V
    invoke-static {v0}, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->access$600(Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;)V

    .line 285
    return-void
.end method
