.class Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$1;
.super Landroid/content/BroadcastReceiver;
.source "UsbSettingsPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 82
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 84
    const-string v3, "connected"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 85
    .local v2, usbConnected:Z
    const-string v3, "configured"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .local v1, usbConfigured:Z
    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    const-string v3, "UsbSettingsPopup"

    const-string v4, "[AUTORUN] ===== USB Connection ====="

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v6, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbConnected:Z

    .end local v1           #usbConfigured:Z
    .end local v2           #usbConnected:Z
    :cond_0
    :goto_0
    return-void

    .restart local v1       #usbConfigured:Z
    .restart local v2       #usbConnected:Z
    :cond_1
    const-string v3, "UsbSettingsPopup"

    const-string v4, "[AUTORUN] ===== USB Disconnection ====="

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v5, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbConnected:Z

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v3}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->access$100(Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;)Landroid/hardware/usb/UsbManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mDefaultFunction:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->access$000(Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static {v3}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->access$200(Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;)Landroid/net/ConnectivityManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    invoke-static {p1, v5}, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->setTetherStatus(Landroid/content/Context;Z)V

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;

    invoke-virtual {v3}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->finish()V

    goto :goto_0

    .end local v1           #usbConfigured:Z
    .end local v2           #usbConnected:Z
    :cond_2
    const-string v3, "android.intent.action.autorun_ack"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-boolean v3, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mOldversion:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;

    const-string v4, ""

    #calls: Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->autorunUpdateState(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->access$300(Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->cancelAutorunTimer()V

    goto :goto_0

    :cond_4
    const-string v3, "android.intent.action.autorun_change_mode"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->cancelAutorunTimer()V

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;

    #calls: Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->cancelProgressPopup()V
    invoke-static {v3}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->access$400(Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;)V

    sget-boolean v3, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mOldversion:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;

    const-string v4, ""

    #calls: Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->autorunChangeMode(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->access$500(Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;Ljava/lang/String;)V

    goto :goto_0
.end method
