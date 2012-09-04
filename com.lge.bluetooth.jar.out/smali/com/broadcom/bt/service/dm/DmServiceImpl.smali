.class public Lcom/broadcom/bt/service/dm/DmServiceImpl;
.super Lcom/broadcom/bt/service/framework/BaseService;
.source "DmServiceImpl.java"


# static fields
.field public static final EQ_MODE_BASS_BOOST:I = 0x0

.field public static final EQ_MODE_BYPASS:I = 0x6

.field public static final EQ_MODE_CLASSIC:I = 0x1

.field public static final EQ_MODE_CONFIG_GAIN:I = 0x7

.field public static final EQ_MODE_JAZZ:I = 0x2

.field public static final EQ_MODE_LIVE:I = 0x3

.field public static final EQ_MODE_NORMAL:I = 0x4

.field public static final EQ_MODE_ROCK:I = 0x5

.field private static SIMULATION_MODE:Z = false

.field private static final TAG:Ljava/lang/String; = "DmServiceImpl"

.field private static final V:Z = true


# instance fields
.field final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/broadcom/bt/service/dm/IDmServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mIsFinish:Z

.field private mNativeData:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Lcom/broadcom/bt/service/dm/DmServiceImpl;->SIMULATION_MODE:Z

    .line 69
    invoke-static {}, Lcom/broadcom/bt/service/dm/DmServiceImpl;->classInitNative()V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/framework/BaseService;-><init>(Landroid/content/Context;)V

    .line 66
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/dm/DmServiceImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 74
    const-string v0, "DmServiceImpl"

    const-string v1, "DmServiceImpl"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iput-object p1, p0, Lcom/broadcom/bt/service/dm/DmServiceImpl;->mContext:Landroid/content/Context;

    .line 76
    return-void
.end method

.method public static native classInitNative()V
.end method

.method private native setEQGainConfigNative(IIIII)Z
.end method

.method private native setEQModeNative(I)Z
.end method


# virtual methods
.method public native cleanupLoopNative()V
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/broadcom/bt/service/dm/DmServiceImpl;->finish()V

    .line 127
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 129
    return-void
.end method

.method public declared-synchronized finish()V
    .locals 3

    .prologue
    .line 114
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/broadcom/bt/service/dm/DmServiceImpl;->mIsFinish:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 116
    :try_start_1
    invoke-virtual {p0}, Lcom/broadcom/bt/service/dm/DmServiceImpl;->cleanupLoopNative()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 120
    :goto_0
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lcom/broadcom/bt/service/dm/DmServiceImpl;->mIsFinish:Z

    .line 121
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/service/dm/DmServiceImpl;->mContext:Landroid/content/Context;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 123
    :cond_0
    monitor-exit p0

    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, t:Ljava/lang/Throwable;
    :try_start_3
    const-string v1, "DmServiceImpl"

    const-string v2, "Unable to cleanup DM service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 114
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const-string v0, "DmService"

    return-object v0
.end method

.method public declared-synchronized init()V
    .locals 2

    .prologue
    .line 97
    monitor-enter p0

    :try_start_0
    const-string v0, "DmServiceImpl"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {p0}, Lcom/broadcom/bt/service/dm/DmServiceImpl;->initNative()V

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/dm/DmServiceImpl;->mIsFinish:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    monitor-exit p0

    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public native initLoopNative()V
.end method

.method public native initNative()V
.end method

.method public onEQModeSetEvent(I)V
    .locals 3
    .parameter "status"

    .prologue
    .line 145
    const-string v0, "DmServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEQModeSetEvent Status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return-void
.end method

.method public registerCallback(Lcom/broadcom/bt/service/dm/IDmServiceCallback;)V
    .locals 1
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 133
    if-eqz p1, :cond_0

    .line 134
    iget-object v0, p0, Lcom/broadcom/bt/service/dm/DmServiceImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 136
    :cond_0
    return-void
.end method

.method public setEQGainConfig(IIIII)Z
    .locals 3
    .parameter "gain1"
    .parameter "gain2"
    .parameter "gain3"
    .parameter "gain4"
    .parameter "gain5"

    .prologue
    .line 90
    const-string v0, "DmServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEQGainConfig : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    sget-boolean v0, Lcom/broadcom/bt/service/dm/DmServiceImpl;->SIMULATION_MODE:Z

    if-eqz v0, :cond_0

    .line 92
    const/4 v0, 0x1

    .line 93
    :goto_0
    return v0

    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/broadcom/bt/service/dm/DmServiceImpl;->setEQGainConfigNative(IIIII)Z

    move-result v0

    goto :goto_0
.end method

.method public setEQMode(I)Z
    .locals 3
    .parameter "mode"

    .prologue
    .line 83
    const-string v0, "DmServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEQMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    sget-boolean v0, Lcom/broadcom/bt/service/dm/DmServiceImpl;->SIMULATION_MODE:Z

    if-eqz v0, :cond_0

    .line 85
    const/4 v0, 0x1

    .line 86
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/dm/DmServiceImpl;->setEQModeNative(I)Z

    move-result v0

    goto :goto_0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 104
    const-string v0, "DmServiceImpl"

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {p0}, Lcom/broadcom/bt/service/dm/DmServiceImpl;->initLoopNative()V

    .line 107
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public unregisterCallback(Lcom/broadcom/bt/service/dm/IDmServiceCallback;)V
    .locals 1
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 139
    if-eqz p1, :cond_0

    .line 140
    iget-object v0, p0, Lcom/broadcom/bt/service/dm/DmServiceImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 142
    :cond_0
    return-void
.end method
