.class public final Lcom/broadcom/bt/service/gatt/BluetoothGattService;
.super Lcom/broadcom/bt/service/framework/BaseService;
.source "BluetoothGattService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;
    }
.end annotation


# static fields
.field private static final D:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothGattService"

.field private static final V:Z = true

.field private static mBLEConnectionCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAttrConvMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mClientInitialCallbackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/broadcom/bt/le/api/GattClientContext;",
            ">;"
        }
    .end annotation
.end field

.field private mDirtyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/broadcom/bt/le/api/CharacteristicContext;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabled:Z

.field private mIsFinish:Z

.field private mServerCallbackMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/broadcom/bt/le/api/GattServerContext;",
            ">;"
        }
    .end annotation
.end field

.field private mServerInitialCallbackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/broadcom/bt/le/api/GattServerContext;",
            ">;"
        }
    .end annotation
.end field

.field private mServerProfileCallbackMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/broadcom/bt/service/gatt/BluetoothGattID;",
            "Lcom/broadcom/bt/le/api/IBleProfileEventCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mSvcInstanceIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/broadcom/bt/service/gatt/BluetoothGattID;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mserIftoUuidMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/broadcom/bt/service/gatt/BluetoothGattID;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mBLEConnectionCache:Ljava/util/ArrayList;

    .line 87
    invoke-static {}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->classInitNative()V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/framework/BaseService;-><init>(Landroid/content/Context;)V

    .line 92
    iput-boolean v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mIsFinish:Z

    .line 93
    iput-boolean v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mEnabled:Z

    .line 94
    return-void
.end method

.method private native GATTServer_AddCharDescriptorNative(IIJJI)V
.end method

.method private native GATTServer_AddCharacteristicNative(IIJJII)V
.end method

.method private native GATTServer_AddIncludedServiceNative(II)V
.end method

.method private GATTServer_AppDeregister(I)V
    .locals 2
    .parameter "serIf"

    .prologue
    .line 1683
    const-string v0, "BluetoothGattService"

    const-string v1, "GATTServer_AppDeregister"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->GATTServer_AppDeregisterNative(I)V

    .line 1685
    return-void
.end method

.method private native GATTServer_AppDeregisterNative(I)V
.end method

.method private GATTServer_AppRegister(IJJ)V
    .locals 3
    .parameter "type"
    .parameter "appUuidLsb"
    .parameter "appUuidMsb"

    .prologue
    .line 1675
    const-string v0, "BluetoothGattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GATTServer_AppRegister uuid lsb is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msb is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    invoke-direct/range {p0 .. p5}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->GATTServer_AppRegisterNative(IJJ)V

    .line 1678
    return-void
.end method

.method private native GATTServer_AppRegisterNative(IJJ)V
.end method

.method private native GATTServer_CancelOpenNative(BLjava/lang/String;Z)V
.end method

.method private native GATTServer_CloseNative(I)V
.end method

.method private native GATTServer_CreateServiceNative(BIJJIIZ)V
.end method

.method private native GATTServer_DeleteServiceNative(I)V
.end method

