.class public Lcom/android/internal/telephony/LgeNetworkInfo;
.super Landroid/os/Handler;
.source "LgeNetworkInfo.java"


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_RADIO_ON:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "RILJ"

.field private static sInstance:Lcom/android/internal/telephony/LgeNetworkInfo;


# instance fields
.field private mCM:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mLastCampedMccMncInfo:Landroid/os/AsyncResult;

.field private mLastNITZTimeInfo:Landroid/os/AsyncResult;

.field private mLastNetInfo:Landroid/os/AsyncResult;

.field private mLastNetToKoreaInfo:Landroid/os/AsyncResult;

.field private mOnNitzTimeRegistrant:Landroid/os/Registrant;

.field private mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mRef:I

.field private mWcdmaCampedMccMncRegistrant:Landroid/os/Registrant;

.field private mWcdmaNetChangeRegistrant:Landroid/os/Registrant;

.field private mWcdmaNetToKoreaChangeRegistrant:Landroid/os/Registrant;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 3
    .parameter "phone"
    .parameter "ci"

    .prologue
    const/4 v2, 0x0

    .line 67
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/LgeNetworkInfo;->mRef:I

    .line 56
    iput-object v2, p0, Lcom/android/internal/telephony/LgeNetworkInfo;->mOnNitzTimeRegistrant:Landroid/os/Registrant;

    .line 57
    iput-object v2, p0, Lcom/android/internal/telephony/LgeNetworkInfo;->mWcdmaNetChangeRegistrant:Landroid/os/Registrant;

    .line 58
    iput-object v2, p0, Lcom/android/internal/telephony/LgeNetworkInfo;->mWcdmaNetToKoreaChangeRegistrant:Landroid/os/Registrant;

    .line 59
    iput-object v2, p0, Lcom/android/internal/telephony/LgeNetworkInfo;->mWcdmaCampedMccMncRegistrant:Landroid/os/Registrant;

    .line 61
    iput-object v2, p0, Lcom/android/internal/telephony/LgeNetworkInfo;->mLastNITZTimeInfo:Landroid/os/AsyncResult;

    .line 62
    iput-object v2, p0, Lcom/android/internal/telephony/LgeNetworkInfo;->mLastNetInfo:Landroid/os/AsyncResult;

    .line 63
    iput-object v2, p0, Lcom/android/internal/telephony/LgeNetworkInfo;->mLastNetToKoreaInfo:Landroid/os/AsyncResult;

    .line 64
    iput-object v2, p0, Lcom/android/internal/telephony/LgeNetworkInfo;->mLastCampedMccMncInfo:Landroid/os/AsyncResult;

    .line 68
    iput-object p1, p0, Lcom/android/internal/telephony/LgeNetworkInfo;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 69
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/LgeNetworkInfo;->mContext:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lcom/android/internal/telephony/LgeNetworkInfo;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    .line 72
    iget-object v0, p0, Lcom/android/internal/telephony/LgeNetworkInfo;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 74
    const-string/jumbo v0, "lgu_global_roaming"

    invoke-static {v2, v0}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/internal/telephony/LgeNetworkInfo;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x2e

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForWcdmaNetChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 76
    iget-object v0, p0, Lcom/android/internal/telephony/LgeNetworkInfo;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x2f

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForWcdmaNetToKoreaChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lcom/android/internal/telephony/LgeNetworkInfo;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x32

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForWcdmaCampedMccMnc(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/LgeNetworkInfo;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xb

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 80
    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/CommandsInterface;Ljava/lang/Object;)Lcom/android/internal/telephony/LgeNetworkInfo;
    .locals 3
    .parameter "phone"
    .parameter "ci"
    .parameter "obj"

    .prologue
    .line 89
    const-class v1, Lcom/android/internal/telephony/LgeNetworkInfo;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/LgeNetworkInfo;->sInstance:Lcom/android/internal/telephony/LgeNetworkInfo;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lcom/android/internal/telephony/LgeNetworkInfo;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/LgeNetworkInfo;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/android/internal/telephony/LgeNetworkInfo;->sInstance:Lcom/android/internal/telephony/LgeNetworkInfo;

    .line 95
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/LgeNetworkInfo;->sInstance:Lcom/android/internal/telephony/LgeNetworkInfo;

    iget v2, v0, Lcom/android/internal/telephony/LgeNetworkInfo;->mRef:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/internal/telephony/LgeNetworkInfo;->mRef:I

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInstance():: sInstance.mRef="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/LgeNetworkInfo;->sInstance:Lcom/android/internal/telephony/LgeNetworkInfo;

    iget v2, v2, Lcom/android/internal/telephony/LgeNetworkInfo;->mRef:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/LgeNetworkInfo;->log(Ljava/lang/String;)V

    .line 97
    sget-object v0, Lcom/android/internal/telephony/LgeNetworkInfo;->sInstance:Lcom/android/internal/telephony/LgeNetworkInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 93
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/LgeNetworkInfo;->sInstance:Lcom/android/internal/telephony/LgeNetworkInfo;

    iput-object p0, v0, Lcom/android/internal/telephony/LgeNetworkInfo;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected static log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 268
    const-string v0, "RILJ"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LgeNetworkInfo] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    return-void
