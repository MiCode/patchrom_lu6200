.class public Lcom/android/settings_ex/powersave/PowerSaveService;
.super Landroid/app/Service;
.source "PowerSaveService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/powersave/PowerSaveService$PowerSaveServiceLocalBinder;
    }
.end annotation


# instance fields
.field private initCheck:Z

.field private final mBinder:Landroid/os/IBinder;

.field private mCurrentBatteryLevel:I

.field private mNotification:Landroid/app/Notification;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPlugType:I

.field private mPowerSave:Lcom/android/settings_ex/powersave/PowerSave;

.field private mPowerSaveReceiver:Landroid/content/BroadcastReceiver;

.field private mPowerSaveStarted:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/android/settings_ex/powersave/PowerSaveService$PowerSaveServiceLocalBinder;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/powersave/PowerSaveService$PowerSaveServiceLocalBinder;-><init>(Lcom/android/settings_ex/powersave/PowerSaveService;)V

    iput-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveService;->mBinder:Landroid/os/IBinder;

    iput-boolean v1, p0, Lcom/android/settings_ex/powersave/PowerSaveService;->mPowerSaveStarted:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/powersave/PowerSaveService;->mCurrentBatteryLevel:I

    iput v1, p0, Lcom/android/settings_ex/powersave/PowerSaveService;->mPlugType:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveService;->mNotificationManager:Landroid/app/NotificationManager;

    iput-boolean v1, p0, Lcom/android/settings_ex/powersave/PowerSaveService;->initCheck:Z

    new-instance v0, Lcom/android/settings_ex/powersave/PowerSaveService$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/powersave/PowerSaveService$1;-><init>(Lcom/android/settings_ex/powersave/PowerSaveService;)V

    iput-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveService;->mPowerSaveReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/powersave/PowerSaveService;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/settings_ex/powersave/PowerSaveService;->mCurrentBatteryLevel:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings_ex/powersave/PowerSaveService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/android/settings_ex/powersave/PowerSaveService;->mCurrentBatteryLevel:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/powersave/PowerSaveService;Landroid/content/Context;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/powersave/PowerSaveService;->getPowerSaveModeValue(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/powersave/PowerSaveService;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/powersave/PowerSaveService;->endNotification()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/powersave/PowerSaveService;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/settings_ex/powersave/PowerSaveService;->mPlugType:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings_ex/powersave/PowerSaveService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/android/settings_ex/powersave/PowerSaveService;->mPlugType:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings_ex/powersave/PowerSaveService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/settings_ex/powersave/PowerSaveService;->mPowerSaveStarted:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/settings_ex/powersave/PowerSaveService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/settings_ex/powersave/PowerSaveService;->mPowerSaveStarted:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings_ex/powersave/PowerSaveService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/powersave/PowerSaveService;->startNotification(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings_ex/powersave/PowerSaveService;)I
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/powersave/PowerSaveService;->getPowerSaveStarted()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/powersave/PowerSaveService;)Lcom/android/settings_ex/powersave/PowerSave;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveService;->mPowerSave:Lcom/android/settings_ex/powersave/PowerSave;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/powersave/PowerSaveService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/powersave/PowerSaveService;->setActivationState(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings_ex/powersave/PowerSaveService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/powersave/PowerSaveService;->setPowerSaveStarted(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings_ex/powersave/PowerSaveService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/powersave/PowerSaveService;->checkCondition()Z

    move-result v0

    return v0
.end method

.method private checkCondition()Z
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 379
    const/4 v2, 0x1

    .line 382
    .local v2, canDo:Z
    invoke-static {}, Lcom/android/settings_ex/powersave/PowerSaveFactoryMode;->checkFactoryMode()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 439
    :goto_0
    return v8

    .line 386
    :cond_0
    const-string v9, "activity"

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/powersave/PowerSaveService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 387
    .local v1, am:Landroid/app/ActivityManager;
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 389
    .local v0, Info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-nez v0, :cond_1

    move v8, v2

    .line 390
    goto :goto_0

    .line 393
    :cond_1
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v8, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 394
    .local v5, topActivity:Landroid/content/ComponentName;
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 397
    .local v7, topActivityName:Ljava/lang/String;
    const-string v8, "com.lge.camera"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 398
    const/4 v2, 0x0

    .line 400
    :cond_2
    const-string v8, "com.lge.voicerecorder"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 401
    const/4 v2, 0x0

    .line 405
    :cond_3
    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 406
    .local v6, topActivityClassName:Ljava/lang/String;
    const-string v8, "com.lge.hiddenmenu.wcdma_only.module_test.ChargingTest"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 407
    const/4 v2, 0x0

    .line 414
    :cond_4
    :goto_1
    const-string v8, "com.android.phone.InCallScreen"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 415
    const/4 v2, 0x0

    .line 417
    :cond_5
    const-string v8, "com.lge.vt.ui.VgaVideoCallActivity"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 418
    const/4 v2, 0x0

    .line 420
    :cond_6
    const-string v8, "com.lge.vt.ui.QcifVideoCallActivity"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 421
    const/4 v2, 0x0

    .line 423
    :cond_7
    const-string v8, "com.lge.vt.ui.VgaGroupVideoCallActivity"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 424
    const/4 v2, 0x0

    .line 426
    :cond_8
    const-string v8, "com.lge.vt.ui.QcifGroupVideoCallActivity"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 427
    const/4 v2, 0x0

    .line 432
    :cond_9
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    .line 433
    .local v3, mCM:Lcom/android/internal/telephony/CallManager;
    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    .line 434
    .local v4, phoneState:Lcom/android/internal/telephony/Phone$State;
    sget-object v8, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-eq v4, v8, :cond_a

    sget-object v8, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v4, v8, :cond_b

    .line 435
    :cond_a
    const-string v8, "PowerSaveService"

    const-string v9, "In Call"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const/4 v2, 0x0

    :cond_b
    move v8, v2

    .line 439
    goto/16 :goto_0

    .line 408
    .end local v3           #mCM:Lcom/android/internal/telephony/CallManager;
    .end local v4           #phoneState:Lcom/android/internal/telephony/Phone$State;
    :cond_c
    const-string v8, "com.lge.LgHiddenMenu.LgSrvChargingTest"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 409
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private checkPowerSaveStarted()V
    .locals 3

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/powersave/PowerSaveService;->getPowerSaveStarted()I

    move-result v0

    .local v0, powerSaveState:I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    const-string v1, "PowerSaveService"

    const-string v2, "checkPowerSaveStarted, POWER_SAVE_STARTED > -1"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings_ex/powersave/PowerSaveService;->mPowerSaveStarted:Z

    invoke-direct {p0, v0}, Lcom/android/settings_ex/powersave/PowerSaveService;->startNotification(I)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "PowerSaveService"

    const-string v2, "checkPowerSaveStarted, POWER_SAVE_STARTED : -1"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings_ex/powersave/PowerSaveService;->mPowerSaveStarted:Z

    goto :goto_0
.end method

.method private endNotification()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveService;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/powersave/PowerSaveService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveService;->mNotificationManager:Landroid/app/NotificationManager;

    const v1, 0x7f0200ec

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 359
    return-void
.end method

.method private getPowerSaveModeValue(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 302
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "power_save_mode"

    const/16 v2, 0x1e

    invoke-static {v0, v1, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getPowerSaveStarted()I
    .locals 3

    .prologue
    invoke-virtual {p0}, Lcom/android/settings_ex/powersave/PowerSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "power_save_started"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private init()V
    .locals 3

    .prologue
    const-string v1, "PowerSaveService"

    const-string v2, "initialize"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/settings_ex/powersave/PowerSave;

    invoke-virtual {p0}, Lcom/android/settings_ex/powersave/PowerSaveService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings_ex/powersave/PowerSave;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveService;->mPowerSave:Lcom/android/settings_ex/powersave/PowerSave;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.settings_ex.powersave.POWERSAVE_ACTIVATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.settings_ex.powersave.action.MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.settings_ex.powersave.POWERSAVE_GO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveService;->mPowerSaveReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/powersave/PowerSaveService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveService;->mPowerSave:Lcom/android/settings_ex/powersave/PowerSave;

    invoke-virtual {v1}, Lcom/android/settings_ex/powersave/PowerSave;->updatePowerControl()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings_ex/powersave/PowerSaveService;->initCheck:Z

    return-void
.end method

.method private setActivationState(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    invoke-virtual {p0}, Lcom/android/settings_ex/powersave/PowerSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "power_save_mode_activated"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 363
    return-void

    .line 362
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setPowerSaveStarted(I)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 365
    const-string v0, "PowerSaveService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPowerSaveStarted, POWER_SAVE_STARTED : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings_ex/powersave/PowerSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "power_save_started"

    invoke-static {v0, v1, p1}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 367
    return-void
.end method

.method private startNotification(I)V
    .locals 11
    .parameter

    .prologue
    const v10, 0x7f080b83

    const v4, 0x7f0200ec

    const v3, 0x7f0200ed

    const/4 v8, 0x1

    const/4 v9, 0x0

    const v0, 0x7f080b33

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/powersave/PowerSaveService;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings_ex/powersave/PowerSaveSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-ne p1, v8, :cond_1

    const v0, 0x7f080b76

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/powersave/PowerSaveService;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f080b78

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/powersave/PowerSaveService;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.settings.POWERSAVE_SETTINGS"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move v3, v4

    .line 342
    :goto_0
    new-instance v6, Landroid/app/Notification;

    const-wide/16 v7, 0x0

    invoke-direct {v6, v3, v2, v7, v8}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v6, p0, Lcom/android/settings_ex/powersave/PowerSaveService;->mNotification:Landroid/app/Notification;

    iget-object v2, p0, Lcom/android/settings_ex/powersave/PowerSaveService;->mNotification:Landroid/app/Notification;

    iget-object v3, p0, Lcom/android/settings_ex/powersave/PowerSaveService;->mNotification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/app/Notification;->flags:I

    const/high16 v2, 0x3000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {p0, v9, v0, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings_ex/powersave/PowerSaveService;->mNotification:Landroid/app/Notification;

    invoke-virtual {v2, p0, v5, v1, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveService;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/powersave/PowerSaveService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveService;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveService;->mNotification:Landroid/app/Notification;

    invoke-virtual {v0, v4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    const v0, 0x7f080b77

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/powersave/PowerSaveService;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f080b79

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/powersave/PowerSaveService;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-class v6, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;

    invoke-direct {v0, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings_ex/powersave/PowerSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "power_save_mode"

    const/16 v2, 0x1e

    invoke-static {v0, v1, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/powersave/PowerSaveService;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v9

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/powersave/PowerSaveService;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v6, v8, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "%"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v9

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 334
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.settings.POWERSAVE_SETTINGS"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 337
    :cond_3
    const v0, 0x7f080b84

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/powersave/PowerSaveService;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f080b84

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/powersave/PowerSaveService;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.settings.POWERSAVE_SETTINGS"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    const-string v0, "PowerSaveService"

    const-string v1, "onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "PowerSaveService"

    const-string v1, "onCreate, service create"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings_ex/powersave/PowerSaveService;->checkPowerSaveStarted()V

    invoke-direct {p0}, Lcom/android/settings_ex/powersave/PowerSaveService;->init()V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "PowerSaveService"

    const-string v1, "onDestroy, service stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveService;->mPowerSaveReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/powersave/PowerSaveService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-direct {p0}, Lcom/android/settings_ex/powersave/PowerSaveService;->getPowerSaveStarted()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveService;->mPowerSave:Lcom/android/settings_ex/powersave/PowerSave;

    invoke-virtual {v0}, Lcom/android/settings_ex/powersave/PowerSave;->doRestore()V

    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/powersave/PowerSaveService;->endNotification()V

    iput-boolean v2, p0, Lcom/android/settings_ex/powersave/PowerSaveService;->mPowerSaveStarted:Z

    invoke-direct {p0, v2}, Lcom/android/settings_ex/powersave/PowerSaveService;->setActivationState(Z)V

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/settings_ex/powersave/PowerSaveService;->setPowerSaveStarted(I)V

    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveService;->mPowerSave:Lcom/android/settings_ex/powersave/PowerSave;

    invoke-virtual {v0}, Lcom/android/settings_ex/powersave/PowerSave;->updatePowerControl()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const-string v0, "PowerSaveService"

    const-string v1, "onStartCommand, service start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v0, p2, 0x2

    if-nez v0, :cond_0

    const-string v0, "PowerSaveService"

    const-string v1, "onStartCommand, service re-start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings_ex/powersave/PowerSaveService;->initCheck:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings_ex/powersave/PowerSaveService;->init()V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method
