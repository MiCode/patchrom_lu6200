.class public Lcom/android/internal/telephony/SmartCardManager;
.super Lcom/android/internal/telephony/ISmartCardInfo$Stub;
.source "SmartCardManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmartCardManager$1;,
        Lcom/android/internal/telephony/SmartCardManager$UsimHandler;
    }
.end annotation


# static fields
.field public static final EVENT_SMARTCARD_GET_ATR:I = 0x2

.field public static final EVENT_SMARTCARD_TRANSMIT:I = 0x1

.field public static final TAG:Ljava/lang/String; = "LGE_USIM"


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mUsimHandler:Lcom/android/internal/telephony/SmartCardManager$UsimHandler;

.field private returnData:Lcom/android/internal/telephony/gsm/SmartCardResult;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 2
    .parameter "phone"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/internal/telephony/ISmartCardInfo$Stub;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SmartCardManager;->mLock:Ljava/lang/Object;

    .line 50
    iput-object p1, p0, Lcom/android/internal/telephony/SmartCardManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 51
    new-instance v0, Lcom/android/internal/telephony/SmartCardManager$UsimHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/SmartCardManager$UsimHandler;-><init>(Lcom/android/internal/telephony/SmartCardManager;Lcom/android/internal/telephony/SmartCardManager$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SmartCardManager;->mUsimHandler:Lcom/android/internal/telephony/SmartCardManager$UsimHandler;

    .line 53
    const-string v0, "ISmartCardInfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 54
    const-string v0, "ISmartCardInfo"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 56
    :cond_0
    return-void
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/SmartCardManager;Lcom/android/internal/telephony/gsm/SmartCardResult;)Lcom/android/internal/telephony/gsm/SmartCardResult;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/internal/telephony/SmartCardManager;->returnData:Lcom/android/internal/telephony/gsm/SmartCardResult;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/SmartCardManager;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/internal/telephony/SmartCardManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method protected publish()V
    .locals 1

    .prologue
    .line 59
    const-string v0, "ISmartCardInfo"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 60
    return-void
.end method

.method public declared-synchronized smartCardGetATR()Lcom/android/internal/telephony/gsm/SmartCardResult;
    .locals 5

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/SmartCardManager;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 116
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/SmartCardManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/android/internal/telephony/SmartCardManager;->mUsimHandler:Lcom/android/internal/telephony/SmartCardManager$UsimHandler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/SmartCardManager$UsimHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->SmartCardGetATR(Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    :try_start_2
    iget-object v1, p0, Lcom/android/internal/telephony/SmartCardManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 122
    :goto_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 123
    :try_start_4
    iget-object v1, p0, Lcom/android/internal/telephony/SmartCardManager;->returnData:Lcom/android/internal/telephony/gsm/SmartCardResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-object v1

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_5
    const-string v1, "LGE_USIM"

    const-string/jumbo v3, "interrupted while trying to execute smartCardTransmit"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 122
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 115
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized smartCardTransmit([B)Lcom/android/internal/telephony/gsm/SmartCardResult;
    .locals 12
    .parameter "command"

    .prologue
    const/4 v11, 0x4

    .line 66
    monitor-enter p0

    const/4 v2, 0x0

    .line 73
    .local v2, command_length:I
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/telephony/SmartCardManager;->mLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 74
    :try_start_1
    iget-object v7, p0, Lcom/android/internal/telephony/SmartCardManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v7, v7, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v9, p0, Lcom/android/internal/telephony/SmartCardManager;->mUsimHandler:Lcom/android/internal/telephony/SmartCardManager$UsimHandler;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/SmartCardManager$UsimHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-interface {v7, p1, v9}, Lcom/android/internal/telephony/CommandsInterface;->smartCardTransmit([BLandroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    :try_start_2
    iget-object v7, p0, Lcom/android/internal/telephony/SmartCardManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 80
    :goto_0
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 83
    :try_start_4
    invoke-static {p1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, command_data_string:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 85
    iget-object v7, p0, Lcom/android/internal/telephony/SmartCardManager;->returnData:Lcom/android/internal/telephony/gsm/SmartCardResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 111
    :goto_1
    monitor-exit p0

    return-object v7

    .line 77
    .end local v1           #command_data_string:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 78
    .local v3, e:Ljava/lang/InterruptedException;
    :try_start_5
    const-string v7, "LGE_USIM"

    const-string/jumbo v9, "interrupted while trying to execute smartCardTransmit"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 80
    .end local v3           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 66
    :catchall_1
    move-exception v7

    monitor-exit p0

    throw v7

    .line 86
    .restart local v1       #command_data_string:Ljava/lang/String;
    :cond_0
    const/4 v7, 0x0

    const/4 v8, 0x2

    :try_start_7
    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 87
    .local v4, logical_ch:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/SmartCardManager;->returnData:Lcom/android/internal/telephony/gsm/SmartCardResult;

    iget-object v7, v7, Lcom/android/internal/telephony/gsm/SmartCardResult;->data:[B

    invoke-static {v7}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    .line 88
    .local v6, ret_command_data_string:Ljava/lang/String;
    if-nez v6, :cond_1

    .line 89
    iget-object v7, p0, Lcom/android/internal/telephony/SmartCardManager;->returnData:Lcom/android/internal/telephony/gsm/SmartCardResult;

    goto :goto_1

    .line 91
    :cond_1
    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/String;

    const-string v9, "61"

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v7, v11, :cond_2

    .line 93
    move-object v5, v4

    .line 94
    .local v5, response_command_data_string:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/lang/String;

    const-string v9, "c00000"

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 95
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x2

    const/4 v9, 0x4

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 96
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    new-array v0, v7, [B

    .line 97
    .local v0, command_data:[B
    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 98
    const-string v7, "LGE_USIM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "c00000 command_data"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v8, p0, Lcom/android/internal/telephony/SmartCardManager;->mLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 101
    :try_start_8
    iget-object v7, p0, Lcom/android/internal/telephony/SmartCardManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v7, v7, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v9, p0, Lcom/android/internal/telephony/SmartCardManager;->mUsimHandler:Lcom/android/internal/telephony/SmartCardManager$UsimHandler;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/SmartCardManager$UsimHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-interface {v7, v0, v9}, Lcom/android/internal/telephony/CommandsInterface;->smartCardTransmit([BLandroid/os/Message;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 103
    :try_start_9
    iget-object v7, p0, Lcom/android/internal/telephony/SmartCardManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->wait()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_1

    .line 107
    :goto_2
    :try_start_a
    monitor-exit v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 111
    .end local v0           #command_data:[B
    .end local v5           #response_command_data_string:Ljava/lang/String;
    :cond_2
    :try_start_b
    iget-object v7, p0, Lcom/android/internal/telephony/SmartCardManager;->returnData:Lcom/android/internal/telephony/gsm/SmartCardResult;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_1

    .line 104
    .restart local v0       #command_data:[B
    .restart local v5       #response_command_data_string:Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 105
    .restart local v3       #e:Ljava/lang/InterruptedException;
    :try_start_c
    const-string v7, "LGE_USIM"

    const-string/jumbo v9, "interrupted while trying to execute smartCardTransmit"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 107
    .end local v3           #e:Ljava/lang/InterruptedException;
    :catchall_2
    move-exception v7

    monitor-exit v8
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    throw v7
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
.end method
