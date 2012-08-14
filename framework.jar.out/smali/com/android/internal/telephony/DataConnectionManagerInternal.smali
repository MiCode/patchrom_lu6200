.class public Lcom/android/internal/telephony/DataConnectionManagerInternal;
.super Ljava/lang/Object;
.source "DataConnectionManagerInternal.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "LGE_DCM_INT"

.field public static alreadyAppUsedPacket:Z

.field public static blockPacketMenuFlag:Z

.field public static blockPakcetProcessFlag:Z

.field private static uniqueInstance:Lcom/android/internal/telephony/DataConnectionManagerInternal;


# instance fields
.field featureset:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/DataConnectionManagerInternal;->blockPacketMenuFlag:Z

    .line 40
    sput-boolean v1, Lcom/android/internal/telephony/DataConnectionManagerInternal;->blockPakcetProcessFlag:Z

    .line 41
    sput-boolean v1, Lcom/android/internal/telephony/DataConnectionManagerInternal;->alreadyAppUsedPacket:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "c"

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, "LGE_DCM_INT"

    const-string v1, "DataConnectionManagerInternal() has created"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnectionManagerInternal;->mContext:Landroid/content/Context;

    .line 54
    const-string/jumbo v0, "ro.afwdata.LGfeatureset"

    const-string/jumbo v1, "none"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionManagerInternal;->featureset:Ljava/lang/String;

    .line 55
    const-string v0, "LGE_DCM_INT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "featureset : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionManagerInternal;->featureset:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/DataConnectionManagerInternal;
    .locals 1
    .parameter "c"

    .prologue
    .line 60
    sget-object v0, Lcom/android/internal/telephony/DataConnectionManagerInternal;->uniqueInstance:Lcom/android/internal/telephony/DataConnectionManagerInternal;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/android/internal/telephony/DataConnectionManagerInternal;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/DataConnectionManagerInternal;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionManagerInternal;->uniqueInstance:Lcom/android/internal/telephony/DataConnectionManagerInternal;

    .line 64
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/DataConnectionManagerInternal;->uniqueInstance:Lcom/android/internal/telephony/DataConnectionManagerInternal;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized functionForPacketDrop(Z)V
    .locals 12
    .parameter "ok"

    .prologue
    .line 172
    monitor-enter p0

    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionManagerInternal;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "phone"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 173
    .local v8, tm:Landroid/telephony/TelephonyManager;
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionManagerInternal;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "network_management"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 174
    .local v0, b:Landroid/os/IBinder;
    const-string v9, "connectivity"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 175
    .local v1, bc:Landroid/os/IBinder;
    invoke-static {v1}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v2

    .line 177
    .local v2, cm:Landroid/net/IConnectivityManager;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v7

    .line 178
    .local v7, service:Landroid/os/INetworkManagementService;
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 179
    .local v5, networkOperator:Ljava/lang/String;
    const/4 v4, 0x0

    .line 180
    .local v4, ifacename:Ljava/lang/String;
    const/4 v6, 0x0

    .line 183
    .local v6, props:Landroid/net/LinkProperties;
    const/4 v9, 0x0

    :try_start_1
    invoke-interface {v2, v9}, Landroid/net/IConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v6

    .line 184
    invoke-virtual {v6}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v4

    .line 190
    :goto_0
    :try_start_2
    sget-boolean v9, Lcom/android/internal/telephony/DataConnectionManagerInternal;->blockPacketMenuFlag:Z

    if-nez v9, :cond_1

    .line 191
    const-string v9, "LGE_DCM_INT"

    const-string v10, "functionForPacketDrop  return@@@@@@"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    sget-boolean v9, Lcom/android/internal/telephony/DataConnectionManagerInternal;->blockPakcetProcessFlag:Z

    if-eqz v9, :cond_0

    .line 193
    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/internal/telephony/DataConnectionManagerInternal;->blockPakcetProcessFlag:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 197
    :try_start_3
    invoke-interface {v7, v4}, Landroid/os/INetworkManagementService;->acceptPacket(Ljava/lang/String;)V

    .line 199
    const-string v9, "LGE_DCM_INT"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "acceptPacket_SKT ifacename = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 236
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 200
    :catch_0
    move-exception v3

    .line 201
    .local v3, e:Ljava/lang/Exception;
    :try_start_4
    const-string v9, "LGE_DCM_INT"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "service.acceptPacket exception = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 172
    .end local v0           #b:Landroid/os/IBinder;
    .end local v1           #bc:Landroid/os/IBinder;
    .end local v2           #cm:Landroid/net/IConnectivityManager;
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #ifacename:Ljava/lang/String;
    .end local v5           #networkOperator:Ljava/lang/String;
    .end local v6           #props:Landroid/net/LinkProperties;
    .end local v7           #service:Landroid/os/INetworkManagementService;
    .end local v8           #tm:Landroid/telephony/TelephonyManager;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 207
    .restart local v0       #b:Landroid/os/IBinder;
    .restart local v1       #bc:Landroid/os/IBinder;
    .restart local v2       #cm:Landroid/net/IConnectivityManager;
    .restart local v4       #ifacename:Ljava/lang/String;
    .restart local v5       #networkOperator:Ljava/lang/String;
    .restart local v6       #props:Landroid/net/LinkProperties;
    .restart local v7       #service:Landroid/os/INetworkManagementService;
    .restart local v8       #tm:Landroid/telephony/TelephonyManager;
    :cond_1
    :try_start_5
    const-string v9, "LGE_DCM_INT"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "blockPakcetProcessFlag =  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-boolean v11, Lcom/android/internal/telephony/DataConnectionManagerInternal;->blockPakcetProcessFlag:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", ok = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    if-eqz v5, :cond_0

    const-string v9, "45005"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 210
    if-eqz p1, :cond_2

    sget-boolean v9, Lcom/android/internal/telephony/DataConnectionManagerInternal;->blockPakcetProcessFlag:Z

    if-nez v9, :cond_2

    .line 211
    const/4 v9, 0x1

    sput-boolean v9, Lcom/android/internal/telephony/DataConnectionManagerInternal;->blockPakcetProcessFlag:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 215
    :try_start_6
    invoke-interface {v7, v4}, Landroid/os/INetworkManagementService;->dropPacket(Ljava/lang/String;)V

    .line 217
    const-string v9, "LGE_DCM_INT"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dropPacket_SKT  ifacename = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 218
    :catch_1
    move-exception v3

    .line 219
    .restart local v3       #e:Ljava/lang/Exception;
    :try_start_7
    const-string v9, "LGE_DCM_INT"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "service.dropPacket exception = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 223
    .end local v3           #e:Ljava/lang/Exception;
    :cond_2
    if-nez p1, :cond_0

    sget-boolean v9, Lcom/android/internal/telephony/DataConnectionManagerInternal;->blockPakcetProcessFlag:Z

    if-eqz v9, :cond_0

    .line 224
    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/internal/telephony/DataConnectionManagerInternal;->blockPakcetProcessFlag:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 227
    :try_start_8
    invoke-interface {v7, v4}, Landroid/os/INetworkManagementService;->acceptPacket(Ljava/lang/String;)V

    .line 229
    const-string v9, "LGE_DCM_INT"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "acceptPacket_SKT ifacename = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_1

    .line 230
    :catch_2
    move-exception v3

    .line 231
    .restart local v3       #e:Ljava/lang/Exception;
    :try_start_9
    const-string v9, "LGE_DCM_INT"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "service.acceptPacket exception = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    .line 186
    .end local v3           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v9

    goto/16 :goto_0
