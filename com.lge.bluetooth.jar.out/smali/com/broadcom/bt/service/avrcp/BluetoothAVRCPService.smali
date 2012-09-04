.class public Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;
.super Lcom/broadcom/bt/service/framework/BaseEventLoop;
.source "BluetoothAVRCPService.java"


# static fields
.field private static final AMAZON_META_CHANGED:Ljava/lang/String; = "com.amazon.mp3.metachanged"

.field private static final AMAZON_PLAYSTATE_CHANGED:Ljava/lang/String; = "com.amazon.mp3.playstatechanged"

.field private static final ANDROID_META_CHANGED:Ljava/lang/String; = "com.android.music.metachanged"

.field private static final ANDROID_PLAYSTATE_CHANGED:Ljava/lang/String; = "com.android.music.playstatechanged"

.field private static final D:Z = true

.field private static final DEFAULT_METADATA_NUM:Ljava/lang/String; = "0"

.field private static final DEFAULT_METADATA_STRING:Ljava/lang/String; = "Unknown"

.field private static final DEFAULT_TRACK_NUM:J = -0x1L

.field private static final DOUBLETWIST_META_CHANGED:Ljava/lang/String; = "com.doubleTwist.androidPlayer.metachanged"

.field private static final DOUBLETWIST_PLAYSTATE_CHANGED:Ljava/lang/String; = "com.doubleTwist.androidPlayer.playstatechanged"

.field private static final HTC_META_CHANGED:Ljava/lang/String; = "com.htc.music.metachanged"

.field private static final HTC_PLAYSTATE_CHANGED:Ljava/lang/String; = "com.htc.music.playstatechanged"

.field private static final LGE_META_CHANGED:Ljava/lang/String; = "com.lge.music.metachanged"

.field private static final LGE_PLAYSTATE_CHANGED:Ljava/lang/String; = "com.lge.music.playstatechanged"

.field private static final PLAYPOS_TIMER_EVENT:I = 0x0

.field private static final PLAYSTATE_PAUSED:I = 0x2

.field private static final PLAYSTATE_PLAYING:I = 0x1

.field private static final PLAYSTATE_STOPPED:I = 0x0

.field private static final PLAYSTATUS_REQUEST:Ljava/lang/String; = "com.android.music.playstatusrequest"

.field private static final PLAYSTATUS_RESPONSE:Ljava/lang/String; = "com.android.music.playstatusresponse"

.field private static final PLAYSTATUS_TIMER_EVENT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothAVRCPService"

.field private static mReceiverRegistered:Z


# instance fields
.field private intentExtras:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAlbumName:Ljava/lang/String;

.field private mArtistName:Ljava/lang/String;

.field private mDuration:J

.field private mEnabled:Z

.field private mHandler:Landroid/os/Handler;

.field private mPlayStatus:I

.field private mPosition:J

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mTitle:Ljava/lang/String;

.field private mTotalTracks:J

