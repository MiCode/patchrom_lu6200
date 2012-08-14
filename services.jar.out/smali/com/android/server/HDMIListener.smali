.class final Lcom/android/server/HDMIListener;
.super Ljava/lang/Object;
.source "HDMIListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final HDMI_CLOSEDCAPTION_MAPFB:Ljava/lang/String; = "closedcaption_mapfb"

.field private static final HDMI_CLOSEDCAPTION_UNMAPFB:Ljava/lang/String; = "closedcaption_unmapfb"

.field private static final HDMI_CMD_CHANGE_MODE:Ljava/lang/String; = "change_mode: "

.field private static final HDMI_CMD_DISABLE_HDMI:Ljava/lang/String; = "disable_hdmi"

.field private static final HDMI_CMD_ENABLE_HDMI:Ljava/lang/String; = "enable_hdmi"

.field private static final HDMI_CMD_HPDOPTION:Ljava/lang/String; = "hdmi_hpd: "

.field private static final HDMI_CMD_RESUME_HDMI:Ljava/lang/String; = "resume_hdmi"

.field private static final HDMI_CMD_SET_ASHEIGHT:Ljava/lang/String; = "set_asheight: "

.field private static final HDMI_CMD_SET_ASWIDTH:Ljava/lang/String; = "set_aswidth: "

.field private static final HDMI_CMD_SUSPEND_HDMI:Ljava/lang/String; = "suspend_hdmi"

.field private static final HDMI_EVT_AUDIO_OFF:Ljava/lang/String; = "hdmi_audio_off"

.field private static final HDMI_EVT_AUDIO_ON:Ljava/lang/String; = "hdmi_audio_on"

.field private static final HDMI_EVT_CONNECTED:Ljava/lang/String; = "hdmi_connected"

.field private static final HDMI_EVT_DISCONNECTED:Ljava/lang/String; = "hdmi_disconnected"

.field private static final HDMI_EVT_START:Ljava/lang/String; = "hdmi_listner_started"

.field private static final HDMI_SOCKET:Ljava/lang/String; = "hdmid"

.field private static final SENDSTRINGTOSERVICE:Ljava/lang/String; = "sendstringtoservice"

.field private static final TAG:Ljava/lang/String; = "HDMIListener"


# instance fields
.field private final WRITE_COMMAND_DELAY_TIME_MS:I

