.class Lcom/android/server/ServerThread;
.super Ljava/lang/Thread;
.source "SystemServer.java"


# static fields
.field static final ABA_DEBUG:Z = false

.field static final ABA_ENABLE:Z = true

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final TAG:Ljava/lang/String; = "SystemServer"


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 931
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 932
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 934
    const-string v1, "SystemServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 936
    return-void
.end method


# virtual methods
.method reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 105
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    return-void
.end method

.method public run()V
    .locals 113

    .prologue
    .line 111
    const/16 v3, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-static {v3, v9, v10}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 114
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 116
    const/4 v3, -0x2

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 119
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 120
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 124
    const-string v3, "sys.shutdown.requested"

    const-string v9, ""

    invoke-static {v3, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v88

    .line 126
    .local v88, shutdownAction:Ljava/lang/String;
    if-eqz v88, :cond_0

    invoke-virtual/range {v88 .. v88}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 127
    const/4 v3, 0x0

    move-object/from16 v0, v88

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v9, 0x31

    if-ne v3, v9, :cond_d

    const/16 v85, 0x1

    .line 130
    .local v85, reboot:Z
    :goto_0
    invoke-virtual/range {v88 .. v88}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v9, 0x1

    if-le v3, v9, :cond_e

    .line 131
    const/4 v3, 0x1

    invoke-virtual/range {v88 .. v88}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v88

    invoke-virtual {v0, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v84

    .line 136
    .local v84, reason:Ljava/lang/String;
    :goto_1
    move/from16 v0, v85

    move-object/from16 v1, v84

    invoke-static {v0, v1}, Lcom/android/internal/app/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 140
    .end local v84           #reason:Ljava/lang/String;
    .end local v85           #reboot:Z
    :cond_0
    const-string v3, "ro.factorytest"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v65

    .line 141
    .local v65, factoryTestStr:Ljava/lang/String;
    const-string v3, ""

    move-object/from16 v0, v65

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    const/16 v64, 0x0

    .line 144
    .local v64, factoryTest:I
    :goto_2
    const/16 v70, 0x0

    .line 145
    .local v70, lights:Lcom/android/server/LightsService;
    const/16 v83, 0x0

    .line 146
    .local v83, power:Lcom/android/server/PowerManagerService;
    const/16 v58, 0x0

    .line 147
    .local v58, dmm:Lcom/android/server/DynamicMemoryManagerService;
    const/16 v42, 0x0

    .line 148
    .local v42, battery:Lcom/android/server/BatteryService;
    const/16 v37, 0x0

    .line 149
    .local v37, alarm:Lcom/android/server/AlarmManagerService;
    const/4 v13, 0x0

    .line 150
    .local v13, networkManagement:Lcom/android/server/NetworkManagementService;
    const/4 v12, 0x0

    .line 151
    .local v12, networkStats:Lcom/android/server/net/NetworkStatsService;
    const/16 v75, 0x0

    .line 152
    .local v75, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v48, 0x0

    .line 153
    .local v48, connectivity:Lcom/android/server/ConnectivityService;
    const/16 v110, 0x0

    .line 154
    .local v110, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    const/16 v105, 0x0

    .line 155
    .local v105, wifi:Lcom/android/server/WifiService;
    const/16 v82, 0x0

    .line 156
    .local v82, pm:Landroid/content/pm/IPackageManager;
    const/4 v4, 0x0

    .line 157
    .local v4, context:Landroid/content/Context;
    const/16 v112, 0x0

    .line 158
    .local v112, wm:Lcom/android/server/wm/WindowManagerService;
    const/16 v43, 0x0

    .line 159
    .local v43, bluetooth:Landroid/server/BluetoothService;
    const/16 v45, 0x0

    .line 160
    .local v45, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    const/16 v60, 0x0

    .line 161
    .local v60, dock:Lcom/android/server/DockObserver;
    const/16 v99, 0x0

    .line 162
    .local v99, usb:Lcom/android/server/usb/UsbService;
    const/16 v97, 0x0

    .line 163
    .local v97, uiMode:Lcom/android/server/UiModeManagerService;
    const/16 v86, 0x0

    .line 164
    .local v86, recognition:Lcom/android/server/RecognitionManagerService;
    const/16 v92, 0x0

    .line 165
    .local v92, throttle:Lcom/android/server/ThrottleService;
    const/16 v77, 0x0

    .line 166
    .local v77, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    const/16 v52, 0x0

    .line 170
    .local v52, cpuGovernorManager:Lcom/android/server/CpuGovernorService;
    :try_start_0
    const-string v3, "SystemServer"

    const-string v9, "Entropy Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const-string v3, "entropy"

    new-instance v9, Lcom/android/server/EntropyService;

    invoke-direct {v9}, Lcom/android/server/EntropyService;-><init>()V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 173
    const-string v3, "SystemServer"

    const-string v9, "Power Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    new-instance v6, Lcom/android/server/PowerManagerService;

    invoke-direct {v6}, Lcom/android/server/PowerManagerService;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_41

    .line 175
    .end local v83           #power:Lcom/android/server/PowerManagerService;
    .local v6, power:Lcom/android/server/PowerManagerService;
    :try_start_1
    const-string v3, "power"

    invoke-static {v3, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 177
    const-string v3, "SystemServer"

    const-string v9, "Activity Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-static/range {v64 .. v64}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;

    move-result-object v4

    .line 180
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 181
    const-string v3, "SystemServer"

    const-string v9, "MSimTelephony Registry"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const-string v3, "telephony.msim.registry"

    new-instance v9, Lcom/android/server/MSimTelephonyRegistry;

    invoke-direct {v9, v4}, Lcom/android/server/MSimTelephonyRegistry;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 189
    :goto_3
    invoke-static {v4}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 191
    const-string v3, "SystemServer"

    const-string v9, "Package Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const-string v3, "vold.decrypt"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    .line 194
    .local v54, cryptState:Ljava/lang/String;
    const/16 v81, 0x0

    .line 195
    .local v81, onlyCore:Z
    const-string v3, "trigger_restart_min_framework"

    move-object/from16 v0, v54

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 196
    const-string v3, "SystemServer"

    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/16 v81, 0x1

    .line 203
    :cond_1
    :goto_4
    if-eqz v64, :cond_12

    const/4 v3, 0x1

    :goto_5
    move/from16 v0, v81

    invoke-static {v4, v3, v0}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;ZZ)Landroid/content/pm/IPackageManager;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v82

    .line 206
    const/16 v66, 0x0

    .line 208
    .local v66, firstBoot:Z
    :try_start_2
    invoke-interface/range {v82 .. v82}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2f
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v66

    .line 212
    :goto_6
    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 214
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 218
    :try_start_4
    const-string v3, "SystemServer"

    const-string v9, "Account Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const-string v3, "account"

    new-instance v9, Landroid/accounts/AccountManagerService;

    invoke-direct {v9, v4}, Landroid/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 226
    :goto_7
    :try_start_5
    const-string v3, "SystemServer"

    const-string v9, "Content Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/4 v3, 0x1

    move/from16 v0, v64

    if-ne v0, v3, :cond_13

    const/4 v3, 0x1

    :goto_8
    invoke-static {v4, v3}, Landroid/content/ContentService;->main(Landroid/content/Context;Z)Landroid/content/IContentService;

    .line 231
    const-string v3, "SystemServer"

    const-string v9, "System Content Providers"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 234
    const-string v3, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    new-instance v71, Lcom/android/server/LightsService;

    move-object/from16 v0, v71

    invoke-direct {v0, v4}, Lcom/android/server/LightsService;-><init>(Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    .line 237
    .end local v70           #lights:Lcom/android/server/LightsService;
    .local v71, lights:Lcom/android/server/LightsService;
    :try_start_6
    const-string v3, "SystemServer"

    const-string v9, "Battery Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    new-instance v5, Lcom/android/server/BatteryService;

    move-object/from16 v0, v71

    invoke-direct {v5, v4, v0}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_42

    .line 239
    .end local v42           #battery:Lcom/android/server/BatteryService;
    .local v5, battery:Lcom/android/server/BatteryService;
    :try_start_7
    const-string v3, "battery"

    invoke-static {v3, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 241
    const-string v3, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const-string v3, "vibrator"

    new-instance v9, Lcom/android/server/VibratorService;

    invoke-direct {v9, v4}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 246
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    move-object/from16 v0, v71

    invoke-virtual {v6, v4, v0, v3, v5}, Lcom/android/server/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Landroid/app/IActivityManager;Lcom/android/server/BatteryService;)V

    .line 248
    const-string v3, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    new-instance v7, Lcom/android/server/AlarmManagerService;

    invoke-direct {v7, v4}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_43

    .line 250
    .end local v37           #alarm:Lcom/android/server/AlarmManagerService;
    .local v7, alarm:Lcom/android/server/AlarmManagerService;
    :try_start_8
    const-string v3, "alarm"

    invoke-static {v3, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 252
    const-string v3, "SystemServer"

    const-string v9, "Init Watchdog"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    .line 256
    const-string v3, "SystemServer"

    const-string v9, "Window Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const/4 v3, 0x1

    move/from16 v0, v64

    if-eq v0, v3, :cond_14

    const/4 v3, 0x1

    move v9, v3

    :goto_9
    if-nez v66, :cond_15

    const/4 v3, 0x1

    :goto_a
    invoke-static {v4, v6, v9, v3}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v112

    .line 260
    const-string v3, "window"

    move-object/from16 v0, v112

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 262
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    move-object/from16 v0, v112

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 268
    invoke-static {}, Lcom/broadcom/bt/service/framework/BluetoothInterfaceManager;->getIBrcmBtServiceLoader()Lcom/broadcom/bt/server/IBrcmBtServiceLoader;

    move-result-object v3

    move/from16 v0, v64

    invoke-interface {v3, v4, v0}, Lcom/broadcom/bt/server/IBrcmBtServiceLoader;->loadServices(Landroid/content/Context;I)V

    .line 282
    const/4 v3, 0x1

    move/from16 v0, v64

    if-ne v0, v3, :cond_16

    .line 284
    const-string v3, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :goto_b
    const-string v3, "SystemServer"

    const-string v9, "DynamicMemoryManager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    new-instance v59, Lcom/android/server/DynamicMemoryManagerService;

    move-object/from16 v0, v59

    invoke-direct {v0, v4}, Lcom/android/server/DynamicMemoryManagerService;-><init>(Landroid/content/Context;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_44

    .line 311
    .end local v58           #dmm:Lcom/android/server/DynamicMemoryManagerService;
    .local v59, dmm:Lcom/android/server/DynamicMemoryManagerService;
    :try_start_9
    new-instance v53, Lcom/android/server/CpuGovernorService;

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Lcom/android/server/CpuGovernorService;-><init>(Landroid/content/Context;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_47

    .line 313
    .end local v52           #cpuGovernorManager:Lcom/android/server/CpuGovernorService;
    .local v53, cpuGovernorManager:Lcom/android/server/CpuGovernorService;
    if-nez v53, :cond_2

    .line 314
    :try_start_a
    const-string v3, "SystemServer"

    const-string v9, "CpuGovernorService failed to start"

    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_48

    :cond_2
    move-object/from16 v52, v53

    .end local v53           #cpuGovernorManager:Lcom/android/server/CpuGovernorService;
    .restart local v52       #cpuGovernorManager:Lcom/android/server/CpuGovernorService;
    move-object/from16 v58, v59

    .end local v59           #dmm:Lcom/android/server/DynamicMemoryManagerService;
    .restart local v58       #dmm:Lcom/android/server/DynamicMemoryManagerService;
    move-object/from16 v70, v71

    .line 321
    .end local v54           #cryptState:Ljava/lang/String;
    .end local v66           #firstBoot:Z
    .end local v71           #lights:Lcom/android/server/LightsService;
    .end local v81           #onlyCore:Z
    .restart local v70       #lights:Lcom/android/server/LightsService;
    :goto_c
    const/16 v56, 0x0

    .line 322
    .local v56, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    const/16 v89, 0x0

    .line 323
    .local v89, statusBar:Lcom/android/server/StatusBarManagerService;
    const/16 v68, 0x0

    .line 324
    .local v68, imm:Lcom/android/server/InputMethodManagerService;
    const/16 v38, 0x0

    .line 325
    .local v38, appWidget:Lcom/android/server/AppWidgetService;
    const/16 v79, 0x0

    .line 326
    .local v79, notification:Lcom/android/server/NotificationManagerService;
    const/16 v103, 0x0

    .line 327
    .local v103, wallpaper:Lcom/android/server/WallpaperManagerService;
    const/16 v72, 0x0

    .line 328
    .local v72, location:Lcom/android/server/LocationManagerService;
    const/16 v50, 0x0

    .line 329
    .local v50, countryDetector:Lcom/android/server/CountryDetectorService;
    const/16 v95, 0x0

    .line 333
    .local v95, tsms:Lcom/android/server/TextServicesManagerService;
    const/16 v101, 0x0

    .line 337
    .local v101, vzwLocMgrObj:Ljava/lang/Object;
    const/4 v3, 0x1

    move/from16 v0, v64

    if-eq v0, v3, :cond_3

    .line 339
    :try_start_b
    const-string v3, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    new-instance v69, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v69

    invoke-direct {v0, v4}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2

    .line 341
    .end local v68           #imm:Lcom/android/server/InputMethodManagerService;
    .local v69, imm:Lcom/android/server/InputMethodManagerService;
    :try_start_c
    const-string v3, "input_method"

    move-object/from16 v0, v69

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_40

    move-object/from16 v68, v69

    .line 347
    .end local v69           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v68       #imm:Lcom/android/server/InputMethodManagerService;
    :goto_d
    :try_start_d
    const-string v3, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const-string v3, "accessibility"

    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v9, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_3

    .line 356
    :cond_3
    :goto_e
    :try_start_e
    invoke-virtual/range {v112 .. v112}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_4

    .line 362
    :goto_f
    :try_start_f
    invoke-interface/range {v82 .. v82}, Landroid/content/pm/IPackageManager;->performBootDexOpt()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_5

    .line 368
    :goto_10
    :try_start_10
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10403d4

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v3, v9, v10}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_3f

    .line 375
    :goto_11
    const/4 v3, 0x1

    move/from16 v0, v64

    if-eq v0, v3, :cond_19

    .line 377
    :try_start_11
    const-string v3, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    new-instance v57, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v57

    invoke-direct {v0, v4}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_6

    .line 379
    .end local v56           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .local v57, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :try_start_12
    const-string v3, "device_policy"

    move-object/from16 v0, v57

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_3e

    move-object/from16 v56, v57

    .line 384
    .end local v57           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v56       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :goto_12
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 385
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v3

    invoke-interface {v3, v4}, Lcom/lge/cappuccino/IMdm;->launchService(Landroid/content/Context;)V

    .line 390
    :cond_4
    :try_start_13
    const-string v3, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    new-instance v90, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v90

    move-object/from16 v1, v112

    invoke-direct {v0, v4, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_7

    .line 392
    .end local v89           #statusBar:Lcom/android/server/StatusBarManagerService;
    .local v90, statusBar:Lcom/android/server/StatusBarManagerService;
    :try_start_14
    const-string v3, "statusbar"

    move-object/from16 v0, v90

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_3d

    move-object/from16 v89, v90

    .line 398
    .end local v90           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v89       #statusBar:Lcom/android/server/StatusBarManagerService;
    :goto_13
    :try_start_15
    const-string v3, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const-string v3, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v4}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_8

    .line 406
    :goto_14
    :try_start_16
    const-string v3, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-static {v4}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v13

    .line 408
    const-string v3, "network_management"

    invoke-static {v3, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_9

    .line 414
    :goto_15
    :try_start_17
    const-string v3, "SystemServer"

    const-string v9, "Text Service Manager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    new-instance v96, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v96

    invoke-direct {v0, v4}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_a

    .line 416
    .end local v95           #tsms:Lcom/android/server/TextServicesManagerService;
    .local v96, tsms:Lcom/android/server/TextServicesManagerService;
    :try_start_18
    const-string v3, "textservices"

    move-object/from16 v0, v96

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_3c

    move-object/from16 v95, v96

    .line 422
    .end local v96           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v95       #tsms:Lcom/android/server/TextServicesManagerService;
    :goto_16
    :try_start_19
    const-string v3, "SystemServer"

    const-string v9, "NetworkStats Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    new-instance v76, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v76

    invoke-direct {v0, v4, v13, v7}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_b

    .line 424
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .local v76, networkStats:Lcom/android/server/net/NetworkStatsService;
    :try_start_1a
    const-string v3, "netstats"

    move-object/from16 v0, v76

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_3b

    move-object/from16 v12, v76

    .line 430
    .end local v76           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :goto_17
    :try_start_1b
    const-string v3, "SystemServer"

    const-string v9, "NetworkPolicy Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    new-instance v8, Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    move-object v9, v4

    move-object v11, v6

    invoke-direct/range {v8 .. v13}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_c

    .line 434
    .end local v75           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .local v8, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_1c
    const-string v3, "netpolicy"

    invoke-static {v3, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_3a

    .line 440
    :goto_18
    :try_start_1d
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi P2pService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    new-instance v111, Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v0, v111

    invoke-direct {v0, v4}, Landroid/net/wifi/p2p/WifiP2pService;-><init>(Landroid/content/Context;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_d

    .line 442
    .end local v110           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .local v111, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :try_start_1e
    const-string v3, "wifip2p"

    move-object/from16 v0, v111

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_39

    move-object/from16 v110, v111

    .line 450
    .end local v111           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v110       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :goto_19
    sget-boolean v3, Lcom/lge/wifi/WifiLgeConfig;->CONFIG_LGE_WLAN_PATCH:Z

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/lge/wifi/WifiLgeConfig;->useWiFiOffloading()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 452
    :try_start_1f
    const-string v3, "SystemServer"

    const-string v9, "WiFi Offloading Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-static {}, Lcom/lge/wifi_iface/WifiIfaceManager;->getWiFiOffloadingIfaceIface()Lcom/lge/wifi_iface/WiFiOffloadingIfaceIface;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 454
    invoke-static {}, Lcom/lge/wifi_iface/WifiIfaceManager;->getWiFiOffloadingIfaceIface()Lcom/lge/wifi_iface/WiFiOffloadingIfaceIface;

    move-result-object v109

    .line 455
    .local v109, wifiOffloadingIfaceIface:Lcom/lge/wifi_iface/WiFiOffloadingIfaceIface;
    move-object/from16 v0, v109

    invoke-interface {v0, v4}, Lcom/lge/wifi_iface/WiFiOffloadingIfaceIface;->startService(Landroid/content/Context;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_e

    .line 464
    .end local v109           #wifiOffloadingIfaceIface:Lcom/lge/wifi_iface/WiFiOffloadingIfaceIface;
    :cond_5
    :goto_1a
    :try_start_20
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    new-instance v106, Lcom/android/server/WifiService;

    move-object/from16 v0, v106

    invoke-direct {v0, v4}, Lcom/android/server/WifiService;-><init>(Landroid/content/Context;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_f

    .line 466
    .end local v105           #wifi:Lcom/android/server/WifiService;
    .local v106, wifi:Lcom/android/server/WifiService;
    :try_start_21
    const-string v3, "wifi"

    move-object/from16 v0, v106

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_38

    move-object/from16 v105, v106

    .line 472
    .end local v106           #wifi:Lcom/android/server/WifiService;
    .restart local v105       #wifi:Lcom/android/server/WifiService;
    :goto_1b
    :try_start_22
    const-string v3, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    new-instance v49, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v49

    invoke-direct {v0, v4, v13, v12, v8}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_10

    .line 475
    .end local v48           #connectivity:Lcom/android/server/ConnectivityService;
    .local v49, connectivity:Lcom/android/server/ConnectivityService;
    :try_start_23
    const-string v3, "connectivity"

    move-object/from16 v0, v49

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 476
    move-object/from16 v0, v49

    invoke-virtual {v12, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 477
    move-object/from16 v0, v49

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 478
    invoke-virtual/range {v105 .. v105}, Lcom/android/server/WifiService;->checkAndStartWifi()V

    .line 479
    invoke-virtual/range {v110 .. v110}, Landroid/net/wifi/p2p/WifiP2pService;->connectivityServiceReady()V

    .line 480
    invoke-virtual/range {v49 .. v49}, Lcom/android/server/ConnectivityService;->startCne()V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_37

    move-object/from16 v48, v49

    .line 486
    .end local v49           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v48       #connectivity:Lcom/android/server/ConnectivityService;
    :goto_1c
    :try_start_24
    const-string v3, "SystemServer"

    const-string v9, "Throttle Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    new-instance v93, Lcom/android/server/ThrottleService;

    move-object/from16 v0, v93

    invoke-direct {v0, v4}, Lcom/android/server/ThrottleService;-><init>(Landroid/content/Context;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_11

    .line 488
    .end local v92           #throttle:Lcom/android/server/ThrottleService;
    .local v93, throttle:Lcom/android/server/ThrottleService;
    :try_start_25
    const-string v3, "throttle"

    move-object/from16 v0, v93

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_36

    move-object/from16 v92, v93

    .line 499
    .end local v93           #throttle:Lcom/android/server/ThrottleService;
    .restart local v92       #throttle:Lcom/android/server/ThrottleService;
    :goto_1d
    :try_start_26
    const-string v3, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    const-string v3, "mount"

    new-instance v9, Lcom/android/server/MountService;

    invoke-direct {v9, v4}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_12

    .line 506
    :goto_1e
    :try_start_27
    const-string v3, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    new-instance v80, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v80

    move-object/from16 v1, v89

    move-object/from16 v2, v70

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_13

    .line 508
    .end local v79           #notification:Lcom/android/server/NotificationManagerService;
    .local v80, notification:Lcom/android/server/NotificationManagerService;
    :try_start_28
    const-string v3, "notification"

    move-object/from16 v0, v80

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 509
    move-object/from16 v0, v80

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_35

    move-object/from16 v79, v80

    .line 515
    .end local v80           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v79       #notification:Lcom/android/server/NotificationManagerService;
    :goto_1f
    :try_start_29
    const-string v3, "SystemServer"

    const-string v9, "HDMI Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    const-string v3, "hdmi"

    new-instance v9, Lcom/android/server/HDMIService;

    invoke-direct {v9, v4}, Lcom/android/server/HDMIService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_14

    .line 522
    :goto_20
    :try_start_2a
    const-string v3, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    const-string v3, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v4}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_15

    .line 530
    :goto_21
    :try_start_2b
    const-string v3, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    new-instance v73, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v73

    invoke-direct {v0, v4}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_16

    .line 532
    .end local v72           #location:Lcom/android/server/LocationManagerService;
    .local v73, location:Lcom/android/server/LocationManagerService;
    :try_start_2c
    const-string v3, "location"

    move-object/from16 v0, v73

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_34

    move-object/from16 v72, v73

    .line 538
    .end local v73           #location:Lcom/android/server/LocationManagerService;
    .restart local v72       #location:Lcom/android/server/LocationManagerService;
    :goto_22
    :try_start_2d
    const-string v3, "SystemServer"

    const-string v9, "Country Detector"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    new-instance v51, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v51

    invoke-direct {v0, v4}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_17

    .line 540
    .end local v50           #countryDetector:Lcom/android/server/CountryDetectorService;
    .local v51, countryDetector:Lcom/android/server/CountryDetectorService;
    :try_start_2e
    const-string v3, "country_detector"

    move-object/from16 v0, v51

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_33

    move-object/from16 v50, v51

    .line 546
    .end local v51           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v50       #countryDetector:Lcom/android/server/CountryDetectorService;
    :goto_23
    :try_start_2f
    const-string v3, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    const-string v3, "search"

    new-instance v9, Landroid/server/search/SearchManagerService;

    invoke-direct {v9, v4}, Landroid/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_18

    .line 554
    :goto_24
    :try_start_30
    const-string v3, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const-string v3, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v10, Ljava/io/File;

    const-string v11, "/data/system/dropbox"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v4, v10}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_19

    .line 562
    :goto_25
    :try_start_31
    const-string v3, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    new-instance v104, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v104

    invoke-direct {v0, v4}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_1a

    .line 564
    .end local v103           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .local v104, wallpaper:Lcom/android/server/WallpaperManagerService;
    :try_start_32
    const-string v3, "wallpaper"

    move-object/from16 v0, v104

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_32

    move-object/from16 v103, v104

    .line 570
    .end local v104           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v103       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :goto_26
    :try_start_33
    const-string v3, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const-string v3, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v4}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_1b

    .line 577
    :goto_27
    :try_start_34
    const-string v3, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    new-instance v61, Lcom/android/server/DockObserver;

    move-object/from16 v0, v61

    invoke-direct {v0, v4, v6}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_1c

    .end local v60           #dock:Lcom/android/server/DockObserver;
    .local v61, dock:Lcom/android/server/DockObserver;
    move-object/from16 v60, v61

    .line 585
    .end local v61           #dock:Lcom/android/server/DockObserver;
    .restart local v60       #dock:Lcom/android/server/DockObserver;
    :goto_28
    :try_start_35
    const-string v3, "SystemServer"

    const-string v9, "Wired Accessory Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    new-instance v3, Lcom/android/server/WiredAccessoryObserver;

    invoke-direct {v3, v4}, Lcom/android/server/WiredAccessoryObserver;-><init>(Landroid/content/Context;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_1d

    .line 593
    :goto_29
    :try_start_36
    const-string v3, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    new-instance v100, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v100

    invoke-direct {v0, v4}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_1e

    .line 596
    .end local v99           #usb:Lcom/android/server/usb/UsbService;
    .local v100, usb:Lcom/android/server/usb/UsbService;
    :try_start_37
    const-string v3, "usb"

    move-object/from16 v0, v100

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_31

    move-object/from16 v99, v100

    .line 602
    .end local v100           #usb:Lcom/android/server/usb/UsbService;
    .restart local v99       #usb:Lcom/android/server/usb/UsbService;
    :goto_2a
    :try_start_38
    const-string v3, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    new-instance v98, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v98

    invoke-direct {v0, v4}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_1f

    .end local v97           #uiMode:Lcom/android/server/UiModeManagerService;
    .local v98, uiMode:Lcom/android/server/UiModeManagerService;
    move-object/from16 v97, v98

    .line 610
    .end local v98           #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v97       #uiMode:Lcom/android/server/UiModeManagerService;
    :goto_2b
    :try_start_39
    const-string v3, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    const-string v3, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v4}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_20

    .line 618
    :goto_2c
    :try_start_3a
    const-string v3, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    new-instance v39, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v39

    invoke-direct {v0, v4}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_21

    .line 620
    .end local v38           #appWidget:Lcom/android/server/AppWidgetService;
    .local v39, appWidget:Lcom/android/server/AppWidgetService;
    :try_start_3b
    const-string v3, "appwidget"

    move-object/from16 v0, v39

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_30

    move-object/from16 v38, v39

    .line 626
    .end local v39           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v38       #appWidget:Lcom/android/server/AppWidgetService;
    :goto_2d
    :try_start_3c
    const-string v3, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    new-instance v87, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v87

    invoke-direct {v0, v4}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_22

    .end local v86           #recognition:Lcom/android/server/RecognitionManagerService;
    .local v87, recognition:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v86, v87

    .line 633
    .end local v87           #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v86       #recognition:Lcom/android/server/RecognitionManagerService;
    :goto_2e
    :try_start_3d
    const-string v3, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    const-string v3, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v4}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_23

    .line 640
    :goto_2f
    :try_start_3e
    const-string v3, "SystemServer"

    const-string v9, "AtCmdFwd Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    new-instance v41, Lcom/android/internal/atfwd/AtCmdFwdService;

    move-object/from16 v0, v41

    invoke-direct {v0, v4}, Lcom/android/internal/atfwd/AtCmdFwdService;-><init>(Landroid/content/Context;)V

    .line 642
    .local v41, atfwd:Lcom/android/internal/atfwd/AtCmdFwdService;
    const-string v3, "AtCmdFwd"

    move-object/from16 v0, v41

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_24

    .line 652
    .end local v41           #atfwd:Lcom/android/internal/atfwd/AtCmdFwdService;
    :goto_30
    :try_start_3f
    const-string v3, "SystemServer"

    const-string v9, "SamplingProfiler Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    const-string v3, "samplingprofiler"

    new-instance v9, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v9, v4}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_25

    .line 660
    :goto_31
    :try_start_40
    const-string v3, "SystemServer"

    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    new-instance v78, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v78

    invoke-direct {v0, v4}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_26

    .end local v77           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .local v78, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v77, v78

    .line 667
    .end local v78           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v77       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    :goto_32
    :try_start_41
    const-string v3, "SystemServer"

    const-string v9, "BT FM Power Management Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    const-string v3, "bt_fm_radio"

    invoke-static {}, Lcom/broadcom/bt/service/framework/BluetoothInterfaceManager;->getIPowerManagementService()Lcom/broadcom/bt/service/framework/IPowerManagementService;

    move-result-object v9

    invoke-interface {v9, v4}, Lcom/broadcom/bt/service/framework/IPowerManagementService;->getInstance(Landroid/content/Context;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_27

    .line 680
    :goto_33
    :try_start_42
    const-string v3, "SystemServer"

    const-string v9, "Wifi Ext Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    invoke-static {}, Lcom/lge/wifi_iface/WifiIfaceManager;->getWifiExtServiceIface()Lcom/lge/wifi_iface/WifiExtSvcIfaceIface;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 682
    invoke-static {}, Lcom/lge/wifi_iface/WifiIfaceManager;->getWifiExtServiceIface()Lcom/lge/wifi_iface/WifiExtSvcIfaceIface;

    move-result-object v107

    .line 684
    .local v107, wifiExtServiceIface:Lcom/lge/wifi_iface/WifiExtSvcIfaceIface;
    move-object/from16 v0, v107

    invoke-interface {v0, v4}, Lcom/lge/wifi_iface/WifiExtSvcIfaceIface;->startService(Landroid/content/Context;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_28

    .line 693
    .end local v107           #wifiExtServiceIface:Lcom/lge/wifi_iface/WifiExtSvcIfaceIface;
    :cond_6
    :goto_34
    sget-boolean v3, Lcom/lge/wifi/WifiLgeConfig;->CONFIG_LGE_WLAN_PATCH:Z

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/lge/wifi/WifiLgeConfig;->useMobileHotspot()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 695
    :try_start_43
    const-string v3, "SystemServer"

    const-string v9, "Mobile Hotspot Service"

    invoke-static {v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    invoke-static {}, Lcom/lge/wifi_iface/WifiIfaceManager;->getWifiMHPIfaceIface()Lcom/lge/wifi_iface/WifiMHPIfaceIface;

    move-result-object v3

    if-eqz v3, :cond_17

    .line 697
    const-string v3, "SystemServer"

    const-string v9, "Mobile Hotspot Service getWifiMHPIfaceIface not null"

    invoke-static {v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    invoke-static {}, Lcom/lge/wifi_iface/WifiIfaceManager;->getWifiMHPIfaceIface()Lcom/lge/wifi_iface/WifiMHPIfaceIface;

    move-result-object v108

    .line 699
    .local v108, wifiMHPIfaceIface:Lcom/lge/wifi_iface/WifiMHPIfaceIface;
    move-object/from16 v0, v108

    invoke-interface {v0, v4}, Lcom/lge/wifi_iface/WifiMHPIfaceIface;->startService(Landroid/content/Context;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_29

    .line 711
    .end local v108           #wifiMHPIfaceIface:Lcom/lge/wifi_iface/WifiMHPIfaceIface;
    :cond_7
    :goto_35
    const-string v3, "VZW"

    const-string v9, "ro.build.target_operator"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 714
    :try_start_44
    const-string v94, "/data/dalvik-cache"

    .line 715
    .local v94, tmpdir:Ljava/lang/String;
    const-string v3, "SystemServer"

    const-string v9, "loading Vzw LocationManager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    new-instance v55, Ldalvik/system/DexClassLoader;

    const-string v3, "/system/framework/vzwlbs.jar"

    const/4 v9, 0x0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    move-object/from16 v0, v55

    move-object/from16 v1, v94

    invoke-direct {v0, v3, v1, v9, v10}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 718
    .local v55, dclVzwLocMgr:Ldalvik/system/DexClassLoader;
    const-string v3, "com.vzw.location.service.VzwLocationManagerService"

    move-object/from16 v0, v55

    invoke-virtual {v0, v3}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v91

    .line 719
    .local v91, svcVzwLocMgr:Ljava/lang/Class;
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    move-object/from16 v40, v0

    const/4 v3, 0x0

    aput-object v4, v40, v3

    .line 720
    .local v40, arglist:[Ljava/lang/Object;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v3, v9

    move-object/from16 v0, v91

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v36

    .line 721
    .local v36, VzwLocMgrConstructor:Ljava/lang/reflect/Constructor;
    const-string v3, "SystemServer"

    const-string v9, "Instantiating VzwLocationManagerService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    move-object/from16 v0, v36

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v67

    check-cast v67, Landroid/os/IBinder;

    .line 723
    .local v67, ib:Landroid/os/IBinder;
    move-object/from16 v101, v67

    .line 725
    .local v101, vzwLocMgrObj:Landroid/os/IBinder;
    const-string v3, "SystemServer"

    const-string v9, "VzwLocation Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    const-string v3, "VZW_LOCATION_SERVICE"

    move-object/from16 v0, v67

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_2a

    .line 735
    .end local v36           #VzwLocMgrConstructor:Ljava/lang/reflect/Constructor;
    .end local v40           #arglist:[Ljava/lang/Object;
    .end local v55           #dclVzwLocMgr:Ldalvik/system/DexClassLoader;
    .end local v67           #ib:Landroid/os/IBinder;
    .end local v91           #svcVzwLocMgr:Ljava/lang/Class;
    .end local v94           #tmpdir:Ljava/lang/String;
    .end local v101           #vzwLocMgrObj:Landroid/os/IBinder;
    :cond_8
    :goto_36
    invoke-virtual/range {v112 .. v112}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v27

    .line 736
    .local v27, safeMode:Z
    if-eqz v27, :cond_18

    .line 737
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 739
    const/4 v3, 0x1

    sput-boolean v3, Ldalvik/system/Zygote;->systemInSafeMode:Z

    .line 741
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 749
    :goto_37
    if-eqz v56, :cond_9

    .line 751
    :try_start_45
    invoke-virtual/range {v56 .. v56}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_2b

    .line 757
    :cond_9
    :goto_38
    if-eqz v79, :cond_a

    .line 759
    :try_start_46
    invoke-virtual/range {v79 .. v79}, Lcom/android/server/NotificationManagerService;->systemReady()V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_2c

    .line 766
    :cond_a
    :goto_39
    :try_start_47
    invoke-virtual/range {v112 .. v112}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_2d

    .line 771
    :goto_3a
    if-eqz v27, :cond_b

    .line 772
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 778
    :cond_b
    invoke-virtual/range {v112 .. v112}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v47

    .line 779
    .local v47, config:Landroid/content/res/Configuration;
    new-instance v74, Landroid/util/DisplayMetrics;

    invoke-direct/range {v74 .. v74}, Landroid/util/DisplayMetrics;-><init>()V

    .line 780
    .local v74, metrics:Landroid/util/DisplayMetrics;
    const-string v3, "window"

    invoke-virtual {v4, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v102

    check-cast v102, Landroid/view/WindowManager;

    .line 781
    .local v102, w:Landroid/view/WindowManager;
    invoke-interface/range {v102 .. v102}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    move-object/from16 v0, v74

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 782
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, v47

    move-object/from16 v1, v74

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 784
    invoke-virtual {v6}, Lcom/android/server/PowerManagerService;->systemReady()V

    .line 786
    :try_start_48
    invoke-interface/range {v82 .. v82}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_2e

    .line 792
    :goto_3b
    move-object/from16 v16, v4

    .line 793
    .local v16, contextF:Landroid/content/Context;
    move-object/from16 v17, v5

    .line 794
    .local v17, batteryF:Lcom/android/server/BatteryService;
    move-object/from16 v18, v13

    .line 795
    .local v18, networkManagementF:Lcom/android/server/NetworkManagementService;
    move-object/from16 v19, v12

    .line 796
    .local v19, networkStatsF:Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v20, v8

    .line 797
    .local v20, networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v21, v48

    .line 798
    .local v21, connectivityF:Lcom/android/server/ConnectivityService;
    move-object/from16 v22, v60

    .line 799
    .local v22, dockF:Lcom/android/server/DockObserver;
    move-object/from16 v23, v99

    .line 800
    .local v23, usbF:Lcom/android/server/usb/UsbService;
    move-object/from16 v33, v92

    .line 801
    .local v33, throttleF:Lcom/android/server/ThrottleService;
    move-object/from16 v24, v97

    .line 802
    .local v24, uiModeF:Lcom/android/server/UiModeManagerService;
    move-object/from16 v26, v38

    .line 803
    .local v26, appWidgetF:Lcom/android/server/AppWidgetService;
    move-object/from16 v28, v103

    .line 804
    .local v28, wallpaperF:Lcom/android/server/WallpaperManagerService;
    move-object/from16 v29, v68

    .line 805
    .local v29, immF:Lcom/android/server/InputMethodManagerService;
    move-object/from16 v25, v86

    .line 806
    .local v25, recognitionF:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v31, v72

    .line 807
    .local v31, locationF:Lcom/android/server/LocationManagerService;
    move-object/from16 v32, v50

    .line 808
    .local v32, countryDetectorF:Lcom/android/server/CountryDetectorService;
    move-object/from16 v34, v77

    .line 809
    .local v34, networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v35, v95

    .line 810
    .local v35, textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    move-object/from16 v30, v89

    .line 817
    .local v30, statusBarF:Lcom/android/server/StatusBarManagerService;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    new-instance v14, Lcom/android/server/ServerThread$1;

    move-object/from16 v15, p0

    invoke-direct/range {v14 .. v35}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/ThrottleService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/TextServicesManagerService;)V

    invoke-virtual {v3, v14}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 916
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 917
    const-string v3, "SystemServer"

    const-string v9, "Enabled StrictMode for system server main thread."

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    :cond_c
    const-string v3, "persist.sys.bootcount"

    const-string v9, "0"

    invoke-static {v3, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 927
    const-string v3, "SystemServer"

    const-string v9, "System ServerThread is exiting!"

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    return-void

    .line 127
    .end local v4           #context:Landroid/content/Context;
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v6           #power:Lcom/android/server/PowerManagerService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .end local v13           #networkManagement:Lcom/android/server/NetworkManagementService;
    .end local v16           #contextF:Landroid/content/Context;
    .end local v17           #batteryF:Lcom/android/server/BatteryService;
    .end local v18           #networkManagementF:Lcom/android/server/NetworkManagementService;
    .end local v19           #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .end local v20           #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v21           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v22           #dockF:Lcom/android/server/DockObserver;
    .end local v23           #usbF:Lcom/android/server/usb/UsbService;
    .end local v24           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v25           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v26           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v27           #safeMode:Z
    .end local v28           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v29           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v30           #statusBarF:Lcom/android/server/StatusBarManagerService;
    .end local v31           #locationF:Lcom/android/server/LocationManagerService;
    .end local v32           #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .end local v33           #throttleF:Lcom/android/server/ThrottleService;
    .end local v34           #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .end local v35           #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .end local v38           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v43           #bluetooth:Landroid/server/BluetoothService;
    .end local v45           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v47           #config:Landroid/content/res/Configuration;
    .end local v48           #connectivity:Lcom/android/server/ConnectivityService;
    .end local v50           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v52           #cpuGovernorManager:Lcom/android/server/CpuGovernorService;
    .end local v56           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v58           #dmm:Lcom/android/server/DynamicMemoryManagerService;
    .end local v60           #dock:Lcom/android/server/DockObserver;
    .end local v64           #factoryTest:I
    .end local v65           #factoryTestStr:Ljava/lang/String;
    .end local v68           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v70           #lights:Lcom/android/server/LightsService;
    .end local v72           #location:Lcom/android/server/LocationManagerService;
    .end local v74           #metrics:Landroid/util/DisplayMetrics;
    .end local v77           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .end local v79           #notification:Lcom/android/server/NotificationManagerService;
    .end local v82           #pm:Landroid/content/pm/IPackageManager;
    .end local v86           #recognition:Lcom/android/server/RecognitionManagerService;
    .end local v89           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v92           #throttle:Lcom/android/server/ThrottleService;
    .end local v95           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v97           #uiMode:Lcom/android/server/UiModeManagerService;
    .end local v99           #usb:Lcom/android/server/usb/UsbService;
    .end local v102           #w:Landroid/view/WindowManager;
    .end local v103           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .end local v105           #wifi:Lcom/android/server/WifiService;
    .end local v110           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .end local v112           #wm:Lcom/android/server/wm/WindowManagerService;
    :cond_d
    const/16 v85, 0x0

    goto/16 :goto_0

    .line 133
    .restart local v85       #reboot:Z
    :cond_e
    const/16 v84, 0x0

    .restart local v84       #reason:Ljava/lang/String;
    goto/16 :goto_1

    .line 141
    .end local v84           #reason:Ljava/lang/String;
    .end local v85           #reboot:Z
    .restart local v65       #factoryTestStr:Ljava/lang/String;
    :cond_f
    invoke-static/range {v65 .. v65}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v64

    goto/16 :goto_2

    .line 185
    .restart local v4       #context:Landroid/content/Context;
    .restart local v6       #power:Lcom/android/server/PowerManagerService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v13       #networkManagement:Lcom/android/server/NetworkManagementService;
    .restart local v37       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v42       #battery:Lcom/android/server/BatteryService;
    .restart local v43       #bluetooth:Landroid/server/BluetoothService;
    .restart local v45       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v48       #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v52       #cpuGovernorManager:Lcom/android/server/CpuGovernorService;
    .restart local v58       #dmm:Lcom/android/server/DynamicMemoryManagerService;
    .restart local v60       #dock:Lcom/android/server/DockObserver;
    .restart local v64       #factoryTest:I
    .restart local v70       #lights:Lcom/android/server/LightsService;
    .restart local v75       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v77       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v82       #pm:Landroid/content/pm/IPackageManager;
    .restart local v86       #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v92       #throttle:Lcom/android/server/ThrottleService;
    .restart local v97       #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v99       #usb:Lcom/android/server/usb/UsbService;
    .restart local v105       #wifi:Lcom/android/server/WifiService;
    .restart local v110       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v112       #wm:Lcom/android/server/wm/WindowManagerService;
    :cond_10
    :try_start_49
    const-string v3, "SystemServer"

    const-string v9, "Telephony Registry"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const-string v3, "telephony.registry"

    new-instance v9, Lcom/android/server/TelephonyRegistry;

    invoke-direct {v9, v4}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_49
    .catch Ljava/lang/RuntimeException; {:try_start_49 .. :try_end_49} :catch_0

    goto/16 :goto_3

    .line 316
    :catch_0
    move-exception v62

    move-object/from16 v7, v37

    .end local v37           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v42

    .line 317
    .end local v42           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .local v62, e:Ljava/lang/RuntimeException;
    :goto_3c
    const-string v3, "System"

    const-string v9, "******************************************"

    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const-string v3, "System"

    const-string v9, "************ Failure starting core service"

    move-object/from16 v0, v62

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c

    .line 198
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v62           #e:Ljava/lang/RuntimeException;
    .restart local v37       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v42       #battery:Lcom/android/server/BatteryService;
    .restart local v54       #cryptState:Ljava/lang/String;
    .restart local v81       #onlyCore:Z
    :cond_11
    :try_start_4a
    const-string v3, "1"

    move-object/from16 v0, v54

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 199
    const-string v3, "SystemServer"

    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/16 v81, 0x1

    goto/16 :goto_4

    .line 203
    :cond_12
    const/4 v3, 0x0

    goto/16 :goto_5

    .line 221
    .restart local v66       #firstBoot:Z
    :catch_1
    move-exception v62

    .line 222
    .local v62, e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Account Manager"

    move-object/from16 v0, v62

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4a
    .catch Ljava/lang/RuntimeException; {:try_start_4a .. :try_end_4a} :catch_0

    goto/16 :goto_7

    .line 227
    .end local v62           #e:Ljava/lang/Throwable;
    :cond_13
    const/4 v3, 0x0

    goto/16 :goto_8

    .line 257
    .end local v37           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v42           #battery:Lcom/android/server/BatteryService;
    .end local v70           #lights:Lcom/android/server/LightsService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v71       #lights:Lcom/android/server/LightsService;
    :cond_14
    const/4 v3, 0x0

    move v9, v3

    goto/16 :goto_9

    :cond_15
    const/4 v3, 0x0

    goto/16 :goto_a

    .line 286
    :cond_16
    :try_start_4b
    const-string v3, "SystemServer"

    const-string v9, "Bluetooth Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    new-instance v44, Landroid/server/BluetoothService;

    move-object/from16 v0, v44

    invoke-direct {v0, v4}, Landroid/server/BluetoothService;-><init>(Landroid/content/Context;)V
    :try_end_4b
    .catch Ljava/lang/RuntimeException; {:try_start_4b .. :try_end_4b} :catch_44

    .line 288
    .end local v43           #bluetooth:Landroid/server/BluetoothService;
    .local v44, bluetooth:Landroid/server/BluetoothService;
    :try_start_4c
    const-string v3, "bluetooth"

    move-object/from16 v0, v44

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 289
    invoke-virtual/range {v44 .. v44}, Landroid/server/BluetoothService;->initAfterRegistration()V

    .line 290
    new-instance v46, Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v46

    move-object/from16 v1, v44

    invoke-direct {v0, v4, v1}, Landroid/server/BluetoothA2dpService;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    :try_end_4c
    .catch Ljava/lang/RuntimeException; {:try_start_4c .. :try_end_4c} :catch_45

    .line 291
    .end local v45           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .local v46, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    :try_start_4d
    const-string v3, "bluetooth_a2dp"

    move-object/from16 v0, v46

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 293
    invoke-virtual/range {v44 .. v44}, Landroid/server/BluetoothService;->initAfterA2dpRegistration()V
    :try_end_4d
    .catch Ljava/lang/RuntimeException; {:try_start_4d .. :try_end_4d} :catch_46

    move-object/from16 v45, v46

    .end local v46           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v45       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v43, v44

    .end local v44           #bluetooth:Landroid/server/BluetoothService;
    .restart local v43       #bluetooth:Landroid/server/BluetoothService;
    goto/16 :goto_b

    .line 342
    .end local v54           #cryptState:Ljava/lang/String;
    .end local v66           #firstBoot:Z
    .end local v71           #lights:Lcom/android/server/LightsService;
    .end local v81           #onlyCore:Z
    .restart local v38       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v50       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v56       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v68       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v70       #lights:Lcom/android/server/LightsService;
    .restart local v72       #location:Lcom/android/server/LocationManagerService;
    .restart local v79       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v89       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v95       #tsms:Lcom/android/server/TextServicesManagerService;
    .local v101, vzwLocMgrObj:Ljava/lang/Object;
    .restart local v103       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_2
    move-exception v62

    .line 343
    .restart local v62       #e:Ljava/lang/Throwable;
    :goto_3d
    const-string v3, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 350
    .end local v62           #e:Ljava/lang/Throwable;
    :catch_3
    move-exception v62

    .line 351
    .restart local v62       #e:Ljava/lang/Throwable;
    const-string v3, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 357
    .end local v62           #e:Ljava/lang/Throwable;
    :catch_4
    move-exception v62

    .line 358
    .restart local v62       #e:Ljava/lang/Throwable;
    const-string v3, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 363
    .end local v62           #e:Ljava/lang/Throwable;
    :catch_5
    move-exception v62

    .line 364
    .restart local v62       #e:Ljava/lang/Throwable;
    const-string v3, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 380
    .end local v62           #e:Ljava/lang/Throwable;
    :catch_6
    move-exception v62

    .line 381
    .restart local v62       #e:Ljava/lang/Throwable;
    :goto_3e
    const-string v3, "starting DevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 393
    .end local v62           #e:Ljava/lang/Throwable;
    :catch_7
    move-exception v62

    .line 394
    .restart local v62       #e:Ljava/lang/Throwable;
    :goto_3f
    const-string v3, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 401
    .end local v62           #e:Ljava/lang/Throwable;
    :catch_8
    move-exception v62

    .line 402
    .restart local v62       #e:Ljava/lang/Throwable;
    const-string v3, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 409
    .end local v62           #e:Ljava/lang/Throwable;
    :catch_9
    move-exception v62

    .line 410
    .restart local v62       #e:Ljava/lang/Throwable;
    const-string v3, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 417
    .end local v62           #e:Ljava/lang/Throwable;
    :catch_a
    move-exception v62

    .line 418
    .restart local v62       #e:Ljava/lang/Throwable;
    :goto_40
    const-string v3, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 425
    .end local v62           #e:Ljava/lang/Throwable;
    :catch_b
    move-exception v62

    .line 426
    .restart local v62       #e:Ljava/lang/Throwable;
    :goto_41
    const-string v3, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 435
    .end local v62           #e:Ljava/lang/Throwable;
    :catch_c
    move-exception v62

    move-object/from16 v8, v75

    .line 436
    .end local v75           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v62       #e:Ljava/lang/Throwable;
    :goto_42
    const-string v3, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 443
    .end local v62           #e:Ljava/lang/Throwable;
    :catch_d
    move-exception v62

    .line 444
    .restart local v62       #e:Ljava/lang/Throwable;
    :goto_43
    const-string v3, "starting Wi-Fi P2pService"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 457
    .end local v62           #e:Ljava/lang/Throwable;
    :catch_e
    move-exception v62

    .line 458
    .restart local v62       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting WiFi Offloading Service"

    move-object/from16 v0, v62

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1a

    .line 467
    .end local v62           #e:Ljava/lang/Throwable;
    :catch_f
    move-exception v62

    .line 468
    .restart local v62       #e:Ljava/lang/Throwable;
    :goto_44
    const-string v3, "starting Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 481
    .end local v62           #e:Ljava/lang/Throwable;
    :catch_10
    move-exception v62

    .line 482
    .restart local v62       #e:Ljava/lang/Throwable;
    :goto_45
    const-string v3, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 490
    .end local v62           #e:Ljava/lang/Throwable;
    :catch_11
    move-exception v62

    .line 491
    .restart local v62       #e:Ljava/lang/Throwable;
    :goto_46
    const-string v3, "starting ThrottleService"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 501
    .end local v62           #e:Ljava/lang/Throwable;
    :catch_12
    move-exception v62

    .line 502
    .restart local v62       #e:Ljava/lang/Throwable;
    const-string v3, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 510
    .end local v62           #e:Ljava/lang/Throwable;
    :catch_13
    move-exception v62

    .line 511
    .restart local v62       #e:Ljava/lang/Throwable;
    :goto_47
    const-string v3, "starting Notification Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 517
    .end local v62           #e:Ljava/lang/Throwable;
    :catch_14
    move-exception v62

    .line 518
    .restart local v62       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting HDMI Service "

    move-object/from16 v0, v62

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_20

    .line 525
    .end local v62           #e:Ljava/lang/Throwable;
    :catch_15
    move-exception v62

    .line 526
    .restart local v62       #e:Ljava/lang/Throwable;
    const-string v3, "starting DeviceStorageMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 533
    .end local v62           #e:Ljava/lang/Throwable;
    :catch_16
    move-exception v62

    .line 534
    .restart local v62       #e:Ljava/lang/Throwable;
    :goto_48
    const-string v3, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 541
    .end local v62           #e:Ljava/lang/Throwable;
    :catch_17
    move-exception v62

    .line 542
    .restart local v62       #e:Ljava/lang/Throwable;
    :goto_49
    const-string v3, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 549
    .end local v62           #e:Ljava/lang/Throwable;
    :catch_18
    move-exception v62

    .line 550
    .restart local v62       #e:Ljava/lang/Throwable;
    const-string v3, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 557
    .end local v62           #e:Ljava/lang/Throwable;
    :catch_19
    move-exception v62

    .line 558
    .restart local v62       #e:Ljava/lang/Throwable;
    const-string v3, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 565
    .end local v62           #e:Ljava/lang/Throwable;
    :catch_1a
    move-exception v62

    .line 566
    .restart local v62       #e:Ljava/lang/Throwable;
    :goto_4a
    const-string v3, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 572
    .end local v62           #e:Ljava/lang/Throwable;
    :catch_1b
    move-exception v62

    .line 573
    .restart local v62       #e:Ljava/lang/Throwable;
    const-string v3, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 580
    .end local v62           #e:Ljava/lang/Throwable;
    :catch_1c
    move-exception v62

    .line 581
    .restart local v62       #e:Ljava/lang/Throwable;
    const-string v3, "starting DockObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 588
    .end local v62           #e:Ljava/lang/Throwable;
    :catch_1d
    move-exception v62

    .line 589
    .restart local v62       #e:Ljava/lang/Throwable;
    const-string v3, "starting WiredAccessoryObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 597
    .end local v62           #e:Ljava/lang/Throwable;
    :catch_1e
    move-exception v62

    .line 598
    .restart local v62       #e:Ljava/lang/Throwable;
    :goto_4b
    const-string v3, "starting UsbService"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 605
    .end local v62           #e:Ljava/lang/Throwable;
    :catch_1f
    move-exception v62

    .line 606
    .restart local v62       #e:Ljava/lang/Throwable;
    const-string v3, "starting UiModeManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .line 613
    .end local v62           #e:Ljava/lang/Throwable;
    :catch_20
    move-exception v62

    .line 614
    .restart local v62       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object/from16 v0, v62

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2c

    .line 621
    .end local v62           #e:Ljava/lang/Throwable;
    :catch_21
    move-exception v62

    .line 622
    .restart local v62       #e:Ljava/lang/Throwable;
    :goto_4c
    const-string v3, "starting AppWidget Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .line 628
    .end local v62           #e:Ljava/lang/Throwable;
    :catch_22
    move-exception v62

    .line 629
    .restart local v62       #e:Ljava/lang/Throwable;
    const-string v3, "starting Recognition Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 635
    .end local v62           #e:Ljava/lang/Throwable;
    :catch_23
    move-exception v62

    .line 636
    .restart local v62       #e:Ljava/lang/Throwable;
    const-string v3, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 643
    .end local v62           #e:Ljava/lang/Throwable;
    :catch_24
    move-exception v62

    .line 644
    .restart local v62       #e:Ljava/lang/Throwable;
    const-string v3, "starting AtCmdFwd Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .line 655
    .end local v62           #e:Ljava/lang/Throwable;
    :catch_25
    move-exception v62

    .line 656
    .restart local v62       #e:Ljava/lang/Throwable;
    const-string v3, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 662
    .end local v62           #e:Ljava/lang/Throwable;
    :catch_26
    move-exception v62

    .line 663
    .restart local v62       #e:Ljava/lang/Throwable;
    const-string v3, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_32

    .line 673
    .end local v62           #e:Ljava/lang/Throwable;
    :catch_27
    move-exception v62

    .line 674
    .restart local v62       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting BT FM Power Management Service"

    move-object/from16 v0, v62

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_33

    .line 686
    .end local v62           #e:Ljava/lang/Throwable;
    :catch_28
    move-exception v62

    .line 687
    .restart local v62       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Wifi Ext Service"

    move-object/from16 v0, v62

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_34

    .line 701
    .end local v62           #e:Ljava/lang/Throwable;
    :cond_17
    :try_start_4e
    const-string v3, "SystemServer"

    const-string v9, "Mobile Hotspot Service getWifiMHPIfaceIface null"

    invoke-static {v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4e} :catch_29

    goto/16 :goto_35

    .line 703
    :catch_29
    move-exception v62

    .line 704
    .restart local v62       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Mobile Hotspot Service"

    move-object/from16 v0, v62

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_35

    .line 727
    .end local v62           #e:Ljava/lang/Throwable;
    .end local v101           #vzwLocMgrObj:Ljava/lang/Object;
    :catch_2a
    move-exception v63

    .line 728
    .local v63, ex:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Unable to load Vzw LocationManager Service or register as System Service"

    move-object/from16 v0, v63

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_36

    .line 744
    .end local v63           #ex:Ljava/lang/Throwable;
    .restart local v27       #safeMode:Z
    :cond_18
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_37

    .line 752
    :catch_2b
    move-exception v62

    .line 753
    .restart local v62       #e:Ljava/lang/Throwable;
    const-string v3, "making Device Policy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_38

    .line 760
    .end local v62           #e:Ljava/lang/Throwable;
    :catch_2c
    move-exception v62

    .line 761
    .restart local v62       #e:Ljava/lang/Throwable;
    const-string v3, "making Notification Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_39

    .line 767
    .end local v62           #e:Ljava/lang/Throwable;
    :catch_2d
    move-exception v62

    .line 768
    .restart local v62       #e:Ljava/lang/Throwable;
    const-string v3, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3a

    .line 787
    .end local v62           #e:Ljava/lang/Throwable;
    .restart local v47       #config:Landroid/content/res/Configuration;
    .restart local v74       #metrics:Landroid/util/DisplayMetrics;
    .restart local v102       #w:Landroid/view/WindowManager;
    :catch_2e
    move-exception v62

    .line 788
    .restart local v62       #e:Ljava/lang/Throwable;
    const-string v3, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3b

    .line 209
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v27           #safeMode:Z
    .end local v38           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v47           #config:Landroid/content/res/Configuration;
    .end local v50           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v56           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v62           #e:Ljava/lang/Throwable;
    .end local v68           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v72           #location:Lcom/android/server/LocationManagerService;
    .end local v74           #metrics:Landroid/util/DisplayMetrics;
    .end local v79           #notification:Lcom/android/server/NotificationManagerService;
    .end local v89           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v95           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v102           #w:Landroid/view/WindowManager;
    .end local v103           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v37       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v42       #battery:Lcom/android/server/BatteryService;
    .restart local v54       #cryptState:Ljava/lang/String;
    .restart local v66       #firstBoot:Z
    .restart local v75       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v81       #onlyCore:Z
    :catch_2f
    move-exception v3

    goto/16 :goto_6

    .line 621
    .end local v37           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v42           #battery:Lcom/android/server/BatteryService;
    .end local v54           #cryptState:Ljava/lang/String;
    .end local v66           #firstBoot:Z
    .end local v75           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v81           #onlyCore:Z
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v39       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v50       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v56       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v68       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v72       #location:Lcom/android/server/LocationManagerService;
    .restart local v79       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v89       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v95       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v101       #vzwLocMgrObj:Ljava/lang/Object;
    .restart local v103       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_30
    move-exception v62

    move-object/from16 v38, v39

    .end local v39           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v38       #appWidget:Lcom/android/server/AppWidgetService;
    goto/16 :goto_4c

    .line 597
    .end local v99           #usb:Lcom/android/server/usb/UsbService;
    .restart local v100       #usb:Lcom/android/server/usb/UsbService;
    :catch_31
    move-exception v62

    move-object/from16 v99, v100

    .end local v100           #usb:Lcom/android/server/usb/UsbService;
    .restart local v99       #usb:Lcom/android/server/usb/UsbService;
    goto/16 :goto_4b

    .line 565
    .end local v103           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v104       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_32
    move-exception v62

    move-object/from16 v103, v104

    .end local v104           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v103       #wallpaper:Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_4a

    .line 541
    .end local v50           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v51       #countryDetector:Lcom/android/server/CountryDetectorService;
    :catch_33
    move-exception v62

    move-object/from16 v50, v51

    .end local v51           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v50       #countryDetector:Lcom/android/server/CountryDetectorService;
    goto/16 :goto_49

    .line 533
    .end local v72           #location:Lcom/android/server/LocationManagerService;
    .restart local v73       #location:Lcom/android/server/LocationManagerService;
    :catch_34
    move-exception v62

    move-object/from16 v72, v73

    .end local v73           #location:Lcom/android/server/LocationManagerService;
    .restart local v72       #location:Lcom/android/server/LocationManagerService;
    goto/16 :goto_48

    .line 510
    .end local v79           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v80       #notification:Lcom/android/server/NotificationManagerService;
    :catch_35
    move-exception v62

    move-object/from16 v79, v80

    .end local v80           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v79       #notification:Lcom/android/server/NotificationManagerService;
    goto/16 :goto_47

    .line 490
    .end local v92           #throttle:Lcom/android/server/ThrottleService;
    .restart local v93       #throttle:Lcom/android/server/ThrottleService;
    :catch_36
    move-exception v62

    move-object/from16 v92, v93

    .end local v93           #throttle:Lcom/android/server/ThrottleService;
    .restart local v92       #throttle:Lcom/android/server/ThrottleService;
    goto/16 :goto_46

    .line 481
    .end local v48           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v49       #connectivity:Lcom/android/server/ConnectivityService;
    :catch_37
    move-exception v62

    move-object/from16 v48, v49

    .end local v49           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v48       #connectivity:Lcom/android/server/ConnectivityService;
    goto/16 :goto_45

    .line 467
    .end local v105           #wifi:Lcom/android/server/WifiService;
    .restart local v106       #wifi:Lcom/android/server/WifiService;
    :catch_38
    move-exception v62

    move-object/from16 v105, v106

    .end local v106           #wifi:Lcom/android/server/WifiService;
    .restart local v105       #wifi:Lcom/android/server/WifiService;
    goto/16 :goto_44

    .line 443
    .end local v110           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v111       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :catch_39
    move-exception v62

    move-object/from16 v110, v111

    .end local v111           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v110       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    goto/16 :goto_43

    .line 435
    :catch_3a
    move-exception v62

    goto/16 :goto_42

    .line 425
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v75       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v76       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :catch_3b
    move-exception v62

    move-object/from16 v12, v76

    .end local v76           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_41

    .line 417
    .end local v95           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v96       #tsms:Lcom/android/server/TextServicesManagerService;
    :catch_3c
    move-exception v62

    move-object/from16 v95, v96

    .end local v96           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v95       #tsms:Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_40

    .line 393
    .end local v89           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v90       #statusBar:Lcom/android/server/StatusBarManagerService;
    :catch_3d
    move-exception v62

    move-object/from16 v89, v90

    .end local v90           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v89       #statusBar:Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_3f

    .line 380
    .end local v56           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v57       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :catch_3e
    move-exception v62

    move-object/from16 v56, v57

    .end local v57           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v56       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_3e

    .line 372
    :catch_3f
    move-exception v3

    goto/16 :goto_11

    .line 342
    .end local v68           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v69       #imm:Lcom/android/server/InputMethodManagerService;
    :catch_40
    move-exception v62

    move-object/from16 v68, v69

    .end local v69           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v68       #imm:Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_3d

    .line 316
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v6           #power:Lcom/android/server/PowerManagerService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v38           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v50           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v56           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v68           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v72           #location:Lcom/android/server/LocationManagerService;
    .end local v79           #notification:Lcom/android/server/NotificationManagerService;
    .end local v89           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v95           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v101           #vzwLocMgrObj:Ljava/lang/Object;
    .end local v103           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v37       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v42       #battery:Lcom/android/server/BatteryService;
    .restart local v83       #power:Lcom/android/server/PowerManagerService;
    :catch_41
    move-exception v62

    move-object/from16 v7, v37

    .end local v37           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v42

    .end local v42           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v83

    .end local v83           #power:Lcom/android/server/PowerManagerService;
    .restart local v6       #power:Lcom/android/server/PowerManagerService;
    goto/16 :goto_3c

    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v70           #lights:Lcom/android/server/LightsService;
    .restart local v37       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v42       #battery:Lcom/android/server/BatteryService;
    .restart local v54       #cryptState:Ljava/lang/String;
    .restart local v66       #firstBoot:Z
    .restart local v71       #lights:Lcom/android/server/LightsService;
    .restart local v81       #onlyCore:Z
    :catch_42
    move-exception v62

    move-object/from16 v7, v37

    .end local v37           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v42

    .end local v42           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v70, v71

    .end local v71           #lights:Lcom/android/server/LightsService;
    .restart local v70       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_3c

    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v70           #lights:Lcom/android/server/LightsService;
    .restart local v37       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v71       #lights:Lcom/android/server/LightsService;
    :catch_43
    move-exception v62

    move-object/from16 v7, v37

    .end local v37           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v70, v71

    .end local v71           #lights:Lcom/android/server/LightsService;
    .restart local v70       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_3c

    .end local v70           #lights:Lcom/android/server/LightsService;
    .restart local v71       #lights:Lcom/android/server/LightsService;
    :catch_44
    move-exception v62

    move-object/from16 v70, v71

    .end local v71           #lights:Lcom/android/server/LightsService;
    .restart local v70       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_3c

    .end local v43           #bluetooth:Landroid/server/BluetoothService;
    .end local v70           #lights:Lcom/android/server/LightsService;
    .restart local v44       #bluetooth:Landroid/server/BluetoothService;
    .restart local v71       #lights:Lcom/android/server/LightsService;
    :catch_45
    move-exception v62

    move-object/from16 v43, v44

    .end local v44           #bluetooth:Landroid/server/BluetoothService;
    .restart local v43       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v70, v71

    .end local v71           #lights:Lcom/android/server/LightsService;
    .restart local v70       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_3c

    .end local v43           #bluetooth:Landroid/server/BluetoothService;
    .end local v45           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v70           #lights:Lcom/android/server/LightsService;
    .restart local v44       #bluetooth:Landroid/server/BluetoothService;
    .restart local v46       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v71       #lights:Lcom/android/server/LightsService;
    :catch_46
    move-exception v62

    move-object/from16 v45, v46

    .end local v46           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v45       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v43, v44

    .end local v44           #bluetooth:Landroid/server/BluetoothService;
    .restart local v43       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v70, v71

    .end local v71           #lights:Lcom/android/server/LightsService;
    .restart local v70       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_3c

    .end local v58           #dmm:Lcom/android/server/DynamicMemoryManagerService;
    .end local v70           #lights:Lcom/android/server/LightsService;
    .restart local v59       #dmm:Lcom/android/server/DynamicMemoryManagerService;
    .restart local v71       #lights:Lcom/android/server/LightsService;
    :catch_47
    move-exception v62

    move-object/from16 v58, v59

    .end local v59           #dmm:Lcom/android/server/DynamicMemoryManagerService;
    .restart local v58       #dmm:Lcom/android/server/DynamicMemoryManagerService;
    move-object/from16 v70, v71

    .end local v71           #lights:Lcom/android/server/LightsService;
    .restart local v70       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_3c

    .end local v52           #cpuGovernorManager:Lcom/android/server/CpuGovernorService;
    .end local v58           #dmm:Lcom/android/server/DynamicMemoryManagerService;
    .end local v70           #lights:Lcom/android/server/LightsService;
    .restart local v53       #cpuGovernorManager:Lcom/android/server/CpuGovernorService;
    .restart local v59       #dmm:Lcom/android/server/DynamicMemoryManagerService;
    .restart local v71       #lights:Lcom/android/server/LightsService;
    :catch_48
    move-exception v62

    move-object/from16 v52, v53

    .end local v53           #cpuGovernorManager:Lcom/android/server/CpuGovernorService;
    .restart local v52       #cpuGovernorManager:Lcom/android/server/CpuGovernorService;
    move-object/from16 v58, v59

    .end local v59           #dmm:Lcom/android/server/DynamicMemoryManagerService;
    .restart local v58       #dmm:Lcom/android/server/DynamicMemoryManagerService;
    move-object/from16 v70, v71

    .end local v71           #lights:Lcom/android/server/LightsService;
    .restart local v70       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_3c

    .end local v54           #cryptState:Ljava/lang/String;
    .end local v66           #firstBoot:Z
    .end local v81           #onlyCore:Z
    .restart local v38       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v50       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v56       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v68       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v72       #location:Lcom/android/server/LocationManagerService;
    .restart local v79       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v89       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v95       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v101       #vzwLocMgrObj:Ljava/lang/Object;
    .restart local v103       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_19
    move-object/from16 v8, v75

    .end local v75           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_36
.end method