.field private mTrackNum:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput-boolean v0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mReceiverRegistered:Z

    .line 101
    invoke-static {}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->classInitNativeAVRCP()V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 107
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/framework/BaseEventLoop;-><init>(Landroid/content/Context;)V

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->intentExtras:Ljava/util/HashMap;

    .line 87
    const-string v0, "Unknown"

    iput-object v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mTitle:Ljava/lang/String;

    .line 88
    const-string v0, "Unknown"

    iput-object v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mArtistName:Ljava/lang/String;

    .line 89
    const-string v0, "Unknown"

    iput-object v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mAlbumName:Ljava/lang/String;

    .line 90
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mTrackNum:J

    .line 91
    iput-wide v3, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mTotalTracks:J

    .line 92
    iput-wide v3, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mDuration:J

    .line 93
    iput v2, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayStatus:I

    .line 94
    iput-wide v3, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPosition:J

    .line 408
    new-instance v0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService$1;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService$1;-><init>(Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 453
    new-instance v0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService$2;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService$2;-><init>(Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mHandler:Landroid/os/Handler;

    .line 108
    iput-boolean v2, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mIsFinish:Z

    .line 109
    iput-boolean v2, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mEnabled:Z

    .line 110
    return-void
.end method

.method static synthetic access$000(Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayStatus:I

    return v0
.end method

.method static synthetic access$100(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-static {p0}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->onPlayStateChangedNative(I)V

    return-void
.end method

.method static synthetic access$200(J)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-static {p0, p1}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->onTrackChangedNative(J)V

    return-void
.end method

.method static synthetic access$300(Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mDuration:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPosition:J

    return-wide v0
.end method

.method static synthetic access$600(III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 40
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->onPlayStatusAvailableNative(III)V

    return-void
.end method

.method private static native classInitNativeAVRCP()V
.end method

.method private native cleanupNativeAVRCP()V
.end method

.method private native disableNativeAVRCP()V
.end method

.method private native enableNativeAVRCP()V
.end method

.method private native initNativeAVRCP()V
.end method

.method private static native onPlayStateChangedNative(I)V
.end method

.method private static native onPlayStatusAvailableNative(III)V
.end method

.method private static native onTrackChangedNative(J)V
.end method


# virtual methods
.method public declared-synchronized disable()V
    .locals 4

    .prologue
    .line 575
    monitor-enter p0

    :try_start_0
    const-string v1, "BluetoothAVRCPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disable: enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    iget-boolean v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mEnabled:Z

    if-eqz v1, :cond_0

    .line 578
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 580
    :try_start_1
    invoke-direct {p0}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->disableNativeAVRCP()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 585
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 581
    :catch_0
    move-exception v0

    .line 582
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "BluetoothAVRCPService"

    const-string v2, "disableNativeAVRCP failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 575
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method dumpExtras(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    .line 128
    const-string v3, "BluetoothAVRCPService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In dumpExtras - Received intent - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 131
    .local v0, extras:Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 138
    :cond_0
    return-void

    .line 133
    :cond_1
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 134
    .local v2, ks:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 135
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 136
    const-string v4, "KEY"

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized enable()V
    .locals 3

    .prologue
    .line 562
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothAVRCPService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable: mEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    invoke-direct {p0}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->enableNativeAVRCP()V

    .line 565
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 566
    monitor-exit p0

    return-void

    .line 562
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method fillIntentExtras(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 146
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, action:Ljava/lang/String;
    const-string v1, "BluetoothAVRCPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fillIntentExtras - received action - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const-string v1, "com.android.music.playstatechanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.android.music.metachanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.lge.music.playstatechanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.lge.music.metachanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->intentExtras:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 156
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->intentExtras:Ljava/util/HashMap;

    const-string v2, "Title"

    const-string v3, "track"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->intentExtras:Ljava/util/HashMap;

    const-string v2, "Artist"

    const-string v3, "artist"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->intentExtras:Ljava/util/HashMap;

    const-string v2, "Album"

    const-string v3, "album"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->intentExtras:Ljava/util/HashMap;

    const-string v2, "TrackNum"

    const-string v3, "id"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->intentExtras:Ljava/util/HashMap;

    const-string v2, "TotalTracks"

    const-string v3, "ListSize"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->intentExtras:Ljava/util/HashMap;

    const-string v2, "Duration"

    const-string v3, "duration"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->intentExtras:Ljava/util/HashMap;

    const-string v2, "Position"

    const-string v3, "position"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string v1, "playing"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 165
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->intentExtras:Ljava/util/HashMap;

    const-string v2, "PlayState"

    const-string v3, "playing"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->intentExtras:Ljava/util/HashMap;

    const-string v2, "Repeat"

    const-string v3, "repeat"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->intentExtras:Ljava/util/HashMap;

    const-string v2, "Shuffle"

    const-string v3, "shuffle"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    :cond_2
    :goto_1
    return-void

    .line 166
    :cond_3
    const-string v1, "playstate"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->intentExtras:Ljava/util/HashMap;

    const-string v2, "PlayState"

    const-string v3, "playstate"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 172
    :cond_4
    const-string v1, "com.amazon.mp3.playstatechanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "com.amazon.mp3.metachanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 174
    :cond_5
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->intentExtras:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 176
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->intentExtras:Ljava/util/HashMap;

    const-string v2, "Title"

    const-string v3, "com.amazon.mp3.track"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->intentExtras:Ljava/util/HashMap;

    const-string v2, "Artist"

    const-string v3, "com.amazon.mp3.artist"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->intentExtras:Ljava/util/HashMap;

    const-string v2, "Album"

    const-string v3, "com.amazon.mp3.album"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->intentExtras:Ljava/util/HashMap;

    const-string v2, "TrackNum"

    const-string v3, "com.amazon.mp3.id"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->intentExtras:Ljava/util/HashMap;

    const-string v2, "TotalTracks"

    const-string v3, "track_count_int_key"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->intentExtras:Ljava/util/HashMap;

    const-string v2, "Duration"

    const-string v3, "duration"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->intentExtras:Ljava/util/HashMap;

    const-string v2, "Position"

    const-string v3, "track_position_int_key"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->intentExtras:Ljava/util/HashMap;

    const-string v2, "PlayState"

    const-string v3, "com.amazon.mp3.playstate"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->intentExtras:Ljava/util/HashMap;

    const-string v2, "Repeat"

    const-string v3, "repeat_state_key"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->intentExtras:Ljava/util/HashMap;

    const-string v2, "Shuffle"

    const-string v3, "shuffle_enabled_key"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 188
    :cond_6
    const-string v1, "com.htc.music.playstatechanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "com.htc.music.metachanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 190
    :cond_7
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->intentExtras:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 192
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->intentExtras:Ljava/util/HashMap;

    const-string v2, "Title"

    const-string v3, "track"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->intentExtras:Ljava/util/HashMap;

    const-string v2, "Artist"

    const-string v3, "artist"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->intentExtras:Ljava/util/HashMap;

    const-string v2, "Album"

    const-string v3, "album"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->intentExtras:Ljava/util/HashMap;

    const-string v2, "TrackNum"

    const-string v3, "id"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->intentExtras:Ljava/util/HashMap;

    const-string v2, "TotalTracks"

    const-string v3, "totaltracks"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->intentExtras:Ljava/util/HashMap;

    const-string v2, "Duration"

    const-string v3, "duration"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->intentExtras:Ljava/util/HashMap;

    const-string v2, "Position"

    const-string v3, "position"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->intentExtras:Ljava/util/HashMap;

    const-string v2, "PlayState"

    const-string v3, "isplaying"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->intentExtras:Ljava/util/HashMap;

    const-string v2, "Repeat"

    const-string v3, "repeat"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->intentExtras:Ljava/util/HashMap;

    const-string v2, "Shuffle"

    const-string v3, "shuffle"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 204
    :cond_8
    const-string v1, "com.doubleTwist.androidPlayer.playstatechanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "com.doubleTwist.androidPlayer.metachanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 206
    :cond_9
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->intentExtras:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 208
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->intentExtras:Ljava/util/HashMap;

    const-string v2, "Title"

    const-string v3, "track"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->intentExtras:Ljava/util/HashMap;

    const-string v2, "Artist"

    const-string v3, "artist"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->intentExtras:Ljava/util/HashMap;

    const-string v2, "Album"

    const-string v3, "album"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->intentExtras:Ljava/util/HashMap;

    const-string v2, "TrackNum"

    const-string v3, "song_id"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->intentExtras:Ljava/util/HashMap;

    const-string v2, "TotalTracks"

    const-string v3, "totaltracks"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->intentExtras:Ljava/util/HashMap;

    const-string v2, "Duration"

    const-string v3, "duration"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->intentExtras:Ljava/util/HashMap;

    const-string v2, "Position"

    const-string v3, "position"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->intentExtras:Ljava/util/HashMap;

    const-string v2, "PlayState"

    const-string v3, "playing"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->intentExtras:Ljava/util/HashMap;

    const-string v2, "Repeat"

    const-string v3, "repeat"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->intentExtras:Ljava/util/HashMap;

    const-string v2, "Shuffle"

    const-string v3, "shuffle"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 549
    const-string v0, "BluetoothAVRCPService"

    const-string v1, "finalize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    invoke-virtual {p0}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->finish()V

    .line 551
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mIsFinish:Z

    .line 552
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 553
    return-void
.end method

.method public declared-synchronized finish()V
    .locals 3

    .prologue
    .line 535
    monitor-enter p0

    :try_start_0
    const-string v1, "BluetoothAVRCPService"

    const-string v2, "finish"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iget-boolean v1, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mIsFinish:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 538
    :try_start_1
    invoke-direct {p0}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->cleanupNativeAVRCP()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 543
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->unregisterIntentReceiver()V

    .line 545
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mIsFinish:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 546
    monitor-exit p0

    return-void

    .line 539
    :catch_0
    move-exception v0

    .line 540
    .local v0, t:Ljava/lang/Throwable;
    :try_start_3
    const-string v1, "BluetoothAVRCPService"

    const-string v2, "Unable to cleanup AVRCP EventLoop service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 535
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mAlbumName:Ljava/lang/String;

    return-object v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mArtistName:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()Ljava/lang/String;
    .locals 2

    .prologue
    .line 499
    iget-wide v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mDuration:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    const-string v0, "bluetooth_avrcp"

    return-object v0
.end method

.method public getPlayStatus()I
    .locals 1

    .prologue
    .line 504
    iget v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayStatus:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalTracks()Ljava/lang/String;
    .locals 2

    .prologue
    .line 494
    iget-wide v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mTotalTracks:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrackNum()Ljava/lang/String;
    .locals 2

    .prologue
    .line 489
    iget-wide v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mTrackNum:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrackNumLong()J
    .locals 2

    .prologue
    .line 509
    iget-wide v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mTrackNum:J

    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized init()V
    .locals 2

    .prologue
    .line 118
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothAVRCPService"

    const-string v1, "init(): register avrcp test intent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {p0}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->unregisterIntentReceiver()V

    .line 120
    invoke-virtual {p0}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->registerIntentReceiver()V

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mIsFinish:Z

    .line 123
    invoke-direct {p0}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->initNativeAVRCP()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    monitor-exit p0

    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onConnected(Ljava/lang/String;)V
    .locals 3
    .parameter "address"

    .prologue
    .line 592
    const-string v0, "BluetoothAVRCPService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnected: address = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.broadcom.bt.app.avrcp.action.ON_AVRCP_CONNECTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 597
    return-void
.end method

.method public onDisconnected()V
    .locals 3

    .prologue
    .line 600
    const-string v0, "BluetoothAVRCPService"

    const-string v1, "onDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.broadcom.bt.app.avrcp.action.ON_AVRCP_DISCONNECTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 605
    return-void
.end method

.method public playStatusRequest()V
    .locals 4

    .prologue
    .line 514
    const-string v0, "BluetoothAVRCPService"

    const-string v1, "playStatusRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.music.playstatusrequest"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 516
    iget-object v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 518
    return-void
.end method

.method protected registerIntentReceiver()V
    .locals 3

    .prologue
    .line 369
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 372
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.android.music.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 373
    const-string v1, "com.amazon.mp3.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 374
    const-string v1, "com.htc.music.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 375
    const-string v1, "com.doubleTwist.androidPlayer.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 377
    const-string v1, "com.lge.music.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 381
    const-string v1, "com.android.music.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 382
    const-string v1, "com.amazon.mp3.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 383
    const-string v1, "com.htc.music.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 384
    const-string v1, "com.doubleTwist.androidPlayer.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 386
    const-string v1, "com.lge.music.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 390
    const-string v1, "com.android.music.playstatusresponse"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 392
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 393
    const/4 v1, 0x1

    sput-boolean v1, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mReceiverRegistered:Z

    .line 394
    return-void
.end method

.method public declared-synchronized start()V
    .locals 2

    .prologue
    .line 523
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothAVRCPService"

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    invoke-virtual {p0}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->enable()V

    .line 525
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->onStateChangeEvent(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    monitor-exit p0

    return-void

    .line 523
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startTimer(Ljava/lang/String;I)V
    .locals 4
    .parameter "playerName"
    .parameter "delay"

    .prologue
    .line 609
    iget v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayStatus:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 610
    invoke-virtual {p0}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->stopTimer()V

    .line 611
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 612
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 613
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 614
    const-string v1, "BluetoothAVRCPService"

    const-string v2, "Starting play position changed timer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 616
    const-string v1, "BluetoothAVRCPService"

    const-string v2, "Invalid position changed interval. Using the default timeout of 2 seconds"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 623
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 619
    .restart local v0       #msg:Landroid/os/Message;
    :cond_1
    const-string v1, "BluetoothAVRCPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Play position changed timer delay: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " seconds"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    iget-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mHandler:Landroid/os/Handler;

    mul-int/lit16 v2, p2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public declared-synchronized stop()V
    .locals 2

    .prologue
    .line 529
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothAVRCPService"

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    invoke-virtual {p0}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->disable()V

    .line 531
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->onStateChangeEvent(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 532
    monitor-exit p0

    return-void

    .line 529
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopTimer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 626
    iget-object v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 627
    const-string v0, "BluetoothAVRCPService"

    const-string v1, "Stopping play position changed timer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    iget-object v0, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 630
    :cond_0
    return-void
.end method

.method protected unregisterIntentReceiver()V
    .locals 3

    .prologue
    .line 397
    sget-boolean v1, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mReceiverRegistered:Z

    if-eqz v1, :cond_0

    .line 400
    :try_start_0
    const-string v1, "BluetoothAVRCPService"

    const-string v2, "Unregistering previous receiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 402
    const/4 v1, 0x0

    sput-boolean v1, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mReceiverRegistered:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 403
    :catch_0
    move-exception v0

    .line 404
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothAVRCPService"

    const-string v2, "Unable to unregister receiver"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected updateMetaData(Landroid/content/Intent;)Z
    .locals 12
    .parameter "metadataIntent"

    .prologue
    const/4 v7, 0x0

    const-wide/16 v10, 0x0

    .line 225
    const/4 v1, 0x0

    .line 227
    .local v1, rv:Z
    const-string v6, "BluetoothAVRCPService"

    const-string v8, "updateMetaData"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const/4 v2, 0x0

    .line 236
    .local v2, title:Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->intentExtras:Ljava/util/HashMap;

    const-string v8, "Title"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 238
    if-nez v2, :cond_0

    .line 240
    const-string v6, "BluetoothAVRCPService"

    const-string v8, "updateMetaData: title is null"

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 315
    :goto_0
    return v6

    .line 243
    :cond_0
    iget-object v6, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 244
    const/4 v1, 0x1

    .line 245
    :cond_1
    iput-object v2, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mTitle:Ljava/lang/String;

    .line 246
    iget-object v6, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mTitle:Ljava/lang/String;

    if-nez v6, :cond_2

    .line 247
    const-string v6, "Unknown"

    iput-object v6, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mTitle:Ljava/lang/String;

    .line 249
    :cond_2
    iget-object v6, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->intentExtras:Ljava/util/HashMap;

    const-string v8, "Artist"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mArtistName:Ljava/lang/String;

    .line 251
    iget-object v6, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mArtistName:Ljava/lang/String;

    if-nez v6, :cond_3

    .line 252
    const-string v6, "Unknown"

    iput-object v6, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mArtistName:Ljava/lang/String;

    .line 254
    :cond_3
    iget-object v6, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->intentExtras:Ljava/util/HashMap;

    const-string v8, "Album"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mAlbumName:Ljava/lang/String;

    .line 256
    iget-object v6, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mAlbumName:Ljava/lang/String;

    if-nez v6, :cond_4

    .line 257
    const-string v6, "Unknown"

    iput-object v6, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mAlbumName:Ljava/lang/String;

    .line 259
    :cond_4
    const-wide/16 v4, 0x0

    .line 260
    .local v4, trackNum:J
    iget-object v6, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->intentExtras:Ljava/util/HashMap;

    const-string v8, "TrackNum"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-wide/16 v8, 0x0

    invoke-virtual {p1, v6, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 262
    cmp-long v6, v4, v10

    if-gez v6, :cond_5

    .line 263
    const-wide/16 v4, -0x1

    .line 265
    :cond_5
    iget-wide v8, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mTrackNum:J

    cmp-long v6, v4, v8

    if-eqz v6, :cond_6

    .line 266
    const/4 v1, 0x1

    .line 267
    :cond_6
    iput-wide v4, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mTrackNum:J

    .line 272
    iget-object v6, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->intentExtras:Ljava/util/HashMap;

    const-string v8, "TotalTracks"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p1, v6, v8}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 274
    .local v3, totalTrack:Ljava/lang/Object;
    if-nez v3, :cond_a

    .line 276
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mTotalTracks:J

    .line 292
    .end local v3           #totalTrack:Ljava/lang/Object;
    :goto_1
    iget-wide v8, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mTotalTracks:J

    cmp-long v6, v8, v10

    if-gez v6, :cond_7

    .line 293
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mTotalTracks:J

    .line 295
    :cond_7
    iget-object v6, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->intentExtras:Ljava/util/HashMap;

    const-string v8, "Duration"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-wide/16 v8, 0x0

    invoke-virtual {p1, v6, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mDuration:J

    .line 296
    iget-wide v8, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mDuration:J

    cmp-long v6, v8, v10

    if-gez v6, :cond_8

    .line 297
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mDuration:J

    .line 299
    :cond_8
    iget-object v6, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->intentExtras:Ljava/util/HashMap;

    const-string v8, "Position"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-wide/16 v8, 0x0

    invoke-virtual {p1, v6, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPosition:J

    .line 301
    iget-wide v8, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPosition:J

    cmp-long v6, v8, v10

    if-gez v6, :cond_9

    .line 302
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPosition:J

    .line 304
    :cond_9
    const-string v6, "BluetoothAVRCPService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateMetaData: Title: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mTitle:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Artist: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mArtistName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Album: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " TrackNum "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mTrackNum:J

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Duration: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mDuration:J

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " TotalTracks: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mTotalTracks:J

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v1

    .line 315
    goto/16 :goto_0

    .line 278
    .restart local v3       #totalTrack:Ljava/lang/Object;
    :cond_a
    instance-of v6, v3, Ljava/lang/Long;

    if-eqz v6, :cond_b

    .line 280
    check-cast v3, Ljava/lang/Long;

    .end local v3           #totalTrack:Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mTotalTracks:J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 309
    .end local v4           #trackNum:J
    :catch_0
    move-exception v0

    .line 311
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v6, "BluetoothAVRCPService"

    const-string v8, "Player passed serializable object in intent extras. Hence the current version of the player not supported"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 312
    goto/16 :goto_0

    .line 282
    .end local v0           #e:Ljava/lang/RuntimeException;
    .restart local v3       #totalTrack:Ljava/lang/Object;
    .restart local v4       #trackNum:J
    :cond_b
    :try_start_1
    instance-of v6, v3, Ljava/lang/Integer;

    if-eqz v6, :cond_c

    .line 284
    check-cast v3, Ljava/lang/Integer;

    .end local v3           #totalTrack:Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Integer;->longValue()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mTotalTracks:J

    goto/16 :goto_1

    .line 288
    .restart local v3       #totalTrack:Ljava/lang/Object;
    :cond_c
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mTotalTracks:J
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method protected updatePlayStatus(Landroid/content/Intent;)Z
    .locals 10
    .parameter "playstatusIntent"

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-wide/16 v8, 0x0

    .line 320
    const/4 v1, 0x0

    .line 326
    .local v1, playStatus:Z
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->intentExtras:Ljava/util/HashMap;

    const-string v6, "PlayState"

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {p1, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 328
    const-string v2, "BluetoothAVRCPService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updatePlayStatus: playStatus: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mDuration:J

    .line 332
    iget-object v2, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->intentExtras:Ljava/util/HashMap;

    const-string v6, "Duration"

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 334
    iget-object v2, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->intentExtras:Ljava/util/HashMap;

    const-string v5, "Duration"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-wide/16 v5, 0x0

    invoke-virtual {p1, v2, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mDuration:J

    .line 335
    iget-wide v5, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mDuration:J

    cmp-long v2, v5, v8

    if-gez v2, :cond_0

    .line 336
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mDuration:J

    .line 338
    :cond_0
    if-nez v1, :cond_2

    iget-wide v5, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mDuration:J

    cmp-long v2, v5, v8

    if-nez v2, :cond_2

    .line 339
    const/4 v2, 0x0

    iput v2, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayStatus:I

    .line 351
    :goto_0
    iget-object v2, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->intentExtras:Ljava/util/HashMap;

    const-string v5, "Position"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-wide/16 v5, 0x0

    invoke-virtual {p1, v2, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPosition:J

    .line 353
    iget-wide v5, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPosition:J

    cmp-long v2, v5, v8

    if-gez v2, :cond_1

    .line 354
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPosition:J

    .line 356
    :cond_1
    const-string v2, "BluetoothAVRCPService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updatePlayStatus: PlayStatus: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayStatus:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Duration: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mDuration:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Position: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPosition:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 364
    :goto_1
    return v2

    .line 340
    :cond_2
    if-nez v1, :cond_3

    .line 341
    const/4 v2, 0x2

    iput v2, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayStatus:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 359
    :catch_0
    move-exception v0

    .line 361
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "BluetoothAVRCPService"

    const-string v3, "Player passed serializable object in intent extras. Hence the current version of the player not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 362
    goto :goto_1

    .line 343
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_3
    const/4 v2, 0x1

    :try_start_1
    iput v2, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayStatus:I

    goto :goto_0

    .line 347
    :cond_4
    if-eqz v1, :cond_5

    move v2, v3

    :goto_2
    iput v2, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->mPlayStatus:I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_5
    move v2, v5

    goto :goto_2
.end method
