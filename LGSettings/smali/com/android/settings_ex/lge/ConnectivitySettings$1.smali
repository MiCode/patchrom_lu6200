.class Lcom/android/settings_ex/lge/ConnectivitySettings$1;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/lge/ConnectivitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/lge/ConnectivitySettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/lge/ConnectivitySettings;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/lge/ConnectivitySettings$1;->this$0:Lcom/android/settings_ex/lge/ConnectivitySettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 173
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 176
    const-string v3, "connected"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 177
    .local v2, usbConnected:Z
    const-string v3, "configured"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .local v1, usbConfigured:Z
    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/lge/ConnectivitySettings$1;->this$0:Lcom/android/settings_ex/lge/ConnectivitySettings;

    const/4 v4, 0x1

    #setter for: Lcom/android/settings_ex/lge/ConnectivitySettings;->mUsbConnection:Z
    invoke-static {v3, v4}, Lcom/android/settings_ex/lge/ConnectivitySettings;->access$002(Lcom/android/settings_ex/lge/ConnectivitySettings;Z)Z

    iget-object v3, p0, Lcom/android/settings_ex/lge/ConnectivitySettings$1;->this$0:Lcom/android/settings_ex/lge/ConnectivitySettings;

    iget-object v4, p0, Lcom/android/settings_ex/lge/ConnectivitySettings$1;->this$0:Lcom/android/settings_ex/lge/ConnectivitySettings;

    #getter for: Lcom/android/settings_ex/lge/ConnectivitySettings;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v4}, Lcom/android/settings_ex/lge/ConnectivitySettings;->access$100(Lcom/android/settings_ex/lge/ConnectivitySettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/usb/UsbManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/settings_ex/lge/ConnectivitySettings;->updateToggles(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/settings_ex/lge/ConnectivitySettings;->access$200(Lcom/android/settings_ex/lge/ConnectivitySettings;Ljava/lang/String;)V

    .line 190
    .end local v1           #usbConfigured:Z
    .end local v2           #usbConnected:Z
    :cond_0
    :goto_0
    return-void

    .line 186
    .restart local v1       #usbConfigured:Z
    .restart local v2       #usbConnected:Z
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/lge/ConnectivitySettings$1;->this$0:Lcom/android/settings_ex/lge/ConnectivitySettings;

    #setter for: Lcom/android/settings_ex/lge/ConnectivitySettings;->mUsbConnection:Z
    invoke-static {v3, v4}, Lcom/android/settings_ex/lge/ConnectivitySettings;->access$002(Lcom/android/settings_ex/lge/ConnectivitySettings;Z)Z

    iget-object v3, p0, Lcom/android/settings_ex/lge/ConnectivitySettings$1;->this$0:Lcom/android/settings_ex/lge/ConnectivitySettings;

    iget-object v4, p0, Lcom/android/settings_ex/lge/ConnectivitySettings$1;->this$0:Lcom/android/settings_ex/lge/ConnectivitySettings;

    #getter for: Lcom/android/settings_ex/lge/ConnectivitySettings;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v4}, Lcom/android/settings_ex/lge/ConnectivitySettings;->access$100(Lcom/android/settings_ex/lge/ConnectivitySettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/usb/UsbManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/settings_ex/lge/ConnectivitySettings;->updateToggles(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/settings_ex/lge/ConnectivitySettings;->access$200(Lcom/android/settings_ex/lge/ConnectivitySettings;Ljava/lang/String;)V

    goto :goto_0
.end method
