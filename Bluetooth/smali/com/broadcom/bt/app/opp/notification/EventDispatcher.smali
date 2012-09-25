.class public Lcom/broadcom/bt/app/opp/notification/EventDispatcher;
.super Ljava/lang/Object;
.source "EventDispatcher.java"


# static fields
.field private static isScreenOn:Z

.field private static mContext:Landroid/content/Context;

.field private static mNotification:Lcom/broadcom/bt/app/opp/notification/OppNotification;

.field private static pm:Landroid/os/PowerManager;

.field private static wl:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x1

    sput-boolean v0, Lcom/broadcom/bt/app/opp/notification/EventDispatcher;->isScreenOn:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelFileConfirmNotification(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 224
    sget-object v0, Lcom/broadcom/bt/app/opp/notification/EventDispatcher;->mNotification:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    if-nez v0, :cond_0

    .line 232
    :goto_0
    return-void

    .line 227
    :cond_0
    sget-object v0, Lcom/broadcom/bt/app/opp/notification/EventDispatcher;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    sget-object v0, Lcom/broadcom/bt/app/opp/notification/EventDispatcher;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 231
    :cond_1
    sget-object v0, Lcom/broadcom/bt/app/opp/notification/EventDispatcher;->mNotification:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    const-string v1, "IFC"

    invoke-virtual {v0, v1, p0}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->cancelImmediately(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static clear()V
    .locals 1

    .prologue
    .line 235
    sget-object v0, Lcom/broadcom/bt/app/opp/notification/EventDispatcher;->mNotification:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    invoke-virtual {v0}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->clear()V

    .line 236
    return-void
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 4
    .parameter "ctx"

    .prologue
    .line 38
    const-class v1, Lcom/broadcom/bt/app/opp/notification/EventDispatcher;

    monitor-enter v1

    :try_start_0
    sput-object p0, Lcom/broadcom/bt/app/opp/notification/EventDispatcher;->mContext:Landroid/content/Context;

    .line 39
    sget-object v0, Lcom/broadcom/bt/app/opp/notification/EventDispatcher;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    sput-object v0, Lcom/broadcom/bt/app/opp/notification/EventDispatcher;->pm:Landroid/os/PowerManager;

    .line 40
    sget-object v0, Lcom/broadcom/bt/app/opp/notification/EventDispatcher;->pm:Landroid/os/PowerManager;

    const v2, 0x3000000a

    const-string v3, "OPP.EventDispatcher"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lcom/broadcom/bt/app/opp/notification/EventDispatcher;->wl:Landroid/os/PowerManager$WakeLock;

    .line 44
    sget-object v0, Lcom/broadcom/bt/app/opp/notification/EventDispatcher;->mNotification:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/broadcom/bt/app/opp/notification/OppNotification;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/app/opp/notification/OppNotification;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/broadcom/bt/app/opp/notification/EventDispatcher;->mNotification:Lcom/broadcom/bt/app/opp/notification/OppNotification;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :cond_0
    monitor-exit v1

    return-void

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static refreshAll()V
    .locals 4

    .prologue
    .line 69
    sget-object v0, Lcom/broadcom/bt/app/opp/notification/EventDispatcher;->mNotification:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    if-nez v0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 74
    :cond_0
    sget-object v0, Lcom/broadcom/bt/app/opp/notification/EventDispatcher;->mNotification:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    const/4 v1, -0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->addRequest(IILcom/broadcom/bt/app/opp/data/Job;)V

    goto :goto_0
.end method

.method public static refreshCompletedNotifications()V
    .locals 4

    .prologue
    .line 196
    sget-object v0, Lcom/broadcom/bt/app/opp/notification/EventDispatcher;->mNotification:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    if-nez v0, :cond_0

    .line 200
    :goto_0
    return-void

    .line 199
    :cond_0
    sget-object v0, Lcom/broadcom/bt/app/opp/notification/EventDispatcher;->mNotification:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    const/4 v1, -0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->addRequest(IILcom/broadcom/bt/app/opp/data/Job;)V

    goto :goto_0
.end method

.method public static declared-synchronized remove(I)V
    .locals 5
    .parameter "id"

    .prologue
    .line 57
    const-class v2, Lcom/broadcom/bt/app/opp/notification/EventDispatcher;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/broadcom/bt/app/opp/notification/EventDispatcher;->mNotification:Lcom/broadcom/bt/app/opp/notification/OppNotification;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 66
    :goto_0
    monitor-exit v2

    return-void

    .line 63
    :cond_0
    :try_start_1
    new-instance v0, Lcom/broadcom/bt/app/opp/data/Job;

    invoke-direct {v0}, Lcom/broadcom/bt/app/opp/data/Job;-><init>()V

    .line 64
    .local v0, r:Lcom/broadcom/bt/app/opp/data/Job;
    iput p0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    .line 65
    sget-object v1, Lcom/broadcom/bt/app/opp/notification/EventDispatcher;->mNotification:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    iget v3, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    const/16 v4, 0x9

    invoke-virtual {v1, v3, v4, v0}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->addRequest(IILcom/broadcom/bt/app/opp/data/Job;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 57
    .end local v0           #r:Lcom/broadcom/bt/app/opp/data/Job;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized requestAdded(Lcom/broadcom/bt/app/opp/data/Job;)V
    .locals 4
    .parameter "request"

    .prologue
    .line 78
    const-class v1, Lcom/broadcom/bt/app/opp/notification/EventDispatcher;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/broadcom/bt/app/opp/notification/EventDispatcher;->mNotification:Lcom/broadcom/bt/app/opp/notification/OppNotification;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 102
    :goto_0
    monitor-exit v1

    return-void

    .line 93
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 99
    :pswitch_1
    sget-object v0, Lcom/broadcom/bt/app/opp/notification/EventDispatcher;->mNotification:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    iget v2, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3, p0}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->addRequest(IILcom/broadcom/bt/app/opp/data/Job;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 95
    :pswitch_2
    :try_start_2
    sget-object v0, Lcom/broadcom/bt/app/opp/notification/EventDispatcher;->mNotification:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    iget v2, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    const/4 v3, 0x6

    invoke-virtual {v0, v2, v3, p0}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->addRequest(IILcom/broadcom/bt/app/opp/data/Job;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 93
    :pswitch_data_0
    .packed-switch 0xbe
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static requestCancelRequested(Lcom/broadcom/bt/app/opp/data/Job;)V
    .locals 3
    .parameter "request"

    .prologue
    .line 173
    sget-object v0, Lcom/broadcom/bt/app/opp/notification/EventDispatcher;->mNotification:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    if-nez v0, :cond_0

    .line 193
    :goto_0
    return-void

    .line 180
    :cond_0
    sget-object v0, Lcom/broadcom/bt/app/opp/notification/EventDispatcher;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    sget-object v0, Lcom/broadcom/bt/app/opp/notification/EventDispatcher;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 184
    :cond_1
    sget-object v0, Lcom/broadcom/bt/app/opp/notification/EventDispatcher;->mNotification:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2, p0}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->addRequest(IILcom/broadcom/bt/app/opp/data/Job;)V

    goto :goto_0
.end method

.method public static requestCancelled(Lcom/broadcom/bt/app/opp/data/Job;)V
    .locals 3
    .parameter "request"

    .prologue
    .line 158
    sget-object v0, Lcom/broadcom/bt/app/opp/notification/EventDispatcher;->mNotification:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    if-nez v0, :cond_0

    .line 170
    :goto_0
    return-void

    .line 165
    :cond_0
    sget-object v0, Lcom/broadcom/bt/app/opp/notification/EventDispatcher;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    sget-object v0, Lcom/broadcom/bt/app/opp/notification/EventDispatcher;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 169
    :cond_1
    sget-object v0, Lcom/broadcom/bt/app/opp/notification/EventDispatcher;->mNotification:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2, p0}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->addRequest(IILcom/broadcom/bt/app/opp/data/Job;)V

    goto :goto_0
.end method

.method public static requestEnded_Error(Lcom/broadcom/bt/app/opp/data/Job;)V
    .locals 3
    .parameter "request"

    .prologue
    .line 143
    sget-object v0, Lcom/broadcom/bt/app/opp/notification/EventDispatcher;->mNotification:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    if-nez v0, :cond_0

    .line 155
    :goto_0
    return-void

    .line 150
    :cond_0
    sget-object v0, Lcom/broadcom/bt/app/opp/notification/EventDispatcher;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    sget-object v0, Lcom/broadcom/bt/app/opp/notification/EventDispatcher;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 154
    :cond_1
    sget-object v0, Lcom/broadcom/bt/app/opp/notification/EventDispatcher;->mNotification:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2, p0}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->addRequest(IILcom/broadcom/bt/app/opp/data/Job;)V

    goto :goto_0
.end method

.method public static requestEnded_NoError(Lcom/broadcom/bt/app/opp/data/Job;)V
    .locals 3
    .parameter "request"

    .prologue
    .line 128
    sget-object v0, Lcom/broadcom/bt/app/opp/notification/EventDispatcher;->mNotification:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    if-nez v0, :cond_0

    .line 140
    :goto_0
    return-void

    .line 135
    :cond_0
    sget-object v0, Lcom/broadcom/bt/app/opp/notification/EventDispatcher;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    sget-object v0, Lcom/broadcom/bt/app/opp/notification/EventDispatcher;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 139
    :cond_1
    sget-object v0, Lcom/broadcom/bt/app/opp/notification/EventDispatcher;->mNotification:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2, p0}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->addRequest(IILcom/broadcom/bt/app/opp/data/Job;)V

    goto :goto_0
