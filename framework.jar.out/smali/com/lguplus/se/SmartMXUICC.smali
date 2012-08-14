.class public final Lcom/lguplus/se/SmartMXUICC;
.super Ljava/lang/Object;
.source "SmartMXUICC.java"


# static fields
.field private static final CHANNEL_BYTES:I = 0x3

.field public static final EXTRA_ID:Ljava/lang/String; = "android.nfc.extra.ID"

.field private static final LOG_TAG:Ljava/lang/String; = "SmartMXUICC"

.field public static final SMART_MX_ID:Ljava/lang/String; = "android.nfc.smart_mx.ID"

.field public static final UICC_ID:Ljava/lang/String; = "android.nfc.uicc.ID"

.field private static channel:I

.field private static mUsimInfo:Lcom/android/internal/telephony/ISmartCardInfo;


# instance fields
.field private Enable_SmartMX_SE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, -0x1

    sput v0, Lcom/lguplus/se/SmartMXUICC;->channel:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lguplus/se/SmartMXUICC;->Enable_SmartMX_SE:Z

    .line 63
    return-void
.end method

.method public static createSmartMXUICC()Lcom/lguplus/se/SmartMXUICC;
    .locals 3

    .prologue
    .line 53
    const-string v1, "ISmartCardInfo"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 55
    .local v0, b:Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 56
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ISmartCardInfo binder not available!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 58
    :cond_0
    invoke-static {v0}, Lcom/android/internal/telephony/ISmartCardInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISmartCardInfo;

    move-result-object v1

    sput-object v1, Lcom/lguplus/se/SmartMXUICC;->mUsimInfo:Lcom/android/internal/telephony/ISmartCardInfo;

    .line 59
    new-instance v1, Lcom/lguplus/se/SmartMXUICC;

    invoke-direct {v1}, Lcom/lguplus/se/SmartMXUICC;-><init>()V

    return-object v1
.end method