.end method

.method public declared-synchronized functionForPacketList()V
    .locals 7

    .prologue
    .line 105
    monitor-enter p0

    const/4 v3, 0x0

    .line 108
    .local v3, ret_value:Z
    :try_start_0
    const-string/jumbo v4, "network_management"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 109
    .local v1, network_b:Landroid/os/IBinder;
    invoke-static {v1}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    .line 111
    .local v2, network_service:Landroid/os/INetworkManagementService;
    const-string v4, "LGE_DCM_INT"

    const-string v5, "functionForPacketList  :::: "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :try_start_1
    invoke-interface {v2}, Landroid/os/INetworkManagementService;->packetList_Indrop()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    .line 118
    :goto_0
    :try_start_2
    const-string v4, "LGE_DCM_INT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "functionForPacketList  ret_value :: :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    monitor-exit p0

    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    const-string v4, "LGE_DCM_INT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "network_service.resetPacketDrop exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 105
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #network_b:Landroid/os/IBinder;
    .end local v2           #network_service:Landroid/os/INetworkManagementService;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized functionForResetDrop()V
    .locals 6

    .prologue
    .line 153
    monitor-enter p0

    :try_start_0
    const-string/jumbo v3, "network_management"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 154
    .local v1, network_b:Landroid/os/IBinder;
    invoke-static {v1}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    .line 156
    .local v2, network_service:Landroid/os/INetworkManagementService;
    const-string v3, "LGE_DCM_INT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "functionForResetDrop blockPakcetProcessFlag "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/internal/telephony/DataConnectionManagerInternal;->blockPakcetProcessFlag:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " blockPacketMenuFlag "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/internal/telephony/DataConnectionManagerInternal;->blockPacketMenuFlag:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " alreadyAppUsedPacket "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/internal/telephony/DataConnectionManagerInternal;->alreadyAppUsedPacket:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    :try_start_1
    invoke-interface {v2}, Landroid/os/INetworkManagementService;->resetPacketDrop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 163
    :goto_0
    const/4 v3, 0x0

    :try_start_2
    sput-boolean v3, Lcom/android/internal/telephony/DataConnectionManagerInternal;->blockPakcetProcessFlag:Z

    .line 164
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/internal/telephony/DataConnectionManagerInternal;->alreadyAppUsedPacket:Z

    .line 166
    const-string/jumbo v3, "net.is_dropping_packet"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 167
    monitor-exit p0

    return-void

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    const-string v3, "LGE_DCM_INT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "network_service.resetPacketDrop exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 153
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #network_b:Landroid/os/IBinder;
    .end local v2           #network_service:Landroid/os/INetworkManagementService;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getAlreadyAppUsedPacket()Z
    .locals 3

    .prologue
    .line 82
    const-string v0, "LGE_DCM_INT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",alreadyAppUsedPacket = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/telephony/DataConnectionManagerInternal;->alreadyAppUsedPacket:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    sget-boolean v0, Lcom/android/internal/telephony/DataConnectionManagerInternal;->alreadyAppUsedPacket:Z

    return v0