.end method


# virtual methods
.method public dispose(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 104
    iget v0, p0, Lcom/android/internal/telephony/LgeNetworkInfo;->mRef:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/LgeNetworkInfo;->mRef:I

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispose():: sInstance.mRef="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/LgeNetworkInfo;->sInstance:Lcom/android/internal/telephony/LgeNetworkInfo;

    iget v1, v1, Lcom/android/internal/telephony/LgeNetworkInfo;->mRef:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/LgeNetworkInfo;->log(Ljava/lang/String;)V

    .line 106
    iget v0, p0, Lcom/android/internal/telephony/LgeNetworkInfo;->mRef:I

    if-gtz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/internal/telephony/LgeNetworkInfo;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 108
    const/4 v0, 0x0

    const-string/jumbo v1, "lgu_global_roaming"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/internal/telephony/LgeNetworkInfo;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForWcdmaNetChanged(Landroid/os/Handler;)V

    .line 110
    iget-object v0, p0, Lcom/android/internal/telephony/LgeNetworkInfo;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForWcdmaNetToKoreaChanged(Landroid/os/Handler;)V

    .line 111
    iget-object v0, p0, Lcom/android/internal/telephony/LgeNetworkInfo;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForWcdmaCampedMccMnc(Landroid/os/Handler;)V

    .line 112
    iget-object v0, p0, Lcom/android/internal/telephony/LgeNetworkInfo;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNITZTime(Landroid/os/Handler;)V

    .line 115
    :cond_0
    return-void
.end method

.method public eventProcessingDone(I)V
    .locals 2
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 241
    sparse-switch p1, :sswitch_data_0

    .line 259
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eventProcessingDone event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",nitz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/LgeNetworkInfo;->mLastNITZTimeInfo:Landroid/os/AsyncResult;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",net="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/LgeNetworkInfo;->mLastNetInfo:Landroid/os/AsyncResult;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",netoKor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/LgeNetworkInfo;->mLastNetToKoreaInfo:Landroid/os/AsyncResult;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",campedMccMnc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/LgeNetworkInfo;->mLastCampedMccMncInfo:Landroid/os/AsyncResult;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/LgeNetworkInfo;->log(Ljava/lang/String;)V

    .line 265
    return-void

    .line 243
    :sswitch_0
    iput-object v0, p0, Lcom/android/internal/telephony/LgeNetworkInfo;->mLastNITZTimeInfo:Landroid/os/AsyncResult;

    goto :goto_0

    .line 247
    :sswitch_1
    iput-object v0, p0, Lcom/android/internal/telephony/LgeNetworkInfo;->mLastNetInfo:Landroid/os/AsyncResult;

    goto :goto_0

    .line 251
    :sswitch_2
    iput-object v0, p0, Lcom/android/internal/telephony/LgeNetworkInfo;->mLastNetToKoreaInfo:Landroid/os/AsyncResult;

    goto :goto_0

    .line 255
    :sswitch_3
    iput-object v0, p0, Lcom/android/internal/telephony/LgeNetworkInfo;->mLastCampedMccMncInfo:Landroid/os/AsyncResult;

    goto :goto_0

    .line 241
    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0x2e -> :sswitch_1
        0x2f -> :sswitch_2
        0x32 -> :sswitch_3
    .end sparse-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 126
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 148
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 150
    :goto_0
    return-void

    .line 128
    :sswitch_0
    const-string v0, "EVENT_RADIO_ON"

    invoke-static {v0}, Lcom/android/internal/telephony/LgeNetworkInfo;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LgeNetworkInfo;->handleNitzTime(Landroid/os/Message;)V

    goto :goto_0

    .line 136
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LgeNetworkInfo;->handleWcdmaNetChange(Landroid/os/Message;)V

    goto :goto_0

    .line 140
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LgeNetworkInfo;->handleWcdmaNetToKoreaChange(Landroid/os/Message;)V

    goto :goto_0

    .line 144
    :sswitch_4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LgeNetworkInfo;->handleWcdmaCampedMccMnc(Landroid/os/Message;)V

    goto :goto_0

    .line 126
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xb -> :sswitch_1
        0x2e -> :sswitch_2
        0x2f -> :sswitch_3
        0x32 -> :sswitch_4
    .end sparse-switch
.end method

.method public handleNitzTime(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 209
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 210
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/LgeNetworkInfo;->mOnNitzTimeRegistrant:Landroid/os/Registrant;

    if-eqz v1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/android/internal/telephony/LgeNetworkInfo;->mOnNitzTimeRegistrant:Landroid/os/Registrant;

    invoke-virtual {v1, v0}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 213
    :cond_0
    iput-object v0, p0, Lcom/android/internal/telephony/LgeNetworkInfo;->mLastNITZTimeInfo:Landroid/os/AsyncResult;

    .line 214
    return-void
.end method

.method public handleWcdmaCampedMccMnc(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 233
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 234
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/LgeNetworkInfo;->mWcdmaCampedMccMncRegistrant:Landroid/os/Registrant;

    if-eqz v1, :cond_0

    .line 235
    iget-object v1, p0, Lcom/android/internal/telephony/LgeNetworkInfo;->mWcdmaCampedMccMncRegistrant:Landroid/os/Registrant;

    invoke-virtual {v1, v0}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 237
    :cond_0
    iput-object v0, p0, Lcom/android/internal/telephony/LgeNetworkInfo;->mLastCampedMccMncInfo:Landroid/os/AsyncResult;

    .line 238
    return-void
.end method

.method public handleWcdmaNetChange(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 217
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 218
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/LgeNetworkInfo;->mWcdmaNetChangeRegistrant:Landroid/os/Registrant;

    if-eqz v1, :cond_0

    .line 219
    iget-object v1, p0, Lcom/android/internal/telephony/LgeNetworkInfo;->mWcdmaNetChangeRegistrant:Landroid/os/Registrant;

    invoke-virtual {v1, v0}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 221
    :cond_0
    iput-object v0, p0, Lcom/android/internal/telephony/LgeNetworkInfo;->mLastNetInfo:Landroid/os/AsyncResult;

    .line 222
    return-void
.end method

.method public handleWcdmaNetToKoreaChange(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 225
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 226
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/LgeNetworkInfo;->mWcdmaNetToKoreaChangeRegistrant:Landroid/os/Registrant;

    if-eqz v1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/android/internal/telephony/LgeNetworkInfo;->mWcdmaNetToKoreaChangeRegistrant:Landroid/os/Registrant;

    invoke-virtual {v1, v0}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 229
    :cond_0
    iput-object v0, p0, Lcom/android/internal/telephony/LgeNetworkInfo;->mLastNetToKoreaInfo:Landroid/os/AsyncResult;

    .line 230
    return-void
.end method

.method public registerOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 157
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/LgeNetworkInfo;->mOnNitzTimeRegistrant:Landroid/os/Registrant;

    .line 158
    iget-object v0, p0, Lcom/android/internal/telephony/LgeNetworkInfo;->mLastNITZTimeInfo:Landroid/os/AsyncResult;

    if-eqz v0, :cond_0

    .line 159
    const-string v0, "Notify the last NITZ Info"

    invoke-static {v0}, Lcom/android/internal/telephony/LgeNetworkInfo;->log(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/android/internal/telephony/LgeNetworkInfo;->mOnNitzTimeRegistrant:Landroid/os/Registrant;

    iget-object v1, p0, Lcom/android/internal/telephony/LgeNetworkInfo;->mLastNITZTimeInfo:Landroid/os/AsyncResult;

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/LgeNetworkInfo;->mLastNITZTimeInfo:Landroid/os/AsyncResult;

    .line 163
    :cond_0
    return-void
.end method

.method public registerWcdmaCampedMccMnc(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 196
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/LgeNetworkInfo;->mWcdmaCampedMccMncRegistrant:Landroid/os/Registrant;

    .line 197
    iget-object v0, p0, Lcom/android/internal/telephony/LgeNetworkInfo;->mLastCampedMccMncInfo:Landroid/os/AsyncResult;

    if-eqz v0, :cond_0

    .line 198
    const-string v0, "Notify the last Camped Mcc Mnc Change Info"

    invoke-static {v0}, Lcom/android/internal/telephony/LgeNetworkInfo;->log(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/android/internal/telephony/LgeNetworkInfo;->mWcdmaCampedMccMncRegistrant:Landroid/os/Registrant;

    iget-object v1, p0, Lcom/android/internal/telephony/LgeNetworkInfo;->mLastCampedMccMncInfo:Landroid/os/AsyncResult;

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/LgeNetworkInfo;->mLastCampedMccMncInfo:Landroid/os/AsyncResult;

    .line 202
    :cond_0
    return-void
.end method

.method public registerWcdmaNetChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 170
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/LgeNetworkInfo;->mWcdmaNetChangeRegistrant:Landroid/os/Registrant;

    .line 171
    iget-object v0, p0, Lcom/android/internal/telephony/LgeNetworkInfo;->mLastNetInfo:Landroid/os/AsyncResult;

    if-eqz v0, :cond_0

    .line 172
    const-string v0, "Notify the last Net Change Info"

    invoke-static {v0}, Lcom/android/internal/telephony/LgeNetworkInfo;->log(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/android/internal/telephony/LgeNetworkInfo;->mWcdmaNetChangeRegistrant:Landroid/os/Registrant;

    iget-object v1, p0, Lcom/android/internal/telephony/LgeNetworkInfo;->mLastNetInfo:Landroid/os/AsyncResult;

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/LgeNetworkInfo;->mLastNetInfo:Landroid/os/AsyncResult;

    .line 176
    :cond_0
    return-void
.end method

.method public registerWcdmaNetToKoreaChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 183
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/LgeNetworkInfo;->mWcdmaNetToKoreaChangeRegistrant:Landroid/os/Registrant;

    .line 184
    iget-object v0, p0, Lcom/android/internal/telephony/LgeNetworkInfo;->mLastNetToKoreaInfo:Landroid/os/AsyncResult;

    if-eqz v0, :cond_0

    .line 185
    const-string v0, "Notify the last Net To Koera Change Info"

    invoke-static {v0}, Lcom/android/internal/telephony/LgeNetworkInfo;->log(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/android/internal/telephony/LgeNetworkInfo;->mWcdmaNetToKoreaChangeRegistrant:Landroid/os/Registrant;

    iget-object v1, p0, Lcom/android/internal/telephony/LgeNetworkInfo;->mLastNetToKoreaInfo:Landroid/os/AsyncResult;

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/LgeNetworkInfo;->mLastNetToKoreaInfo:Landroid/os/AsyncResult;

    .line 189
    :cond_0
    return-void
.end method

.method public unregisterOnNITZTime(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/internal/telephony/LgeNetworkInfo;->mOnNitzTimeRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 167
    return-void
.end method

.method public unregisterWcdmaCampedMccMnc(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/internal/telephony/LgeNetworkInfo;->mWcdmaCampedMccMncRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 206
    return-void
.end method

.method public unregisterWcdmaNetChange(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/internal/telephony/LgeNetworkInfo;->mWcdmaNetChangeRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 180
    return-void
.end method

.method public unregisterWcdmaNetToKoreaChange(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/internal/telephony/LgeNetworkInfo;->mWcdmaNetToKoreaChangeRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 193
    return-void
.end method
