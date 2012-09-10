.class public Lcom/lge/camera/receiver/BroadCastReceiverDefine;
.super Ljava/lang/Object;
.source "BroadCastReceiverDefine.java"


# instance fields
.field public mBatteryReceiver:Lcom/lge/camera/receiver/BatteryReceiver;

.field public mCameraSettingReceiverBySDM:Lcom/lge/camera/receiver/CameraSettingReceiverBySDM;

.field public mHdmiReceiver:Lcom/lge/camera/receiver/HdmiReceiver;

.field public mMediaReceiver:Lcom/lge/camera/receiver/CameraBroadCastReceiver;

.field mMediator:Lcom/lge/camera/Mediator;

.field public mMessageReceiver:Lcom/lge/camera/receiver/MessageReceiver;

.field public mUmsReceiver:Lcom/lge/camera/receiver/UmsReceiver;

.field public mVoiceMailReceiver:Lcom/lge/camera/receiver/VoiceMailReceiver;


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mMediator:Lcom/lge/camera/Mediator;

    .line 24
    invoke-direct {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->init()V

    .line 25
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lcom/lge/camera/receiver/MessageReceiver;

    iget-object v1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mMediator:Lcom/lge/camera/Mediator;

    invoke-direct {v0, v1}, Lcom/lge/camera/receiver/MessageReceiver;-><init>(Lcom/lge/camera/Mediator;)V

    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mMessageReceiver:Lcom/lge/camera/receiver/MessageReceiver;

    .line 29
    new-instance v0, Lcom/lge/camera/receiver/BatteryReceiver;

    iget-object v1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mMediator:Lcom/lge/camera/Mediator;

    invoke-direct {v0, v1}, Lcom/lge/camera/receiver/BatteryReceiver;-><init>(Lcom/lge/camera/Mediator;)V

    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mBatteryReceiver:Lcom/lge/camera/receiver/BatteryReceiver;

    .line 30
    new-instance v0, Lcom/lge/camera/receiver/VoiceMailReceiver;

    iget-object v1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mMediator:Lcom/lge/camera/Mediator;

    invoke-direct {v0, v1}, Lcom/lge/camera/receiver/VoiceMailReceiver;-><init>(Lcom/lge/camera/Mediator;)V

    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mVoiceMailReceiver:Lcom/lge/camera/receiver/VoiceMailReceiver;

    .line 31
    new-instance v0, Lcom/lge/camera/receiver/CameraSettingReceiverBySDM;

    iget-object v1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mMediator:Lcom/lge/camera/Mediator;

    invoke-direct {v0, v1}, Lcom/lge/camera/receiver/CameraSettingReceiverBySDM;-><init>(Lcom/lge/camera/Mediator;)V

    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mCameraSettingReceiverBySDM:Lcom/lge/camera/receiver/CameraSettingReceiverBySDM;

    .line 32
    new-instance v0, Lcom/lge/camera/receiver/HdmiReceiver;

    iget-object v1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mMediator:Lcom/lge/camera/Mediator;

    invoke-direct {v0, v1}, Lcom/lge/camera/receiver/HdmiReceiver;-><init>(Lcom/lge/camera/Mediator;)V

    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mHdmiReceiver:Lcom/lge/camera/receiver/HdmiReceiver;

    .line 33
    iget-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/lge/camera/receiver/CameraMediaBroadcastReceiver;

    iget-object v1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mMediator:Lcom/lge/camera/Mediator;

    invoke-direct {v0, v1}, Lcom/lge/camera/receiver/CameraMediaBroadcastReceiver;-><init>(Lcom/lge/camera/Mediator;)V

    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mMediaReceiver:Lcom/lge/camera/receiver/CameraBroadCastReceiver;

    .line 39
    :goto_0
    new-instance v0, Lcom/lge/camera/receiver/UmsReceiver;

    iget-object v1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mMediator:Lcom/lge/camera/Mediator;

    invoke-direct {v0, v1}, Lcom/lge/camera/receiver/UmsReceiver;-><init>(Lcom/lge/camera/Mediator;)V

    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mUmsReceiver:Lcom/lge/camera/receiver/UmsReceiver;

    .line 40
    return-void

    .line 37
    :cond_0
    new-instance v0, Lcom/lge/camera/receiver/CamcorderMediaBroadcastReceiver;

    iget-object v1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mMediator:Lcom/lge/camera/Mediator;

    invoke-direct {v0, v1}, Lcom/lge/camera/receiver/CamcorderMediaBroadcastReceiver;-><init>(Lcom/lge/camera/Mediator;)V

    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mMediaReceiver:Lcom/lge/camera/receiver/CameraBroadCastReceiver;

    goto :goto_0
.end method

.method private registerBatteryReceiver()V
    .locals 3

    .prologue
    .line 72
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 73
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportHeat_detection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mMediator:Lcom/lge/camera/Mediator;

    iget-object v2, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mBatteryReceiver:Lcom/lge/camera/receiver/BatteryReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/lge/camera/Mediator;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 80
    return-void
.end method

.method private registerCameraSettingReceiverBySDM()V
    .locals 3

    .prologue
    .line 83
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.innopath.activecare.CAMERA_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, intentFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mMediator:Lcom/lge/camera/Mediator;

    iget-object v2, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mCameraSettingReceiverBySDM:Lcom/lge/camera/receiver/CameraSettingReceiverBySDM;

    invoke-virtual {v1, v2, v0}, Lcom/lge/camera/Mediator;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 85
    return-void
.end method

.method private registerHdmiReciever()V
    .locals 3

    .prologue
    .line 116
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 118
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 119
    iget-object v1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mHdmiReceiver:Lcom/lge/camera/receiver/HdmiReceiver;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "HDMI_CABLE_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mHdmiReceiver:Lcom/lge/camera/receiver/HdmiReceiver;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "HDMI_CABLE_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mHdmiReceiver:Lcom/lge/camera/receiver/HdmiReceiver;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "android.intent.action.HDMI_AUDIO_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mHdmiReceiver:Lcom/lge/camera/receiver/HdmiReceiver;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "android.intent.action.HDMI_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mHdmiReceiver:Lcom/lge/camera/receiver/HdmiReceiver;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "android.intent.action.DUALDISPLAY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    iget-object v1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mMediator:Lcom/lge/camera/Mediator;

    iget-object v2, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mHdmiReceiver:Lcom/lge/camera/receiver/HdmiReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/lge/camera/Mediator;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 126
    return-void
.end method

.method private registerHomeKeyReceiver()V
    .locals 2

    .prologue
    .line 128
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 129
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 130
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method private registerMediaReceiver()V
    .locals 3

    .prologue
    .line 55
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 56
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 62
    const-string v1, "android.intent.action.MEDIA_NOFS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    const-string v1, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mMediator:Lcom/lge/camera/Mediator;

    iget-object v2, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mMediaReceiver:Lcom/lge/camera/receiver/CameraBroadCastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/lge/camera/Mediator;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 70
    return-void
.end method

.method private registerMessageReceiver()V
    .locals 6

    .prologue
    .line 87
    new-instance v0, Landroid/content/IntentFilter;

    const-string v4, "com.lge.message.MSG_RECEIVED_ACTION"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 88
    .local v0, intentFilter:Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mMediator:Lcom/lge/camera/Mediator;

    iget-object v5, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mMessageReceiver:Lcom/lge/camera/receiver/MessageReceiver;

    invoke-virtual {v4, v5, v0}, Lcom/lge/camera/Mediator;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 95
    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "lge.intent.action.UNREAD_SKT_MESSAGES"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 96
    .local v1, intentFilter2:Landroid/content/IntentFilter;
    const-string v4, "lge.intent.action.ACTION_UNREAD_SMS"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    iget-object v4, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mMediator:Lcom/lge/camera/Mediator;

    iget-object v5, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mMessageReceiver:Lcom/lge/camera/receiver/MessageReceiver;

    invoke-virtual {v4, v5, v1}, Lcom/lge/camera/Mediator;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 99
    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "com.lge.message.SMS_RECEIVED_ACTION_FOR_LGE_APPL"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 100
    .local v2, intentFilter3:Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mMediator:Lcom/lge/camera/Mediator;

    iget-object v5, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mMessageReceiver:Lcom/lge/camera/receiver/MessageReceiver;

    invoke-virtual {v4, v5, v2}, Lcom/lge/camera/Mediator;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 102
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.lge.message.MMS_RECEIVED_ACTION_FOR_LGE_APPL"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 103
    .local v3, intentFilter4:Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mMediator:Lcom/lge/camera/Mediator;

    iget-object v5, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mMessageReceiver:Lcom/lge/camera/receiver/MessageReceiver;

    invoke-virtual {v4, v5, v3}, Lcom/lge/camera/Mediator;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 105
    return-void
.end method

.method private registerUmsReceiver()V
    .locals 3

    .prologue
    .line 111
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.lge.autorun.start_ums"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 112
    .local v0, intentFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mMediator:Lcom/lge/camera/Mediator;

    iget-object v2, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mUmsReceiver:Lcom/lge/camera/receiver/UmsReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/lge/camera/Mediator;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 113
    return-void
.end method

.method private registerVoiceMailReceiver()V
    .locals 3

    .prologue
    .line 107
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.lge.vvm.NEW_VVM_NOTIFICATION_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 108
    .local v0, intentFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mMediator:Lcom/lge/camera/Mediator;

    iget-object v2, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mVoiceMailReceiver:Lcom/lge/camera/receiver/VoiceMailReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/lge/camera/Mediator;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 109
    return-void
.end method


# virtual methods
.method public registerReceiver()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->registerMediaReceiver()V

    .line 44
    invoke-direct {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->registerBatteryReceiver()V

    .line 45
    invoke-direct {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->registerCameraSettingReceiverBySDM()V

    .line 46
    invoke-direct {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->registerMessageReceiver()V

    .line 47
    invoke-direct {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->registerVoiceMailReceiver()V

    .line 48
    invoke-direct {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->registerUmsReceiver()V

    .line 49
    invoke-direct {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->registerHdmiReciever()V

    .line 50
    invoke-direct {p0}, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->registerHomeKeyReceiver()V

    .line 51
    return-void
.end method

.method public unRegisterMediaReceiver()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 146
    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mMediaReceiver:Lcom/lge/camera/receiver/CameraBroadCastReceiver;

    .line 148
    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mBatteryReceiver:Lcom/lge/camera/receiver/BatteryReceiver;

    .line 149
    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mMessageReceiver:Lcom/lge/camera/receiver/MessageReceiver;

    .line 150
    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mVoiceMailReceiver:Lcom/lge/camera/receiver/VoiceMailReceiver;

    .line 151
    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mCameraSettingReceiverBySDM:Lcom/lge/camera/receiver/CameraSettingReceiverBySDM;

    .line 152
    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mHdmiReceiver:Lcom/lge/camera/receiver/HdmiReceiver;

    .line 153
    iput-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mUmsReceiver:Lcom/lge/camera/receiver/UmsReceiver;

    .line 154
    return-void
.end method

.method public unRegisterReceiver()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mMediator:Lcom/lge/camera/Mediator;

    iget-object v1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mMediaReceiver:Lcom/lge/camera/receiver/CameraBroadCastReceiver;

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 135
    iget-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mMediator:Lcom/lge/camera/Mediator;

    iget-object v1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mBatteryReceiver:Lcom/lge/camera/receiver/BatteryReceiver;

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 136
    iget-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mMediator:Lcom/lge/camera/Mediator;

    iget-object v1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mMessageReceiver:Lcom/lge/camera/receiver/MessageReceiver;

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 137
    iget-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mMediator:Lcom/lge/camera/Mediator;

    iget-object v1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mVoiceMailReceiver:Lcom/lge/camera/receiver/VoiceMailReceiver;

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 138
    iget-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mMediator:Lcom/lge/camera/Mediator;

    iget-object v1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mUmsReceiver:Lcom/lge/camera/receiver/UmsReceiver;

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 139
    iget-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mMediator:Lcom/lge/camera/Mediator;

    iget-object v1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mCameraSettingReceiverBySDM:Lcom/lge/camera/receiver/CameraSettingReceiverBySDM;

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 140
    iget-object v0, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mMediator:Lcom/lge/camera/Mediator;

    iget-object v1, p0, Lcom/lge/camera/receiver/BroadCastReceiverDefine;->mHdmiReceiver:Lcom/lge/camera/receiver/HdmiReceiver;

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 141
    return-void
.end method