.method private native GATTServer_HandleValueIndicationNative(II[B)V
.end method

.method private native GATTServer_HandleValueNotificationNative(II[B)V
.end method

.method private native GATTServer_OpenNative(BLjava/lang/String;Z)V
.end method

.method private native GATTServer_SendRspNative(IIBII[BBZ)V
.end method

.method private native GATTServer_StartServiceNative(IB)V
.end method

.method private native GATTServer_StopServiceNative(I)V
.end method

.method private static native classInitNative()V
.end method

.method private native closeNative(BLjava/lang/String;IZ)V
.end method

.method private native deregisterForNotificationsNative(BLjava/lang/String;IIIJJIIJJ)V
.end method

.method private native disableNative()V
.end method

.method private native enableNative()V
.end method

.method private native executeWriteNative(IZ)V
.end method

.method private native filterEnableNative(ZZILjava/lang/String;)V
.end method

.method private findAllContextsByAddress(Ljava/lang/String;)[Lcom/broadcom/bt/le/api/GattClientContext;
    .locals 8
    .parameter "address"

    .prologue
    .line 323
    const-string v4, "BluetoothGattService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "findcontextByAddress "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 326
    .local v1, clientContext:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/broadcom/bt/le/api/GattClientContext;>;"
    iget-object v5, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mClientInitialCallbackList:Ljava/util/ArrayList;

    monitor-enter v5

    .line 327
    :try_start_0
    iget-object v4, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mClientInitialCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/le/api/GattClientContext;

    .line 329
    .local v0, c:Lcom/broadcom/bt/le/api/GattClientContext;
    invoke-virtual {v0}, Lcom/broadcom/bt/le/api/GattClientContext;->getPeerAddress()Ljava/lang/String;

    move-result-object v3

    .line 330
    .local v3, peerAddress:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 331
    invoke-virtual {v0}, Lcom/broadcom/bt/le/api/GattClientContext;->getPeerAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 332
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    const-string v4, "BluetoothGattService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "findAllContextsByAddress found context for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 339
    .end local v0           #c:Lcom/broadcom/bt/le/api/GattClientContext;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #peerAddress:Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 341
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lcom/broadcom/bt/le/api/GattClientContext;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/broadcom/bt/le/api/GattClientContext;

    return-object v4
.end method

.method private findCachedConnection(ILjava/lang/String;)Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;
    .locals 5
    .parameter "connId"
    .parameter "address"

    .prologue
    .line 1036
    const-string v2, "BluetoothGattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findCachedConnection: connId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", address = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v2, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mBLEConnectionCache:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1039
    sget-object v2, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mBLEConnectionCache:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;

    .line 1040
    .local v0, connDevice:Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;
    const-string v2, "BluetoothGattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findCachedConnection:  index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " address = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;->mremoteAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] connId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;->mconnId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    iget v2, v0, Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;->mconnId:I

    if-ne v2, p1, :cond_0

    iget-object v2, v0, Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;->mremoteAddress:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1045
    const-string v2, "BluetoothGattService"

    const-string v3, "findCachedConnection: connection found"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    .end local v0           #connDevice:Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;
    :goto_1
    return-object v0

    .line 1038
    .restart local v0       #connDevice:Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1049
    .end local v0           #connDevice:Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;
    :cond_1
    const-string v2, "BluetoothGattService"

    const-string v3, "findCachedConnection: connection not found"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private findCachedConnection(Ljava/lang/String;)Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;
    .locals 5
    .parameter "address"

    .prologue
    .line 1018
    const-string v2, "BluetoothGattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findCachedConnection: address = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v2, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mBLEConnectionCache:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1020
    sget-object v2, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mBLEConnectionCache:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;

    .line 1021
    .local v0, connDevice:Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;
    const-string v2, "BluetoothGattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findCachedConnection:  index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " address = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;->mremoteAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] connId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;->mconnId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    iget-object v2, v0, Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;->mremoteAddress:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;->mconnId:I

    const v3, 0xffff

    if-eq v2, v3, :cond_0

    .line 1026
    const-string v2, "BluetoothGattService"

    const-string v3, "findCachedConnection: connection found"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    .end local v0           #connDevice:Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;
    :goto_1
    return-object v0

    .line 1019
    .restart local v0       #connDevice:Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1030
    .end local v0           #connDevice:Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;
    :cond_1
    const-string v2, "BluetoothGattService"

    const-string v3, "findCachedConnection: connection not found"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private findContextByAppId(Lcom/broadcom/bt/service/gatt/BluetoothGattID;)Lcom/broadcom/bt/le/api/GattClientContext;
    .locals 7
    .parameter "appId"

    .prologue
    .line 307
    const-string v3, "BluetoothGattService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findcontextByAppId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const/4 v2, 0x0

    .line 309
    .local v2, ret:Lcom/broadcom/bt/le/api/GattClientContext;
    iget-object v4, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mClientInitialCallbackList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 310
    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mClientInitialCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/le/api/GattClientContext;

    .line 312
    .local v0, c:Lcom/broadcom/bt/le/api/GattClientContext;
    iget-object v3, v0, Lcom/broadcom/bt/le/api/GattClientContext;->mClientAppId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    invoke-virtual {v3, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 313
    const-string v3, "BluetoothGattService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "findcontextByAppId found context for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    move-object v2, v0

    .line 318
    .end local v0           #c:Lcom/broadcom/bt/le/api/GattClientContext;
    :cond_1
    monitor-exit v4

    .line 319
    return-object v2

    .line 318
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private findContextByClientIf(I)Lcom/broadcom/bt/le/api/GattClientContext;
    .locals 7
    .parameter "clientIf"

    .prologue
    .line 289
    const-string v3, "BluetoothGattService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findcontextByclientIf "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const/4 v2, 0x0

    .line 291
    .local v2, ret:Lcom/broadcom/bt/le/api/GattClientContext;
    iget-object v4, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mClientInitialCallbackList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 292
    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mClientInitialCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/le/api/GattClientContext;

    .line 294
    .local v0, c:Lcom/broadcom/bt/le/api/GattClientContext;
    iget-byte v3, v0, Lcom/broadcom/bt/le/api/GattClientContext;->mClientIf:B

    if-ne v3, p1, :cond_0

    .line 295
    const-string v3, "BluetoothGattService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "findcontextByclientIf found context for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    move-object v2, v0

    .line 301
    .end local v0           #c:Lcom/broadcom/bt/le/api/GattClientContext;
    :cond_1
    monitor-exit v4

    .line 302
    return-object v2

    .line 301
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private findContextByConnID(I)Lcom/broadcom/bt/le/api/GattClientContext;
    .locals 7
    .parameter "connID"

    .prologue
    .line 271
    const-string v3, "BluetoothGattService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findContextByConnID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const/4 v2, 0x0

    .line 274
    .local v2, ret:Lcom/broadcom/bt/le/api/GattClientContext;
    iget-object v4, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mClientInitialCallbackList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 275
    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mClientInitialCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/le/api/GattClientContext;

    .line 277
    .local v0, c:Lcom/broadcom/bt/le/api/GattClientContext;
    invoke-virtual {v0}, Lcom/broadcom/bt/le/api/GattClientContext;->getConnID()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 278
    const-string v3, "BluetoothGattService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "findcontextByconnID found context for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    move-object v2, v0

    .line 284
    .end local v0           #c:Lcom/broadcom/bt/le/api/GattClientContext;
    :cond_1
    monitor-exit v4

    .line 285
    return-object v2

    .line 284
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private findcontextByAddress(Ljava/lang/String;)Lcom/broadcom/bt/le/api/GattClientContext;
    .locals 8
    .parameter "address"

    .prologue
    .line 345
    const-string v4, "BluetoothGattService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "findcontextByAddress "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const/4 v3, 0x0

    .line 347
    .local v3, ret:Lcom/broadcom/bt/le/api/GattClientContext;
    iget-object v5, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mClientInitialCallbackList:Ljava/util/ArrayList;

    monitor-enter v5

    .line 348
    :try_start_0
    iget-object v4, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mClientInitialCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/le/api/GattClientContext;

    .line 350
    .local v0, c:Lcom/broadcom/bt/le/api/GattClientContext;
    invoke-virtual {v0}, Lcom/broadcom/bt/le/api/GattClientContext;->getPeerAddress()Ljava/lang/String;

    move-result-object v2

    .line 351
    .local v2, peerAddress:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 352
    invoke-virtual {v0}, Lcom/broadcom/bt/le/api/GattClientContext;->getPeerAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 353
    const-string v4, "BluetoothGattService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "findcontextByAddress found context for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    move-object v3, v0

    .line 360
    .end local v0           #c:Lcom/broadcom/bt/le/api/GattClientContext;
    .end local v2           #peerAddress:Ljava/lang/String;
    :cond_1
    monitor-exit v5

    .line 361
    return-object v3

    .line 360
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private native getFirstCharDescrNative(IIIIZ[I[J)V
.end method

.method private native getFirstCharNative(IIIIJJZIJJ)V
.end method

.method private native getFirstIncludedServiceNative(IIIIJJZIJJ)V
.end method

.method private native getNextCharDescrNative(IIIIZ[I[J)V
.end method

.method private native getNextCharNative(IIIIJJIIJJZIJJ)V
.end method

.method private native getNextIncludedServiceNative(IIIIJJIIIJJZIJJ)V
.end method

.method private native observeNative(ZI)V
.end method

.method private native openNative(BLjava/lang/String;Z)V
.end method

.method private native prepareWriteNative(IIIIJJIIJJII[B)V
.end method

.method private native readCharDescrNative(IIIIJJIIJJIJJB)V
.end method

.method private native readCharNative(IIIIJJIIJJB)V
.end method

.method private native registerAppNative(IJJ)V
.end method

.method private native registerForNotificationsNative(BLjava/lang/String;IIIJJIIJJ)V
.end method

.method private removeCachedConnection(ILjava/lang/String;)Z
    .locals 6
    .parameter "connId"
    .parameter "address"

    .prologue
    const/4 v2, 0x1

    .line 1054
    const-string v3, "BluetoothGattService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeCachedConnection: connId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", address = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v3, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mBLEConnectionCache:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1057
    sget-object v3, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mBLEConnectionCache:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;

    .line 1058
    .local v0, connDevice:Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;
    iget-object v3, v0, Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;->mremoteAddress:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1059
    iget v3, v0, Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;->mconnId:I

    if-ne v3, p1, :cond_0

    iget-object v3, v0, Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;->mremoteAddress:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v2, :cond_0

    .line 1061
    const-string v3, "BluetoothGattService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeCachedConnection: removed connId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", address = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    sget-object v3, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mBLEConnectionCache:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1070
    .end local v0           #connDevice:Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;
    :goto_1
    return v2

    .line 1056
    .restart local v0       #connDevice:Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1068
    .end local v0           #connDevice:Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;
    :cond_1
    const-string v2, "BluetoothGattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeCachedConnection: connId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", address = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private native searchServiceNative(IZIJJ)V
.end method

.method private native sendIndConfirmNative(IIIIJJIIJJ)V
.end method

.method private native setEncryptionNative(Ljava/lang/String;B)V
.end method

.method private native setScanParametersNative(II)V
.end method

.method private native unregisterAppNative(B)V
.end method

.method static unsignedByteToInt(B)I
    .locals 1
    .parameter "b"

    .prologue
    .line 2305
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method private native writeCharDescrValueNative(IIIIJJIIJJIJJIB[B)V
.end method

.method private native writeCharValueNative(IIIIJJIIJJIB[B)V
.end method


# virtual methods
.method public GATTServer_AddCharDescriptor(IILcom/broadcom/bt/service/gatt/BluetoothGattID;)V
    .locals 8
    .parameter "svc_handle"
    .parameter "permissions"
    .parameter "descrId"

    .prologue
    .line 1796
    const-string v0, "BluetoothGattService"

    const-string v1, "GATTServer_AddCharDescriptor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1798
    invoke-virtual {p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1799
    invoke-virtual {p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v2

    invoke-virtual {p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuid16()I

    move-result v0

    int-to-long v3, v0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->GATTServer_AddCharDescriptorNative(IIJJI)V

    .line 1807
    :goto_0
    return-void

    .line 1802
    :cond_0
    invoke-virtual {p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v2

    invoke-virtual {p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v3

    invoke-virtual {p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v5

    move-object v0, p0

    move v1, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->GATTServer_AddCharDescriptorNative(IIJJI)V

    goto :goto_0
.end method

.method public GATTServer_AddCharacteristic(ILcom/broadcom/bt/service/gatt/BluetoothGattID;IIZI)V
    .locals 8
    .parameter "svcHandle"
    .parameter "charId"
    .parameter "permissions"
    .parameter "charProperty"
    .parameter "dirtyFlag"
    .parameter "dirtyDescNum"

    .prologue
    .line 1732
    const-string v0, "BluetoothGattService"

    const-string v1, "GATTServer_AddCharacteristic"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->GATTServer_AddCharacteristic(ILcom/broadcom/bt/service/gatt/BluetoothGattID;IIZIZ)V

    .line 1735
    return-void
.end method

.method public GATTServer_AddCharacteristic(ILcom/broadcom/bt/service/gatt/BluetoothGattID;IIZIZ)V
    .locals 10
    .parameter "svcHandle"
    .parameter "charId"
    .parameter "permissions"
    .parameter "charProperty"
    .parameter "dirtyFlag"
    .parameter "dirtyDescNum"
    .parameter "waitQueueCheck"

    .prologue
    .line 1740
    const-string v1, "BluetoothGattService"

    const-string v2, "GATTServer_AddCharacteristic with waitQueueCheck"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1741
    new-instance v0, Lcom/broadcom/bt/le/api/CharacteristicContext;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/broadcom/bt/le/api/CharacteristicContext;-><init>(ILcom/broadcom/bt/service/gatt/BluetoothGattID;IIZI)V

    .line 1744
    .local v0, context:Lcom/broadcom/bt/le/api/CharacteristicContext;
    if-eqz p7, :cond_1

    .line 1745
    monitor-enter p0

    .line 1746
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mDirtyList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1747
    iget-object v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mDirtyList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 1748
    const-string v1, "BluetoothGattService"

    const-string v2, "Queuing up the characteristic.."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    monitor-exit p0

    .line 1764
    :goto_0
    return-void

    .line 1751
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1754
    :cond_1
    invoke-virtual {p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 1755
    const-string v1, "BluetoothGattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Uuid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuid16()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1756
    invoke-virtual {p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v3

    invoke-virtual {p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuid16()I

    move-result v1

    int-to-long v4, v1

    const-wide/16 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v8, p3

    move v9, p4

    invoke-direct/range {v1 .. v9}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->GATTServer_AddCharacteristicNative(IIJJII)V

    goto :goto_0

    .line 1751
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1759
    :cond_2
    invoke-virtual {p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v3

    invoke-virtual {p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v4

    invoke-virtual {p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v6

    move-object v1, p0

    move v2, p1

    move v8, p3

    move v9, p4

    invoke-direct/range {v1 .. v9}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->GATTServer_AddCharacteristicNative(IIJJII)V

    goto :goto_0
.end method

.method public GATTServer_AddIncludedService(II)V
    .locals 2
    .parameter "svcHandle"
    .parameter "includedSvcHandle"

    .prologue
    .line 1720
    const-string v0, "BluetoothGattService"

    const-string v1, "GATTServer_AddIncludedService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->GATTServer_AddIncludedServiceNative(II)V

    .line 1723
    return-void
.end method

.method public GATTServer_CancelOpen(BLjava/lang/String;Z)V
    .locals 2
    .parameter "serIf"
    .parameter "address"
    .parameter "isDirect"

    .prologue
    .line 1779
    const-string v0, "BluetoothGattService"

    const-string v1, "GATTServer_CancelOpen"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->GATTServer_CancelOpenNative(BLjava/lang/String;Z)V

    .line 1781
    return-void
.end method

.method public GATTServer_Close(I)V
    .locals 2
    .parameter "connId"

    .prologue
    .line 1786
    const-string v0, "BluetoothGattService"

    const-string v1, "GATTServer_close"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1787
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->GATTServer_CloseNative(I)V

    .line 1788
    return-void
.end method

.method public declared-synchronized GATTServer_CreateService(BLcom/broadcom/bt/service/gatt/BluetoothGattID;I)V
    .locals 20
    .parameter "serIf"
    .parameter "svcId"
    .parameter "numHandles"

    .prologue
    .line 1694
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothGattService"

    const-string v1, "GATTServer_CreateService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    const/4 v9, 0x0

    .line 1696
    .local v9, isPrimary:Z
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v2

    .line 1697
    .local v2, uuidType:I
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getServiceType()I

    move-result v0

    if-nez v0, :cond_0

    .line 1698
    const/4 v9, 0x1

    .line 1701
    :cond_0
    const/4 v0, 0x2

    if-ne v2, v0, :cond_1

    .line 1702
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuid16()I

    move-result v0

    int-to-long v3, v0

    .line 1703
    .local v3, lsb:J
    const-string v0, "BluetoothGattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uuid type =16 id is 0x"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "%x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "InstanceId ="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getInstanceID()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "isPrimary="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getServiceType()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    const-wide/16 v5, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getInstanceID()I

    move-result v7

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v8, p3

    invoke-direct/range {v0 .. v9}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->GATTServer_CreateServiceNative(BIJJIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1713
    .end local v3           #lsb:J
    :goto_0
    monitor-exit p0

    return-void

    .line 1707
    :cond_1
    :try_start_1
    const-string v0, "BluetoothGattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uuid type =128 id is "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v13

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v15

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getInstanceID()I

    move-result v17

    move-object/from16 v10, p0

    move/from16 v11, p1

    move v12, v2

    move/from16 v18, p3

    move/from16 v19, v9

    invoke-direct/range {v10 .. v19}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->GATTServer_CreateServiceNative(BIJJIIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1694
    .end local v2           #uuidType:I
    .end local v9           #isPrimary:Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public GATTServer_DeleteService(I)V
    .locals 2
    .parameter "svcHandle"

    .prologue
    .line 1813
    const-string v0, "BluetoothGattService"

    const-string v1, "GATTServer_DeleteService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1814
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->GATTServer_DeleteServiceNative(I)V

    .line 1816
    return-void
.end method

.method public GATTServer_HandleValueIndication(II[B)V
    .locals 2
    .parameter "connId"
    .parameter "attrHandle"
    .parameter "val"

    .prologue
    .line 1839
    const-string v0, "BluetoothGattService"

    const-string v1, "GATTServer_HandleValueIndication"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->GATTServer_HandleValueIndicationNative(II[B)V

    .line 1842
    return-void
.end method

.method public GATTServer_HandleValueNotification(II[B)V
    .locals 2
    .parameter "connId"
    .parameter "attrHandle"
    .parameter "val"

    .prologue
    .line 1850
    const-string v0, "BluetoothGattService"

    const-string v1, "GATTServer_HandleValueNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->GATTServer_HandleValueNotificationNative(II[B)V

    .line 1852
    return-void
.end method

.method public GATTServer_Open(BLjava/lang/String;Z)V
    .locals 2
    .parameter "serIf"
    .parameter "address"
    .parameter "isDirect"

    .prologue
    .line 1770
    const-string v0, "BluetoothGattService"

    const-string v1, "GATTServer_Open"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->GATTServer_OpenNative(BLjava/lang/String;Z)V

    .line 1772
    return-void
.end method

.method public GATTServer_SendRsp(IIBII[BBZ)V
    .locals 2
    .parameter "connId"
    .parameter "transId"
    .parameter "response_status"
    .parameter "handle"
    .parameter "offset"
    .parameter "val"
    .parameter "authReq"
    .parameter "writeReq"

    .prologue
    .line 1861
    const-string v0, "BluetoothGattService"

    const-string v1, "GATTServer_SendRsp"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    invoke-direct/range {p0 .. p8}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->GATTServer_SendRspNative(IIBII[BBZ)V

    .line 1864
    return-void
.end method

.method public GATTServer_StartService(IB)V
    .locals 2
    .parameter "svcHandle"
    .parameter "supTransport"

    .prologue
    .line 1822
    const-string v0, "BluetoothGattService"

    const-string v1, "GATTServer_StartService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1823
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->GATTServer_StartServiceNative(IB)V

    .line 1824
    return-void
.end method

.method public GATTServer_StopService(I)V
    .locals 2
    .parameter "svcHandle"

    .prologue
    .line 1829
    const-string v0, "BluetoothGattService"

    const-string v1, "GATTServer_StopService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->GATTServer_StopServiceNative(I)V

    .line 1831
    return-void
.end method

.method public native cleanupNative()V
.end method

.method public clearManufacturerData()V
    .locals 0

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->clearManufacturerDataNative()V

    .line 238
    return-void
.end method

.method public native clearManufacturerDataNative()V
.end method

.method public close(BLjava/lang/String;IZ)V
    .locals 0
    .parameter "clientIf"
    .parameter "address"
    .parameter "connId"
    .parameter "isDirect"

    .prologue
    .line 267
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->closeNative(BLjava/lang/String;IZ)V

    .line 268
    return-void
.end method

.method public deregisterForNotifications(BLjava/lang/String;Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;)V
    .locals 16
    .parameter "clientIf"
    .parameter "address"
    .parameter "charId"

    .prologue
    .line 879
    invoke-virtual/range {p3 .. p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getInstanceID()I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getServiceType()I

    move-result v4

    invoke-virtual/range {p3 .. p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v5

    invoke-virtual/range {p3 .. p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v6

    invoke-virtual/range {p3 .. p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v8

    invoke-virtual/range {p3 .. p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getInstanceID()I

    move-result v10

    invoke-virtual/range {p3 .. p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v11

    invoke-virtual/range {p3 .. p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v12

    invoke-virtual/range {p3 .. p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v14

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v15}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->deregisterForNotificationsNative(BLjava/lang/String;IIIJJIIJJ)V

    .line 889
    return-void
.end method

.method public declared-synchronized disable()V
    .locals 3

    .prologue
    .line 161
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothGattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disable: enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-boolean v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mEnabled:Z

    .line 164
    invoke-direct {p0}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->disableNative()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    :cond_0
    monitor-exit p0

    return-void

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized enable()V
    .locals 3

    .prologue
    .line 151
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothGattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable: mEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-boolean v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mEnabled:Z

    if-nez v0, :cond_0

    .line 153
    invoke-direct {p0}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->enableNative()V

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    :cond_0
    monitor-exit p0

    return-void

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public executeWrite(IZ)V
    .locals 0
    .parameter "connId"
    .parameter "isExecute"

    .prologue
    .line 845
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->executeWriteNative(IZ)V

    .line 846
    return-void
.end method

.method public filterEnable(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    const/4 v3, 0x0

    .line 219
    const-string v0, "BluetoothGattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "filterEnable enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const-string v0, ""

    invoke-direct {p0, p1, v3, v3, v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->filterEnableNative(ZZILjava/lang/String;)V

    .line 221
    return-void
.end method

.method public filterEnableBDA(ZILjava/lang/String;)V
    .locals 3
    .parameter "enable"
    .parameter "addr_type"
    .parameter "address"

    .prologue
    .line 223
    const-string v0, "BluetoothGattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "filterEnable enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", address = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->filterEnableNative(ZZILjava/lang/String;)V

    .line 225
    return-void
.end method

.method public filterManufacturerData(I[B[B[B[B)V
    .locals 9
    .parameter "company"
    .parameter "data1"
    .parameter "data2"
    .parameter "data3"
    .parameter "data4"

    .prologue
    const/4 v6, 0x0

    .line 228
    const-string v0, "BluetoothGattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "filterManufacturerData data length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const-string v8, ""

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v7, v6

    invoke-virtual/range {v0 .. v8}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->filterManufacturerDataNative(I[B[B[B[BZILjava/lang/String;)V

    .line 230
    return-void
.end method

.method public filterManufacturerDataBDA(I[B[B[B[BZILjava/lang/String;)V
    .locals 10
    .parameter "company"
    .parameter "data1"
    .parameter "data2"
    .parameter "data3"
    .parameter "data4"
    .parameter "has_bda"
    .parameter "addr_type"
    .parameter "address"

    .prologue
    .line 232
    const-string v1, "BluetoothGattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "filterManufacturerDataBDA address = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", data length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const/4 v7, 0x1

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->filterManufacturerDataNative(I[B[B[B[BZILjava/lang/String;)V

    .line 234
    return-void
.end method

.method public native filterManufacturerDataNative(I[B[B[B[BZILjava/lang/String;)V
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 142
    const-string v0, "BluetoothGattService"

    const-string v1, "finalize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {p0}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->finish()V

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mIsFinish:Z

    .line 145
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 146
    return-void
.end method

.method public declared-synchronized finish()V
    .locals 3

    .prologue
    .line 130
    monitor-enter p0

    :try_start_0
    const-string v1, "BluetoothGattService"

    const-string v2, "finish"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-boolean v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mIsFinish:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 133
    :try_start_1
    invoke-virtual {p0}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->cleanupNative()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 137
    :goto_0
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mIsFinish:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    :cond_0
    monitor-exit p0

    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, t:Ljava/lang/Throwable;
    :try_start_3
    const-string v1, "BluetoothGattService"

    const-string v2, "Unable to cleanup gatt service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 130
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getFirstChar(ILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V
    .locals 17
    .parameter "connId"
    .parameter "serviceId"
    .parameter "condCharUuid"

    .prologue
    .line 451
    if-nez p3, :cond_2

    const/4 v10, 0x1

    .line 452
    .local v10, find_first:Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getInstanceID()I

    move-result v3

    .line 453
    .local v3, serviceIdInstId:I
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getServiceType()I

    move-result v4

    .line 454
    .local v4, serviceType:I
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v5

    .line 455
    .local v5, srvcUuidType:I
    const-wide/16 v6, 0x0

    .line 456
    .local v6, serviceIdUuidLsb:J
    const-wide/16 v8, 0x0

    .line 457
    .local v8, serviceIdUuidMsb:J
    const/4 v11, 0x0

    .line 458
    .local v11, charUuidType:I
    const-wide/16 v12, 0x0

    .line 459
    .local v12, condCharUuidLsb:J
    const-wide/16 v14, 0x0

    .line 461
    .local v14, condCharUuidMsb:J
    const-string v1, "BluetoothGattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getFirstChar: connId = "

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v16, " find_first = "

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v16, " serviceType = "

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    if-nez v10, :cond_0

    .line 464
    invoke-virtual/range {p3 .. p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v11

    .line 467
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v6

    .line 468
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v8

    .line 470
    if-nez v10, :cond_1

    .line 471
    invoke-virtual/range {p3 .. p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v12

    .line 472
    invoke-virtual/range {p3 .. p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v14

    :cond_1
    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 475
    invoke-direct/range {v1 .. v15}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->getFirstCharNative(IIIIJJZIJJ)V

    .line 479
    return-void

    .line 451
    .end local v3           #serviceIdInstId:I
    .end local v4           #serviceType:I
    .end local v5           #srvcUuidType:I
    .end local v6           #serviceIdUuidLsb:J
    .end local v8           #serviceIdUuidMsb:J
    .end local v10           #find_first:Z
    .end local v11           #charUuidType:I
    .end local v12           #condCharUuidLsb:J
    .end local v14           #condCharUuidMsb:J
    :cond_2
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public getFirstCharDescr(ILcom/broadcom/bt/service/gatt/BluetoothGattCharID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V
    .locals 12
    .parameter "connId"
    .parameter "charId"
    .parameter "condDescrUuid"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 542
    if-nez p3, :cond_1

    move v5, v0

    .line 544
    .local v5, find_first:Z
    :goto_0
    const-string v2, "BluetoothGattService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getFirstCharDescr: connId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " find_first = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    new-array v6, v11, [I

    invoke-virtual {p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v2

    invoke-virtual {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v2

    aput v2, v6, v1

    invoke-virtual {p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v2

    invoke-virtual {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v2

    aput v2, v6, v0

    if-nez v5, :cond_2

    invoke-virtual {p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v2

    :goto_1
    aput v2, v6, v10

    .line 552
    .local v6, uuid_types:[I
    const/4 v2, 0x6

    new-array v7, v2, [J

    invoke-virtual {p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v2

    invoke-virtual {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v8

    aput-wide v8, v7, v1

    invoke-virtual {p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v1

    aput-wide v1, v7, v0

    invoke-virtual {p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v0

    aput-wide v0, v7, v10

    invoke-virtual {p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v0

    aput-wide v0, v7, v11

    const/4 v2, 0x4

    if-nez v5, :cond_3

    invoke-virtual {p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v0

    :goto_2
    aput-wide v0, v7, v2

    const/4 v0, 0x5

    if-nez v5, :cond_0

    invoke-virtual {p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v3

    :cond_0
    aput-wide v3, v7, v0

    .line 566
    .local v7, uuids:[J
    invoke-virtual {p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getServiceType()I

    move-result v2

    invoke-virtual {p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getInstanceID()I

    move-result v3

    invoke-virtual {p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getInstanceID()I

    move-result v4

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->getFirstCharDescrNative(IIIIZ[I[J)V

    .line 574
    return-void

    .end local v5           #find_first:Z
    .end local v6           #uuid_types:[I
    .end local v7           #uuids:[J
    :cond_1
    move v5, v1

    .line 542
    goto/16 :goto_0

    .restart local v5       #find_first:Z
    :cond_2
    move v2, v1

    .line 546
    goto :goto_1

    .restart local v6       #uuid_types:[I
    :cond_3
    move-wide v0, v3

    .line 552
    goto :goto_2
.end method

.method public getFirstIncludedService(ILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V
    .locals 15
    .parameter "connId"
    .parameter "srvcId"
    .parameter "condSrvcUuid"

    .prologue
    .line 632
    if-nez p3, :cond_1

    const/4 v9, 0x1

    .line 634
    .local v9, find_first:Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getInstanceID()I

    move-result v2

    .line 635
    .local v2, srvc_id_inst_id:I
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getServiceType()I

    move-result v3

    .line 636
    .local v3, srvc_id_srvc_type:I
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v4

    .line 637
    .local v4, srvc_id_uuid_type:I
    const-wide/16 v5, 0x0

    .line 638
    .local v5, srvc_id_uuid_lsb:J
    const-wide/16 v7, 0x0

    .line 639
    .local v7, srvc_id_uuid_msb:J
    const/4 v10, 0x0

    .line 640
    .local v10, cond_srvc_uuid_type:I
    const-wide/16 v11, 0x0

    .line 641
    .local v11, cond_srvc_uuid_lsb:J
    const-wide/16 v13, 0x0

    .line 643
    .local v13, cond_srvc_uuid_msb:J
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v5

    .line 644
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v7

    .line 646
    if-nez v9, :cond_0

    .line 647
    invoke-virtual/range {p3 .. p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v10

    .line 648
    invoke-virtual/range {p3 .. p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v11

    .line 649
    invoke-virtual/range {p3 .. p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v13

    :cond_0
    move-object v0, p0

    move/from16 v1, p1

    .line 652
    invoke-direct/range {v0 .. v14}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->getFirstIncludedServiceNative(IIIIJJZIJJ)V

    .line 655
    return-void

    .line 632
    .end local v2           #srvc_id_inst_id:I
    .end local v3           #srvc_id_srvc_type:I
    .end local v4           #srvc_id_uuid_type:I
    .end local v5           #srvc_id_uuid_lsb:J
    .end local v7           #srvc_id_uuid_msb:J
    .end local v9           #find_first:Z
    .end local v10           #cond_srvc_uuid_type:I
    .end local v11           #cond_srvc_uuid_lsb:J
    .end local v13           #cond_srvc_uuid_msb:J
    :cond_1
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    const-string v0, "bluetooth_gatt"

    return-object v0
.end method

.method public getNextChar(ILcom/broadcom/bt/service/gatt/BluetoothGattCharID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V
    .locals 21
    .parameter "connId"
    .parameter "startCharId"
    .parameter "condCharUuid"

    .prologue
    .line 492
    if-nez p3, :cond_2

    const/4 v15, 0x1

    .line 494
    .local v15, find_first:Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getInstanceID()I

    move-result v2

    .line 495
    .local v2, startCharSrvcIdInstId:I
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getServiceType()I

    move-result v3

    .line 496
    .local v3, startCharServiceType:I
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v4

    .line 497
    .local v4, startCharSrvcUuidType:I
    const-wide/16 v5, 0x0

    .line 498
    .local v5, startCharSrvcIdUuidLsb:J
    const-wide/16 v7, 0x0

    .line 499
    .local v7, startCharSrvcIdUuidMsb:J
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getInstanceID()I

    move-result v9

    .line 500
    .local v9, startCharCharIdInstId:I
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v10

    .line 501
    .local v10, startCharCharUuidType:I
    const-wide/16 v11, 0x0

    .line 502
    .local v11, startCharCharIdUuidLsb:J
    const-wide/16 v13, 0x0

    .line 503
    .local v13, startCharCharIdUuidMsb:J
    const/16 v16, 0x0

    .line 504
    .local v16, condCharUuidType:I
    const-wide/16 v17, 0x0

    .line 505
    .local v17, condCharUuidLsb:J
    const-wide/16 v19, 0x0

    .line 508
    .local v19, condCharUuidMsb:J
    if-nez v15, :cond_0

    .line 509
    invoke-virtual/range {p3 .. p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v16

    .line 511
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v5

    .line 512
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v7

    .line 514
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v11

    .line 515
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v13

    .line 517
    if-nez v15, :cond_1

    .line 518
    invoke-virtual/range {p3 .. p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v17

    .line 519
    invoke-virtual/range {p3 .. p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v19

    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 521
    invoke-direct/range {v0 .. v20}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->getNextCharNative(IIIIJJIIJJZIJJ)V

    .line 530
    return-void

    .line 492
    .end local v2           #startCharSrvcIdInstId:I
    .end local v3           #startCharServiceType:I
    .end local v4           #startCharSrvcUuidType:I
    .end local v5           #startCharSrvcIdUuidLsb:J
    .end local v7           #startCharSrvcIdUuidMsb:J
    .end local v9           #startCharCharIdInstId:I
    .end local v10           #startCharCharUuidType:I
    .end local v11           #startCharCharIdUuidLsb:J
    .end local v13           #startCharCharIdUuidMsb:J
    .end local v15           #find_first:Z
    .end local v16           #condCharUuidType:I
    .end local v17           #condCharUuidLsb:J
    .end local v19           #condCharUuidMsb:J
    :cond_2
    const/4 v15, 0x0

    goto :goto_0
.end method

.method public getNextCharDescr(ILcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V
    .locals 11
    .parameter "connId"
    .parameter "descrId"
    .parameter "condDescrUuid"

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 586
    if-nez p3, :cond_0

    move v5, v0

    .line 588
    .local v5, find_first:Z
    :goto_0
    const-string v2, "BluetoothGattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNextCharDescr: connId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " find_first = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    new-array v6, v10, [I

    invoke-virtual {p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v2

    invoke-virtual {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v2

    aput v2, v6, v1

    invoke-virtual {p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v2

    invoke-virtual {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v2

    aput v2, v6, v0

    invoke-virtual {p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->getDescrId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v2

    invoke-virtual {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v2

    aput v2, v6, v8

    if-nez v5, :cond_1

    invoke-virtual {p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v2

    :goto_1
    aput v2, v6, v9

    .line 597
    .local v6, uuid_types:[I
    const/16 v2, 0x8

    new-array v7, v2, [J

    invoke-virtual {p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v2

    invoke-virtual {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v2

    aput-wide v2, v7, v1

    invoke-virtual {p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v1

    aput-wide v1, v7, v0

    invoke-virtual {p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v0

    aput-wide v0, v7, v8

    invoke-virtual {p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v0

    aput-wide v0, v7, v9

    invoke-virtual {p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->getDescrId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v0

    aput-wide v0, v7, v10

    const/4 v0, 0x5

    invoke-virtual {p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->getDescrId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v1

    aput-wide v1, v7, v0

    const/4 v2, 0x6

    if-nez v5, :cond_2

    invoke-virtual {p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v0

    :goto_2
    aput-wide v0, v7, v2

    const/4 v2, 0x7

    if-nez v5, :cond_3

    invoke-virtual {p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v0

    :goto_3
    aput-wide v0, v7, v2

    .line 611
    .local v7, uuids:[J
    const-string v0, "BluetoothGattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNextCharDescr - srvcid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v2

    invoke-virtual {v2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " find_first = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    invoke-virtual {p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getServiceType()I

    move-result v2

    invoke-virtual {p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getInstanceID()I

    move-result v3

    invoke-virtual {p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getInstanceID()I

    move-result v4

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->getNextCharDescrNative(IIIIZ[I[J)V

    .line 624
    return-void

    .end local v5           #find_first:Z
    .end local v6           #uuid_types:[I
    .end local v7           #uuids:[J
    :cond_0
    move v5, v1

    .line 586
    goto/16 :goto_0

    .restart local v5       #find_first:Z
    :cond_1
    move v2, v1

    .line 590
    goto/16 :goto_1

    .line 597
    .restart local v6       #uuid_types:[I
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_2

    :cond_3
    const-wide/16 v0, 0x0

    goto :goto_3
.end method

.method public getNextIncludedService(ILcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V
    .locals 22
    .parameter "connId"
    .parameter "startSrvcId"
    .parameter "condSrvcUuid"

    .prologue
    .line 668
    if-nez p3, :cond_1

    const/16 v16, 0x1

    .line 669
    .local v16, find_first:Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getInstanceID()I

    move-result v2

    .line 670
    .local v2, start_srvc_srvc_id_inst_id:I
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getServiceType()I

    move-result v3

    .line 671
    .local v3, start_srvc_srvc_id_srvc_type:I
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v4

    .line 672
    .local v4, start_srvc_srvc_id_uuid_type:I
    const-wide/16 v5, 0x0

    .line 673
    .local v5, start_srvc_srvc_id_uuid_lsb:J
    const-wide/16 v7, 0x0

    .line 674
    .local v7, start_srvc_srvc_id_uuid_msb:J
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID;->getInclSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getInstanceID()I

    move-result v9

    .line 675
    .local v9, start_srvc_incl_srvc_id_inst_id:I
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID;->getInclSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getServiceType()I

    move-result v10

    .line 676
    .local v10, start_srvc_incl_srvc_id_srvc_type:I
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID;->getInclSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v11

    .line 677
    .local v11, start_srvc_incl_srvc_id_uuid_type:I
    const-wide/16 v12, 0x0

    .line 678
    .local v12, start_srvc_incl_srvc_id_uuid_lsb:J
    const-wide/16 v14, 0x0

    .line 679
    .local v14, start_srvc_incl_srvc_id_uuid_msb:J
    const/16 v17, 0x0

    .line 680
    .local v17, cond_srvc_uuid_type:I
    const-wide/16 v18, 0x0

    .line 681
    .local v18, cond_srvc_uuid_lsb:J
    const-wide/16 v20, 0x0

    .line 683
    .local v20, cond_srvc_uuid_msb:J
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v5

    .line 684
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v7

    .line 686
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID;->getInclSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v12

    .line 687
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID;->getInclSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v14

    .line 689
    if-nez v16, :cond_0

    .line 690
    invoke-virtual/range {p3 .. p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v17

    .line 691
    invoke-virtual/range {p3 .. p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v18

    .line 692
    invoke-virtual/range {p3 .. p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v20

    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 695
    invoke-direct/range {v0 .. v21}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->getNextIncludedServiceNative(IIIIJJIIIJJZIJJ)V

    .line 703
    return-void

    .line 668
    .end local v2           #start_srvc_srvc_id_inst_id:I
    .end local v3           #start_srvc_srvc_id_srvc_type:I
    .end local v4           #start_srvc_srvc_id_uuid_type:I
    .end local v5           #start_srvc_srvc_id_uuid_lsb:J
    .end local v7           #start_srvc_srvc_id_uuid_msb:J
    .end local v9           #start_srvc_incl_srvc_id_inst_id:I
    .end local v10           #start_srvc_incl_srvc_id_srvc_type:I
    .end local v11           #start_srvc_incl_srvc_id_uuid_type:I
    .end local v12           #start_srvc_incl_srvc_id_uuid_lsb:J
    .end local v14           #start_srvc_incl_srvc_id_uuid_msb:J
    .end local v16           #find_first:Z
    .end local v17           #cond_srvc_uuid_type:I
    .end local v18           #cond_srvc_uuid_lsb:J
    .end local v20           #cond_srvc_uuid_msb:J
    :cond_1
    const/16 v16, 0x0

    goto :goto_0
.end method

.method public declared-synchronized init()V
    .locals 2

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothGattService"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {p0}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->initNative()V

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mIsFinish:Z

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mEnabled:Z

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mServerCallbackMap:Ljava/util/HashMap;

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mAttrConvMap:Ljava/util/HashMap;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mServerInitialCallbackList:Ljava/util/ArrayList;

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mserIftoUuidMap:Ljava/util/HashMap;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mClientInitialCallbackList:Ljava/util/ArrayList;

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mServerProfileCallbackMap:Ljava/util/HashMap;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mSvcInstanceIdMap:Ljava/util/HashMap;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mDirtyList:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    monitor-exit p0

    return-void

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public native initNative()V
.end method

.method public observe(ZI)V
    .locals 3
    .parameter "start"
    .parameter "duration"

    .prologue
    .line 241
    const-string v0, "BluetoothGattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "observe start = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", duration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->observeNative(ZI)V

    .line 243
    return-void
.end method

.method public onAppDeregisterCompleted(BB)V
    .locals 2
    .parameter "status"
    .parameter "serIf"

    .prologue
    .line 1904
    const-string v0, "BluetoothGattService"

    const-string v1, "onAppDeregisterCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1905
    if-nez p1, :cond_0

    .line 1906
    iget-object v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mserIftoUuidMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1907
    :cond_0
    return-void
.end method

.method declared-synchronized onAppDeregistered(B)V
    .locals 5
    .parameter "clientIf"

    .prologue
    .line 940
    monitor-enter p0

    :try_start_0
    const-string v2, "BluetoothGattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAppDeregistered: clientIf = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->findContextByClientIf(I)Lcom/broadcom/bt/le/api/GattClientContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 944
    .local v0, c:Lcom/broadcom/bt/le/api/GattClientContext;
    if-eqz v0, :cond_1

    .line 946
    :try_start_1
    invoke-virtual {v0}, Lcom/broadcom/bt/le/api/GattClientContext;->getClientCallback()Lcom/broadcom/bt/le/api/IBleClientCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 947
    invoke-virtual {v0}, Lcom/broadcom/bt/le/api/GattClientContext;->getClientCallback()Lcom/broadcom/bt/le/api/IBleClientCallback;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/broadcom/bt/le/api/IBleClientCallback;->onAppDeregistered(B)V

    .line 948
    iget-object v2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mClientInitialCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 961
    :goto_0
    monitor-exit p0

    return-void

    .line 950
    :cond_0
    :try_start_2
    const-string v2, "BluetoothGattService"

    const-string v3, "No client callback"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 952
    :catch_0
    move-exception v1

    .line 953
    .local v1, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v2, "BluetoothGattService"

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 940
    .end local v0           #c:Lcom/broadcom/bt/le/api/GattClientContext;
    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 956
    .restart local v0       #c:Lcom/broadcom/bt/le/api/GattClientContext;
    :cond_1
    :try_start_4
    const-string v2, "BluetoothGattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAppDeregistered - error finding context for clientIf = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public onAppRegisterCompleted(BBIJJ)V
    .locals 8
    .parameter "status"
    .parameter "serIf"
    .parameter "uuidType"
    .parameter "appUuidlsb"
    .parameter "appUuidmsb"

    .prologue
    .line 1882
    const/4 v0, 0x0

    .line 1885
    .local v0, uuid:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    if-nez p1, :cond_0

    .line 1886
    new-instance v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .end local v0           #uuid:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    move-wide v1, p4

    move-wide v3, p6

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(JJI)V

    .line 1887
    .restart local v0       #uuid:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    iget-object v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mserIftoUuidMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1890
    :cond_0
    const-string v1, "BluetoothGattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "##### uuid is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " type is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1891
    iget-object v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mServerProfileCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/broadcom/bt/le/api/IBleProfileEventCallback;

    .line 1892
    .local v6, cback:Lcom/broadcom/bt/le/api/IBleProfileEventCallback;
    if-eqz v6, :cond_1

    .line 1894
    :try_start_0
    invoke-interface {v6, p1, p2}, Lcom/broadcom/bt/le/api/IBleProfileEventCallback;->onAppRegisterCompleted(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1901
    :goto_0
    return-void

    .line 1895
    :catch_0
    move-exception v7

    .line 1896
    .local v7, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothGattService"

    const-string v2, "onAppRegisterCompleted()"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1899
    .end local v7           #t:Ljava/lang/Throwable;
    :cond_1
    const-string v1, "BluetoothGattService"

    const-string v2, "Could n\'t find the application callback..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method onAppRegistered(BIJJB)V
    .locals 6
    .parameter "status"
    .parameter "uuidType"
    .parameter "appuuidlsb"
    .parameter "appuuidmsb"
    .parameter "clientIf"

    .prologue
    .line 906
    const/4 v2, 0x0

    .line 909
    .local v2, uuid:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    if-nez p1, :cond_0

    .line 910
    const/16 v3, 0x10

    if-ne p2, v3, :cond_1

    .line 911
    new-instance v2, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .end local v2           #uuid:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    new-instance v3, Ljava/util/UUID;

    invoke-direct {v3, p5, p6, p3, p4}, Ljava/util/UUID;-><init>(JJ)V

    invoke-direct {v2, v3}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(Ljava/util/UUID;)V

    .line 916
    .restart local v2       #uuid:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :cond_0
    :goto_0
    const-string v3, "BluetoothGattService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCltAppRegistered: status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " clientIf = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    invoke-direct {p0, v2}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->findContextByAppId(Lcom/broadcom/bt/service/gatt/BluetoothGattID;)Lcom/broadcom/bt/le/api/GattClientContext;

    move-result-object v0

    .line 921
    .local v0, c:Lcom/broadcom/bt/le/api/GattClientContext;
    if-eqz v0, :cond_3

    .line 924
    :try_start_0
    iput-byte p7, v0, Lcom/broadcom/bt/le/api/GattClientContext;->mClientIf:B

    .line 925
    invoke-virtual {v0}, Lcom/broadcom/bt/le/api/GattClientContext;->getClientCallback()Lcom/broadcom/bt/le/api/IBleClientCallback;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 926
    invoke-virtual {v0}, Lcom/broadcom/bt/le/api/GattClientContext;->getClientCallback()Lcom/broadcom/bt/le/api/IBleClientCallback;

    move-result-object v3

    invoke-interface {v3, p1, p7}, Lcom/broadcom/bt/le/api/IBleClientCallback;->onAppRegistered(BB)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 936
    :goto_1
    return-void

    .line 913
    .end local v0           #c:Lcom/broadcom/bt/le/api/GattClientContext;
    :cond_1
    new-instance v2, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .end local v2           #uuid:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    long-to-int v3, p3

    invoke-direct {v2, v3}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(I)V

    .restart local v2       #uuid:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_0

    .line 928
    .restart local v0       #c:Lcom/broadcom/bt/le/api/GattClientContext;
    :cond_2
    :try_start_1
    const-string v3, "BluetoothGattService"

    const-string v4, "No client callback"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 930
    :catch_0
    move-exception v1

    .line 931
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "BluetoothGattService"

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 934
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_3
    const-string v3, "BluetoothGattService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onAppRegistered - error finding context for appid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onAttributeExecWrite(Ljava/lang/String;III)V
    .locals 7
    .parameter "address"
    .parameter "connId"
    .parameter "transId"
    .parameter "execWrite"

    .prologue
    .line 2253
    const-string v4, "BluetoothGattService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onAttributeExecWrite: addr = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", connId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", transId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", execWrite = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2258
    iget-object v4, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mServerCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2260
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/broadcom/bt/le/api/GattServerContext;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/le/api/GattServerContext;

    .line 2261
    .local v0, ctxt:Lcom/broadcom/bt/le/api/GattServerContext;
    if-eqz v0, :cond_0

    .line 2263
    :try_start_0
    iget-object v4, v0, Lcom/broadcom/bt/le/api/GattServerContext;->mCallback:Lcom/broadcom/bt/le/api/IBleServiceCallback;

    invoke-interface {v4, p1, p2, p3, p4}, Lcom/broadcom/bt/le/api/IBleServiceCallback;->onAttributeExecWrite(Ljava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2265
    :catch_0
    move-exception v3

    .line 2266
    .local v3, t:Ljava/lang/Throwable;
    const-string v4, "BluetoothGattService"

    const-string v5, "onAttributeExecWrite(): error"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2270
    .end local v0           #ctxt:Lcom/broadcom/bt/le/api/GattServerContext;
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/broadcom/bt/le/api/GattServerContext;>;"
    .end local v3           #t:Ljava/lang/Throwable;
    :cond_1
    return-void
.end method

.method public onAttributeMtuExchange(Ljava/lang/String;III)V
    .locals 6
    .parameter "address"
    .parameter "connId"
    .parameter "transId"
    .parameter "mtuSize"

    .prologue
    .line 2275
    const-string v3, "BluetoothGattService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onAttributeMtuExchange: addr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", connId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", transId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mtuSize = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2279
    iget-object v3, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mServerCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2281
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/broadcom/bt/le/api/GattServerContext;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/le/api/GattServerContext;

    .line 2282
    .local v0, ctxt:Lcom/broadcom/bt/le/api/GattServerContext;
    if-eqz v0, :cond_0

    goto :goto_0

    .line 2287
    .end local v0           #ctxt:Lcom/broadcom/bt/le/api/GattServerContext;
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/broadcom/bt/le/api/GattServerContext;>;"
    :cond_1
    return-void
.end method

.method public onAttributeRequestRead(Ljava/lang/String;II[Ljava/lang/String;)V
    .locals 10
    .parameter "address"
    .parameter "connId"
    .parameter "transId"
    .parameter "readAttr"

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 2175
    const-string v1, "BluetoothGattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAttributeRequestRead: addr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", connId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", transId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2177
    if-eqz p4, :cond_0

    array-length v1, p4

    if-lez v1, :cond_0

    .line 2178
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    array-length v1, p4

    if-ge v8, v1, :cond_0

    .line 2179
    const-string v1, "BluetoothGattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readAttr["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p4, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2178
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2185
    .end local v8           #i:I
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, p4, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 2186
    .local v4, attrHandle:I
    const/4 v1, 0x1

    aget-object v1, p4, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    .line 2187
    .local v6, isLong:Z
    :goto_1
    const/4 v0, 0x2

    aget-object v0, p4, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 2188
    .local v5, offset:I
    iget-object v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mServerCallbackMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mAttrConvMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/broadcom/bt/le/api/GattServerContext;

    .line 2192
    .local v7, ctxt:Lcom/broadcom/bt/le/api/GattServerContext;
    const-string v0, "BluetoothGattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAttrConvMap = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mAttrConvMap:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2193
    const-string v0, "BluetoothGattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ctxt = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2194
    const-string v1, "BluetoothGattService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ctxt.mCallback = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v7, :cond_2

    const-string v0, "NULL"

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    if-nez v7, :cond_3

    .line 2199
    const-string v0, "BluetoothGattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GattServerContext not found for attrHandle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2209
    .end local v4           #attrHandle:I
    .end local v5           #offset:I
    .end local v6           #isLong:Z
    .end local v7           #ctxt:Lcom/broadcom/bt/le/api/GattServerContext;
    :goto_3
    return-void

    .restart local v4       #attrHandle:I
    :cond_1
    move v6, v0

    .line 2186
    goto/16 :goto_1

    .line 2194
    .restart local v5       #offset:I
    .restart local v6       #isLong:Z
    .restart local v7       #ctxt:Lcom/broadcom/bt/le/api/GattServerContext;
    :cond_2
    iget-object v0, v7, Lcom/broadcom/bt/le/api/GattServerContext;->mCallback:Lcom/broadcom/bt/le/api/IBleServiceCallback;

    goto :goto_2

    .line 2202
    :cond_3
    iget-object v0, v7, Lcom/broadcom/bt/le/api/GattServerContext;->mCallback:Lcom/broadcom/bt/le/api/IBleServiceCallback;

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v6}, Lcom/broadcom/bt/le/api/IBleServiceCallback;->onAttributeRequestRead(Ljava/lang/String;IIIIZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 2206
    .end local v4           #attrHandle:I
    .end local v5           #offset:I
    .end local v6           #isLong:Z
    .end local v7           #ctxt:Lcom/broadcom/bt/le/api/GattServerContext;
    :catch_0
    move-exception v9

    .line 2207
    .local v9, t:Ljava/lang/Throwable;
    const-string v0, "BluetoothGattService"

    const-string v1, "onAttributeRequestRead(): error"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method public onAttributeRequestWrite(Ljava/lang/String;II[Ljava/lang/String;[B)V
    .locals 14
    .parameter "address"
    .parameter "connId"
    .parameter "transId"
    .parameter "writeAttr"
    .parameter "data"

    .prologue
    .line 2214
    const-string v1, "BluetoothGattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAttributeRequestWrite: addr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", connId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", transId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2216
    if-eqz p4, :cond_0

    move-object/from16 v0, p4

    array-length v1, v0

    if-lez v1, :cond_0

    .line 2217
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    move-object/from16 v0, p4

    array-length v1, v0

    if-ge v12, v1, :cond_0

    .line 2218
    const-string v1, "BluetoothGattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeAttr["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p4, v12

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2217
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 2221
    .end local v12           #i:I
    :cond_0
    if-eqz p5, :cond_1

    move-object/from16 v0, p5

    array-length v1, v0

    if-lez v1, :cond_1

    .line 2222
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_1
    move-object/from16 v0, p5

    array-length v1, v0

    if-ge v12, v1, :cond_1

    .line 2223
    const-string v1, "BluetoothGattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p5, v12

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2222
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 2230
    .end local v12           #i:I
    :cond_1
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, p4, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 2231
    .local v5, attrHandle:I
    const/4 v1, 0x1

    aget-object v1, p4, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_2

    const/4 v6, 0x1

    .line 2232
    .local v6, isPrep:Z
    :goto_2
    const/4 v1, 0x2

    aget-object v1, p4, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 2233
    .local v7, len:I
    const/4 v1, 0x3

    aget-object v1, p4, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_3

    const/4 v8, 0x1

    .line 2234
    .local v8, needRsp:Z
    :goto_3
    const/4 v1, 0x4

    aget-object v1, p4, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 2235
    .local v9, offset:I
    iget-object v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mServerCallbackMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mAttrConvMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/broadcom/bt/le/api/GattServerContext;

    .line 2237
    .local v11, ctxt:Lcom/broadcom/bt/le/api/GattServerContext;
    if-nez v11, :cond_4

    .line 2238
    const-string v1, "BluetoothGattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GattServerContext not found for attrHandle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2248
    .end local v5           #attrHandle:I
    .end local v6           #isPrep:Z
    .end local v7           #len:I
    .end local v8           #needRsp:Z
    .end local v9           #offset:I
    .end local v11           #ctxt:Lcom/broadcom/bt/le/api/GattServerContext;
    :goto_4
    return-void

    .line 2231
    .restart local v5       #attrHandle:I
    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    .line 2233
    .restart local v6       #isPrep:Z
    .restart local v7       #len:I
    :cond_3
    const/4 v8, 0x0

    goto :goto_3

    .line 2241
    .restart local v8       #needRsp:Z
    .restart local v9       #offset:I
    .restart local v11       #ctxt:Lcom/broadcom/bt/le/api/GattServerContext;
    :cond_4
    iget-object v1, v11, Lcom/broadcom/bt/le/api/GattServerContext;->mCallback:Lcom/broadcom/bt/le/api/IBleServiceCallback;

    move-object v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v10, p5

    invoke-interface/range {v1 .. v10}, Lcom/broadcom/bt/le/api/IBleServiceCallback;->onAttributeRequestWrite(Ljava/lang/String;IIIZIZI[B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 2245
    .end local v5           #attrHandle:I
    .end local v6           #isPrep:Z
    .end local v7           #len:I
    .end local v8           #needRsp:Z
    .end local v9           #offset:I
    .end local v11           #ctxt:Lcom/broadcom/bt/le/api/GattServerContext;
    :catch_0
    move-exception v13

    .line 2246
    .local v13, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothGattService"

    const-string v2, "onAttributeRequestWrite(): error"

    invoke-static {v1, v2, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method public onCharacteristicAdded(BBIJJII)V
    .locals 13
    .parameter "status"
    .parameter "serIf"
    .parameter "type"
    .parameter "charUuidLsb"
    .parameter "charUuidMsb"
    .parameter "svcHandle"
    .parameter "charHandle"

    .prologue
    .line 1993
    const-string v2, "BluetoothGattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCharacteristicAdded status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", serIf = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", charUuidLsb = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", charUuidmsb = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p6

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "svcHandle = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", char desrc handle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1999
    iget-object v2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mServerCallbackMap:Ljava/util/HashMap;

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/broadcom/bt/le/api/GattServerContext;

    .line 2000
    .local v11, ctxt:Lcom/broadcom/bt/le/api/GattServerContext;
    iget-object v2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mAttrConvMap:Ljava/util/HashMap;

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2001
    const-string v2, "BluetoothGattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Just added CharHandle ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "service Handle"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2003
    if-nez v11, :cond_0

    .line 2004
    :try_start_0
    const-string v2, "BluetoothGattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GattServerContext not found for svcHandle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2014
    :goto_0
    iget-object v2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mDirtyList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/broadcom/bt/le/api/CharacteristicContext;

    .line 2016
    .local v10, charContext:Lcom/broadcom/bt/le/api/CharacteristicContext;
    iget v2, v10, Lcom/broadcom/bt/le/api/CharacteristicContext;->mDirtyDescNum:I

    if-lez v2, :cond_1

    .line 2017
    const-string v2, "BluetoothGattService"

    const-string v3, "Dirty bit is still set.."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2031
    :goto_1
    return-void

    .line 2007
    .end local v10           #charContext:Lcom/broadcom/bt/le/api/CharacteristicContext;
    :cond_0
    :try_start_1
    iget-object v8, v11, Lcom/broadcom/bt/le/api/GattServerContext;->mCallback:Lcom/broadcom/bt/le/api/IBleServiceCallback;

    new-instance v2, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-wide/from16 v3, p4

    move-wide/from16 v5, p6

    move/from16 v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(JJI)V

    move/from16 v0, p9

    invoke-interface {v8, p1, v2, v0}, Lcom/broadcom/bt/le/api/IBleServiceCallback;->onCharacteristicAdded(BLcom/broadcom/bt/service/gatt/BluetoothGattID;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2010
    :catch_0
    move-exception v12

    .line 2011
    .local v12, t:Ljava/lang/Throwable;
    const-string v2, "BluetoothGattService"

    const-string v3, "onCharacteristicAdded(): error"

    invoke-static {v2, v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2019
    .end local v12           #t:Ljava/lang/Throwable;
    .restart local v10       #charContext:Lcom/broadcom/bt/le/api/CharacteristicContext;
    :cond_1
    const-string v2, "BluetoothGattService"

    const-string v3, "Dirty bit not set.. Adding a new one"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    monitor-enter p0

    .line 2021
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mDirtyList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2022
    iget-object v2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mDirtyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 2023
    monitor-exit p0

    goto :goto_1

    .line 2025
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 2024
    :cond_2
    :try_start_3
    iget-object v2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mDirtyList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/broadcom/bt/le/api/CharacteristicContext;

    move-object v10, v0

    .line 2025
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2026
    iget v3, v10, Lcom/broadcom/bt/le/api/CharacteristicContext;->mSvcHandle:I

    iget-object v4, v10, Lcom/broadcom/bt/le/api/CharacteristicContext;->mCharId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    iget v5, v10, Lcom/broadcom/bt/le/api/CharacteristicContext;->mPermissions:I

    iget v6, v10, Lcom/broadcom/bt/le/api/CharacteristicContext;->mCharProperty:I

    iget-boolean v7, v10, Lcom/broadcom/bt/le/api/CharacteristicContext;->mDirtyMask:Z

    iget v8, v10, Lcom/broadcom/bt/le/api/CharacteristicContext;->mDirtyDescNum:I

    const/4 v9, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->GATTServer_AddCharacteristic(ILcom/broadcom/bt/service/gatt/BluetoothGattID;IIZIZ)V

    goto :goto_1
.end method

.method public onCharacteristicDescrAdded(BBIJJII)V
    .locals 14
    .parameter "status"
    .parameter "serIf"
    .parameter "type"
    .parameter "charDescUuidlsb"
    .parameter "charDescUuidMsb"
    .parameter "svcHandle"
    .parameter "charDescrHandle"

    .prologue
    .line 2037
    const-string v3, "BluetoothGattService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCharacteristicDescrAdded status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", serIf = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", charDescUuidlsb = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", charDescUuidMsb = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p6

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "svcHandle = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p8

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", char desrc handle "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p9

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2044
    iget-object v3, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mAttrConvMap:Ljava/util/HashMap;

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2045
    const-string v3, "BluetoothGattService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Just added DescHandle ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p9

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "service Handle"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p8

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2046
    iget-object v3, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mServerCallbackMap:Ljava/util/HashMap;

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/broadcom/bt/le/api/GattServerContext;

    .line 2047
    .local v12, ctxt:Lcom/broadcom/bt/le/api/GattServerContext;
    if-nez v12, :cond_0

    .line 2048
    const-string v3, "BluetoothGattService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GattServerContext not found for svcHandle "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p8

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2059
    :goto_0
    iget-object v3, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mDirtyList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/broadcom/bt/le/api/CharacteristicContext;

    .line 2060
    .local v11, charContext:Lcom/broadcom/bt/le/api/CharacteristicContext;
    iget v3, v11, Lcom/broadcom/bt/le/api/CharacteristicContext;->mDirtyDescNum:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v11, Lcom/broadcom/bt/le/api/CharacteristicContext;->mDirtyDescNum:I

    .line 2061
    iget v3, v11, Lcom/broadcom/bt/le/api/CharacteristicContext;->mDirtyDescNum:I

    if-lez v3, :cond_1

    .line 2062
    const-string v3, "BluetoothGattService"

    const-string v4, "Dirty bit is still set.."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    :goto_1
    return-void

    .line 2052
    .end local v11           #charContext:Lcom/broadcom/bt/le/api/CharacteristicContext;
    :cond_0
    :try_start_0
    new-instance v2, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-wide/from16 v3, p4

    move-wide/from16 v5, p6

    move/from16 v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(JJI)V

    .line 2053
    .local v2, gattID:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    iget-object v3, v12, Lcom/broadcom/bt/le/api/GattServerContext;->mCallback:Lcom/broadcom/bt/le/api/IBleServiceCallback;

    move/from16 v0, p9

    invoke-interface {v3, p1, v2, v0}, Lcom/broadcom/bt/le/api/IBleServiceCallback;->onCharacteristicDescrAdded(BLcom/broadcom/bt/service/gatt/BluetoothGattID;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2054
    .end local v2           #gattID:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :catch_0
    move-exception v13

    .line 2055
    .local v13, t:Ljava/lang/Throwable;
    const-string v3, "BluetoothGattService"

    const-string v4, "onCharacteristicDescrAdded(): error"

    invoke-static {v3, v4, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2064
    .end local v13           #t:Ljava/lang/Throwable;
    .restart local v11       #charContext:Lcom/broadcom/bt/le/api/CharacteristicContext;
    :cond_1
    const-string v3, "BluetoothGattService"

    const-string v4, "Dirty bit not set.. Try adding a new one"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2065
    monitor-enter p0

    .line 2066
    :try_start_1
    iget-object v3, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mDirtyList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2067
    iget-object v3, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mDirtyList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 2068
    monitor-exit p0

    goto :goto_1

    .line 2070
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 2069
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mDirtyList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/broadcom/bt/le/api/CharacteristicContext;

    move-object v11, v0

    .line 2070
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2071
    iget v4, v11, Lcom/broadcom/bt/le/api/CharacteristicContext;->mSvcHandle:I

    iget-object v5, v11, Lcom/broadcom/bt/le/api/CharacteristicContext;->mCharId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    iget v6, v11, Lcom/broadcom/bt/le/api/CharacteristicContext;->mPermissions:I

    iget v7, v11, Lcom/broadcom/bt/le/api/CharacteristicContext;->mCharProperty:I

    iget-boolean v8, v11, Lcom/broadcom/bt/le/api/CharacteristicContext;->mDirtyMask:Z

    iget v9, v11, Lcom/broadcom/bt/le/api/CharacteristicContext;->mDirtyDescNum:I

    const/4 v10, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v10}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->GATTServer_AddCharacteristic(ILcom/broadcom/bt/service/gatt/BluetoothGattID;IIZIZ)V

    goto :goto_1
.end method

.method public onClientConnected(Ljava/lang/String;ZI)V
    .locals 7
    .parameter "bdaddr"
    .parameter "fConnected"
    .parameter "connId"

    .prologue
    .line 1911
    const-string v4, "BluetoothGattService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onClientConnected addr is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " connId is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1914
    iget-object v4, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mServerProfileCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1916
    .local v1, entrySet:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/le/api/IBleProfileEventCallback;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/le/api/IBleProfileEventCallback;

    .line 1918
    .local v0, entry:Lcom/broadcom/bt/le/api/IBleProfileEventCallback;
    :try_start_0
    invoke-interface {v0, p3, p1, p2}, Lcom/broadcom/bt/le/api/IBleProfileEventCallback;->onClientConnected(ILjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1919
    :catch_0
    move-exception v3

    .line 1920
    .local v3, t:Ljava/lang/Throwable;
    const-string v4, "BluetoothGattService"

    const-string v5, "onDisconnected()"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1923
    .end local v0           #entry:Lcom/broadcom/bt/le/api/IBleProfileEventCallback;
    .end local v1           #entrySet:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/le/api/IBleProfileEventCallback;>;"
    .end local v3           #t:Ljava/lang/Throwable;
    :cond_0
    return-void
.end method

.method public onCloseCompleted(I)V
    .locals 2
    .parameter "status"

    .prologue
    .line 1877
    const-string v0, "BluetoothGattService"

    const-string v1, "onCloseCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    return-void
.end method

.method onClosed(BI)V
    .locals 5
    .parameter "status"
    .parameter "connId"

    .prologue
    .line 994
    const-string v2, "BluetoothGattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClosed: status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    invoke-direct {p0, p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->findContextByConnID(I)Lcom/broadcom/bt/le/api/GattClientContext;

    move-result-object v0

    .line 1002
    .local v0, c:Lcom/broadcom/bt/le/api/GattClientContext;
    if-eqz v0, :cond_0

    .line 1004
    :try_start_0
    invoke-virtual {v0}, Lcom/broadcom/bt/le/api/GattClientContext;->getClientCallback()Lcom/broadcom/bt/le/api/IBleClientCallback;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1005
    invoke-virtual {v0}, Lcom/broadcom/bt/le/api/GattClientContext;->getClientCallback()Lcom/broadcom/bt/le/api/IBleClientCallback;

    move-result-object v2

    invoke-virtual {v0}, Lcom/broadcom/bt/le/api/GattClientContext;->getPeerAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p2, v3}, Lcom/broadcom/bt/le/api/IBleClientCallback;->onDisconnected(ILjava/lang/String;)V

    .line 1014
    :cond_0
    :goto_0
    return-void

    .line 1007
    :cond_1
    const-string v2, "BluetoothGattService"

    const-string v3, "No client callback"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1009
    :catch_0
    move-exception v1

    .line 1010
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothGattService"

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method onConnected(BILjava/lang/String;)V
    .locals 8
    .parameter "clientIf"
    .parameter "connId"
    .parameter "address"

    .prologue
    .line 1074
    const-string v5, "BluetoothGattService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onConnected: clientIf = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " connId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", address = ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    invoke-direct {p0, p2, p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->findCachedConnection(ILjava/lang/String;)Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;

    move-result-object v1

    .line 1078
    .local v1, connDevice:Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;
    if-nez v1, :cond_0

    .line 1079
    invoke-direct {p0, p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->findCachedConnection(Ljava/lang/String;)Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;

    move-result-object v1

    .line 1080
    if-nez v1, :cond_0

    .line 1084
    sget-object v5, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mBLEConnectionCache:Ljava/util/ArrayList;

    new-instance v6, Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;

    invoke-direct {v6, p0, p2, p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;-><init>(Lcom/broadcom/bt/service/gatt/BluetoothGattService;ILjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1094
    :cond_0
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->findContextByClientIf(I)Lcom/broadcom/bt/le/api/GattClientContext;

    move-result-object v4

    .line 1095
    .local v4, oneContext:Lcom/broadcom/bt/le/api/GattClientContext;
    if-eqz v4, :cond_3

    .line 1096
    invoke-virtual {v4, p2}, Lcom/broadcom/bt/le/api/GattClientContext;->setConnID(I)V

    .line 1098
    :try_start_0
    invoke-virtual {v4}, Lcom/broadcom/bt/le/api/GattClientContext;->getClientCallback()Lcom/broadcom/bt/le/api/IBleClientCallback;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1099
    invoke-virtual {v4}, Lcom/broadcom/bt/le/api/GattClientContext;->getClientCallback()Lcom/broadcom/bt/le/api/IBleClientCallback;

    move-result-object v5

    invoke-interface {v5, p3, p2}, Lcom/broadcom/bt/le/api/IBleClientCallback;->onConnected(Ljava/lang/String;I)V

    .line 1125
    :cond_1
    :goto_0
    return-void

    .line 1101
    :cond_2
    const-string v5, "BluetoothGattService"

    const-string v6, "No client callback"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1103
    :catch_0
    move-exception v2

    .line 1104
    .local v2, e:Landroid/os/RemoteException;
    const-string v5, "BluetoothGattService"

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1108
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_3
    invoke-direct {p0, p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->findAllContextsByAddress(Ljava/lang/String;)[Lcom/broadcom/bt/le/api/GattClientContext;

    move-result-object v0

    .line 1110
    .local v0, c:[Lcom/broadcom/bt/le/api/GattClientContext;
    if-eqz v0, :cond_1

    .line 1111
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v5, v0

    if-ge v3, v5, :cond_1

    .line 1112
    aget-object v5, v0, v3

    invoke-virtual {v5, p2}, Lcom/broadcom/bt/le/api/GattClientContext;->setConnID(I)V

    .line 1114
    :try_start_1
    aget-object v5, v0, v3

    invoke-virtual {v5}, Lcom/broadcom/bt/le/api/GattClientContext;->getClientCallback()Lcom/broadcom/bt/le/api/IBleClientCallback;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 1115
    aget-object v5, v0, v3

    invoke-virtual {v5}, Lcom/broadcom/bt/le/api/GattClientContext;->getClientCallback()Lcom/broadcom/bt/le/api/IBleClientCallback;

    move-result-object v5

    invoke-interface {v5, p3, p2}, Lcom/broadcom/bt/le/api/IBleClientCallback;->onConnected(Ljava/lang/String;I)V

    .line 1111
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1117
    :cond_4
    const-string v5, "BluetoothGattService"

    const-string v6, "No client callback"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 1119
    :catch_1
    move-exception v2

    .line 1120
    .restart local v2       #e:Landroid/os/RemoteException;
    const-string v5, "BluetoothGattService"

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method onDeregForNotifications(IIIIIJJIIJJ)V
    .locals 11
    .parameter "connId"
    .parameter "status"
    .parameter "srvcInstId"
    .parameter "srvcServiceType"
    .parameter "srvcUuidType"
    .parameter "srvcUuidLsb"
    .parameter "srvcUuidMsb"
    .parameter "charInstId"
    .parameter "charUuidType"
    .parameter "charUuidLsb"
    .parameter "charUuidMsb"

    .prologue
    .line 1644
    const-string v2, "BluetoothGattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDeregForNotifications: connId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->findContextByConnID(I)Lcom/broadcom/bt/le/api/GattClientContext;

    move-result-object v8

    .line 1647
    .local v8, c:Lcom/broadcom/bt/le/api/GattClientContext;
    if-eqz v8, :cond_1

    .line 1648
    new-instance v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move v1, p3

    move/from16 v2, p5

    move-wide/from16 v3, p6

    move-wide/from16 v5, p8

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(IIJJI)V

    .line 1650
    .local v0, srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    new-instance v1, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move/from16 v2, p10

    move/from16 v3, p11

    move-wide/from16 v4, p12

    move-wide/from16 v6, p14

    invoke-direct/range {v1 .. v7}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(IIJJ)V

    .line 1653
    .local v1, charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    const/4 v2, 0x0

    invoke-virtual {v8, v0, v2}, Lcom/broadcom/bt/le/api/GattClientContext;->getServiceDataContext(Lcom/broadcom/bt/service/gatt/BluetoothGattID;Z)Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;

    move-result-object v10

    .line 1654
    .local v10, sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    if-eqz v10, :cond_0

    .line 1656
    :try_start_0
    iget-object v2, v10, Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;->callback:Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;

    invoke-interface {v2, p1, p2, v0, v1}, Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;->onUnregisterNotifications(IILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1667
    .end local v0           #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v1           #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v10           #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :goto_0
    return-void

    .line 1658
    .restart local v0       #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .restart local v1       #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .restart local v10       #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :catch_0
    move-exception v9

    .line 1659
    .local v9, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothGattService"

    invoke-virtual {v9}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1662
    .end local v9           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v2, "BluetoothGattService"

    const-string v3, "data context not found!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1665
    .end local v0           #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v1           #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v10           #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :cond_1
    const-string v2, "BluetoothGattService"

    const-string v3, "context not found!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method onDisabled()V
    .locals 2

    .prologue
    .line 898
    const-string v0, "BluetoothGattService"

    const-string v1, "onDisabled:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->onStateChangeEvent(Z)V

    .line 901
    return-void
.end method

.method declared-synchronized onDisconnected(BILjava/lang/String;)V
    .locals 5
    .parameter "clientIf"
    .parameter "connId"
    .parameter "address"

    .prologue
    .line 1128
    monitor-enter p0

    :try_start_0
    const-string v2, "BluetoothGattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDisconnected: connId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", address = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->findContextByClientIf(I)Lcom/broadcom/bt/le/api/GattClientContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1134
    .local v0, c:Lcom/broadcom/bt/le/api/GattClientContext;
    if-eqz v0, :cond_0

    .line 1136
    :try_start_1
    invoke-virtual {v0}, Lcom/broadcom/bt/le/api/GattClientContext;->getClientCallback()Lcom/broadcom/bt/le/api/IBleClientCallback;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1137
    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lcom/broadcom/bt/le/api/GattClientContext;->getConnID()I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 1138
    invoke-virtual {v0}, Lcom/broadcom/bt/le/api/GattClientContext;->getClientCallback()Lcom/broadcom/bt/le/api/IBleClientCallback;

    move-result-object v2

    invoke-virtual {v0}, Lcom/broadcom/bt/le/api/GattClientContext;->getPeerAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p2, v3}, Lcom/broadcom/bt/le/api/IBleClientCallback;->onDisconnected(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1149
    :cond_0
    :goto_0
    :try_start_2
    invoke-direct {p0, p2, p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->removeCachedConnection(ILjava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1150
    monitor-exit p0

    return-void

    .line 1141
    :cond_1
    :try_start_3
    const-string v2, "BluetoothGattService"

    const-string v3, "No client callback"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1143
    :catch_0
    move-exception v1

    .line 1144
    .local v1, e:Landroid/os/RemoteException;
    :try_start_4
    const-string v2, "BluetoothGattService"

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1128
    .end local v0           #c:Lcom/broadcom/bt/le/api/GattClientContext;
    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method onEnabled(I)V
    .locals 3
    .parameter "status"

    .prologue
    .line 892
    const-string v0, "BluetoothGattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEnabled: status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->onStateChangeEvent(Z)V

    .line 895
    return-void
.end method

.method onGetFirstChar(IIIIIIJJIIJJ)V
    .locals 13
    .parameter "connId"
    .parameter "status"
    .parameter "charProp"
    .parameter "srvcInstId"
    .parameter "srvcType"
    .parameter "srvcUuidType"
    .parameter "srvcUuidLsb"
    .parameter "srvcUuidMsb"
    .parameter "charInstId"
    .parameter "charUuidType"
    .parameter "charUuidLsb"
    .parameter "charUuidMsb"

    .prologue
    .line 1407
    const-string v4, "BluetoothGattService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onGetFirstChar: connId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", charProp = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->findContextByConnID(I)Lcom/broadcom/bt/le/api/GattClientContext;

    move-result-object v10

    .line 1413
    .local v10, c:Lcom/broadcom/bt/le/api/GattClientContext;
    if-eqz v10, :cond_1

    .line 1414
    const-string v4, "BluetoothGattService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onGetFirstChar: srvcInstId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " srvcUuidType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p6

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " srvcUuidLsb = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p7

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " srvcUuidMsb = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p9

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    new-instance v2, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move/from16 v3, p4

    move/from16 v4, p6

    move-wide/from16 v5, p7

    move-wide/from16 v7, p9

    move/from16 v9, p5

    invoke-direct/range {v2 .. v9}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(IIJJI)V

    .line 1417
    .local v2, srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    new-instance v3, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move/from16 v4, p11

    move/from16 v5, p12

    move-wide/from16 v6, p13

    move-wide/from16 v8, p15

    invoke-direct/range {v3 .. v9}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(IIJJ)V

    .line 1419
    .local v3, charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    const/4 v4, 0x0

    invoke-virtual {v10, v2, v4}, Lcom/broadcom/bt/le/api/GattClientContext;->getServiceDataContext(Lcom/broadcom/bt/service/gatt/BluetoothGattID;Z)Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;

    move-result-object v12

    .line 1420
    .local v12, sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    if-eqz v12, :cond_0

    .line 1422
    :try_start_0
    iget-object v4, v12, Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;->callback:Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;

    invoke-interface {v4, p1, p2, v2, v3}, Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;->onGetFirstCharacteristic(IILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1432
    .end local v2           #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v3           #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v12           #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :goto_0
    return-void

    .line 1423
    .restart local v2       #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .restart local v3       #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .restart local v12       #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :catch_0
    move-exception v11

    .line 1424
    .local v11, e:Landroid/os/RemoteException;
    const-string v4, "BluetoothGattService"

    invoke-virtual {v11}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1427
    .end local v11           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v4, "BluetoothGattService"

    const-string v5, "data context not found!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1430
    .end local v2           #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v3           #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v12           #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :cond_1
    const-string v4, "BluetoothGattService"

    const-string v5, "context not found!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method onGetFirstCharDescr(IIIIIJJIIJJIJJ)V
    .locals 12
    .parameter "connId"
    .parameter "status"
    .parameter "srvcInstId"
    .parameter "srvcType"
    .parameter "srvcUuidType"
    .parameter "srvcUuidLsb"
    .parameter "srvcUuidMsb"
    .parameter "charInstId"
    .parameter "charUuidType"
    .parameter "charUuidLsb"
    .parameter "charUuidMsb"
    .parameter "descrUuidType"
    .parameter "descrUuidLsb"
    .parameter "descrUuidMsb"

    .prologue
    .line 1475
    const-string v3, "BluetoothGattService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onGetFirstCharDescr: connId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->findContextByConnID(I)Lcom/broadcom/bt/le/api/GattClientContext;

    move-result-object v9

    .line 1481
    .local v9, c:Lcom/broadcom/bt/le/api/GattClientContext;
    if-eqz v9, :cond_1

    .line 1483
    new-instance v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move v1, p3

    move/from16 v2, p5

    move-wide/from16 v3, p6

    move-wide/from16 v5, p8

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(IIJJI)V

    .line 1484
    .local v0, srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    new-instance v1, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move/from16 v2, p10

    move/from16 v3, p11

    move-wide/from16 v4, p12

    move-wide/from16 v6, p14

    invoke-direct/range {v1 .. v7}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(IIJJ)V

    .line 1486
    .local v1, charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    new-instance v2, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-wide/from16 v3, p17

    move-wide/from16 v5, p19

    move/from16 v7, p16

    invoke-direct/range {v2 .. v7}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(JJI)V

    .line 1488
    .local v2, descrId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    const/4 v3, 0x0

    invoke-virtual {v9, v0, v3}, Lcom/broadcom/bt/le/api/GattClientContext;->getServiceDataContext(Lcom/broadcom/bt/service/gatt/BluetoothGattID;Z)Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;

    move-result-object v11

    .line 1489
    .local v11, sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    if-eqz v11, :cond_0

    .line 1491
    :try_start_0
    iget-object v3, v11, Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;->callback:Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;

    move v4, p1

    move v5, p2

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-interface/range {v3 .. v8}, Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;->onGetFirstCharacteristicDescriptor(IILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1501
    .end local v0           #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v1           #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v2           #descrId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v11           #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :goto_0
    return-void

    .line 1492
    .restart local v0       #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .restart local v1       #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .restart local v2       #descrId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .restart local v11       #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :catch_0
    move-exception v10

    .line 1493
    .local v10, e:Landroid/os/RemoteException;
    const-string v3, "BluetoothGattService"

    invoke-virtual {v10}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1496
    .end local v10           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v3, "BluetoothGattService"

    const-string v4, "data context not found!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1499
    .end local v0           #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v1           #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v2           #descrId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v11           #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :cond_1
    const-string v3, "BluetoothGattService"

    const-string v4, "context not found!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method onGetFirstIncludedService(IIIIIJJIIIJJ)V
    .locals 12
    .parameter "connId"
    .parameter "status"
    .parameter "srvcInstId"
    .parameter "srvcType"
    .parameter "srvcUuidType"
    .parameter "srvcUuidLsb"
    .parameter "srvcUuidMsb"
    .parameter "inclSrvcInstId"
    .parameter "inclSrvcType"
    .parameter "inclSrvcUuidType"
    .parameter "inclSrvcUuidLsb"
    .parameter "inclSrvcUuidMsb"

    .prologue
    .line 1542
    const-string v2, "BluetoothGattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onGetFirstIncludedService: connId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    new-instance v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move v1, p3

    move/from16 v2, p5

    move-wide/from16 v3, p6

    move-wide/from16 v5, p8

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(IIJJI)V

    .line 1548
    .local v0, srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    new-instance v1, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move/from16 v2, p10

    move/from16 v3, p11

    move-wide/from16 v4, p13

    move-wide/from16 v6, p15

    move/from16 v8, p12

    invoke-direct/range {v1 .. v8}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(IIJJI)V

    .line 1553
    .local v1, includedServiceId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->findContextByConnID(I)Lcom/broadcom/bt/le/api/GattClientContext;

    move-result-object v9

    .line 1554
    .local v9, c:Lcom/broadcom/bt/le/api/GattClientContext;
    if-eqz v9, :cond_1

    .line 1555
    const/4 v2, 0x0

    invoke-virtual {v9, v0, v2}, Lcom/broadcom/bt/le/api/GattClientContext;->getServiceDataContext(Lcom/broadcom/bt/service/gatt/BluetoothGattID;Z)Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;

    move-result-object v11

    .line 1556
    .local v11, sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    if-eqz v11, :cond_0

    .line 1558
    :try_start_0
    iget-object v2, v11, Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;->callback:Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;

    invoke-interface {v2, p1, p2, v0, v1}, Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;->onGetFirstIncludedService(IILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1568
    .end local v11           #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :goto_0
    return-void

    .line 1559
    .restart local v11       #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :catch_0
    move-exception v10

    .line 1560
    .local v10, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothGattService"

    invoke-virtual {v10}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1563
    .end local v10           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v2, "BluetoothGattService"

    const-string v3, "data context not found!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1566
    .end local v11           #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :cond_1
    const-string v2, "BluetoothGattService"

    const-string v3, "context not found!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method onGetNextChar(IIIIIIJJIIJJ)V
    .locals 12
    .parameter "connId"
    .parameter "status"
    .parameter "charProp"
    .parameter "srvcInstId"
    .parameter "srvcType"
    .parameter "srvcUuidType"
    .parameter "srvcUuidLsb"
    .parameter "srvcUuidMsb"
    .parameter "charInstId"
    .parameter "charUuidType"
    .parameter "charUuidLsb"
    .parameter "charUuidMsb"

    .prologue
    .line 1439
    const-string v3, "BluetoothGattService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onGetNextChar: connId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", charProp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", charInstId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p11

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->findContextByConnID(I)Lcom/broadcom/bt/le/api/GattClientContext;

    move-result-object v9

    .line 1443
    .local v9, c:Lcom/broadcom/bt/le/api/GattClientContext;
    if-eqz v9, :cond_1

    .line 1444
    new-instance v1, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move/from16 v2, p4

    move/from16 v3, p6

    move-wide/from16 v4, p7

    move-wide/from16 v6, p9

    move/from16 v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(IIJJI)V

    .line 1447
    .local v1, srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    new-instance v2, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move/from16 v3, p11

    move/from16 v4, p12

    move-wide/from16 v5, p13

    move-wide/from16 v7, p15

    invoke-direct/range {v2 .. v8}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(IIJJ)V

    .line 1450
    .local v2, charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    const/4 v3, 0x0

    invoke-virtual {v9, v1, v3}, Lcom/broadcom/bt/le/api/GattClientContext;->getServiceDataContext(Lcom/broadcom/bt/service/gatt/BluetoothGattID;Z)Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;

    move-result-object v11

    .line 1451
    .local v11, sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    if-eqz v11, :cond_0

    .line 1453
    :try_start_0
    iget-object v3, v11, Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;->callback:Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;

    invoke-interface {v3, p1, p2, v1, v2}, Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;->onGetNextCharacteristic(IILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1463
    .end local v1           #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v2           #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v11           #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :goto_0
    return-void

    .line 1454
    .restart local v1       #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .restart local v2       #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .restart local v11       #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :catch_0
    move-exception v10

    .line 1455
    .local v10, e:Landroid/os/RemoteException;
    const-string v3, "BluetoothGattService"

    invoke-virtual {v10}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1458
    .end local v10           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v3, "BluetoothGattService"

    const-string v4, "data context not found!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1461
    .end local v1           #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v2           #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v11           #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :cond_1
    const-string v3, "BluetoothGattService"

    const-string v4, "context not found!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method onGetNextCharDescr(IIIIIJJIIJJIJJ)V
    .locals 12
    .parameter "connId"
    .parameter "status"
    .parameter "srvcInstId"
    .parameter "srvcType"
    .parameter "srvcUuidType"
    .parameter "srvcUuidLsb"
    .parameter "srvcUuidMsb"
    .parameter "charInstId"
    .parameter "charUuidType"
    .parameter "charUuidLsb"
    .parameter "charUuidMsb"
    .parameter "descrUuidType"
    .parameter "descrUuidLsb"
    .parameter "descrUuidMsb"

    .prologue
    .line 1511
    const-string v3, "BluetoothGattService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onGetNextCharDescr: connId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->findContextByConnID(I)Lcom/broadcom/bt/le/api/GattClientContext;

    move-result-object v9

    .line 1514
    .local v9, c:Lcom/broadcom/bt/le/api/GattClientContext;
    if-eqz v9, :cond_1

    .line 1516
    new-instance v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move v1, p3

    move/from16 v2, p5

    move-wide/from16 v3, p6

    move-wide/from16 v5, p8

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(IIJJI)V

    .line 1517
    .local v0, srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    new-instance v1, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move/from16 v2, p10

    move/from16 v3, p11

    move-wide/from16 v4, p12

    move-wide/from16 v6, p14

    invoke-direct/range {v1 .. v7}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(IIJJ)V

    .line 1519
    .local v1, charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    new-instance v2, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-wide/from16 v3, p17

    move-wide/from16 v5, p19

    move/from16 v7, p16

    invoke-direct/range {v2 .. v7}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(JJI)V

    .line 1521
    .local v2, descrId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    const/4 v3, 0x0

    invoke-virtual {v9, v0, v3}, Lcom/broadcom/bt/le/api/GattClientContext;->getServiceDataContext(Lcom/broadcom/bt/service/gatt/BluetoothGattID;Z)Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;

    move-result-object v11

    .line 1522
    .local v11, sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    if-eqz v11, :cond_0

    .line 1524
    :try_start_0
    iget-object v3, v11, Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;->callback:Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;

    move v4, p1

    move v5, p2

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-interface/range {v3 .. v8}, Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;->onGetNextCharacteristicDescriptor(IILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1535
    .end local v0           #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v1           #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v2           #descrId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v11           #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :goto_0
    return-void

    .line 1526
    .restart local v0       #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .restart local v1       #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .restart local v2       #descrId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .restart local v11       #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :catch_0
    move-exception v10

    .line 1527
    .local v10, e:Landroid/os/RemoteException;
    const-string v3, "BluetoothGattService"

    invoke-virtual {v10}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1530
    .end local v10           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v3, "BluetoothGattService"

    const-string v4, "data context not found!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1533
    .end local v0           #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v1           #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v2           #descrId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v11           #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :cond_1
    const-string v3, "BluetoothGattService"

    const-string v4, "context not found!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method onGetNextIncludedService(IIIIIJJIIIJJ)V
    .locals 12
    .parameter "connId"
    .parameter "status"
    .parameter "srvcInstId"
    .parameter "srvcType"
    .parameter "srvcUuidType"
    .parameter "srvcUuidLsb"
    .parameter "srvcUuidMsb"
    .parameter "inclSrvcInstId"
    .parameter "inclSrvcType"
    .parameter "inclSrvcUuidType"
    .parameter "inclSrvcUuidLsb"
    .parameter "inclSrvcUuidMsb"

    .prologue
    .line 1575
    const-string v2, "BluetoothGattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onGetNextIncludedService: connId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    new-instance v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move v1, p3

    move/from16 v2, p5

    move-wide/from16 v3, p6

    move-wide/from16 v5, p8

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(IIJJI)V

    .line 1581
    .local v0, srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    new-instance v1, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move/from16 v2, p10

    move/from16 v3, p11

    move-wide/from16 v4, p13

    move-wide/from16 v6, p15

    move/from16 v8, p12

    invoke-direct/range {v1 .. v8}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(IIJJI)V

    .line 1586
    .local v1, includedServiceId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->findContextByConnID(I)Lcom/broadcom/bt/le/api/GattClientContext;

    move-result-object v9

    .line 1588
    .local v9, c:Lcom/broadcom/bt/le/api/GattClientContext;
    if-eqz v9, :cond_1

    .line 1590
    const/4 v2, 0x0

    invoke-virtual {v9, v0, v2}, Lcom/broadcom/bt/le/api/GattClientContext;->getServiceDataContext(Lcom/broadcom/bt/service/gatt/BluetoothGattID;Z)Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;

    move-result-object v11

    .line 1591
    .local v11, sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    if-eqz v11, :cond_0

    .line 1593
    :try_start_0
    iget-object v2, v11, Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;->callback:Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;

    invoke-interface {v2, p1, p2, v0, v1}, Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;->onGetNextIncludedService(IILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1603
    .end local v11           #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :goto_0
    return-void

    .line 1594
    .restart local v11       #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :catch_0
    move-exception v10

    .line 1595
    .local v10, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothGattService"

    invoke-virtual {v10}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1598
    .end local v10           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v2, "BluetoothGattService"

    const-string v3, "data context not found!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1601
    .end local v11           #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :cond_1
    const-string v2, "BluetoothGattService"

    const-string v3, "context not found!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onHandleValueIndicationCompleted(BI)V
    .locals 5
    .parameter "status"
    .parameter "attrHandle"

    .prologue
    .line 2127
    const-string v2, "BluetoothGattService"

    const-string v3, "onHandleValueIndicationCompleted"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2128
    iget-object v2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mServerCallbackMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mAttrConvMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/le/api/GattServerContext;

    .line 2131
    .local v0, ctxt:Lcom/broadcom/bt/le/api/GattServerContext;
    if-nez v0, :cond_0

    .line 2132
    :try_start_0
    const-string v2, "BluetoothGattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GattServerContext not found for attrHandle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    :goto_0
    return-void

    .line 2135
    :cond_0
    iget-object v2, v0, Lcom/broadcom/bt/le/api/GattServerContext;->mCallback:Lcom/broadcom/bt/le/api/IBleServiceCallback;

    invoke-interface {v2, p1, p2}, Lcom/broadcom/bt/le/api/IBleServiceCallback;->onHandleValueIndicationCompleted(BI)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2138
    :catch_0
    move-exception v1

    .line 2139
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "BluetoothGattService"

    const-string v3, "onHandleValueIndicationCompleted"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onHandleValueNotificationCompleted(BI)V
    .locals 5
    .parameter "status"
    .parameter "attrHandle"

    .prologue
    .line 2144
    const-string v2, "BluetoothGattService"

    const-string v3, "onHandleValueNotificationCompleted"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2145
    iget-object v2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mServerCallbackMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mAttrConvMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/le/api/GattServerContext;

    .line 2148
    .local v0, ctxt:Lcom/broadcom/bt/le/api/GattServerContext;
    :try_start_0
    iget-object v2, v0, Lcom/broadcom/bt/le/api/GattServerContext;->mCallback:Lcom/broadcom/bt/le/api/IBleServiceCallback;

    invoke-interface {v2, p1, p2}, Lcom/broadcom/bt/le/api/IBleServiceCallback;->onHandleValueNotificationCompleted(BI)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2153
    :goto_0
    return-void

    .line 2150
    :catch_0
    move-exception v1

    .line 2151
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "BluetoothGattService"

    const-string v3, "onHandleValueNotificationCompleted"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onIncludedServiceAdded(BBII)V
    .locals 5
    .parameter "status"
    .parameter "serIf"
    .parameter "svcHandle"
    .parameter "inclSvcHandle"

    .prologue
    .line 1971
    const-string v2, "BluetoothGattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onIncludedServiceAdded status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", serIf = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", svcHandle = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", inclSvcHandle = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    iget-object v2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mServerCallbackMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/le/api/GattServerContext;

    .line 1979
    .local v0, ctxt:Lcom/broadcom/bt/le/api/GattServerContext;
    if-nez v0, :cond_0

    .line 1980
    :try_start_0
    const-string v2, "BluetoothGattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GattServerContext not found for svcHandle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1988
    :goto_0
    return-void

    .line 1983
    :cond_0
    iget-object v2, v0, Lcom/broadcom/bt/le/api/GattServerContext;->mCallback:Lcom/broadcom/bt/le/api/IBleServiceCallback;

    invoke-interface {v2, p1, p4}, Lcom/broadcom/bt/le/api/IBleServiceCallback;->onIncludedServiceAdded(BI)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1985
    :catch_0
    move-exception v1

    .line 1986
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "BluetoothGattService"

    const-string v3, "onIncludedServiceAdded(): error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method onNotify(ILjava/lang/String;IIIJJIIJJZ[B)V
    .locals 13
    .parameter "connId"
    .parameter "address"
    .parameter "srvcInstId"
    .parameter "srvcServiceType"
    .parameter "srvcUuidType"
    .parameter "srvcUuidLsb"
    .parameter "srvcUuidMsb"
    .parameter "charInstId"
    .parameter "charUuidType"
    .parameter "charUuidLsb"
    .parameter "charUuidMsb"
    .parameter "isNotify"
    .parameter "data"

    .prologue
    .line 1337
    const-string v3, "BluetoothGattService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onNotif: address = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], len = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p17

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", is notify = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    invoke-direct {p0, p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->findcontextByAddress(Ljava/lang/String;)Lcom/broadcom/bt/le/api/GattClientContext;

    move-result-object v10

    .line 1343
    .local v10, c:Lcom/broadcom/bt/le/api/GattClientContext;
    if-eqz v10, :cond_1

    .line 1344
    new-instance v1, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move/from16 v2, p3

    move/from16 v3, p5

    move-wide/from16 v4, p6

    move-wide/from16 v6, p8

    move/from16 v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(IIJJI)V

    .line 1346
    .local v1, srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    new-instance v2, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move/from16 v3, p10

    move/from16 v4, p11

    move-wide/from16 v5, p12

    move-wide/from16 v7, p14

    invoke-direct/range {v2 .. v8}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(IIJJ)V

    .line 1349
    .local v2, charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    const/4 v3, 0x0

    invoke-virtual {v10, v1, v3}, Lcom/broadcom/bt/le/api/GattClientContext;->getServiceDataContext(Lcom/broadcom/bt/service/gatt/BluetoothGattID;Z)Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;

    move-result-object v12

    .line 1350
    .local v12, sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    if-eqz v12, :cond_0

    .line 1352
    :try_start_0
    iget-object v3, v12, Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;->callback:Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;

    move v4, p1

    move-object v5, p2

    move-object v6, v1

    move-object v7, v2

    move/from16 v8, p16

    move-object/from16 v9, p17

    invoke-interface/range {v3 .. v9}, Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;->onNotify(ILjava/lang/String;Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;Z[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1362
    .end local v1           #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v2           #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v12           #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :goto_0
    return-void

    .line 1353
    .restart local v1       #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .restart local v2       #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .restart local v12       #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :catch_0
    move-exception v11

    .line 1354
    .local v11, e:Landroid/os/RemoteException;
    const-string v3, "BluetoothGattService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error calling onNotify "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v11}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1357
    .end local v11           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v3, "BluetoothGattService"

    const-string v4, "no data context found !!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1360
    .end local v1           #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v2           #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v12           #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :cond_1
    const-string v3, "BluetoothGattService"

    const-string v4, "no context found !!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method onObserveCompleted(I)V
    .locals 4
    .parameter "numResponses"

    .prologue
    .line 2299
    const-string v1, "BluetoothGattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onObserveCompleted:  responses = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2300
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.broadcom.bt.app.gatt.OBSERVE_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2301
    .local v0, i:Landroid/content/Intent;
    const-string v1, "NUM_RESULTS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2302
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2303
    return-void
.end method

.method onObserveResponse(Ljava/lang/String;BB[B)V
    .locals 4
    .parameter "address"
    .parameter "addr_type"
    .parameter "rssi"
    .parameter "adv_data"

    .prologue
    .line 2290
    const-string v1, "BluetoothGattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onObserveResponse:  address = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] rssi = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2291
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.broadcom.bt.app.gatt.OBSERVE_RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2292
    .local v0, i:Landroid/content/Intent;
    const-string v1, "ADDRESS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2293
    const-string v1, "ADDR_TYPE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 2294
    const-string v1, "RSSI"

    invoke-static {p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->unsignedByteToInt(B)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2295
    const-string v1, "ADV_DATA"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 2296
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2297
    return-void
.end method

.method public onOpenCancelCompleted(I)V
    .locals 2
    .parameter "status"

    .prologue
    .line 1873
    const-string v0, "BluetoothGattService"

    const-string v1, "onOpenCancelCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1874
    return-void
.end method

.method public onOpenCompleted(I)V
    .locals 2
    .parameter "status"

    .prologue
    .line 1869
    const-string v0, "BluetoothGattService"

    const-string v1, "onOpenCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1870
    return-void
.end method

.method onOpened(BBLjava/lang/String;)V
    .locals 6
    .parameter "clientIf"
    .parameter "status"
    .parameter "address"

    .prologue
    .line 964
    const-string v3, "BluetoothGattService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onOpened: status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->findContextByClientIf(I)Lcom/broadcom/bt/le/api/GattClientContext;

    move-result-object v0

    .line 970
    .local v0, c:Lcom/broadcom/bt/le/api/GattClientContext;
    if-eqz v0, :cond_0

    .line 974
    if-nez p2, :cond_0

    .line 975
    invoke-direct {p0, p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->findCachedConnection(Ljava/lang/String;)Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;

    move-result-object v1

    .line 976
    .local v1, connDevice:Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;
    if-eqz v1, :cond_0

    .line 978
    iget v3, v1, Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;->mconnId:I

    invoke-virtual {v0, v3}, Lcom/broadcom/bt/le/api/GattClientContext;->setConnID(I)V

    .line 980
    :try_start_0
    invoke-virtual {v0}, Lcom/broadcom/bt/le/api/GattClientContext;->getClientCallback()Lcom/broadcom/bt/le/api/IBleClientCallback;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 981
    invoke-virtual {v0}, Lcom/broadcom/bt/le/api/GattClientContext;->getClientCallback()Lcom/broadcom/bt/le/api/IBleClientCallback;

    move-result-object v3

    iget v4, v1, Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;->mconnId:I

    invoke-interface {v3, p3, v4}, Lcom/broadcom/bt/le/api/IBleClientCallback;->onConnected(Ljava/lang/String;I)V

    .line 991
    .end local v1           #connDevice:Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;
    :cond_0
    :goto_0
    return-void

    .line 983
    .restart local v1       #connDevice:Lcom/broadcom/bt/service/gatt/BluetoothGattService$BLEConnectedDevice;
    :cond_1
    const-string v3, "BluetoothGattService"

    const-string v4, "No client callback"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 985
    :catch_0
    move-exception v2

    .line 986
    .local v2, e:Landroid/os/RemoteException;
    const-string v3, "BluetoothGattService"

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method onReadCharDescrValue(IIIIIJJIIIJJIJJ[B)V
    .locals 13
    .parameter "connId"
    .parameter "status"
    .parameter "srvcInstId"
    .parameter "srvcType"
    .parameter "srvcUuidType"
    .parameter "srvcUuidLsb"
    .parameter "srvcUuidMsb"
    .parameter "charInstId"
    .parameter "charType"
    .parameter "charUuidType"
    .parameter "charUuidLsb"
    .parameter "charUuidMsb"
    .parameter "descrUuidType"
    .parameter "descrUuidLsb"
    .parameter "descrUuidMsb"
    .parameter "data"

    .prologue
    .line 1187
    const-string v3, "BluetoothGattService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReadCharDescrValue: connId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->findContextByConnID(I)Lcom/broadcom/bt/le/api/GattClientContext;

    move-result-object v10

    .line 1191
    .local v10, c:Lcom/broadcom/bt/le/api/GattClientContext;
    if-eqz v10, :cond_1

    .line 1192
    new-instance v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move/from16 v1, p3

    move/from16 v2, p5

    move-wide/from16 v3, p6

    move-wide/from16 v5, p8

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(IIJJI)V

    .line 1193
    .local v0, srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    new-instance v1, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move/from16 v2, p10

    move/from16 v3, p12

    move-wide/from16 v4, p13

    move-wide/from16 v6, p15

    invoke-direct/range {v1 .. v7}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(IIJJ)V

    .line 1194
    .local v1, charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    new-instance v2, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-wide/from16 v3, p18

    move-wide/from16 v5, p20

    move/from16 v7, p17

    invoke-direct/range {v2 .. v7}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(JJI)V

    .line 1196
    .local v2, descrId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    const/4 v3, 0x0

    invoke-virtual {v10, v0, v3}, Lcom/broadcom/bt/le/api/GattClientContext;->getServiceDataContext(Lcom/broadcom/bt/service/gatt/BluetoothGattID;Z)Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;

    move-result-object v12

    .line 1197
    .local v12, sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    if-eqz v12, :cond_0

    .line 1199
    :try_start_0
    iget-object v3, v12, Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;->callback:Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;

    move v4, p1

    move v5, p2

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object/from16 v9, p22

    invoke-interface/range {v3 .. v9}, Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;->onReadCharDescriptorValue(IILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1209
    .end local v0           #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v1           #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v2           #descrId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v12           #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :goto_0
    return-void

    .line 1200
    .restart local v0       #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .restart local v1       #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .restart local v2       #descrId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .restart local v12       #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :catch_0
    move-exception v11

    .line 1201
    .local v11, e:Landroid/os/RemoteException;
    const-string v3, "BluetoothGattService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error calling onReadCharDescriptorValue "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v11}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1204
    .end local v11           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v3, "BluetoothGattService"

    const-string v4, "No data context found"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1207
    .end local v0           #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v1           #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v2           #descrId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v12           #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :cond_1
    const-string v3, "BluetoothGattService"

    const-string v4, "No context found"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method onReadCharValue(IIIIIJJIIIJJ[B)V
    .locals 11
    .parameter "connId"
    .parameter "status"
    .parameter "srvcInstId"
    .parameter "srvcType"
    .parameter "srvcUuidType"
    .parameter "srvcUuidLsb"
    .parameter "srvcUuidMsb"
    .parameter "charInstId"
    .parameter "charType"
    .parameter "charUuidType"
    .parameter "charUuidLsb"
    .parameter "charUuidMsb"
    .parameter "data"

    .prologue
    .line 1158
    const-string v2, "BluetoothGattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReadCharValue: connId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->findContextByConnID(I)Lcom/broadcom/bt/le/api/GattClientContext;

    move-result-object v8

    .line 1161
    .local v8, c:Lcom/broadcom/bt/le/api/GattClientContext;
    if-eqz v8, :cond_1

    .line 1162
    new-instance v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move v1, p3

    move/from16 v2, p5

    move-wide/from16 v3, p6

    move-wide/from16 v5, p8

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(IIJJI)V

    .line 1163
    .local v0, srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    new-instance v1, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move/from16 v2, p10

    move/from16 v3, p12

    move-wide/from16 v4, p13

    move-wide/from16 v6, p15

    invoke-direct/range {v1 .. v7}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(IIJJ)V

    .line 1165
    .local v1, charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    const/4 v2, 0x0

    invoke-virtual {v8, v0, v2}, Lcom/broadcom/bt/le/api/GattClientContext;->getServiceDataContext(Lcom/broadcom/bt/service/gatt/BluetoothGattID;Z)Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;

    move-result-object v10

    .line 1166
    .local v10, sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    if-eqz v10, :cond_0

    .line 1168
    :try_start_0
    iget-object v2, v10, Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;->callback:Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;

    move v3, p1

    move v4, p2

    move-object v5, v0

    move-object v6, v1

    move-object/from16 v7, p17

    invoke-interface/range {v2 .. v7}, Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;->onReadCharacteristicValue(IILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1178
    .end local v0           #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v1           #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v10           #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :goto_0
    return-void

    .line 1169
    .restart local v0       #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .restart local v1       #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .restart local v10       #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :catch_0
    move-exception v9

    .line 1170
    .local v9, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothGattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error calling onReadCharacteristicValue "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1173
    .end local v9           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v2, "BluetoothGattService"

    const-string v3, "No data context found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1176
    .end local v0           #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v1           #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v10           #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :cond_1
    const-string v2, "BluetoothGattService"

    const-string v3, "No context found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method onRegForNotifications(IIIIIJJIIJJ)V
    .locals 11
    .parameter "connId"
    .parameter "status"
    .parameter "srvcInstId"
    .parameter "srvcServiceType"
    .parameter "srvcUuidType"
    .parameter "srvcUuidLsb"
    .parameter "srvcUuidMsb"
    .parameter "charInstId"
    .parameter "charUuidType"
    .parameter "charUuidLsb"
    .parameter "charUuidMsb"

    .prologue
    .line 1610
    const-string v2, "BluetoothGattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRegForNotifications: connId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->findContextByConnID(I)Lcom/broadcom/bt/le/api/GattClientContext;

    move-result-object v8

    .line 1615
    .local v8, c:Lcom/broadcom/bt/le/api/GattClientContext;
    if-eqz v8, :cond_1

    .line 1616
    new-instance v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move v1, p3

    move/from16 v2, p5

    move-wide/from16 v3, p6

    move-wide/from16 v5, p8

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(IIJJI)V

    .line 1618
    .local v0, srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    new-instance v1, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move/from16 v2, p10

    move/from16 v3, p11

    move-wide/from16 v4, p12

    move-wide/from16 v6, p14

    invoke-direct/range {v1 .. v7}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(IIJJ)V

    .line 1623
    .local v1, charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    const/4 v2, 0x0

    invoke-virtual {v8, v0, v2}, Lcom/broadcom/bt/le/api/GattClientContext;->getServiceDataContext(Lcom/broadcom/bt/service/gatt/BluetoothGattID;Z)Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;

    move-result-object v10

    .line 1625
    .local v10, sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    if-eqz v10, :cond_0

    .line 1627
    :try_start_0
    iget-object v2, v10, Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;->callback:Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;

    invoke-interface {v2, p1, p2, v0, v1}, Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;->onRegForNotifications(IILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1637
    .end local v0           #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v1           #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v10           #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :goto_0
    return-void

    .line 1628
    .restart local v0       #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .restart local v1       #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .restart local v10       #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :catch_0
    move-exception v9

    .line 1629
    .local v9, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothGattService"

    invoke-virtual {v9}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1632
    .end local v9           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v2, "BluetoothGattService"

    const-string v3, "data context not found!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1635
    .end local v0           #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v1           #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v10           #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :cond_1
    const-string v2, "BluetoothGattService"

    const-string v3, "context not found!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onResponseSendCompleted(BI)V
    .locals 5
    .parameter "status"
    .parameter "attrHandle"

    .prologue
    .line 2156
    const-string v2, "BluetoothGattService"

    const-string v3, "onResponseSendCompleted"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2158
    iget-object v2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mServerCallbackMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mAttrConvMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/le/api/GattServerContext;

    .line 2161
    .local v0, ctxt:Lcom/broadcom/bt/le/api/GattServerContext;
    if-nez v0, :cond_0

    .line 2162
    :try_start_0
    const-string v2, "BluetoothGattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GattServerContext not found for attrHandle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2170
    :goto_0
    return-void

    .line 2165
    :cond_0
    iget-object v2, v0, Lcom/broadcom/bt/le/api/GattServerContext;->mCallback:Lcom/broadcom/bt/le/api/IBleServiceCallback;

    invoke-interface {v2, p1, p2}, Lcom/broadcom/bt/le/api/IBleServiceCallback;->onResponseSendCompleted(BI)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2167
    :catch_0
    move-exception v1

    .line 2168
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "BluetoothGattService"

    const-string v3, "onHandleValueNotificationCompleted"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method onSearchCompleted(II)V
    .locals 5
    .parameter "connId"
    .parameter "status"

    .prologue
    .line 1245
    const-string v2, "BluetoothGattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSearchCompleted: connId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->findContextByConnID(I)Lcom/broadcom/bt/le/api/GattClientContext;

    move-result-object v0

    .line 1249
    .local v0, c:Lcom/broadcom/bt/le/api/GattClientContext;
    if-eqz v0, :cond_1

    .line 1251
    :try_start_0
    const-string v2, "BluetoothGattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSearchCompleted: connId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " client callback = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/broadcom/bt/le/api/GattClientContext;->getClientCallback()Lcom/broadcom/bt/le/api/IBleClientCallback;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    invoke-virtual {v0}, Lcom/broadcom/bt/le/api/GattClientContext;->getClientCallback()Lcom/broadcom/bt/le/api/IBleClientCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1256
    invoke-virtual {v0}, Lcom/broadcom/bt/le/api/GattClientContext;->getClientCallback()Lcom/broadcom/bt/le/api/IBleClientCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/broadcom/bt/le/api/IBleClientCallback;->onSearchCompleted(II)V

    .line 1266
    :goto_0
    return-void

    .line 1258
    :cond_0
    const-string v2, "BluetoothGattService"

    const-string v3, "No client callback"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1260
    :catch_0
    move-exception v1

    .line 1261
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothGattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error calling onSearchCompleted "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1264
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_1
    const-string v2, "BluetoothGattService"

    const-string v3, "No context found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method onSearchResult(IIIIJJ)V
    .locals 12
    .parameter "connId"
    .parameter "srvcInstId"
    .parameter "srvcServiceType"
    .parameter "srvcUuidType"
    .parameter "srvcUuidLsb"
    .parameter "srvcUuidMsb"

    .prologue
    .line 1272
    const-string v3, "BluetoothGattService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSearchResult: connId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " uuidlsb = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p5

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " uuidmsb = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p7

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->findContextByConnID(I)Lcom/broadcom/bt/le/api/GattClientContext;

    move-result-object v10

    .line 1276
    .local v10, c:Lcom/broadcom/bt/le/api/GattClientContext;
    if-eqz v10, :cond_1

    .line 1277
    new-instance v2, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move v3, p2

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move v9, p3

    invoke-direct/range {v2 .. v9}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(IIJJI)V

    .line 1281
    .local v2, srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :try_start_0
    invoke-virtual {v10}, Lcom/broadcom/bt/le/api/GattClientContext;->getClientCallback()Lcom/broadcom/bt/le/api/IBleClientCallback;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1282
    invoke-virtual {v10}, Lcom/broadcom/bt/le/api/GattClientContext;->getClientCallback()Lcom/broadcom/bt/le/api/IBleClientCallback;

    move-result-object v3

    invoke-interface {v3, p1, v2}, Lcom/broadcom/bt/le/api/IBleClientCallback;->onSearchResult(ILcom/broadcom/bt/service/gatt/BluetoothGattID;)V

    .line 1292
    .end local v2           #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_0
    return-void

    .line 1284
    .restart local v2       #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :cond_0
    const-string v3, "BluetoothGattService"

    const-string v4, "No client callback"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1286
    :catch_0
    move-exception v11

    .line 1287
    .local v11, e:Landroid/os/RemoteException;
    const-string v3, "BluetoothGattService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error calling onSearchResult "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v11}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1290
    .end local v2           #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v11           #e:Landroid/os/RemoteException;
    :cond_1
    const-string v3, "BluetoothGattService"

    const-string v4, "No context found"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceCreated(BBIIIJJI)V
    .locals 16
    .parameter "status"
    .parameter "serIf"
    .parameter "svcInstance"
    .parameter "svcType"
    .parameter "uuidType"
    .parameter "svcUuidlsb"
    .parameter "svcUuidmsb"
    .parameter "svcHandle"

    .prologue
    .line 1932
    const-string v2, "BluetoothGattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onServiceCreated(): status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", serIf="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uuidType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", svcInstance="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", svcUuidlsb=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", svcUuidmsb=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", svcHandle="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p10

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1938
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mServerInitialCallbackList:Ljava/util/ArrayList;

    monitor-enter v14

    .line 1939
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mServerInitialCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v12, v2, :cond_0

    .line 1940
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mServerInitialCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/broadcom/bt/le/api/GattServerContext;

    .line 1941
    .local v11, ctxt:Lcom/broadcom/bt/le/api/GattServerContext;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mserIftoUuidMap:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 1942
    .local v10, appUuid:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    if-eqz v10, :cond_2

    iget-object v2, v11, Lcom/broadcom/bt/le/api/GattServerContext;->mAppUuid:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    if-eqz v2, :cond_2

    iget-object v2, v11, Lcom/broadcom/bt/le/api/GattServerContext;->mAppUuid:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    invoke-virtual {v2, v10}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1946
    const-string v2, "BluetoothGattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onServiceCreated(): Checking if svc created matches ctxt: ctxt.mSvcInstance="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Lcom/broadcom/bt/le/api/GattServerContext;->getServiceInstId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ctxt.svcUuid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v11, Lcom/broadcom/bt/le/api/GattServerContext;->mSvcUuid:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1950
    iget-object v15, v11, Lcom/broadcom/bt/le/api/GattServerContext;->mSvcUuid:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    new-instance v2, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move/from16 v3, p3

    move/from16 v4, p5

    move-wide/from16 v5, p6

    move-wide/from16 v7, p8

    move/from16 v9, p4

    invoke-direct/range {v2 .. v9}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(IIJJI)V

    invoke-virtual {v15, v2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1951
    const-string v2, "BluetoothGattService"

    const-string v3, "ctx matches!"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1952
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mServerCallbackMap:Ljava/util/HashMap;

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1954
    :try_start_1
    iget-object v2, v11, Lcom/broadcom/bt/le/api/GattServerContext;->mCallback:Lcom/broadcom/bt/le/api/IBleServiceCallback;

    move/from16 v0, p1

    move/from16 v1, p10

    invoke-interface {v2, v0, v1}, Lcom/broadcom/bt/le/api/IBleServiceCallback;->onServiceCreated(BI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 1958
    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mServerInitialCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1965
    .end local v10           #appUuid:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v11           #ctxt:Lcom/broadcom/bt/le/api/GattServerContext;
    :cond_0
    monitor-exit v14

    .line 1966
    return-void

    .line 1955
    .restart local v10       #appUuid:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .restart local v11       #ctxt:Lcom/broadcom/bt/le/api/GattServerContext;
    :catch_0
    move-exception v13

    .line 1956
    .local v13, t:Ljava/lang/Throwable;
    const-string v2, "BluetoothGattService"

    const-string v3, "onServiceCreated()"

    invoke-static {v2, v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1965
    .end local v10           #appUuid:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v11           #ctxt:Lcom/broadcom/bt/le/api/GattServerContext;
    .end local v13           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1961
    .restart local v10       #appUuid:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .restart local v11       #ctxt:Lcom/broadcom/bt/le/api/GattServerContext;
    :cond_1
    :try_start_3
    const-string v2, "BluetoothGattService"

    const-string v3, "ctx doesn\'t match"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1939
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0
.end method

.method public onServiceDeleted(BBI)V
    .locals 5
    .parameter "status"
    .parameter "serIf"
    .parameter "svcHandle"

    .prologue
    .line 2079
    const-string v2, "BluetoothGattService"

    const-string v3, "onServiceDeleted"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    iget-object v2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mServerCallbackMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/le/api/GattServerContext;

    .line 2082
    .local v0, ctxt:Lcom/broadcom/bt/le/api/GattServerContext;
    if-nez v0, :cond_0

    .line 2083
    :try_start_0
    const-string v2, "BluetoothGattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GattServerContext not found for svcHandle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2091
    :goto_0
    iget-object v2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mServerCallbackMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2092
    return-void

    .line 2086
    :cond_0
    :try_start_1
    iget-object v2, v0, Lcom/broadcom/bt/le/api/GattServerContext;->mCallback:Lcom/broadcom/bt/le/api/IBleServiceCallback;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/le/api/IBleServiceCallback;->onServiceDeleted(B)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2088
    :catch_0
    move-exception v1

    .line 2089
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "BluetoothGattService"

    const-string v3, "onServiceDeleted"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onServiceStarted(BBI)V
    .locals 5
    .parameter "status"
    .parameter "serIf"
    .parameter "svcHandle"

    .prologue
    .line 2095
    const-string v2, "BluetoothGattService"

    const-string v3, "onServiceStarted"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2096
    iget-object v2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mServerCallbackMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/le/api/GattServerContext;

    .line 2099
    .local v0, ctxt:Lcom/broadcom/bt/le/api/GattServerContext;
    if-nez v0, :cond_0

    .line 2100
    :try_start_0
    const-string v2, "BluetoothGattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GattServerContext not found for svcHandle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2108
    :goto_0
    return-void

    .line 2103
    :cond_0
    iget-object v2, v0, Lcom/broadcom/bt/le/api/GattServerContext;->mCallback:Lcom/broadcom/bt/le/api/IBleServiceCallback;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/le/api/IBleServiceCallback;->onServiceStarted(B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2105
    :catch_0
    move-exception v1

    .line 2106
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "BluetoothGattService"

    const-string v3, "onServiceStarted"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onServiceStopped(BBI)V
    .locals 5
    .parameter "status"
    .parameter "serIf"
    .parameter "svcHandle"

    .prologue
    .line 2111
    const-string v2, "BluetoothGattService"

    const-string v3, "onServiceStopped"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2112
    iget-object v2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mServerCallbackMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/le/api/GattServerContext;

    .line 2115
    .local v0, ctxt:Lcom/broadcom/bt/le/api/GattServerContext;
    if-nez v0, :cond_0

    .line 2116
    :try_start_0
    const-string v2, "BluetoothGattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GattServerContext not found for svcHandle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2124
    :goto_0
    return-void

    .line 2119
    :cond_0
    iget-object v2, v0, Lcom/broadcom/bt/le/api/GattServerContext;->mCallback:Lcom/broadcom/bt/le/api/IBleServiceCallback;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/le/api/IBleServiceCallback;->onServiceStopped(B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2121
    :catch_0
    move-exception v1

    .line 2122
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "BluetoothGattService"

    const-string v3, "onServiceStopped"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method onWriteChar(IIIIIJJIIJJ)V
    .locals 11
    .parameter "connId"
    .parameter "status"
    .parameter "srvcInstId"
    .parameter "srvcServiceType"
    .parameter "srvcUuidType"
    .parameter "srvcUuidLsb"
    .parameter "srvcUuidMsb"
    .parameter "charInstId"
    .parameter "charUuidType"
    .parameter "charUuidLsb"
    .parameter "charUuidMsb"

    .prologue
    .line 1218
    const-string v2, "BluetoothGattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onWriteChar: connId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->findContextByConnID(I)Lcom/broadcom/bt/le/api/GattClientContext;

    move-result-object v8

    .line 1221
    .local v8, c:Lcom/broadcom/bt/le/api/GattClientContext;
    if-eqz v8, :cond_1

    .line 1223
    new-instance v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move v1, p3

    move/from16 v2, p5

    move-wide/from16 v3, p6

    move-wide/from16 v5, p8

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(IIJJI)V

    .line 1225
    .local v0, srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    new-instance v1, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move/from16 v2, p10

    move/from16 v3, p11

    move-wide/from16 v4, p12

    move-wide/from16 v6, p14

    invoke-direct/range {v1 .. v7}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(IIJJ)V

    .line 1228
    .local v1, charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    const/4 v2, 0x0

    invoke-virtual {v8, v0, v2}, Lcom/broadcom/bt/le/api/GattClientContext;->getServiceDataContext(Lcom/broadcom/bt/service/gatt/BluetoothGattID;Z)Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;

    move-result-object v10

    .line 1229
    .local v10, sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    if-eqz v10, :cond_0

    .line 1231
    :try_start_0
    iget-object v2, v10, Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;->callback:Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;

    invoke-interface {v2, p1, p2, v0, v1}, Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;->onWriteCharValue(IILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1241
    .end local v0           #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v1           #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v10           #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :goto_0
    return-void

    .line 1232
    .restart local v0       #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .restart local v1       #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .restart local v10       #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :catch_0
    move-exception v9

    .line 1233
    .local v9, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothGattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error calling onWriteChar "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1236
    .end local v9           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v2, "BluetoothGattService"

    const-string v3, "No data context found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1239
    .end local v0           #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v1           #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v10           #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :cond_1
    const-string v2, "BluetoothGattService"

    const-string v3, "No context found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method onWriteDescr(IIIIIJJIIJJIJJ)V
    .locals 12
    .parameter "connId"
    .parameter "status"
    .parameter "srvcInstId"
    .parameter "srvcServiceType"
    .parameter "srvcUuidType"
    .parameter "srvcUuidLsb"
    .parameter "srvcUuidMsb"
    .parameter "charInstId"
    .parameter "charUuidType"
    .parameter "charUuidLsb"
    .parameter "charUuidMsb"
    .parameter "descrUuidType"
    .parameter "descrUuidLsb"
    .parameter "descrUuidMsb"

    .prologue
    .line 1303
    const-string v3, "BluetoothGattService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onWriteDescr: connId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->findContextByConnID(I)Lcom/broadcom/bt/le/api/GattClientContext;

    move-result-object v9

    .line 1306
    .local v9, c:Lcom/broadcom/bt/le/api/GattClientContext;
    if-eqz v9, :cond_1

    .line 1308
    new-instance v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move v1, p3

    move/from16 v2, p5

    move-wide/from16 v3, p6

    move-wide/from16 v5, p8

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(IIJJI)V

    .line 1310
    .local v0, srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    new-instance v1, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move/from16 v2, p10

    move/from16 v3, p11

    move-wide/from16 v4, p12

    move-wide/from16 v6, p14

    invoke-direct/range {v1 .. v7}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(IIJJ)V

    .line 1312
    .local v1, charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    new-instance v2, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-wide/from16 v3, p17

    move-wide/from16 v5, p19

    move/from16 v7, p16

    invoke-direct/range {v2 .. v7}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;-><init>(JJI)V

    .line 1314
    .local v2, descrId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    const/4 v3, 0x0

    invoke-virtual {v9, v0, v3}, Lcom/broadcom/bt/le/api/GattClientContext;->getServiceDataContext(Lcom/broadcom/bt/service/gatt/BluetoothGattID;Z)Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;

    move-result-object v11

    .line 1315
    .local v11, sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    if-eqz v11, :cond_0

    .line 1317
    :try_start_0
    iget-object v3, v11, Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;->callback:Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;

    move v4, p1

    move v5, p2

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-interface/range {v3 .. v8}, Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;->onWriteCharDescrValue(IILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1327
    .end local v0           #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v1           #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v2           #descrId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v11           #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :goto_0
    return-void

    .line 1318
    .restart local v0       #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .restart local v1       #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .restart local v2       #descrId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .restart local v11       #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :catch_0
    move-exception v10

    .line 1319
    .local v10, e:Landroid/os/RemoteException;
    const-string v3, "BluetoothGattService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error calling onWriteCharDescrValue "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v10}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1322
    .end local v10           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v3, "BluetoothGattService"

    const-string v4, "no data context found"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1325
    .end local v0           #srvcId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v1           #charId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v2           #descrId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v11           #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :cond_1
    const-string v3, "BluetoothGattService"

    const-string v4, "no context found"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public open(BLjava/lang/String;Z)V
    .locals 4
    .parameter "clientif"
    .parameter "address"
    .parameter "isDirect"

    .prologue
    .line 248
    const-string v1, "BluetoothGattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "open clientif = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " address = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isDirect = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->findContextByClientIf(I)Lcom/broadcom/bt/le/api/GattClientContext;

    move-result-object v0

    .line 252
    .local v0, clientContext:Lcom/broadcom/bt/le/api/GattClientContext;
    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {v0, p2}, Lcom/broadcom/bt/le/api/GattClientContext;->setPeerAddress(Ljava/lang/String;)V

    .line 254
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->openNative(BLjava/lang/String;Z)V

    .line 260
    :goto_0
    return-void

    .line 257
    :cond_0
    const-string v1, "BluetoothGattService"

    const-string v2, "Context not found for the client - is the app registered?"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public prepareWrite(ILcom/broadcom/bt/service/gatt/BluetoothGattCharID;II[B)V
    .locals 18
    .parameter "connId"
    .parameter "charId"
    .parameter "offset"
    .parameter "len"
    .parameter "value"

    .prologue
    .line 831
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getInstanceID()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getServiceType()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v5

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v7

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getInstanceID()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v11

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v13

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v15, p3

    move/from16 v16, p4

    move-object/from16 v17, p5

    invoke-direct/range {v0 .. v17}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->prepareWriteNative(IIIIJJIIJJII[B)V

    .line 840
    return-void
.end method

.method public readChar(ILcom/broadcom/bt/service/gatt/BluetoothGattCharID;B)V
    .locals 16
    .parameter "connId"
    .parameter "charId"
    .parameter "authReq"

    .prologue
    .line 713
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getInstanceID()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getServiceType()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v5

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v7

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getInstanceID()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v11

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v13

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v15, p3

    invoke-direct/range {v0 .. v15}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->readCharNative(IIIIJJIIJJB)V

    .line 723
    return-void
.end method

.method public readCharDescr(ILcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;B)V
    .locals 21
    .parameter "connId"
    .parameter "charDescr"
    .parameter "authReq"

    .prologue
    .line 737
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getInstanceID()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getServiceType()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v5

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v7

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getInstanceID()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v11

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v13

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->getDescrId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->getDescrId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v16

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->getDescrId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v20, p3

    invoke-direct/range {v0 .. v20}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->readCharDescrNative(IIIIJJIIJJIJJB)V

    .line 749
    return-void
.end method

.method public registerApp(Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/le/api/IBleClientCallback;)V
    .locals 7
    .parameter "appID"
    .parameter "callback"

    .prologue
    .line 172
    const-string v0, "BluetoothGattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerApp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->findContextByAppId(Lcom/broadcom/bt/service/gatt/BluetoothGattID;)Lcom/broadcom/bt/le/api/GattClientContext;

    move-result-object v6

    .line 176
    .local v6, clientContext:Lcom/broadcom/bt/le/api/GattClientContext;
    if-nez v6, :cond_0

    .line 177
    new-instance v6, Lcom/broadcom/bt/le/api/GattClientContext;

    .end local v6           #clientContext:Lcom/broadcom/bt/le/api/GattClientContext;
    invoke-direct {v6, p2}, Lcom/broadcom/bt/le/api/GattClientContext;-><init>(Lcom/broadcom/bt/le/api/IBleClientCallback;)V

    .line 178
    .restart local v6       #clientContext:Lcom/broadcom/bt/le/api/GattClientContext;
    iput-object p1, v6, Lcom/broadcom/bt/le/api/GattClientContext;->mClientAppId:Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 180
    iget-object v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mClientInitialCallbackList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mClientInitialCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    :goto_0
    invoke-virtual {p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v1

    invoke-virtual {p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->registerAppNative(IJJ)V

    .line 188
    return-void

    .line 182
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 184
    :cond_0
    const-string v0, "BluetoothGattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Application already registered "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerForNotifications(BLjava/lang/String;Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;)V
    .locals 16
    .parameter "clientIf"
    .parameter "address"
    .parameter "charId"

    .prologue
    .line 857
    invoke-virtual/range {p3 .. p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getInstanceID()I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getServiceType()I

    move-result v4

    invoke-virtual/range {p3 .. p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v5

    invoke-virtual/range {p3 .. p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v6

    invoke-virtual/range {p3 .. p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v8

    invoke-virtual/range {p3 .. p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getInstanceID()I

    move-result v10

    invoke-virtual/range {p3 .. p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v11

    invoke-virtual/range {p3 .. p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v12

    invoke-virtual/range {p3 .. p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v14

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v15}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->registerForNotificationsNative(BLjava/lang/String;IIIJJIIJJ)V

    .line 867
    return-void
.end method

.method public registerServerProfileCallback(Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/le/api/IBleProfileEventCallback;)V
    .locals 6
    .parameter "appUuid"
    .parameter "callback"

    .prologue
    .line 396
    iget-object v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mServerProfileCallbackMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 397
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mServerProfileCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    const-string v0, "BluetoothGattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerServerProfileCallback lsb is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msb is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-virtual {p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v1

    invoke-virtual {p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->GATTServer_AppRegister(IJJ)V

    .line 406
    return-void

    .line 398
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public registerServerServiceCallback(Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/le/api/IBleServiceCallback;)V
    .locals 5
    .parameter "serviceUuid"
    .parameter "appUuid"
    .parameter "callback"

    .prologue
    .line 380
    const-string v2, "BluetoothGattService"

    const-string v3, "registerServerServiceCallback"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v3, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mServerInitialCallbackList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 382
    if-eqz p3, :cond_0

    .line 383
    :try_start_0
    new-instance v0, Lcom/broadcom/bt/le/api/GattServerContext;

    invoke-direct {v0, p1, p2, p3}, Lcom/broadcom/bt/le/api/GattServerContext;-><init>(Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/le/api/IBleServiceCallback;)V

    .line 384
    .local v0, context:Lcom/broadcom/bt/le/api/GattServerContext;
    iget-object v2, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mServerInitialCallbackList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {p3, v2, p1}, Lcom/broadcom/bt/le/api/IBleServiceCallback;->onServiceRegistered(BLcom/broadcom/bt/service/gatt/BluetoothGattID;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 391
    .end local v0           #context:Lcom/broadcom/bt/le/api/GattServerContext;
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v3

    .line 392
    return-void

    .line 387
    .restart local v0       #context:Lcom/broadcom/bt/le/api/GattServerContext;
    :catch_0
    move-exception v1

    .line 388
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "BluetoothGattService"

    const-string v4, "onHandleValueIndicationCompleted"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 391
    .end local v0           #context:Lcom/broadcom/bt/le/api/GattServerContext;
    .end local v1           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public registerServiceDataCallback(ILcom/broadcom/bt/service/gatt/BluetoothGattID;Ljava/lang/String;Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;)V
    .locals 4
    .parameter "connId"
    .parameter "svcUuid"
    .parameter "bdaddr"
    .parameter "callback"

    .prologue
    .line 368
    const-string v2, "BluetoothGattService"

    const-string v3, "registerServiceDataCallback"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v3, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mClientInitialCallbackList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 372
    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->findContextByConnID(I)Lcom/broadcom/bt/le/api/GattClientContext;

    move-result-object v0

    .line 373
    .local v0, c:Lcom/broadcom/bt/le/api/GattClientContext;
    const/4 v2, 0x1

    invoke-virtual {v0, p2, v2}, Lcom/broadcom/bt/le/api/GattClientContext;->getServiceDataContext(Lcom/broadcom/bt/service/gatt/BluetoothGattID;Z)Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;

    move-result-object v1

    .line 374
    .local v1, sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    iput-object p4, v1, Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;->callback:Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;

    .line 375
    monitor-exit v3

    .line 376
    return-void

    .line 375
    .end local v0           #c:Lcom/broadcom/bt/le/api/GattClientContext;
    .end local v1           #sdContext:Lcom/broadcom/bt/le/api/GattClientContext$GattServiceDataContext;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public searchService(ILcom/broadcom/bt/service/gatt/BluetoothGattID;)V
    .locals 9
    .parameter "connId"
    .parameter "serviceUuid"

    .prologue
    .line 428
    if-nez p2, :cond_0

    const/4 v8, 0x1

    .line 431
    .local v8, searchAll:Z
    :goto_0
    if-eqz v8, :cond_1

    .line 432
    const/4 v2, 0x1

    const/4 v3, -0x1

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->searchServiceNative(IZIJJ)V

    .line 443
    :goto_1
    return-void

    .line 428
    .end local v8           #searchAll:Z
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 434
    .restart local v8       #searchAll:Z
    :cond_1
    invoke-virtual {p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    .line 435
    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v4

    invoke-virtual {p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v6

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->searchServiceNative(IZIJJ)V

    goto :goto_1

    .line 439
    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuid16()I

    move-result v0

    int-to-long v4, v0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->searchServiceNative(IZIJJ)V

    goto :goto_1
.end method

.method public sendIndConfirm(ILcom/broadcom/bt/service/gatt/BluetoothGattCharID;)V
    .locals 15
    .parameter "connId"
    .parameter "charId"

    .prologue
    .line 810
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getInstanceID()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getServiceType()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v5

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v7

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getInstanceID()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v11

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v13

    move-object v0, p0

    move/from16 v1, p1

    invoke-direct/range {v0 .. v14}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->sendIndConfirmNative(IIIIJJIIJJ)V

    .line 819
    return-void
.end method

.method public setEncryption(Ljava/lang/String;B)V
    .locals 3
    .parameter "address"
    .parameter "action"

    .prologue
    .line 206
    const-string v0, "BluetoothGattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEncryption address = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->setEncryptionNative(Ljava/lang/String;B)V

    .line 208
    return-void
.end method

.method public setScanParameters(II)V
    .locals 3
    .parameter "scanInterval"
    .parameter "scanWindow"

    .prologue
    .line 213
    const-string v0, "BluetoothGattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScanParameters interval = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " window = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->setScanParametersNative(II)V

    .line 215
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 118
    const-string v0, "BluetoothGattService"

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {p0}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->enable()V

    .line 120
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 123
    const-string v0, "BluetoothGattService"

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {p0}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->disable()V

    .line 125
    return-void
.end method

.method public unregisterApp(B)V
    .locals 3
    .parameter "clientIf"

    .prologue
    .line 194
    const-string v0, "BluetoothGattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterApp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->findContextByClientIf(I)Lcom/broadcom/bt/le/api/GattClientContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 197
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->unregisterAppNative(B)V

    .line 201
    :goto_0
    return-void

    .line 199
    :cond_0
    const-string v0, "BluetoothGattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No context found for clientif "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unregisterServerProfileCallback(I)V
    .locals 3
    .parameter "serIf"

    .prologue
    .line 409
    const-string v0, "BluetoothGattService"

    const-string v1, "unregisterServerProfileCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->GATTServer_AppDeregister(I)V

    .line 412
    iget-object v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mServerProfileCallbackMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 413
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mServerProfileCallbackMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    monitor-exit v1

    .line 415
    return-void

    .line 414
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterServerServiceCallback(I)V
    .locals 3
    .parameter "svcHandle"

    .prologue
    .line 418
    const-string v0, "BluetoothGattService"

    const-string v1, "unregisterServerServiceCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v1, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mServerCallbackMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 420
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->mServerCallbackMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    monitor-exit v1

    .line 422
    return-void

    .line 421
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public writeCharDescrValue(ILcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;IB[B)V
    .locals 23
    .parameter "connId"
    .parameter "charDescr"
    .parameter "writeType"
    .parameter "authReq"
    .parameter "charDescrVal"

    .prologue
    .line 788
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getInstanceID()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getServiceType()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v5

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v7

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getInstanceID()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v11

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v13

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->getDescrId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->getDescrId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v16

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->getDescrId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v20, p3

    move/from16 v21, p4

    move-object/from16 v22, p5

    invoke-direct/range {v0 .. v22}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->writeCharDescrValueNative(IIIIJJIIJJIJJIB[B)V

    .line 801
    return-void
.end method

.method public writeCharValue(ILcom/broadcom/bt/service/gatt/BluetoothGattCharID;IB[B)V
    .locals 18
    .parameter "connId"
    .parameter "charId"
    .parameter "writeType"
    .parameter "authReq"
    .parameter "value"

    .prologue
    .line 762
    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getInstanceID()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getServiceType()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v5

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getSrvcId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v7

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getInstanceID()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getUuidType()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getLeastSignificantBits()J

    move-result-wide v11

    invoke-virtual/range {p2 .. p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->getCharId()Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->getMostSignificantBits()J

    move-result-wide v13

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v15, p3

    move/from16 v16, p4

    move-object/from16 v17, p5

    invoke-direct/range {v0 .. v17}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->writeCharValueNative(IIIIJJIIJJIB[B)V

    .line 772
    return-void
.end method