.end method

.method public getBlockPacketMenuProcess()Z
    .locals 3

    .prologue
    .line 71
    const-string v0, "LGE_DCM_INT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",blockPacketMenuFlag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/telephony/DataConnectionManagerInternal;->blockPacketMenuFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    sget-boolean v0, Lcom/android/internal/telephony/DataConnectionManagerInternal;->blockPacketMenuFlag:Z

    return v0
.end method

.method public declared-synchronized getRouteList_debug()V
    .locals 11

    .prologue
    .line 122
    monitor-enter p0

    const/4 v7, 0x0

    .line 125
    .local v7, ret_value:Z
    :try_start_0
    const-string/jumbo v8, "network_management"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 126
    .local v4, network_b:Landroid/os/IBinder;
    invoke-static {v4}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v5

    .line 127
    .local v5, network_service:Landroid/os/INetworkManagementService;
    const-string v8, "connectivity"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 128
    .local v0, bc:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 130
    .local v1, cm:Landroid/net/IConnectivityManager;
    const/4 v3, 0x0

    .line 131
    .local v3, ifacename:Ljava/lang/String;
    const/4 v6, 0x0

    .line 134
    .local v6, props:Landroid/net/LinkProperties;
    const/4 v8, 0x0

    :try_start_1
    invoke-interface {v1, v8}, Landroid/net/IConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v6

    .line 135
    invoke-virtual {v6}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 140
    :goto_0
    :try_start_2
    const-string v8, "LGE_DCM_INT"

    const-string v9, "getRouteList_debug  :::: "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 142
    :try_start_3
    invoke-interface {v5, v3}, Landroid/os/INetworkManagementService;->getRouteList_debug(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 148
    :goto_1
    :try_start_4
    const-string v8, "LGE_DCM_INT"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getRouteList_debug  ret_value :: :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 149
    monitor-exit p0

    return-void

    .line 144
    :catch_0
    move-exception v2

    .line 145
    .local v2, e:Ljava/lang/Exception;
    :try_start_5
    const-string v8, "LGE_DCM_INT"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getRouteList_debug exception = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 122
    .end local v0           #bc:Landroid/os/IBinder;
    .end local v1           #cm:Landroid/net/IConnectivityManager;
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #ifacename:Ljava/lang/String;
    .end local v4           #network_b:Landroid/os/IBinder;
    .end local v5           #network_service:Landroid/os/INetworkManagementService;
    .end local v6           #props:Landroid/net/LinkProperties;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 137
    .restart local v0       #bc:Landroid/os/IBinder;
    .restart local v1       #cm:Landroid/net/IConnectivityManager;
    .restart local v3       #ifacename:Ljava/lang/String;
    .restart local v4       #network_b:Landroid/os/IBinder;
    .restart local v5       #network_service:Landroid/os/INetworkManagementService;
    .restart local v6       #props:Landroid/net/LinkProperties;
    :catch_1
    move-exception v8

    goto :goto_0
.end method

.method public isVoiceAliveAndForground(Z)Z
    .locals 4
    .parameter "controled"

    .prologue
    .line 93
    const/4 v0, 0x0

    .line 95
    .local v0, fast_dorm_ok:Z
    if-eqz p1, :cond_0

    .line 97
    const/4 v0, 0x1

    .line 99
    :cond_0
    const-string v1, "LGE_DCM_INT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ",isVoiceAliveAndForground = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return v0
.end method

.method public setAlreadyAppUsedPacket(Z)V
    .locals 3
    .parameter "used"

    .prologue
    .line 87
    sput-boolean p1, Lcom/android/internal/telephony/DataConnectionManagerInternal;->alreadyAppUsedPacket:Z

    .line 88
    const-string v0, "LGE_DCM_INT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",alreadyAppUsedPacket = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/telephony/DataConnectionManagerInternal;->alreadyAppUsedPacket:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void
.end method

.method public setBlockPacketMenuProcess(Z)V
    .locals 3
    .parameter "block"

    .prologue
    .line 76
    sput-boolean p1, Lcom/android/internal/telephony/DataConnectionManagerInternal;->blockPacketMenuFlag:Z

    .line 77
    const-string v0, "LGE_DCM_INT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",blockPacketMenuFlag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/telephony/DataConnectionManagerInternal;->blockPacketMenuFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-void
.end method