.end method

.method public static requestInProgress_Updated(Lcom/broadcom/bt/app/opp/data/Job;)V
    .locals 3
    .parameter "request"

    .prologue
    .line 116
    sget-object v0, Lcom/broadcom/bt/app/opp/notification/EventDispatcher;->mNotification:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    if-nez v0, :cond_0

    .line 125
    :goto_0
    return-void

    .line 124
    :cond_0
    sget-object v0, Lcom/broadcom/bt/app/opp/notification/EventDispatcher;->mNotification:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2, p0}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->addRequest(IILcom/broadcom/bt/app/opp/data/Job;)V

    goto :goto_0
.end method

.method public static requestStarted(Lcom/broadcom/bt/app/opp/data/Job;)V
    .locals 3
    .parameter "request"

    .prologue
    .line 105
    sget-object v0, Lcom/broadcom/bt/app/opp/notification/EventDispatcher;->mNotification:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    if-nez v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 112
    :cond_0
    sget-object v0, Lcom/broadcom/bt/app/opp/notification/EventDispatcher;->mNotification:Lcom/broadcom/bt/app/opp/notification/OppNotification;

    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2, p0}, Lcom/broadcom/bt/app/opp/notification/OppNotification;->addRequest(IILcom/broadcom/bt/app/opp/data/Job;)V

    goto :goto_0
.end method
