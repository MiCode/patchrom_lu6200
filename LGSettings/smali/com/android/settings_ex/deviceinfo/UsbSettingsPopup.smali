.class public final Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;
.super Landroid/app/Activity;
.source "UsbSettingsPopup.java"


# instance fields
.field private mAutorunEnable:Z

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentFunction:Ljava/lang/String;

.field private mDefaultFunction:Ljava/lang/String;

.field private mDirectAutorun:Z

.field private mHandler:Landroid/os/Handler;

.field private mProgress:Landroid/app/ProgressDialog;

.field private mStateReceiver:Landroid/content/BroadcastReceiver;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 61
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 73
    iput-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mDirectAutorun:Z

    .line 74
    iput-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mAutorunEnable:Z

    .line 79
    new-instance v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$1;-><init>(Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mStateReceiver:Landroid/content/BroadcastReceiver;

    .line 205
    new-instance v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2;-><init>(Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mDefaultFunction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mDefaultFunction:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;)Landroid/hardware/usb/UsbManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mProgress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;)Landroid/net/ConnectivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->autorunUpdateState(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->cancelProgressPopup()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->autorunChangeMode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->changeAutorunMode(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mCurrentFunction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mCurrentFunction:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->connectUsbTether(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private autorunChangeMode(Ljava/lang/String;)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x1

    .line 538
    const-wide/16 v1, 0x12c

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mCurrentFunction:Ljava/lang/String;

    const-string v2, "ecm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 544
    sput-boolean v3, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbModeChanging:Z

    .line 545
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 546
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mCurrentFunction:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mDefaultFunction:Ljava/lang/String;

    .line 548
    invoke-direct {p0, v3}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->connectUsbTether(Z)V

    .line 560
    :goto_1
    sget-boolean v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mDoNotFinish:Z

    if-eqz v1, :cond_1

    .line 561
    const-string v1, "UsbSettingsPopup"

    const-string v2, "[AUTORUN] autorunChangeMode() : Do not finish"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mDoNotFinish:Z

    .line 567
    :goto_2
    return-void

    .line 539
    :catch_0
    move-exception v0

    .line 540
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "UsbSettingsPopup"

    const-string v2, "[AUTORUN] Exception wait for termination of PC Launcher, so just skip it"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 550
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    sput-boolean v3, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbModeChanging:Z

    .line 551
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 552
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mCurrentFunction:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mDefaultFunction:Ljava/lang/String;

    goto :goto_1

    .line 564
    :cond_1
    const-string v1, "UsbSettingsPopup"

    const-string v2, "[AUTORUN] autorunChangeMode() : finish"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->finish()V

    goto :goto_2
.end method

.method private autorunUpdateState(Ljava/lang/String;)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x1

    .line 498
    invoke-static {}, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->cancelAutorunTimer()V

    .line 499
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->cancelProgressPopup()V

    .line 501
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mCurrentFunction:Ljava/lang/String;

    const-string v1, "ecm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 502
    sget-boolean v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mX3Bug:Z

    if-eqz v0, :cond_0

    .line 503
    invoke-direct {p0, v2}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->connectUsbTether(Z)V

    .line 505
    sput-boolean v2, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbModeChanging:Z

    .line 506
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 507
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mCurrentFunction:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mDefaultFunction:Ljava/lang/String;

    .line 526
    :goto_0
    sget-boolean v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mDoNotFinish:Z

    if-eqz v0, :cond_2

    .line 527
    const-string v0, "UsbSettingsPopup"

    const-string v1, "[AUTORUN] autorunUpdateState() : Do not finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mDoNotFinish:Z

    .line 533
    :goto_1
    return-void

    .line 509
    :cond_0
    sput-boolean v2, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbModeChanging:Z

    .line 510
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 511
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mCurrentFunction:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mDefaultFunction:Ljava/lang/String;

    .line 513
    invoke-direct {p0, v2}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->connectUsbTether(Z)V

    goto :goto_0

    .line 516
    :cond_1
    sput-boolean v2, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbModeChanging:Z

    .line 517
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 518
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mCurrentFunction:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mDefaultFunction:Ljava/lang/String;

    goto :goto_0

    .line 530
    :cond_2
    const-string v0, "UsbSettingsPopup"

    const-string v1, "[AUTORUN] autorunUpdateState() : finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->finish()V

    goto :goto_1
.end method

.method private callPopup(I)V
    .locals 4
    .parameter "dialogId"

    .prologue
    .line 198
    const-string v1, "UsbSettingsPopup"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AUTORUN] callPopup() : popup id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, m:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 202
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 203
    return-void
.end method

.method private cancelProgressPopup()V
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mProgress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 440
    :cond_0
    return-void
.end method

.method private changeAutorunMode(Ljava/lang/String;)Z
    .locals 6
    .parameter "autorunMode"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 570
    const-string v4, "use_open_autorun"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 572
    .local v1, use:Ljava/lang/String;
    :try_start_0
    const-string v4, "false"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    .line 600
    :cond_0
    :goto_0
    return v2

    .line 575
    :catch_0
    move-exception v0

    .line 576
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v4, "UsbSettingsPopup"

    const-string v5, "[AUTORUN] changeAutorunMode() : autorun system property is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_1
    const-string v4, "0"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ATT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 581
    :cond_2
    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v5, "p2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DCM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 584
    :cond_3
    iget-boolean v4, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mAutorunEnable:Z

    if-ne v4, v3, :cond_0

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v4

    const-string v5, "VZW"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 585
    new-instance v4, Ljava/io/File;

    const-string v5, "/system/usbautorun.iso"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 586
    const-string v4, "/sys/class/android_usb/android0/f_cdrom_storage/lun/cdrom_usbmode"

    invoke-static {v4, p1}, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->writeToFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 593
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v5, "cdrom_storage"

    invoke-virtual {v4, v5, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 594
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->startAutorunTimer(Landroid/content/Context;)V

    .line 595
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->callPopup(I)V

    move v2, v3

    .line 596
    goto :goto_0
.end method

.method private checkEntitlement()V
    .locals 3

    .prologue
    .line 443
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 444
    .local v0, send:Landroid/content/Intent;
    const-string v1, "Tether_Type"

    const-string v2, "USB"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 445
    const-string v1, "com.android.settings_ex"

    const-string v2, "com.android.settings_ex.EntitlementDialogActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 446
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->startActivityForResult(Landroid/content/Intent;I)V

    .line 447
    return-void
.end method

.method private connectUsbTether(Z)V
    .locals 3
    .parameter "connection"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 604
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 621
    :goto_0
    return-void

    .line 606
    :cond_0
    if-ne p1, v2, :cond_2

    .line 607
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    move-result v0

    if-eqz v0, :cond_1

    .line 608
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->setTetherStatus(Landroid/content/Context;Z)V

    .line 611
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->callPopup(I)V

    .line 612
    const-string v0, "UsbSettingsPopup"

    const-string v1, "[AUTORUN] ============ Tethering ERROR !! ============"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 614
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->setTetherStatus(Landroid/content/Context;Z)V

    .line 615
    const-string v0, "UsbSettingsPopup"

    const-string v1, "[AUTORUN] ============ Tethering OK !!\t=============="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 618
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    .line 619
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->setTetherStatus(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method private startUsbTetherIntroPopup()V
    .locals 3

    .prologue
    .line 624
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 625
    .local v0, send:Landroid/content/Intent;
    const-string v1, "com.android.settings_ex"

    const-string v2, "com.android.settings_ex.deviceinfo.UsbTetherIntroUSCActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 626
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->startActivityForResult(Landroid/content/Intent;I)V

    .line 627
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v0, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 450
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 451
    if-nez p1, :cond_2

    .line 452
    if-ne p2, v0, :cond_1

    .line 453
    const-string v0, "Tether_Type"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "USB"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    invoke-direct {p0, v2}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->callPopup(I)V

    .line 495
    :cond_0
    :goto_0
    return-void

    .line 457
    :cond_1
    if-nez p2, :cond_0

    .line 458
    const-string v0, "Tether_Type"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "USB"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    const-string v0, "charge_only"

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mCurrentFunction:Ljava/lang/String;

    .line 461
    sput-boolean v2, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbModeChanging:Z

    .line 462
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 463
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mCurrentFunction:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mDefaultFunction:Ljava/lang/String;

    .line 465
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    .line 466
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->setTetherStatus(Landroid/content/Context;Z)V

    .line 467
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->finish()V

    goto :goto_0

    .line 471
    :cond_2
    if-ne p1, v2, :cond_0

    .line 472
    if-ne p2, v0, :cond_3

    .line 473
    const-string v0, "5"

    invoke-direct {p0, v0}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->changeAutorunMode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 474
    sput-boolean v2, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbModeChanging:Z

    .line 475
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 476
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mCurrentFunction:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mDefaultFunction:Ljava/lang/String;

    .line 478
    invoke-direct {p0, v2}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->connectUsbTether(Z)V

    .line 479
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->finish()V

    goto :goto_0

    .line 482
    :cond_3
    if-nez p2, :cond_0

    .line 483
    const-string v0, "charge_only"

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mCurrentFunction:Ljava/lang/String;

    .line 485
    sput-boolean v2, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbModeChanging:Z

    .line 486
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 487
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mCurrentFunction:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mDefaultFunction:Ljava/lang/String;

    .line 489
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    .line 490
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->setTetherStatus(Landroid/content/Context;Z)V

    .line 491
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 121
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 123
    iput-object p0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mContext:Landroid/content/Context;

    .line 124
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 125
    const-string v0, "usb"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 127
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mDefaultFunction:Ljava/lang/String;

    .line 128
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mDefaultFunction:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mCurrentFunction:Ljava/lang/String;

    .line 130
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mProgress:Landroid/app/ProgressDialog;

    .line 132
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "u0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "x3"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "m4"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "m4ds"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "p2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 135
    :cond_0
    sput-boolean v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mOldversion:Z

    .line 139
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "autorun_switch"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mAutorunEnable:Z

    .line 142
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mDefaultFunction:Ljava/lang/String;

    const-string v2, "ecm"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v2, "JP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DCM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 144
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->callPopup(I)V

    .line 157
    :cond_1
    :goto_2
    return-void

    .line 137
    :cond_2
    sput-boolean v2, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mOldversion:Z

    goto :goto_0

    :cond_3
    move v0, v2

    .line 139
    goto :goto_1

    .line 146
    :cond_4
    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v2, "US"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ATT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "tether_entitlement_check_state"

    invoke-static {v0, v2, v1}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_5

    .line 148
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->checkEntitlement()V

    goto :goto_2

    .line 150
    :cond_5
    const-string v0, "ro.build.target_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "USC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 151
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->startUsbTetherIntroPopup()V

    goto :goto_2

    .line 154
    :cond_6
    invoke-direct {p0, v1}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->callPopup(I)V

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 186
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 187
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 190
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 191
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->finish()V

    .line 194
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 174
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 175
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 176
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 161
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 162
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbSettingsRun:Z

    .line 164
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 165
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    const-string v1, "android.intent.action.autorun_timeout"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    const-string v1, "android.intent.action.autorun_ack"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    const-string v1, "android.intent.action.autorun_change_mode"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 170
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 180
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 181
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbSettingsRun:Z

    .line 182
    return-void
.end method
