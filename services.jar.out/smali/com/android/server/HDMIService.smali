.class Lcom/android/server/HDMIService;
.super Landroid/os/IHDMIService$Stub;
.source "HDMIService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HDMIService"


# instance fields
.field public final HDMICableConnectedEvent:Ljava/lang/String;

.field public final HDMICableDisconnectedEvent:Ljava/lang/String;

.field private dimWakeLock:Landroid/os/PowerManager$WakeLock;

.field final m1280x720p50_16_9:I

.field final m1280x720p60_16_9:I

.field final m1440x480i60_16_9:I

.field final m1440x480i60_4_3:I

.field final m1440x576i50_16_9:I

.field final m1440x576i50_4_3:I

.field final m1920x1080i60_16_9:I

.field final m1920x1080p24_16_9:I

.field final m1920x1080p25_16_9:I

.field final m1920x1080p30_16_9:I

.field final m1920x1080p50_16_9:I

.field final m1920x1080p60_16_9:I

.field final m640x480p60_4_3:I

.field final m720x480p60_16_9:I

.field final m720x480p60_4_3:I

.field final m720x576p50_16_9:I

.field final m720x576p50_4_3:I

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mHDMIModes:[I

.field private mHDMIResOption:I

.field private mHDMIUserOption:Z

.field private mListener:Lcom/android/server/HDMIListener;

.field private mSuspended:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 155
    invoke-direct {p0}, Landroid/os/IHDMIService$Stub;-><init>()V

    .line 57
    iput-boolean v8, p0, Lcom/android/server/HDMIService;->mHDMIUserOption:Z

    .line 59
    const-string v3, "HDMI_CABLE_CONNECTED"

    iput-object v3, p0, Lcom/android/server/HDMIService;->HDMICableConnectedEvent:Ljava/lang/String;

    .line 60
    const-string v3, "HDMI_CABLE_DISCONNECTED"

    iput-object v3, p0, Lcom/android/server/HDMIService;->HDMICableDisconnectedEvent:Ljava/lang/String;

    .line 66
    iput-boolean v7, p0, Lcom/android/server/HDMIService;->mSuspended:Z

    .line 68
    iput v7, p0, Lcom/android/server/HDMIService;->mHDMIResOption:I

    .line 70
    iput-object v9, p0, Lcom/android/server/HDMIService;->dimWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 72
    iput v8, p0, Lcom/android/server/HDMIService;->m640x480p60_4_3:I

    .line 73
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/server/HDMIService;->m720x480p60_4_3:I

    .line 74
    iput v10, p0, Lcom/android/server/HDMIService;->m720x480p60_16_9:I

    .line 75
    iput v11, p0, Lcom/android/server/HDMIService;->m1280x720p60_16_9:I

    .line 76
    const/4 v3, 0x5

    iput v3, p0, Lcom/android/server/HDMIService;->m1920x1080i60_16_9:I

    .line 77
    const/4 v3, 0x6

    iput v3, p0, Lcom/android/server/HDMIService;->m1440x480i60_4_3:I

    .line 78
    const/4 v3, 0x7

    iput v3, p0, Lcom/android/server/HDMIService;->m1440x480i60_16_9:I

    .line 79
    const/16 v3, 0x10

    iput v3, p0, Lcom/android/server/HDMIService;->m1920x1080p60_16_9:I

    .line 80
    const/16 v3, 0x11

    iput v3, p0, Lcom/android/server/HDMIService;->m720x576p50_4_3:I

    .line 81
    const/16 v3, 0x12

    iput v3, p0, Lcom/android/server/HDMIService;->m720x576p50_16_9:I

    .line 82
    const/16 v3, 0x13

    iput v3, p0, Lcom/android/server/HDMIService;->m1280x720p50_16_9:I

    .line 83
    const/16 v3, 0x15

    iput v3, p0, Lcom/android/server/HDMIService;->m1440x576i50_4_3:I

    .line 84
    const/16 v3, 0x16

    iput v3, p0, Lcom/android/server/HDMIService;->m1440x576i50_16_9:I

    .line 85
    const/16 v3, 0x1f

    iput v3, p0, Lcom/android/server/HDMIService;->m1920x1080p50_16_9:I

    .line 86
    const/16 v3, 0x20

    iput v3, p0, Lcom/android/server/HDMIService;->m1920x1080p24_16_9:I

    .line 87
    const/16 v3, 0x21

    iput v3, p0, Lcom/android/server/HDMIService;->m1920x1080p25_16_9:I

    .line 88
    const/16 v3, 0x22

    iput v3, p0, Lcom/android/server/HDMIService;->m1920x1080p30_16_9:I

    .line 196
    new-instance v3, Lcom/android/server/HDMIService$1;

    invoke-direct {v3, p0}, Lcom/android/server/HDMIService$1;-><init>(Lcom/android/server/HDMIService;)V

    iput-object v3, p0, Lcom/android/server/HDMIService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 156
    iput-object p1, p0, Lcom/android/server/HDMIService;->mContext:Landroid/content/Context;

    .line 160
    iget-object v3, p0, Lcom/android/server/HDMIService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/HDMIService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5, v9, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 162
    const-string v3, "ro.hdmi.enable"

    invoke-static {v3, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 164
    const-string v3, "ctl.stop"

    const-string v4, "hdmid"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v3, "ctl.start"

    const-string v4, "hdmid"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 169
    :cond_0
    new-instance v3, Lcom/android/server/HDMIListener;

    invoke-direct {v3, p0}, Lcom/android/server/HDMIListener;-><init>(Lcom/android/server/HDMIService;)V

    iput-object v3, p0, Lcom/android/server/HDMIService;->mListener:Lcom/android/server/HDMIListener;

    .line 170
    iget-object v3, p0, Lcom/android/server/HDMIService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "HDMI_USEROPTION"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, hdmiUserOption:Ljava/lang/String;
    iput-boolean v8, p0, Lcom/android/server/HDMIService;->mHDMIUserOption:Z

    .line 177
    iget-object v3, p0, Lcom/android/server/HDMIService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "HDMI_RESOPTION"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, hdmiResOption:Ljava/lang/String;
    if-nez v0, :cond_1

    iput v7, p0, Lcom/android/server/HDMIService;->mHDMIResOption:I

    .line 189
    :goto_0
    iget-object v3, p0, Lcom/android/server/HDMIService;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 190
    .local v2, pm:Landroid/os/PowerManager;
    const/4 v3, 0x6

    const-string v4, "hdmi_dim_wakelock"

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/HDMIService;->dimWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 191
    iget-object v3, p0, Lcom/android/server/HDMIService;->dimWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v7}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 194
    return-void

    .line 181
    .end local v2           #pm:Landroid/os/PowerManager;
    :cond_1
    const-string v3, "HDMI_03"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iput v10, p0, Lcom/android/server/HDMIService;->mHDMIResOption:I

    goto :goto_0

    .line 182
    :cond_2
    const-string v3, "HDMI_04"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iput v11, p0, Lcom/android/server/HDMIService;->mHDMIResOption:I

    goto :goto_0

    .line 183
    :cond_3
    const-string v3, "HDMI_18"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x12

    iput v3, p0, Lcom/android/server/HDMIService;->mHDMIResOption:I

    goto :goto_0

    .line 184
    :cond_4
    const-string v3, "HDMI_34"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0x22

    iput v3, p0, Lcom/android/server/HDMIService;->mHDMIResOption:I

    goto :goto_0

    .line 185
    :cond_5
    iput v7, p0, Lcom/android/server/HDMIService;->mHDMIResOption:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/HDMIService;)Lcom/android/server/HDMIListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/server/HDMIService;->mListener:Lcom/android/server/HDMIListener;

    return-object v0
