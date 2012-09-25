.class Lcom/android/settings_ex/deviceinfo/UsbSettings$2$8;
.super Ljava/lang/Object;
.source "UsbSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/deviceinfo/UsbSettings$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/deviceinfo/UsbSettings$2;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/UsbSettings$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1289
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$8;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettings$2;

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

    .line 1292
    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    .line 1297
    invoke-static {}, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->cancelAutorunTimer()V

    .line 1298
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$8;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettings$2;

    iget-object v1, v1, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mProgress:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$1900(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->cancel()V

    .line 1300
    sput-boolean v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbModeChanging:Z

    .line 1301
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$8;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettings$2;

    iget-object v1, v1, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$100(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$8;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettings$2;

    iget-object v2, v2, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$400(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 1302
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$8;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettings$2;

    iget-object v1, v1, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$8;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettings$2;

    iget-object v2, v2, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$400(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$502(Lcom/android/settings_ex/deviceinfo/UsbSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 1303
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$8;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettings$2;

    iget-object v1, v1, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$8;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettings$2;

    iget-object v2, v2, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$400(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/settings_ex/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$1800(Lcom/android/settings_ex/deviceinfo/UsbSettings;Ljava/lang/String;)V

    .line 1305
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$8;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettings$2;

    iget-object v1, v1, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$400(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ecm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1306
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$8;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettings$2;

    iget-object v1, v1, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #calls: Lcom/android/settings_ex/deviceinfo/UsbSettings;->connectUsbTether(Z)V
    invoke-static {v1, v0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$1200(Lcom/android/settings_ex/deviceinfo/UsbSettings;Z)V

    .line 1308
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$8;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettings$2;

    iget-object v1, v1, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->finish()V

    .line 1311
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