.field private mEDIDs:[I

.field private mHDMIConnected:Z

.field private mHDMIEnabled:Z

.field private mHDMISuspended:Z

.field private mOutputStream:Ljava/io/DataOutputStream;

.field private mService:Lcom/android/server/HDMIService;


# direct methods
.method constructor <init>(Lcom/android/server/HDMIService;)V
    .locals 2
    .parameter "service"

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/server/HDMIListener;->WRITE_COMMAND_DELAY_TIME_MS:I

    .line 71
    iput-boolean v1, p0, Lcom/android/server/HDMIListener;->mHDMISuspended:Z

    .line 76
    iput-boolean v1, p0, Lcom/android/server/HDMIListener;->mHDMIConnected:Z

    .line 77
    iput-boolean v1, p0, Lcom/android/server/HDMIListener;->mHDMIEnabled:Z

    .line 78
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/server/HDMIListener;->mEDIDs:[I

    .line 81
    iput-object p1, p0, Lcom/android/server/HDMIListener;->mService:Lcom/android/server/HDMIService;

    .line 82
    return-void
.end method

.method private handleEvent(Ljava/lang/String;)V
    .locals 6
    .parameter "event"

    .prologue
    .line 85
    const-string v3, "HDMIListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleEvent \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const-string v3, "hdmi_connected"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 88
    const-string v3, "hdmi_connected"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, ids:[Ljava/lang/String;
    array-length v3, v2

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/server/HDMIListener;->mEDIDs:[I

    .line 90
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/server/HDMIListener;->mEDIDs:[I

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 92
    :try_start_0
    iget-object v3, p0, Lcom/android/server/HDMIListener;->mEDIDs:[I

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, ex:Ljava/lang/NumberFormatException;
    const-string v3, "HDMIListener"

    const-string v4, "NumberFormatException in handleEvent"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 97
    .end local v0           #ex:Ljava/lang/NumberFormatException;
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/HDMIListener;->mHDMIConnected:Z

    .line 98
    iget-object v3, p0, Lcom/android/server/HDMIListener;->mService:Lcom/android/server/HDMIService;

    iget-object v4, p0, Lcom/android/server/HDMIListener;->mEDIDs:[I

    invoke-virtual {v3, v4}, Lcom/android/server/HDMIService;->notifyHDMIConnected([I)V

    .line 109
    .end local v1           #i:I
    .end local v2           #ids:[Ljava/lang/String;
    :cond_1
    :goto_2
    return-void

    .line 99
    :cond_2
    const-string v3, "hdmi_disconnected"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 100
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/HDMIListener;->mHDMIConnected:Z

    .line 101
    iget-object v3, p0, Lcom/android/server/HDMIListener;->mService:Lcom/android/server/HDMIService;

    invoke-virtual {v3}, Lcom/android/server/HDMIService;->notifyHDMIDisconnected()V

    goto :goto_2

    .line 102
    :cond_3
    const-string v3, "hdmi_audio_on"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 104
    iget-object v3, p0, Lcom/android/server/HDMIListener;->mService:Lcom/android/server/HDMIService;

    invoke-virtual {v3}, Lcom/android/server/HDMIService;->notifyHDMIAudioOn()V

    goto :goto_2

    .line 105
    :cond_4
    const-string v3, "hdmi_audio_off"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 107
    iget-object v3, p0, Lcom/android/server/HDMIListener;->mService:Lcom/android/server/HDMIService;

    invoke-virtual {v3}, Lcom/android/server/HDMIService;->notifyHDMIAudioOff()V

    goto :goto_2
.end method

.method private listenToSocket()V
    .locals 14

    .prologue
    .line 142
    const/4 v8, 0x0

    .line 145
    .local v8, socket:Landroid/net/LocalSocket;
    :try_start_0
    new-instance v9, Landroid/net/LocalSocket;

    invoke-direct {v9}, Landroid/net/LocalSocket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .end local v8           #socket:Landroid/net/LocalSocket;
    .local v9, socket:Landroid/net/LocalSocket;
    :try_start_1
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v11, "hdmid"

    sget-object v12, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v11, v12}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 149
    .local v0, address:Landroid/net/LocalSocketAddress;
    invoke-virtual {v9, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 151
    invoke-virtual {v9}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 152
    .local v7, inputStream:Ljava/io/InputStream;
    new-instance v11, Ljava/io/DataOutputStream;

    invoke-virtual {v9}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v11, p0, Lcom/android/server/HDMIListener;->mOutputStream:Ljava/io/DataOutputStream;

    .line 161
    const/16 v11, 0x200

    new-array v1, v11, [B

    .line 163
    .local v1, buffer:[B
    const-string v11, "hdmi_listner_started"

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12}, Lcom/android/server/HDMIListener;->writeCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_0
    invoke-virtual {v7, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v2

    .line 166
    .local v2, count:I
    if-gez v2, :cond_3

    move-object v8, v9

    .line 181
    .end local v0           #address:Landroid/net/LocalSocketAddress;
    .end local v1           #buffer:[B
    .end local v2           #count:I
    .end local v7           #inputStream:Ljava/io/InputStream;
    .end local v9           #socket:Landroid/net/LocalSocket;
    .restart local v8       #socket:Landroid/net/LocalSocket;
    :goto_0
    monitor-enter p0

    .line 182
    :try_start_2
    iget-object v11, p0, Lcom/android/server/HDMIListener;->mOutputStream:Ljava/io/DataOutputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v11, :cond_1

    .line 184
    :try_start_3
    iget-object v11, p0, Lcom/android/server/HDMIListener;->mOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v11}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 189
    :goto_1
    const/4 v11, 0x0

    :try_start_4
    iput-object v11, p0, Lcom/android/server/HDMIListener;->mOutputStream:Ljava/io/DataOutputStream;

    .line 191
    :cond_1
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 194
    if-eqz v8, :cond_2

    .line 195
    :try_start_5
    invoke-virtual {v8}, Landroid/net/LocalSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 201
    :cond_2
    :goto_2
    const-string v11, "HDMIListener"

    const-string v12, "Failed to connect to hdmi daemon"

    new-instance v13, Ljava/lang/IllegalStateException;

    invoke-direct {v13}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v11, v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    return-void

    .line 168
    .end local v8           #socket:Landroid/net/LocalSocket;
    .restart local v0       #address:Landroid/net/LocalSocketAddress;
    .restart local v1       #buffer:[B
    .restart local v2       #count:I
    .restart local v7       #inputStream:Ljava/io/InputStream;
    .restart local v9       #socket:Landroid/net/LocalSocket;
    :cond_3
    const/4 v10, 0x0

    .line 169
    .local v10, start:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_3
    if-ge v6, v2, :cond_0

    .line 170
    :try_start_6
    aget-byte v11, v1, v6

    if-nez v11, :cond_4

    .line 171
    new-instance v4, Ljava/lang/String;

    sub-int v11, v6, v10

    invoke-direct {v4, v1, v10, v11}, Ljava/lang/String;-><init>([BII)V

    .line 172
    .local v4, event:Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/server/HDMIListener;->handleEvent(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 173
    add-int/lit8 v10, v6, 0x1

    .line 169
    .end local v4           #event:Ljava/lang/String;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 177
    .end local v0           #address:Landroid/net/LocalSocketAddress;
    .end local v1           #buffer:[B
    .end local v2           #count:I
    .end local v6           #i:I
    .end local v7           #inputStream:Ljava/io/InputStream;
    .end local v9           #socket:Landroid/net/LocalSocket;
    .end local v10           #start:I
    .restart local v8       #socket:Landroid/net/LocalSocket;
    :catch_0
    move-exception v5

    .line 178
    .local v5, ex:Ljava/io/IOException;
    :goto_4
    const-string v11, "HDMIListener"

    const-string v12, "Could not open listner socket"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 185
    .end local v5           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 186
    .local v3, e:Ljava/io/IOException;
    :try_start_7
    const-string v11, "HDMIListener"

    const-string v12, "IOException closing output stream"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 191
    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v11

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v11

    .line 197
    :catch_2
    move-exception v5

    .line 198
    .restart local v5       #ex:Ljava/io/IOException;
    const-string v11, "HDMIListener"

    const-string v12, "IOException closing socket"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 177
    .end local v5           #ex:Ljava/io/IOException;
    .end local v8           #socket:Landroid/net/LocalSocket;
    .restart local v9       #socket:Landroid/net/LocalSocket;
    :catch_3
    move-exception v5

    move-object v8, v9

    .end local v9           #socket:Landroid/net/LocalSocket;
    .restart local v8       #socket:Landroid/net/LocalSocket;
    goto :goto_4
.end method

.method private writeCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "command"
    .parameter "argument"

    .prologue
    .line 112
    monitor-enter p0

    .line 113
    :try_start_0
    iget-object v3, p0, Lcom/android/server/HDMIListener;->mOutputStream:Ljava/io/DataOutputStream;

    if-nez v3, :cond_0

    .line 114
    const-string v3, "HDMIListener"

    const-string v4, "No connection to hdmi daemon"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    :goto_0
    const-wide/16 v3, 0x64

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 137
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 138
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 139
    return-void

    .line 116
    :cond_0
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .local v0, builder:Ljava/lang/StringBuilder;
    if-eqz p2, :cond_1

    .line 118
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 123
    :try_start_4
    iget-object v3, p0, Lcom/android/server/HDMIListener;->mOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->write([B)V

    .line 124
    iget-object v3, p0, Lcom/android/server/HDMIListener;->mOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 125
    const-string v3, "HDMIListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "writeCommand: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 127
    :catch_0
    move-exception v2

    .line 128
    .local v2, ex:Ljava/io/IOException;
    :try_start_5
    const-string v3, "HDMIListener"

    const-string v4, "IOException in writeCommand"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 137
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v2           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v3

    .line 134
    :catch_1
    move-exception v1

    .line 135
    .local v1, e:Ljava/lang/Exception;
    :try_start_6
    const-string v3, "HDMIListener"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public changeDisplayMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 236
    const-string v0, "change_mode: "

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/HDMIListener;->writeCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method public enableHDMIOutput(Z)V
    .locals 2
    .parameter "hdmiEnable"

    .prologue
    const/4 v1, 0x0

    .line 221
    iget-boolean v0, p0, Lcom/android/server/HDMIListener;->mHDMIEnabled:Z

    if-ne v0, p1, :cond_0

    .line 222
    const-string v0, "HDMIListener"

    const-string v1, "enableHDMIOutput ignored, unchanged!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :goto_0
    return-void

    .line 225
    :cond_0
    if-eqz p1, :cond_1

    .line 226
    const-string v0, "enable_hdmi"

    invoke-direct {p0, v0, v1}, Lcom/android/server/HDMIListener;->writeCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/HDMIListener;->mHDMIEnabled:Z

    goto :goto_0

    .line 230
    :cond_1
    const-string v0, "disable_hdmi"

    invoke-direct {p0, v0, v1}, Lcom/android/server/HDMIListener;->writeCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/HDMIListener;->mHDMIEnabled:Z

    goto :goto_0
.end method

.method isHDMIConnected()Z
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/android/server/HDMIListener;->mHDMIConnected:Z

    return v0
.end method

.method public mapFrameBuffer()V
    .locals 2

    .prologue
    .line 254
    const-string v0, "HDMIListener"

    const-string v1, "mapFrameBuffer called "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const-string v0, "closedcaption_mapfb"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/HDMIListener;->writeCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 209
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/HDMIListener;->listenToSocket()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :goto_0
    return-void

    .line 210
    :catch_0
    move-exception v0

    .line 212
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "HDMIListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fatal error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in HDMIListener thread!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendStringtoService(Ljava/lang/String;)V
    .locals 2
    .parameter "caption"

    .prologue
    .line 264
    const-string v0, "HDMIListener"

    const-string v1, "sendStringtoService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const-string v0, "sendstringtoservice"

    invoke-direct {p0, v0, p1}, Lcom/android/server/HDMIListener;->writeCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    return-void
.end method

.method public setActionsafeHeightRatio(F)V
    .locals 2
    .parameter "asHeightRatio"

    .prologue
    .line 244
    const-string v0, "set_asheight: "

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v1}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/HDMIListener;->writeCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method public setActionsafeWidthRatio(F)V
    .locals 2
    .parameter "asWidthRatio"

    .prologue
    .line 240
    const-string v0, "set_aswidth: "

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v1}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/HDMIListener;->writeCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method public setHPD(Z)V
    .locals 3
    .parameter "hpdOption"

    .prologue
    .line 248
    const-string v1, "hdmi_hpd: "

    new-instance v2, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/android/server/HDMIListener;->writeCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    return-void

    .line 248
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public suspendHDMIOutputParam(Z)V
    .locals 2
    .parameter "param"

    .prologue
    const/4 v1, 0x0

    .line 271
    if-eqz p1, :cond_0

    .line 273
    const-string v0, "suspend_hdmi"

    invoke-direct {p0, v0, v1}, Lcom/android/server/HDMIListener;->writeCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/HDMIListener;->mHDMISuspended:Z

    .line 278
    return-void

    .line 275
    :cond_0
    const-string v0, "resume_hdmi"

    invoke-direct {p0, v0, v1}, Lcom/android/server/HDMIListener;->writeCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unmapFrameBuffer()V
    .locals 2

    .prologue
    .line 259
    const-string v0, "HDMIListener"

    const-string v1, "unmapFrameBuffer called "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const-string v0, "closedcaption_unmapfb"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/HDMIListener;->writeCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    return-void
.end method