.end method

.method private sendConnectedIntent()V
    .locals 1

    .prologue
    .line 298
    const-string v0, "HDMI_CABLE_CONNECTED"

    invoke-virtual {p0, v0}, Lcom/android/server/HDMIService;->broadcastEvent(Ljava/lang/String;)V

    .line 299
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/HDMIService;->broadcastHDMIPluggedEvent(Z)V

    .line 300
    return-void
.end method

.method private sendDisconnectedIntent()V
    .locals 1

    .prologue
    .line 302
    const-string v0, "HDMI_CABLE_DISCONNECTED"

    invoke-virtual {p0, v0}, Lcom/android/server/HDMIService;->broadcastEvent(Ljava/lang/String;)V

    .line 303
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/HDMIService;->broadcastHDMIPluggedEvent(Z)V

    .line 304
    return-void
.end method


# virtual methods
.method public broadcastEvent(Ljava/lang/String;)V
    .locals 6
    .parameter "eventName"

    .prologue
    .line 270
    const/4 v1, 0x0

    .line 271
    .local v1, removeEvent:Ljava/lang/String;
    const-string v3, "HDMI_CABLE_CONNECTED"

    if-ne p1, v3, :cond_0

    .line 272
    const-string v1, "HDMI_CABLE_DISCONNECTED"

    .line 276
    :goto_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 277
    .local v2, removeIntent:Landroid/content/Intent;
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    iget-object v3, p0, Lcom/android/server/HDMIService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 281
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 282
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    iget-object v3, p0, Lcom/android/server/HDMIService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 284
    const-string v3, "HDMIService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Broadcasting ... "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    return-void

    .line 274
    .end local v0           #intent:Landroid/content/Intent;
    .end local v2           #removeIntent:Landroid/content/Intent;
    :cond_0
    const-string v1, "HDMI_CABLE_CONNECTED"

    goto :goto_0