# virtual methods
.method public closeSecureElementConnection(I)V
    .locals 11
    .parameter "handle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 155
    const-string v5, "SmartMXUICC"

    const-string v6, "closeSecureElementConnection"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const-string v5, "SmartMXUICC"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "disconnect : internal channel="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/lguplus/se/SmartMXUICC;->channel:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/4 v5, 0x4

    new-array v0, v5, [B

    aput-byte v9, v0, v9

    const/4 v5, 0x1

    const/16 v6, 0x70

    aput-byte v6, v0, v5

    const/4 v5, 0x2

    const/16 v6, -0x80

    aput-byte v6, v0, v5

    sget v5, Lcom/lguplus/se/SmartMXUICC;->channel:I

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v10

    .line 158
    .local v0, command:[B
    new-array v2, v10, [B

    .line 159
    .local v2, response:[B
    const/4 v3, 0x0

    .line 162
    .local v3, response_length:I
    iget-boolean v5, p0, Lcom/lguplus/se/SmartMXUICC;->Enable_SmartMX_SE:Z

    if-nez v5, :cond_0

    .line 163
    if-nez p1, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    sget v5, Lcom/lguplus/se/SmartMXUICC;->channel:I

    if-eq v5, v8, :cond_2

    if-ne p1, v8, :cond_3

    .line 166
    :cond_2
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "the channel is already closed"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 167
    :cond_3
    sget v5, Lcom/lguplus/se/SmartMXUICC;->channel:I

    if-eq v5, p1, :cond_4

    .line 168
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "the parameter handle is different from channel"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 170
    :cond_4
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/lguplus/se/SmartMXUICC;->exchangeAPDU(I[B)[B

    move-result-object v2

    .line 171
    if-eqz v2, :cond_5

    array-length v3, v2

    .line 172
    :cond_5
    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    .line 173
    .local v4, test:Ljava/lang/String;
    const-string v5, "SmartMXUICC"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[disconnect] response : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    if-eqz v4, :cond_6

    const-string v5, "9000"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 175
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "close channel("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") is failed. the fuction result is false"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    .end local v4           #test:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 182
    .local v1, ex:Ljava/lang/Exception;
    const-string v5, "SmartMXUICC"

    const-string v6, "closeSecureElementConnection is failed"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    new-instance v5, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 177
    .end local v1           #ex:Ljava/lang/Exception;
    .restart local v4       #test:Ljava/lang/String;
    :cond_6
    if-ltz v3, :cond_0

    .line 179
    const/4 v5, -0x1

    :try_start_1
    sput v5, Lcom/lguplus/se/SmartMXUICC;->channel:I

    .line 180
    const-string v5, "SmartMXUICC"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[close] channel : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/lguplus/se/SmartMXUICC;->channel:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public exchangeAPDU(I[B)[B
    .locals 5
    .parameter "handle"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    const-string v2, "SmartMXUICC"

    const-string v3, "exchangeAPDU"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/4 v1, 0x0

    .line 109
    .local v1, tmpdata:Lcom/android/internal/telephony/gsm/SmartCardResult;
    iget-boolean v2, p0, Lcom/lguplus/se/SmartMXUICC;->Enable_SmartMX_SE:Z

    if-nez v2, :cond_1

    .line 111
    array-length v2, p2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    .line 112
    new-instance v2, Ljava/io/IOException;

    const-string v3, "command must not be smaller than 4 bytes"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 114
    :cond_0
    const-string v2, "SmartMXUICC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[transmit] channel : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const-string v2, "SmartMXUICC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[transmit] command : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    if-nez p1, :cond_2

    .line 120
    :try_start_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, " Because channelNumber is 0, transmit command is failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :catch_0
    move-exception v0

    .line 148
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "SmartMXUICC"

    const-string v3, "Call smartCardTransmit Failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const/4 v2, 0x0

    :goto_0
    return-object v2

    .line 125
    :cond_2
    :try_start_1
    sget v2, Lcom/lguplus/se/SmartMXUICC;->channel:I

    if-eq p1, v2, :cond_3

    .line 126
    new-instance v2, Ljava/io/IOException;

    const-string v3, "channel in this class is the different from the handle of apk"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 128
    :cond_3
    const/4 v2, -0x1

    if-eq p1, v2, :cond_4

    .line 129
    const/4 v2, 0x0

    aget-byte v3, p2, v2

    and-int/lit8 v4, p1, 0x3

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    .line 131
    :cond_4
    sget-object v2, Lcom/lguplus/se/SmartMXUICC;->mUsimInfo:Lcom/android/internal/telephony/ISmartCardInfo;

    invoke-interface {v2, p2}, Lcom/android/internal/telephony/ISmartCardInfo;->smartCardTransmit([B)Lcom/android/internal/telephony/gsm/SmartCardResult;

    move-result-object v1

    .line 132
    const-string v2, "SmartMXUICC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[transmit] tmpdata.ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/internal/telephony/gsm/SmartCardResult;->ret:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tmpdata.data_length : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/internal/telephony/gsm/SmartCardResult;->data_length:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tmpdata.data : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/internal/telephony/gsm/SmartCardResult;->data:[B

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget v2, v1, Lcom/android/internal/telephony/gsm/SmartCardResult;->ret:I

    if-nez v2, :cond_1

    .line 137
    const-string v2, "SmartMXUICC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[transmit] response : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/internal/telephony/gsm/SmartCardResult;->data:[B

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const-string v2, "SmartMXUICC"

    const-string v3, "[transmit] transmit success"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v2, v1, Lcom/android/internal/telephony/gsm/SmartCardResult;->data:[B
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public getATR()[B
    .locals 5

    .prologue
    .line 193
    const-string v2, "SmartMXUICC"

    const-string v3, "getATR()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-boolean v2, p0, Lcom/lguplus/se/SmartMXUICC;->Enable_SmartMX_SE:Z

    if-nez v2, :cond_0

    .line 195
    const-string v2, "SmartMXUICC"

    const-string v3, "Smartcard getATR()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const/4 v1, 0x0

    .line 198
    .local v1, tmpdata:Lcom/android/internal/telephony/gsm/SmartCardResult;
    :try_start_0
    sget-object v2, Lcom/lguplus/se/SmartMXUICC;->mUsimInfo:Lcom/android/internal/telephony/ISmartCardInfo;

    invoke-interface {v2}, Lcom/android/internal/telephony/ISmartCardInfo;->smartCardGetATR()Lcom/android/internal/telephony/gsm/SmartCardResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 202
    :goto_0
    if-eqz v1, :cond_0

    iget v2, v1, Lcom/android/internal/telephony/gsm/SmartCardResult;->ret:I

    if-nez v2, :cond_0

    .line 203
    const-string v2, "SmartMXUICC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getATR] atr : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/internal/telephony/gsm/SmartCardResult;->data:[B

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v2, v1, Lcom/android/internal/telephony/gsm/SmartCardResult;->data:[B

    .line 207
    .end local v1           #tmpdata:Lcom/android/internal/telephony/gsm/SmartCardResult;
    :goto_1
    return-object v2

    .line 199
    .restart local v1       #tmpdata:Lcom/android/internal/telephony/gsm/SmartCardResult;
    :catch_0
    move-exception v0

    .line 200
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "SmartMXUICC"

    const-string v3, "Call getATR Failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 207
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #tmpdata:Lcom/android/internal/telephony/gsm/SmartCardResult;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getChannel()I
    .locals 2

    .prologue
    .line 211
    const-string v0, "SmartMXUICC"

    const-string v1, "Smartcard getChannel()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    sget v0, Lcom/lguplus/se/SmartMXUICC;->channel:I

    return v0
.end method

.method public getSecureElementTechList(I)[I
    .locals 2
    .parameter "handle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    new-instance v0, Ljava/io/IOException;

    const-string v1, "getSecureElementTechList is not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSecureElementUid(I)[B
    .locals 2
    .parameter "handle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    new-instance v0, Ljava/io/IOException;

    const-string v1, "getSecureElementUid is not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isSmartMX()Z
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/lguplus/se/SmartMXUICC;->Enable_SmartMX_SE:Z

    return v0
.end method

.method public openSecureElementConnection(Ljava/lang/String;)I
    .locals 8
    .parameter "seType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    .line 66
    const-string v4, "SmartMXUICC"

    const-string/jumbo v5, "openSecureElementConnection"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 v4, 0x5

    new-array v0, v4, [B

    fill-array-data v0, :array_0

    .line 68
    .local v0, command:[B
    new-array v3, v7, [B

    .line 73
    .local v3, response:[B
    const-string v4, "android.nfc.uicc.ID"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 76
    :try_start_0
    const-string v4, "SmartMXUICC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[open] channel : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/lguplus/se/SmartMXUICC;->channel:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    sget v4, Lcom/lguplus/se/SmartMXUICC;->channel:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 78
    sget v4, Lcom/lguplus/se/SmartMXUICC;->channel:I

    invoke-virtual {p0, v4}, Lcom/lguplus/se/SmartMXUICC;->closeSecureElementConnection(I)V

    .line 81
    :cond_0
    const/4 v2, -0x1

    .line 82
    .local v2, handle:I
    invoke-virtual {p0, v2, v0}, Lcom/lguplus/se/SmartMXUICC;->exchangeAPDU(I[B)[B

    move-result-object v3

    .line 83
    if-eqz v3, :cond_1

    array-length v4, v3

    .line 84
    :cond_1
    const/4 v4, 0x0

    aget-byte v4, v3, v4

    and-int/lit16 v4, v4, 0xff

    sput v4, Lcom/lguplus/se/SmartMXUICC;->channel:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    array-length v4, v3

    if-eq v4, v7, :cond_2

    .line 90
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "the length of response is wrong("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 85
    .end local v2           #handle:I
    :catch_0
    move-exception v1

    .line 86
    .local v1, ex:Ljava/lang/Exception;
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "open channel is failed"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 92
    .end local v1           #ex:Ljava/lang/Exception;
    .restart local v2       #handle:I
    :cond_2
    sget v4, Lcom/lguplus/se/SmartMXUICC;->channel:I

    if-nez v4, :cond_3

    .line 93
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "apk can\'t access basic channel. the returned channel is basic channel("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/lguplus/se/SmartMXUICC;->channel:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 95
    :cond_3
    sget v4, Lcom/lguplus/se/SmartMXUICC;->channel:I

    if-le v4, v7, :cond_4

    .line 96
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "invalid logical channel number is returned("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/lguplus/se/SmartMXUICC;->channel:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 99
    :cond_4
    const-string v4, "SmartMXUICC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "open channel : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/lguplus/se/SmartMXUICC;->channel:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .end local v2           #handle:I
    :cond_5
    sget v4, Lcom/lguplus/se/SmartMXUICC;->channel:I

    return v4

    .line 67
    :array_0
    .array-data 0x1
        0x0t
        0x70t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method
