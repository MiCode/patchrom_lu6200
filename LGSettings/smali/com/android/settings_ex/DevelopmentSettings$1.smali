.class Lcom/android/settings_ex/DevelopmentSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "DevelopmentSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DevelopmentSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DevelopmentSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DevelopmentSettings;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/DevelopmentSettings$1;->this$0:Lcom/android/settings_ex/DevelopmentSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "content"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 594
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 595
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 596
    const-string v2, "connected"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings$1;->this$0:Lcom/android/settings_ex/DevelopmentSettings;

    #setter for: Lcom/android/settings_ex/DevelopmentSettings;->usbConnected:Z
    invoke-static {v2, v3}, Lcom/android/settings_ex/DevelopmentSettings;->access$002(Lcom/android/settings_ex/DevelopmentSettings;Z)Z

    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings$1;->this$0:Lcom/android/settings_ex/DevelopmentSettings;

    invoke-virtual {v2}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .local v1, mContext:Landroid/content/Context;
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings$1;->this$0:Lcom/android/settings_ex/DevelopmentSettings;

    #getter for: Lcom/android/settings_ex/DevelopmentSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v2}, Lcom/android/settings_ex/DevelopmentSettings;->access$100(Lcom/android/settings_ex/DevelopmentSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/DevelopmentSettings$1;->this$0:Lcom/android/settings_ex/DevelopmentSettings;

    const-string v2, "usb"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbManager;

    #setter for: Lcom/android/settings_ex/DevelopmentSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v3, v2}, Lcom/android/settings_ex/DevelopmentSettings;->access$102(Lcom/android/settings_ex/DevelopmentSettings;Landroid/hardware/usb/UsbManager;)Landroid/hardware/usb/UsbManager;

    .line 602
    :cond_0
    const-string v2, "VZW"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings$1;->this$0:Lcom/android/settings_ex/DevelopmentSettings;

    #getter for: Lcom/android/settings_ex/DevelopmentSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v2}, Lcom/android/settings_ex/DevelopmentSettings;->access$100(Lcom/android/settings_ex/DevelopmentSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/usb/UsbManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ecm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings$1;->this$0:Lcom/android/settings_ex/DevelopmentSettings;

    #getter for: Lcom/android/settings_ex/DevelopmentSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v2}, Lcom/android/settings_ex/DevelopmentSettings;->access$100(Lcom/android/settings_ex/DevelopmentSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/usb/UsbManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pc_suite"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings$1;->this$0:Lcom/android/settings_ex/DevelopmentSettings;

    #getter for: Lcom/android/settings_ex/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/settings_ex/DevelopmentSettings;->access$200(Lcom/android/settings_ex/DevelopmentSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 621
    .end local v1           #mContext:Landroid/content/Context;
    :cond_1
    :goto_0
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings$1;->this$0:Lcom/android/settings_ex/DevelopmentSettings;

    #getter for: Lcom/android/settings_ex/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/settings_ex/DevelopmentSettings;->access$200(Lcom/android/settings_ex/DevelopmentSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/settings_ex/MDMSettingsAdapter;->getInstance()Lcom/android/settings_ex/MDMSettingsAdapter;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings_ex/DevelopmentSettings$1;->this$0:Lcom/android/settings_ex/DevelopmentSettings;

    invoke-virtual {v4}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/DevelopmentSettings$1;->this$0:Lcom/android/settings_ex/DevelopmentSettings;

    #getter for: Lcom/android/settings_ex/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;
    invoke-static {v5}, Lcom/android/settings_ex/DevelopmentSettings;->access$200(Lcom/android/settings_ex/DevelopmentSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/DevelopmentSettings$1;->this$0:Lcom/android/settings_ex/DevelopmentSettings;

    invoke-virtual {v6}, Lcom/android/settings_ex/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/settings_ex/MDMSettingsAdapter;->setAdbEnableMenu(Landroid/content/ComponentName;Landroid/content/Context;Landroid/preference/CheckBoxPreference;Landroid/content/ContentResolver;)V

    .line 626
    :cond_2
    return-void

    .line 612
    .restart local v1       #mContext:Landroid/content/Context;
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings$1;->this$0:Lcom/android/settings_ex/DevelopmentSettings;

    #getter for: Lcom/android/settings_ex/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/settings_ex/DevelopmentSettings;->access$200(Lcom/android/settings_ex/DevelopmentSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 616
    .end local v1           #mContext:Landroid/content/Context;
    :cond_4
    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings$1;->this$0:Lcom/android/settings_ex/DevelopmentSettings;

    #setter for: Lcom/android/settings_ex/DevelopmentSettings;->usbConnected:Z
    invoke-static {v2, v4}, Lcom/android/settings_ex/DevelopmentSettings;->access$002(Lcom/android/settings_ex/DevelopmentSettings;Z)Z

    iget-object v2, p0, Lcom/android/settings_ex/DevelopmentSettings$1;->this$0:Lcom/android/settings_ex/DevelopmentSettings;

    #getter for: Lcom/android/settings_ex/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/settings_ex/DevelopmentSettings;->access$200(Lcom/android/settings_ex/DevelopmentSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method