.end method

.method public broadcastHDMIPluggedEvent(Z)V
    .locals 4
    .parameter "connected"

    .prologue
    .line 288
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.HDMI_PLUGGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 289
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 290
    if-eqz p1, :cond_0

    .line 291
    const-string v1, "EDID"

    iget-object v2, p0, Lcom/android/server/HDMIService;->mHDMIModes:[I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 292
    :cond_0
    iget-object v1, p0, Lcom/android/server/HDMIService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 293
    const-string v1, "HDMIService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcasting Intent ACTION_HDMI_PLUGGED state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    return-void
.end method

.method public changeDisplayMode(I)V
    .locals 4
    .parameter "mode"

    .prologue
    const/16 v3, 0x22

    const/16 v2, 0x12

    const/4 v1, 0x4

    const/4 v0, 0x3

    .line 360
    monitor-enter p0

    .line 361
    if-ne p1, v0, :cond_1

    .line 362
    :try_start_0
    iget-object v0, p0, Lcom/android/server/HDMIService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "HDMI_RESOPTION"

    const-string v2, "HDMI_03"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 364
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/HDMIService;->mHDMIResOption:I

    .line 387
    :goto_0
    iget-object v0, p0, Lcom/android/server/HDMIService;->mHDMIModes:[I

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/android/server/HDMIService;->mListener:Lcom/android/server/HDMIListener;

    iget v1, p0, Lcom/android/server/HDMIService;->mHDMIResOption:I

    invoke-virtual {v0, v1}, Lcom/android/server/HDMIListener;->changeDisplayMode(I)V

    .line 392
    :cond_0
    monitor-exit p0

    .line 393
    return-void

    .line 366
    :cond_1
    if-ne p1, v1, :cond_2

    .line 367
    iget-object v0, p0, Lcom/android/server/HDMIService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "HDMI_RESOPTION"

    const-string v2, "HDMI_04"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 369
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/HDMIService;->mHDMIResOption:I

    goto :goto_0

    .line 392
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 371
    :cond_2
    if-ne p1, v2, :cond_3

    .line 372
    :try_start_1
    iget-object v0, p0, Lcom/android/server/HDMIService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "HDMI_RESOPTION"

    const-string v2, "HDMI_18"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 374
    const/16 v0, 0x12

    iput v0, p0, Lcom/android/server/HDMIService;->mHDMIResOption:I

    goto :goto_0

    .line 376
    :cond_3
    if-ne p1, v3, :cond_4

    .line 377
    iget-object v0, p0, Lcom/android/server/HDMIService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "HDMI_RESOPTION"

    const-string v2, "HDMI_34"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 379
    const/16 v0, 0x22

    iput v0, p0, Lcom/android/server/HDMIService;->mHDMIResOption:I

    goto :goto_0

    .line 382
    :cond_4
    iget-object v0, p0, Lcom/android/server/HDMIService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "HDMI_RESOPTION"

    const-string v2, "HDMI_AUTO"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 384
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/HDMIService;->mHDMIResOption:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method getBestMode()I
    .locals 8

    .prologue
    .line 138
    const/4 v2, 0x0

    .local v2, bestOrder:I
    const/4 v1, 0x1

    .line 139
    .local v1, bestMode:I
    iget-object v0, p0, Lcom/android/server/HDMIService;->mHDMIModes:[I

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget v5, v0, v3

    .line 140
    .local v5, mode:I
    invoke-virtual {p0, v5}, Lcom/android/server/HDMIService;->getModeOrder(I)I

    move-result v6

    .line 142
    .local v6, order:I
    const/16 v7, 0x22

    if-le v6, v7, :cond_1

    .line 152
    .end local v5           #mode:I
    .end local v6           #order:I
    :cond_0
    return v1

    .line 147
    .restart local v5       #mode:I
    .restart local v6       #order:I
    :cond_1
    if-le v6, v2, :cond_2

    .line 148
    move v2, v6

    .line 149
    move v1, v5

    .line 139
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public getHDMIResOption()I
    .locals 1

    .prologue
    .line 260
    iget v0, p0, Lcom/android/server/HDMIService;->mHDMIResOption:I

    return v0
.end method

.method public getHDMIUserOption()Z
    .locals 1

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/android/server/HDMIService;->mHDMIUserOption:Z

    return v0
.end method

.method getModeOrder(I)I
    .locals 1
    .parameter "mode"

    .prologue
    .line 93
    sparse-switch p1, :sswitch_data_0

    .line 96
    const/4 v0, 0x4

    .line 102
    :goto_0
    return v0

    .line 98
    :sswitch_0
    const/4 v0, 0x5

    goto :goto_0

    .line 100
    :sswitch_1
    const/4 v0, 0x7

    goto :goto_0

    .line 102
    :sswitch_2
    const/16 v0, 0x8

    goto :goto_0

    .line 93
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x12 -> :sswitch_0
        0x22 -> :sswitch_2
    .end sparse-switch
.end method

.method public getModes()[I
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/server/HDMIService;->mHDMIModes:[I

    return-object v0
.end method

.method public isHDMIConnected()Z
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/server/HDMIService;->mListener:Lcom/android/server/HDMIListener;

    invoke-virtual {v0}, Lcom/android/server/HDMIListener;->isHDMIConnected()Z

    move-result v0

    return v0
.end method

.method public mapFrameBuffer()V
    .locals 2

    .prologue
    .line 399
    const-string v0, "HDMIService"

    const-string v1, "Listener.mapFrameBuffer called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v0, p0, Lcom/android/server/HDMIService;->mListener:Lcom/android/server/HDMIListener;

    invoke-virtual {v0}, Lcom/android/server/HDMIListener;->mapFrameBuffer()V

    .line 401
    return-void
.end method

.method public notifyHDMIAudioOff()V
    .locals 1

    .prologue
    .line 350
    const/4 v0, 0x0

    .line 356
    .local v0, connected:Z
    return-void
.end method

.method public notifyHDMIAudioOn()V
    .locals 1

    .prologue
    .line 341
    const/4 v0, 0x1

    .line 347
    .local v0, connected:Z
    return-void
.end method

.method public notifyHDMIConnected([I)V
    .locals 4
    .parameter "modes"

    .prologue
    .line 308
    const/4 v0, 0x1

    .line 309
    .local v0, connected:Z
    iput-object p1, p0, Lcom/android/server/HDMIService;->mHDMIModes:[I

    .line 311
    invoke-virtual {p0}, Lcom/android/server/HDMIService;->getHDMIUserOption()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 312
    iget-object v2, p0, Lcom/android/server/HDMIService;->mListener:Lcom/android/server/HDMIListener;

    monitor-enter v2

    .line 313
    :try_start_0
    iget-object v1, p0, Lcom/android/server/HDMIService;->mListener:Lcom/android/server/HDMIListener;

    invoke-virtual {p0}, Lcom/android/server/HDMIService;->getBestMode()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/HDMIListener;->changeDisplayMode(I)V

    .line 314
    iget-object v1, p0, Lcom/android/server/HDMIService;->mListener:Lcom/android/server/HDMIListener;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/HDMIListener;->enableHDMIOutput(Z)V

    .line 315
    invoke-direct {p0}, Lcom/android/server/HDMIService;->sendConnectedIntent()V

    .line 316
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    :cond_0
    iget-object v1, p0, Lcom/android/server/HDMIService;->dimWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 320
    return-void

    .line 316
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public notifyHDMIDisconnected()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 323
    const/4 v0, 0x0

    .line 324
    .local v0, connected:Z
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/HDMIService;->mHDMIModes:[I

    .line 326
    iput-boolean v2, p0, Lcom/android/server/HDMIService;->mSuspended:Z

    .line 328
    invoke-virtual {p0}, Lcom/android/server/HDMIService;->getHDMIUserOption()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    iget-object v2, p0, Lcom/android/server/HDMIService;->mListener:Lcom/android/server/HDMIListener;

    monitor-enter v2

    .line 331
    :try_start_0
    iget-object v1, p0, Lcom/android/server/HDMIService;->mListener:Lcom/android/server/HDMIListener;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/HDMIListener;->enableHDMIOutput(Z)V

    .line 332
    invoke-direct {p0}, Lcom/android/server/HDMIService;->sendDisconnectedIntent()V

    .line 335
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    :cond_0
    iget-object v1, p0, Lcom/android/server/HDMIService;->dimWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 339
    return-void

    .line 335
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public sendStringtoService(Ljava/lang/String;)V
    .locals 2
    .parameter "caption"

    .prologue
    .line 411
    const-string v0, "HDMIService"

    const-string v1, " sendStringtoService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object v0, p0, Lcom/android/server/HDMIService;->mListener:Lcom/android/server/HDMIListener;

    invoke-virtual {v0, p1}, Lcom/android/server/HDMIListener;->sendStringtoService(Ljava/lang/String;)V

    .line 413
    return-void
.end method

.method public setActionsafeHeightRatio(F)V
    .locals 1
    .parameter "asHeightRatio"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/server/HDMIService;->mListener:Lcom/android/server/HDMIListener;

    invoke-virtual {v0, p1}, Lcom/android/server/HDMIListener;->setActionsafeHeightRatio(F)V

    .line 244
    return-void
.end method

.method public setActionsafeWidthRatio(F)V
    .locals 1
    .parameter "asWidthRatio"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/server/HDMIService;->mListener:Lcom/android/server/HDMIListener;

    invoke-virtual {v0, p1}, Lcom/android/server/HDMIListener;->setActionsafeWidthRatio(F)V

    .line 240
    return-void
.end method

.method public setHDMIOutput(Z)V
    .locals 4
    .parameter "enableHDMI"

    .prologue
    .line 223
    iget-object v1, p0, Lcom/android/server/HDMIService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "HDMI_USEROPTION"

    if-eqz p1, :cond_1

    const-string v1, "HDMI_ON"

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 225
    iput-boolean p1, p0, Lcom/android/server/HDMIService;->mHDMIUserOption:Z

    .line 227
    iget-object v2, p0, Lcom/android/server/HDMIService;->mListener:Lcom/android/server/HDMIListener;

    monitor-enter v2

    .line 228
    if-nez p1, :cond_0

    .line 229
    const/4 v0, 0x0

    .line 230
    .local v0, connected:Z
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/HDMIService;->broadcastHDMIPluggedEvent(Z)V

    .line 231
    const-string v1, "HDMI_CABLE_DISCONNECTED"

    invoke-virtual {p0, v1}, Lcom/android/server/HDMIService;->broadcastEvent(Ljava/lang/String;)V

    .line 232
    iget-object v1, p0, Lcom/android/server/HDMIService;->mListener:Lcom/android/server/HDMIListener;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/HDMIListener;->enableHDMIOutput(Z)V

    .line 234
    .end local v0           #connected:Z
    :cond_0
    iget-object v1, p0, Lcom/android/server/HDMIService;->mListener:Lcom/android/server/HDMIListener;

    invoke-virtual {p0}, Lcom/android/server/HDMIService;->getHDMIUserOption()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/HDMIListener;->setHPD(Z)V

    .line 235
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    return-void

    .line 223
    :cond_1
    const-string v1, "HDMI_OFF"

    goto :goto_0

    .line 235
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setHDMISuspendParam(Z)V
    .locals 3
    .parameter "suspendHDMI"

    .prologue
    .line 418
    iget-object v1, p0, Lcom/android/server/HDMIService;->mListener:Lcom/android/server/HDMIListener;

    monitor-enter v1

    .line 419
    if-eqz p1, :cond_0

    .line 421
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/HDMIService;->mSuspended:Z

    .line 422
    const-string v0, "HDMIService"

    const-string v2, "setHDMISuspendParam ... suspendHDMI"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v0, p0, Lcom/android/server/HDMIService;->mListener:Lcom/android/server/HDMIListener;

    invoke-virtual {v0, p1}, Lcom/android/server/HDMIListener;->suspendHDMIOutputParam(Z)V

    .line 424
    iget-object v0, p0, Lcom/android/server/HDMIService;->dimWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 432
    :goto_0
    monitor-exit v1

    .line 433
    return-void

    .line 427
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/HDMIService;->mSuspended:Z

    .line 428
    const-string v0, "HDMIService"

    const-string v2, "setHDMISuspendParam ... resumedHDMI"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object v0, p0, Lcom/android/server/HDMIService;->mListener:Lcom/android/server/HDMIListener;

    invoke-virtual {v0, p1}, Lcom/android/server/HDMIListener;->suspendHDMIOutputParam(Z)V

    .line 430
    iget-object v0, p0, Lcom/android/server/HDMIService;->dimWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    .line 432
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/server/HDMIService;->mListener:Lcom/android/server/HDMIListener;

    invoke-virtual {v0, p1}, Lcom/android/server/HDMIListener;->changeDisplayMode(I)V

    .line 252
    return-void
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/server/HDMIService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SHUTDOWN permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_0
    const-string v0, "HDMIService"

    const-string v1, "Shutting down"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    return-void
.end method

.method public unmapFrameBuffer()V
    .locals 2

    .prologue
    .line 405
    const-string v0, "HDMIService"

    const-string v1, "Listener.unmapFrameBuffer called "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v0, p0, Lcom/android/server/HDMIService;->mListener:Lcom/android/server/HDMIListener;

    invoke-virtual {v0}, Lcom/android/server/HDMIListener;->unmapFrameBuffer()V

    .line 407
    return-void
.end method
