.class Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2$8;
.super Ljava/lang/Object;
.source "UsbSettingsPopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2$8;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    invoke-static {}, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->cancelAutorunTimer()V

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2$8;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2;

    iget-object v1, v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->access$1000(Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->cancel()V

    sput-boolean v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbModeChanging:Z

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2$8;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2;

    iget-object v1, v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->access$100(Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;)Landroid/hardware/usb/UsbManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2$8;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2;

    iget-object v2, v2, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->access$700(Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2$8;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2;

    iget-object v1, v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2$8;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2;

    iget-object v2, v2, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->access$700(Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mDefaultFunction:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->access$002(Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2$8;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2;

    iget-object v1, v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->access$700(Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ecm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2$8;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2;

    iget-object v1, v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;

    #calls: Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->connectUsbTether(Z)V
    invoke-static {v1, v0}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->access$800(Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;Z)V

    .line 334
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2$8;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2;

    iget-object v1, v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;

    invoke-virtual {v1}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->finish()V

    .line 337
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
