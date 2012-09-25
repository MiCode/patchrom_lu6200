.class Lcom/android/settings_ex/deviceinfo/UsbSettings$2$9;
.super Ljava/lang/Object;
.source "UsbSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 1319
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$9;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettings$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1321
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$9;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettings$2;

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #setter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mInternetConnection:I
    invoke-static {v0, p2}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$2002(Lcom/android/settings_ex/deviceinfo/UsbSettings;I)I

    .line 1323
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$9;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettings$2;

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mInternetConnection:I
    invoke-static {v0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$2000(Lcom/android/settings_ex/deviceinfo/UsbSettings;)I

    move-result v0

    if-nez v0, :cond_3

    .line 1324
    const-string v0, "UsbSettings"

    const-string v1, "[AUTORUN] onPreferenceChange() : USB_FUNCTION_TETHER"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$9;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettings$2;

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    const-string v1, "ecm"

    #setter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$402(Lcom/android/settings_ex/deviceinfo/UsbSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 1326
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$9;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettings$2;

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$9;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettings$2;

    iget-object v1, v1, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$400(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/settings_ex/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$1800(Lcom/android/settings_ex/deviceinfo/UsbSettings;Ljava/lang/String;)V

    .line 1328
    const-string v0, "/sys/class/android_usb/android0/f_cdrom_storage/lun/cdrom_usbmode"

    const-string v1, "5"

    invoke-static {v0, v1}, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->writeToFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1331
    sget-boolean v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbConnected:Z

    if-eqz v0, :cond_1

    .line 1332
    sput-boolean v2, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbModeChanging:Z

    .line 1333
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$9;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettings$2;

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$100(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$9;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettings$2;

    iget-object v1, v1, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$400(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 1334
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$9;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettings$2;

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$9;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettings$2;

    iget-object v1, v1, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$400(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$502(Lcom/android/settings_ex/deviceinfo/UsbSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 1344
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1345
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$9;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettings$2;

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->finish()V

    .line 1370
    :cond_0
    :goto_1
    return-void

    .line 1336
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$9;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettings$2;

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$100(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$9;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettings$2;

    iget-object v1, v1, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$400(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 1337
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$9;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettings$2;

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$9;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettings$2;

    iget-object v1, v1, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$400(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$502(Lcom/android/settings_ex/deviceinfo/UsbSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 1338
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$9;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettings$2;

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mAutorunEnable:Z
    invoke-static {v0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$2100(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1339
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$9;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettings$2;

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$100(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v0

    const-string v1, "cdrom_storage"

    invoke-virtual {v0, v1, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 1341
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$9;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettings$2;

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #setter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mNeedSleep:Z
    invoke-static {v0, v2}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$2202(Lcom/android/settings_ex/deviceinfo/UsbSettings;Z)Z

    goto :goto_0

    .line 1346
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$9;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettings$2;

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mInternetConnection:I
    invoke-static {v0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$2000(Lcom/android/settings_ex/deviceinfo/UsbSettings;)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 1347
    const-string v0, "UsbSettings"

    const-string v1, "[AUTORUN] onPreferenceChange() : USB_FUNCTION_PC_SUITE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$9;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettings$2;

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    const-string v1, "pc_suite"

    #setter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$402(Lcom/android/settings_ex/deviceinfo/UsbSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 1349
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$9;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettings$2;

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$9;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettings$2;

    iget-object v1, v1, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$400(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/settings_ex/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$1800(Lcom/android/settings_ex/deviceinfo/UsbSettings;Ljava/lang/String;)V

    .line 1351
    const-string v0, "/sys/class/android_usb/android0/f_cdrom_storage/lun/cdrom_usbmode"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->writeToFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1354
    sget-boolean v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbConnected:Z

    if-eqz v0, :cond_4

    .line 1355
    sput-boolean v2, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbModeChanging:Z

    .line 1356
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$9;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettings$2;

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$100(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$9;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettings$2;

    iget-object v1, v1, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$400(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 1357
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$9;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettings$2;

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$9;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettings$2;

    iget-object v1, v1, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$400(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$502(Lcom/android/settings_ex/deviceinfo/UsbSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 1367
    :goto_2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1368
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$9;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettings$2;

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->finish()V

    goto/16 :goto_1

    .line 1359
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$9;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettings$2;

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$100(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$9;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettings$2;

    iget-object v1, v1, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$400(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 1360
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$9;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettings$2;

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$9;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettings$2;

    iget-object v1, v1, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$400(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$502(Lcom/android/settings_ex/deviceinfo/UsbSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 1361
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$9;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettings$2;

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mAutorunEnable:Z
    invoke-static {v0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$2100(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1362
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$9;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettings$2;

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$100(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v0

    const-string v1, "cdrom_storage"

    invoke-virtual {v0, v1, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 1364
    :cond_5
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$9;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettings$2;

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #setter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mNeedSleep:Z
    invoke-static {v0, v2}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$2202(Lcom/android/settings_ex/deviceinfo/UsbSettings;Z)Z

    goto :goto_2
.end method
