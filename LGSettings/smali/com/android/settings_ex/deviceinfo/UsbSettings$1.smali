.class Lcom/android/settings_ex/deviceinfo/UsbSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "UsbSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/deviceinfo/UsbSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/UsbSettings;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 198
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    .line 200
    .local v11, action:Ljava/lang/String;
    const-string v1, "UsbSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AUTORUN] mStateReceiver() : action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 203
    const-string v1, "connected"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    .line 204
    .local v15, usbConnected:Z
    const-string v1, "configured"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    .line 215
    .local v14, usbConfigured:Z
    const-string v1, "UsbSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AUTORUN] mStateReceiver() : mUsbModeChanging="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbModeChanging:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const-string v1, "UsbSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AUTORUN] mStateReceiver() : mDirectAutorun="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mDirectAutorun:Z
    invoke-static {v3}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$000(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v15, :cond_7

    sget-boolean v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbModeChanging:Z

    if-nez v1, :cond_0

    const-string v1, "mtp_only"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$100(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v1

    const-string v2, "dtf"

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VZW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mMtpAutorun:Z
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$200(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mX3Bug:Z

    if-nez v1, :cond_0

    const-string v1, "cdrom_storage"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->isAutorunTimer()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbConnected:Z

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mDoNotFinish:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    const-string v2, "1"

    #calls: Lcom/android/settings_ex/deviceinfo/UsbSettings;->changeAutorunMode(Ljava/lang/String;)Z
    invoke-static {v1, v2}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$300(Lcom/android/settings_ex/deviceinfo/UsbSettings;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 231
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    const-string v2, "mtp_only"

    #setter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$402(Lcom/android/settings_ex/deviceinfo/UsbSettings;Ljava/lang/String;)Ljava/lang/String;

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbModeChanging:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$100(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$400(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 234
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$400(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$502(Lcom/android/settings_ex/deviceinfo/UsbSettings;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    if-eqz v14, :cond_1

    const-string v1, "UsbSettings"

    const-string v2, "[AUTORUN] ===== USB Connection ====="

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbConnected:Z

    sget-boolean v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbModeChanging:Z

    if-nez v1, :cond_5

    const-string v1, "ecm"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static/range {p1 .. p1}, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->getTetherStatus(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$100(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v1

    const-string v2, "dtf"

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VZW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "JP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DCM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 248
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    const/4 v2, 0x5

    #calls: Lcom/android/settings_ex/deviceinfo/UsbSettings;->callPopup(I)V
    invoke-static {v1, v2}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$600(Lcom/android/settings_ex/deviceinfo/UsbSettings;I)V

    .line 405
    .end local v14           #usbConfigured:Z
    .end local v15           #usbConnected:Z
    :cond_1
    :goto_0
    return-void

    .line 250
    .restart local v14       #usbConfigured:Z
    .restart local v15       #usbConnected:Z
    :cond_2
    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "US"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ATT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #calls: Lcom/android/settings_ex/deviceinfo/UsbSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$700(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tether_entitlement_check_state"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_3

    .line 252
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #calls: Lcom/android/settings_ex/deviceinfo/UsbSettings;->checkEntitlement()V
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$800(Lcom/android/settings_ex/deviceinfo/UsbSettings;)V

    goto :goto_0

    .line 254
    :cond_3
    const-string v1, "ro.build.target_operator"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "USC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 255
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #calls: Lcom/android/settings_ex/deviceinfo/UsbSettings;->startUsbTetherIntroPopup()V
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$900(Lcom/android/settings_ex/deviceinfo/UsbSettings;)V

    goto :goto_0

    .line 258
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    const/4 v2, 0x1

    #calls: Lcom/android/settings_ex/deviceinfo/UsbSettings;->callPopup(I)V
    invoke-static {v1, v2}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$600(Lcom/android/settings_ex/deviceinfo/UsbSettings;I)V

    goto :goto_0

    .line 260
    :cond_5
    sget-boolean v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbModeChanging:Z

    if-nez v1, :cond_6

    const-string v1, "pc_suite"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$100(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v1

    const-string v2, "dtf"

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VZW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-boolean v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mX3Bug:Z

    if-nez v1, :cond_6

    .line 266
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "u0_cdma"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mDoNotFinish:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    const/4 v2, 0x0

    #setter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mDirectAutorun:Z
    invoke-static {v1, v2}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$002(Lcom/android/settings_ex/deviceinfo/UsbSettings;Z)Z

    .line 270
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    const-string v2, "0"

    #calls: Lcom/android/settings_ex/deviceinfo/UsbSettings;->changeAutorunMode(Ljava/lang/String;)Z
    invoke-static {v1, v2}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$300(Lcom/android/settings_ex/deviceinfo/UsbSettings;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 271
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    const-string v2, "pc_suite"

    #setter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$402(Lcom/android/settings_ex/deviceinfo/UsbSettings;Ljava/lang/String;)Ljava/lang/String;

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbModeChanging:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$100(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$400(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 274
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$400(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$502(Lcom/android/settings_ex/deviceinfo/UsbSettings;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 276
    :cond_6
    sget-boolean v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbModeChanging:Z

    if-eqz v1, :cond_1

    const-string v1, "mtp_only"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$100(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v1

    const-string v2, "dtf"

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VZW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mMtpAutorun:Z
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$200(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mX3Bug:Z

    if-nez v1, :cond_1

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mDirectAutorun:Z

    goto/16 :goto_0

    :cond_7
    const-string v1, "UsbSettings"

    const-string v2, "[AUTORUN] ===== USB Disconnection ====="

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbConnected:Z

    sget-boolean v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mX3Bug:Z

    if-nez v1, :cond_8

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbModeChanging:Z

    :cond_8
    invoke-static {}, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->cancelAutorunTimer()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #calls: Lcom/android/settings_ex/deviceinfo/UsbSettings;->cancelProgressPopup()V
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$1000(Lcom/android/settings_ex/deviceinfo/UsbSettings;)V

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VZW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 317
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$100(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$400(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 318
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$400(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$502(Lcom/android/settings_ex/deviceinfo/UsbSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 321
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$500(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ecm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$1100(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->getTetherStatus(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 323
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    const/4 v2, 0x0

    #calls: Lcom/android/settings_ex/deviceinfo/UsbSettings;->connectUsbTether(Z)V
    invoke-static {v1, v2}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$1200(Lcom/android/settings_ex/deviceinfo/UsbSettings;Z)V

    .line 328
    :cond_b
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbLauncher:Z
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$1300(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mDirectAutorun:Z

    if-eqz v1, :cond_d

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mDirectAutorun:Z

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$500(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mass_storage"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 325
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$1100(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->setMassStorage(Landroid/content/Context;Z)Z

    goto :goto_1

    .line 333
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->finish()V

    goto/16 :goto_0

    .line 336
    .end local v14           #usbConfigured:Z
    .end local v15           #usbConnected:Z
    :cond_e
    const-string v1, "android.intent.action.autorun_timeout"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-static {}, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->cancelAutorunTimer()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #calls: Lcom/android/settings_ex/deviceinfo/UsbSettings;->cancelProgressPopup()V
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$1000(Lcom/android/settings_ex/deviceinfo/UsbSettings;)V

    .line 349
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$400(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ecm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    sget-boolean v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mX3Bug:Z

    if-eqz v1, :cond_f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    const/4 v2, 0x1

    #calls: Lcom/android/settings_ex/deviceinfo/UsbSettings;->connectUsbTether(Z)V
    invoke-static {v1, v2}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$1200(Lcom/android/settings_ex/deviceinfo/UsbSettings;Z)V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbModeChanging:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$100(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$400(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 355
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$400(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$502(Lcom/android/settings_ex/deviceinfo/UsbSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 368
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->finish()V

    goto/16 :goto_0

    :cond_f
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbModeChanging:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$100(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$400(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 359
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$400(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$502(Lcom/android/settings_ex/deviceinfo/UsbSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 361
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    const/4 v2, 0x1

    #calls: Lcom/android/settings_ex/deviceinfo/UsbSettings;->connectUsbTether(Z)V
    invoke-static {v1, v2}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$1200(Lcom/android/settings_ex/deviceinfo/UsbSettings;Z)V

    goto :goto_2

    :cond_10
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbModeChanging:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$100(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$400(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 366
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$400(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$502(Lcom/android/settings_ex/deviceinfo/UsbSettings;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 369
    :cond_11
    const-string v1, "android.intent.action.autorun_ack"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    sget-boolean v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mOldversion:Z

    if-eqz v1, :cond_12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    const-string v2, ""

    #calls: Lcom/android/settings_ex/deviceinfo/UsbSettings;->autorunUpdateState(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$1400(Lcom/android/settings_ex/deviceinfo/UsbSettings;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_12
    invoke-static {}, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->cancelAutorunTimer()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #calls: Lcom/android/settings_ex/deviceinfo/UsbSettings;->cancelProgressPopup()V
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$1000(Lcom/android/settings_ex/deviceinfo/UsbSettings;)V

    goto/16 :goto_0

    .line 376
    :cond_13
    const-string v1, "android.intent.action.autorun_change_mode"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-static {}, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->cancelAutorunTimer()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #calls: Lcom/android/settings_ex/deviceinfo/UsbSettings;->cancelProgressPopup()V
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$1000(Lcom/android/settings_ex/deviceinfo/UsbSettings;)V

    sget-boolean v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mOldversion:Z

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    const-string v2, ""

    #calls: Lcom/android/settings_ex/deviceinfo/UsbSettings;->autorunChangeMode(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$1500(Lcom/android/settings_ex/deviceinfo/UsbSettings;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 382
    :cond_14
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 383
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #calls: Lcom/android/settings_ex/deviceinfo/UsbSettings;->isAirplaneModeOn()Z
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$1600(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Z

    move-result v12

    .line 385
    .local v12, enabled:Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mTether:Lcom/android/settings_ex/lge/RadioButtonPreference;
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$1700(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Lcom/android/settings_ex/lge/RadioButtonPreference;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 386
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mTether:Lcom/android/settings_ex/lge/RadioButtonPreference;
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$1700(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Lcom/android/settings_ex/lge/RadioButtonPreference;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #calls: Lcom/android/settings_ex/deviceinfo/UsbSettings;->isAirplaneModeOn()Z
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$1600(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Z

    move-result v1

    if-nez v1, :cond_16

    const/4 v1, 0x1

    :goto_3
    invoke-virtual {v2, v1}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setEnabled(Z)V

    :cond_15
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/settings_ex/MDMSettingsAdapter;->getInstance()Lcom/android/settings_ex/MDMSettingsAdapter;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$1100(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mTether:Lcom/android/settings_ex/lge/RadioButtonPreference;
    invoke-static {v8}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$1700(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Lcom/android/settings_ex/lge/RadioButtonPreference;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v1 .. v10}, Lcom/android/settings_ex/MDMSettingsAdapter;->setUsbMenu(Landroid/content/ComponentName;Landroid/content/Context;Lcom/android/settings_ex/lge/RadioButtonPreference;Lcom/android/settings_ex/lge/RadioButtonPreference;Lcom/android/settings_ex/lge/RadioButtonPreference;Lcom/android/settings_ex/lge/RadioButtonPreference;Lcom/android/settings_ex/lge/RadioButtonPreference;Lcom/android/settings_ex/lge/RadioButtonPreference;Lcom/android/settings_ex/lge/RadioButtonPreference;)V

    goto/16 :goto_0

    .line 386
    :cond_16
    const/4 v1, 0x0

    goto :goto_3

    .line 393
    .end local v12           #enabled:Z
    :cond_17
    const-string v1, "android.intent.action.mass_state_change"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static/range {p1 .. p1}, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->checkStorageVolume(Landroid/content/Context;)V

    const-string v13, ""

    .local v13, mode:Ljava/lang/String;
    const-string v1, "extra_usb_default_mode"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 398
    if-eqz v13, :cond_18

    const-string v1, "charge_only"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 399
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #calls: Lcom/android/settings_ex/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V
    invoke-static {v1, v13}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$1800(Lcom/android/settings_ex/deviceinfo/UsbSettings;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 402
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$100(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v1

    if-eqz v1, :cond_19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$100(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/usb/UsbManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v1

    :goto_4
    #calls: Lcom/android/settings_ex/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$1800(Lcom/android/settings_ex/deviceinfo/UsbSettings;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_19
    const-string v1, ""

    goto :goto_4
.end method
