.class final Lcom/broadcom/bt/app/system/MapService$MapServiceStub;
.super Lcom/broadcom/bt/service/map/IMapService$Stub;
.source "MapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/app/system/MapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MapServiceStub"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSvc:Lcom/broadcom/bt/service/map/MapService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/IMapService$Stub;-><init>()V

    .line 110
    iput-object v1, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    .line 111
    iput-object v1, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mContext:Landroid/content/Context;

    .line 116
    iput-object p1, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mContext:Landroid/content/Context;

    .line 117
    const-string v1, "bluetooth_map"

    invoke-static {v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->getService(Ljava/lang/String;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/map/MapEventLoop;

    .line 120
    .local v0, mEventLoop:Lcom/broadcom/bt/service/map/MapEventLoop;
    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0}, Lcom/broadcom/bt/service/map/MapEventLoop;->getMapService()Lcom/broadcom/bt/service/map/MapService;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    .line 123
    :cond_0
    return-void
.end method


# virtual methods
.method public deleteFile(Ljava/lang/String;)Z
    .locals 3
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 283
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    if-nez v0, :cond_0

    .line 285
    const-string v0, "MAP.MAPAppService"

    const-string v1, "Service not available. Unable to call unregisterDSProvider"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const/4 v0, 0x0

    .line 288
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/map/MapService;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public disableProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "datasourceName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    if-nez v0, :cond_0

    .line 130
    const-string v0, "MAP.MAPAppService"

    const-string v1, "Service not available. Unable to call disableProvider"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/broadcom/bt/service/map/MapService;->disableProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public disconnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "bda"
    .parameter "providerID"
    .parameter "datasourceID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 220
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    if-nez v0, :cond_0

    .line 222
    const-string v0, "MAP.MAPAppService"

    const-string v1, "Service not available. Unable to call notifyRegistrationResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :goto_0
    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/broadcom/bt/service/map/MapService;->disconnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public enableProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "datasourceName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    if-nez v0, :cond_0

    .line 140
    const-string v0, "MAP.MAPAppService"

    const-string v1, "Service not available. Unable to call enableProvider"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/broadcom/bt/service/map/MapService;->enableProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public enumRegisteredProviders()[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    if-nez v0, :cond_0

    .line 149
    const-string v0, "MAP.MAPAppService"

    const-string v1, "Service not available. Unable to call enumRegisteredProviders"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const/4 v0, 0x0

    .line 152
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/map/MapService;->enumRegisteredProviders()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public folderListingResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B[Lcom/broadcom/bt/service/map/FolderInfo;)V
    .locals 7
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "arg4"
    .parameter "arg5"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    if-nez v0, :cond_0

    .line 160
    const-string v0, "MAP.MAPAppService"

    const-string v1, "Service not available. Unable to call folderListingResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/service/map/MapService;->folderListingResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B[Lcom/broadcom/bt/service/map/FolderInfo;)V

    goto :goto_0
.end method

.method public getMsgResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)V
    .locals 7
    .parameter "request_id"
    .parameter "provider_id"
    .parameter "datasource_id"
    .parameter "message_id"
    .parameter "status"
    .parameter "msg_file_path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    if-nez v0, :cond_0

    .line 170
    const-string v0, "MAP.MAPAppService"

    const-string v1, "Service not available. Unable to call getMsgResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/service/map/MapService;->getMsgResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)V

    goto :goto_0
.end method

.method public msgListingResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;B[Lcom/broadcom/bt/service/map/MessageInfo;)V
    .locals 9
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "arg4"
    .parameter "arg5"
    .parameter "arg6"
    .parameter "arg7"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    if-nez v0, :cond_0

    .line 182
    const-string v0, "MAP.MAPAppService"

    const-string v1, "Service not available. Unable to call msgListingResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/broadcom/bt/service/map/MapService;->msgListingResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;B[Lcom/broadcom/bt/service/map/MessageInfo;)V

    goto :goto_0
.end method

.method public msgPushResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)V
    .locals 7
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "arg4"
    .parameter "arg5"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    if-nez v0, :cond_0

    .line 192
    const-string v0, "MAP.MAPAppService"

    const-string v1, "Service not available. Unable to call msgPushResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :goto_0
    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/service/map/MapService;->msgPushResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)V

    goto :goto_0
.end method

.method public notifyClient(Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V
    .locals 8
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "arg4"
    .parameter "arg5"
    .parameter "arg6"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 201
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    if-nez v0, :cond_0

    .line 203
    const-string v0, "MAP.MAPAppService"

    const-string v1, "Service not available. Unable to call notifyClient"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/broadcom/bt/service/map/MapService;->notifyClient(Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V

    goto :goto_0
.end method

.method public notifyRegistrationResponse(ILjava/lang/String;Ljava/lang/String;B)V
    .locals 3
    .parameter "request_id"
    .parameter "provider_id"
    .parameter "datasource_id"
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    if-nez v0, :cond_0

    .line 213
    const-string v0, "MAP.MAPAppService"

    const-string v1, "Service not available. Unable to call notifyRegistrationResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :goto_0
    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/broadcom/bt/service/map/MapService;->notifyRegistrationResponse(ILjava/lang/String;Ljava/lang/String;B)V

    goto :goto_0
.end method

.method public registerDSProvider(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;Lcom/broadcom/bt/service/map/IMapCallback;)V
    .locals 10
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "arg4"
    .parameter "arg5"
    .parameter "arg6"
    .parameter "arg7"
    .parameter "arg8"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 231
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    if-nez v0, :cond_0

    .line 233
    const-string v0, "MAP.MAPAppService"

    const-string v1, "Service not available. Unable to call registerDSProvider"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :goto_0
    return-void

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/broadcom/bt/service/map/MapService;->registerDSProvider(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;Lcom/broadcom/bt/service/map/IMapCallback;)V

    goto :goto_0
.end method

.method public setMsgStatusResponse(ILjava/lang/String;Ljava/lang/String;BBLjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "arg4"
    .parameter "arg5"
    .parameter "arg6"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    if-nez v0, :cond_0

    .line 244
    const-string v0, "MAP.MAPAppService"

    const-string v1, "Service not available. Unable to call setMsgStatusResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :goto_0
    return-void

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/broadcom/bt/service/map/MapService;->setMsgStatusResponse(ILjava/lang/String;Ljava/lang/String;BBLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startMSEInstance(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "provider_id"
    .parameter "provider_ds_id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 252
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    if-nez v0, :cond_0

    .line 254
    const-string v0, "MAP.MAPAppService"

    const-string v1, "Service not available. Unable to call startMSEInstance"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :goto_0
    return-void

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/map/MapService;->startMSEInstance(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopMSEInstance(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "provider_id"
    .parameter "provider_ds_id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 262
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    if-nez v0, :cond_0

    .line 264
    const-string v0, "MAP.MAPAppService"

    const-string v1, "Service not available. Unable to call stopMSEInstance"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :goto_0
    return-void

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/map/MapService;->stopMSEInstance(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unregisterDSProvider(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 272
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    if-nez v0, :cond_0

    .line 274
    const-string v0, "MAP.MAPAppService"

    const-string v1, "Service not available. Unable to call unregisterDSProvider"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :goto_0
    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/MapService$MapServiceStub;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/map/MapService;->unregisterDSProvider(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
