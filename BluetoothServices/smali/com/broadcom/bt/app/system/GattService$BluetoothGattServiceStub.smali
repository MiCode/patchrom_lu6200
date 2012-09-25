.class final Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;
.super Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;
.source "GattService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/app/system/GattService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BluetoothGattServiceStub"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

.field final synthetic this$0:Lcom/broadcom/bt/app/system/GattService;


# direct methods
.method public constructor <init>(Lcom/broadcom/bt/app/system/GattService;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->this$0:Lcom/broadcom/bt/app/system/GattService;

    invoke-direct {p0}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;-><init>()V

    .line 85
    iput-object p2, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    .line 86
    const-string v0, "bluetooth_gatt"

    invoke-static {v0}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->getService(Ljava/lang/String;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    iput-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    .line 90
    return-void
.end method


# virtual methods
.method public GATTServer_AddCharDescriptor(IILcom/broadcom/bt/service/gatt/BluetoothGattID;)V
    .locals 3
    .parameter "svc_handle"
    .parameter "permissions"
    .parameter "descId"

    .prologue
    .line 428
    const-string v0, "GattAppService"

    const-string v1, "GATTServer_AddCharacteristicDescriptor"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->GATTServer_AddCharDescriptor(IILcom/broadcom/bt/service/gatt/BluetoothGattID;)V

    .line 432
    return-void
.end method

.method public GATTServer_AddCharacteristic(ILcom/broadcom/bt/service/gatt/BluetoothGattID;IIZI)V
    .locals 7
    .parameter "svc_handle"
    .parameter "charId"
    .parameter "permissions"
    .parameter "char_property"
    .parameter "dirty_mask"
    .parameter "dirty_desc_num"

    .prologue
    .line 417
    const-string v0, "GattAppService"

    const-string v1, "GATTServer_AddCharacteristic"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->GATTServer_AddCharacteristic(ILcom/broadcom/bt/service/gatt/BluetoothGattID;IIZI)V

    .line 422
    return-void
.end method

.method public GATTServer_AddIncludedService(II)V
    .locals 3
    .parameter "svc_handle"
    .parameter "included_svc_handle"

    .prologue
    .line 405
    const-string v0, "GattAppService"

    const-string v1, "GATTServer_AddIncludedService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->GATTServer_AddIncludedService(II)V

    .line 411
    return-void
.end method

.method public GATTServer_CancelOpen(BLjava/lang/String;Z)V
    .locals 3
    .parameter "serIf"
    .parameter "address"
    .parameter "isDirect"

    .prologue
    .line 382
    const-string v0, "GattAppService"

    const-string v1, "GATTServer_CancelOpen"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->GATTServer_CancelOpen(BLjava/lang/String;Z)V

    .line 385
    return-void
.end method

.method public GATTServer_Close(I)V
    .locals 3
    .parameter "connId"

    .prologue
    .line 390
    const-string v0, "GattAppService"

    const-string v1, "GATTServer_close"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->GATTServer_Close(I)V

    .line 393
    return-void
.end method

.method public GATTServer_CreateService(BLcom/broadcom/bt/service/gatt/BluetoothGattID;I)V
    .locals 3
    .parameter "ser_if"
    .parameter "svcId"
    .parameter "num_handles"

    .prologue
    .line 397
    const-string v0, "GattAppService"

    const-string v1, "GATTServer_CreateService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->GATTServer_CreateService(BLcom/broadcom/bt/service/gatt/BluetoothGattID;I)V

    .line 400
    return-void
.end method

.method public GATTServer_DeleteService(I)V
    .locals 3
    .parameter "svc_handle"

    .prologue
    .line 436
    const-string v0, "GattAppService"

    const-string v1, "GATTServer_DeleteService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->GATTServer_DeleteService(I)V

    .line 440
    return-void
.end method

.method public GATTServer_HandleValueIndication(II[B)V
    .locals 3
    .parameter "connId"
    .parameter "attr_handle"
    .parameter "val"

    .prologue
    .line 461
    const-string v0, "GattAppService"

    const-string v1, "GATTServer_HandleValueIndication"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->GATTServer_HandleValueIndication(II[B)V

    .line 466
    return-void
.end method

.method public GATTServer_HandleValueNotification(II[B)V
    .locals 3
    .parameter "connId"
    .parameter "attr_handle"
    .parameter "val"

    .prologue
    .line 473
    const-string v0, "GattAppService"

    const-string v1, "GATTServer_HandleValueNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->GATTServer_HandleValueNotification(II[B)V

    .line 478
    return-void
.end method

.method public GATTServer_Open(BLjava/lang/String;Z)V
    .locals 3
    .parameter "serIf"
    .parameter "address"
    .parameter "isDirect"

    .prologue
    .line 373
    const-string v0, "GattAppService"

    const-string v1, "GATTServer_Open"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->GATTServer_Open(BLjava/lang/String;Z)V

    .line 377
    return-void
.end method

.method public GATTServer_SendRsp(IIBII[BBZ)V
    .locals 9
    .parameter "conn_id"
    .parameter "trans_id"
    .parameter "response_status"
    .parameter "handle"
    .parameter "offset"
    .parameter "val"
    .parameter "auth_req"
    .parameter "write_req"

    .prologue
    .line 485
    const-string v0, "GattAppService"

    const-string v1, "GATTServer_SendRsp"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->GATTServer_SendRsp(IIBII[BBZ)V

    .line 490
    return-void
.end method

.method public GATTServer_StartService(IB)V
    .locals 3
    .parameter "svc_handle"
    .parameter "sup_transport"

    .prologue
    .line 444
    const-string v0, "GattAppService"

    const-string v1, "GATTServer_StartService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->GATTServer_StartService(IB)V

    .line 448
    return-void
.end method

.method public GATTServer_StopService(I)V
    .locals 3
    .parameter "svcHandle"

    .prologue
    .line 452
    const-string v0, "GattAppService"

    const-string v1, "GATTServer_StopService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->GATTServer_StopService(I)V

    .line 456
    return-void
.end method

.method public clearManufacturerData()V
    .locals 3

    .prologue
    .line 193
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    if-nez v0, :cond_0

    .line 198
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->clearManufacturerData()V

    goto :goto_0
.end method

.method public close(BLjava/lang/String;IZ)V
    .locals 3
    .parameter "clientIf"
    .parameter "address"
    .parameter "connId"
    .parameter "isDirect"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    if-nez v0, :cond_0

    .line 220
    :goto_0
    return-void

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->close(BLjava/lang/String;IZ)V

    goto :goto_0
.end method

.method public deregisterForNotifications(BLjava/lang/String;Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;)V
    .locals 3
    .parameter "clientIf"
    .parameter "address"
    .parameter "charId"

    .prologue
    .line 363
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    if-nez v0, :cond_0

    .line 369
    :goto_0
    return-void

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->deregisterForNotifications(BLjava/lang/String;Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;)V

    goto :goto_0
.end method

.method public executeWrite(IZ)V
    .locals 3
    .parameter "connId"
    .parameter "isExecute"

    .prologue
    .line 345
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    if-nez v0, :cond_0

    .line 351
    :goto_0
    return-void

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->executeWrite(IZ)V

    goto :goto_0
.end method

.method public filterEnable(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    if-nez v0, :cond_0

    .line 170
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->filterEnable(Z)V

    goto :goto_0
.end method

.method public filterEnableBDA(ZILjava/lang/String;)V
    .locals 3
    .parameter "enable"
    .parameter "addr_type"
    .parameter "address"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    if-nez v0, :cond_0

    .line 177
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->filterEnableBDA(ZILjava/lang/String;)V

    goto :goto_0
.end method

.method public filterManufacturerData(I[B[B[B[B)V
    .locals 6
    .parameter "company"
    .parameter "data1"
    .parameter "data2"
    .parameter "data3"
    .parameter "data4"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    if-nez v0, :cond_0

    .line 184
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->filterManufacturerData(I[B[B[B[B)V

    goto :goto_0
.end method

.method public filterManufacturerDataBDA(I[B[B[B[BZILjava/lang/String;)V
    .locals 9
    .parameter "company"
    .parameter "data1"
    .parameter "data2"
    .parameter "data3"
    .parameter "data4"
    .parameter "has_bda"
    .parameter "addr_type"
    .parameter "address"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    if-nez v0, :cond_0

    .line 191
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->filterManufacturerDataBDA(I[B[B[B[BZILjava/lang/String;)V

    goto :goto_0
.end method

.method public getFirstChar(ILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V
    .locals 3
    .parameter "connId"
    .parameter "serviceId"
    .parameter "condCharUuid"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    if-nez v0, :cond_0

    .line 244
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->getFirstChar(ILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V

    goto :goto_0
.end method

.method public getFirstCharDescr(ILcom/broadcom/bt/service/gatt/BluetoothGattCharID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V
    .locals 3
    .parameter "connId"
    .parameter "charId"
    .parameter "condDescrUuid"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    if-nez v0, :cond_0

    .line 262
    :goto_0
    return-void

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->getFirstCharDescr(ILcom/broadcom/bt/service/gatt/BluetoothGattCharID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V

    goto :goto_0
.end method

.method public getFirstIncludedService(ILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V
    .locals 3
    .parameter "connId"
    .parameter "srvcId"
    .parameter "condSrvcUuid"

    .prologue
    .line 275
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    if-nez v0, :cond_0

    .line 280
    :goto_0
    return-void

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->getFirstIncludedService(ILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V

    goto :goto_0
.end method

.method public getNextChar(ILcom/broadcom/bt/service/gatt/BluetoothGattCharID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V
    .locals 3
    .parameter "connId"
    .parameter "startCharId"
    .parameter "condCharUuid"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    if-nez v0, :cond_0

    .line 253
    :goto_0
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->getNextChar(ILcom/broadcom/bt/service/gatt/BluetoothGattCharID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V

    goto :goto_0
.end method

.method public getNextCharDescr(ILcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V
    .locals 3
    .parameter "connId"
    .parameter "descrId"
    .parameter "condDescrUuid"

    .prologue
    .line 266
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    if-nez v0, :cond_0

    .line 271
    :goto_0
    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->getNextCharDescr(ILcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V

    goto :goto_0
.end method

.method public getNextIncludedService(ILcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V
    .locals 3
    .parameter "connId"
    .parameter "startSrvcId"
    .parameter "condSrvcUuid"

    .prologue
    .line 284
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    if-nez v0, :cond_0

    .line 289
    :goto_0
    return-void

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->getNextIncludedService(ILcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V

    goto :goto_0
.end method

.method public observe(ZI)V
    .locals 3
    .parameter "start"
    .parameter "duration"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    if-nez v0, :cond_0

    .line 205
    :goto_0
    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->observe(ZI)V

    goto :goto_0
.end method

.method public open(BLjava/lang/String;Z)V
    .locals 3
    .parameter "clientif"
    .parameter "address"
    .parameter "isDirect"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    if-nez v0, :cond_0

    .line 212
    :goto_0
    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->open(BLjava/lang/String;Z)V

    goto :goto_0
.end method

.method public prepareWrite(ILcom/broadcom/bt/service/gatt/BluetoothGattCharID;II[B)V
    .locals 6
    .parameter "connId"
    .parameter "charId"
    .parameter "offset"
    .parameter "len"
    .parameter "value"

    .prologue
    .line 336
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    if-nez v0, :cond_0

    .line 342
    :goto_0
    return-void

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->prepareWrite(ILcom/broadcom/bt/service/gatt/BluetoothGattCharID;II[B)V

    goto :goto_0
.end method

.method public readChar(ILcom/broadcom/bt/service/gatt/BluetoothGattCharID;B)V
    .locals 3
    .parameter "connId"
    .parameter "charId"
    .parameter "authReq"

    .prologue
    .line 292
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    if-nez v0, :cond_0

    .line 297
    :goto_0
    return-void

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->readChar(ILcom/broadcom/bt/service/gatt/BluetoothGattCharID;B)V

    goto :goto_0
.end method

.method public readCharDescr(ILcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;B)V
    .locals 3
    .parameter "connId"
    .parameter "charDescr"
    .parameter "authReq"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    if-nez v0, :cond_0

    .line 305
    :goto_0
    return-void

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->readCharDescr(ILcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;B)V

    goto :goto_0
.end method

.method public registerApp(Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/le/api/IBleClientCallback;)V
    .locals 3
    .parameter "appID"
    .parameter "callback"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    if-nez v0, :cond_0

    .line 138
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->registerApp(Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/le/api/IBleClientCallback;)V

    goto :goto_0
.end method

.method public registerForNotifications(BLjava/lang/String;Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;)V
    .locals 3
    .parameter "clientIf"
    .parameter "address"
    .parameter "charId"

    .prologue
    .line 354
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    if-nez v0, :cond_0

    .line 360
    :goto_0
    return-void

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->registerForNotifications(BLjava/lang/String;Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;)V

    goto :goto_0
.end method

.method public registerServerProfileCallback(Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/le/api/IBleProfileEventCallback;)V
    .locals 3
    .parameter "appUuid"
    .parameter "callback"

    .prologue
    .line 505
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->registerServerProfileCallback(Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/le/api/IBleProfileEventCallback;)V

    .line 507
    return-void
.end method

.method public registerServerServiceCallback(Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/le/api/IBleServiceCallback;)V
    .locals 3
    .parameter "serviceUuid"
    .parameter "appUuid"
    .parameter "callback"

    .prologue
    .line 494
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->registerServerServiceCallback(Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/le/api/IBleServiceCallback;)V

    .line 496
    return-void
.end method

.method public registerServiceDataCallback(ILcom/broadcom/bt/service/gatt/BluetoothGattID;Ljava/lang/String;Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;)V
    .locals 3
    .parameter "connId"
    .parameter "svcUuid"
    .parameter "bdaddr"
    .parameter "callback"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    if-nez v0, :cond_0

    .line 228
    :goto_0
    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->registerServiceDataCallback(ILcom/broadcom/bt/service/gatt/BluetoothGattID;Ljava/lang/String;Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;)V

    goto :goto_0
.end method

.method public searchService(ILcom/broadcom/bt/service/gatt/BluetoothGattID;)V
    .locals 3
    .parameter "connId"
    .parameter "serviceUuid"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    if-nez v0, :cond_0

    .line 235
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->searchService(ILcom/broadcom/bt/service/gatt/BluetoothGattID;)V

    goto :goto_0
.end method

.method public sendIndConfirm(ILcom/broadcom/bt/service/gatt/BluetoothGattCharID;)V
    .locals 3
    .parameter "connId"
    .parameter "charId"

    .prologue
    .line 326
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    if-nez v0, :cond_0

    .line 332
    :goto_0
    return-void

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->sendIndConfirm(ILcom/broadcom/bt/service/gatt/BluetoothGattCharID;)V

    goto :goto_0
.end method

.method public setEncryption(Ljava/lang/String;B)V
    .locals 3
    .parameter "address"
    .parameter "action"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    if-nez v0, :cond_0

    .line 154
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->setEncryption(Ljava/lang/String;B)V

    goto :goto_0
.end method

.method public setScanParameters(II)V
    .locals 3
    .parameter "scanInterval"
    .parameter "scanWindow"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    if-nez v0, :cond_0

    .line 162
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->setScanParameters(II)V

    goto :goto_0
.end method

.method start()V
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    if-nez v0, :cond_0

    .line 96
    const-string v0, "GattAppService"

    const-string v1, "Service not found"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :goto_0
    return-void

    .line 99
    :cond_0
    const-string v0, "GattAppService"

    const-string v1, "Invoking mSvc.start()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->init()V

    .line 101
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->start()V

    goto :goto_0
.end method

.method stop()V
    .locals 3

    .prologue
    .line 105
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    if-nez v0, :cond_0

    .line 108
    const-string v0, "GattAppService"

    const-string v1, "Service not found"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->stop()V

    .line 112
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->finish()V

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    .line 114
    const-string v0, "GattAppService"

    const-string v1, "Invoking mSvc.stop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unregisterApp(B)V
    .locals 3
    .parameter "clientIf"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    if-nez v0, :cond_0

    .line 146
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->unregisterApp(B)V

    goto :goto_0
.end method

.method public unregisterServerProfileCallback(I)V
    .locals 3
    .parameter "serIf"

    .prologue
    .line 511
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->unregisterServerProfileCallback(I)V

    .line 513
    return-void
.end method

.method public unregisterServerServiceCallback(I)V
    .locals 3
    .parameter "svcHandle"

    .prologue
    .line 500
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->unregisterServerServiceCallback(I)V

    .line 502
    return-void
.end method

.method public writeCharDescrValue(ILcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;IB[B)V
    .locals 6
    .parameter "connId"
    .parameter "charDescr"
    .parameter "writeType"
    .parameter "authReq"
    .parameter "charDescrVal"

    .prologue
    .line 318
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    if-nez v0, :cond_0

    .line 323
    :goto_0
    return-void

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->writeCharDescrValue(ILcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;IB[B)V

    goto :goto_0
.end method

.method public writeCharValue(ILcom/broadcom/bt/service/gatt/BluetoothGattCharID;IB[B)V
    .locals 6
    .parameter "connId"
    .parameter "charId"
    .parameter "writeType"
    .parameter "authReq"
    .parameter "value"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    if-nez v0, :cond_0

    .line 314
    :goto_0
    return-void

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/GattService$BluetoothGattServiceStub;->mSvc:Lcom/broadcom/bt/service/gatt/BluetoothGattService;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/broadcom/bt/service/gatt/BluetoothGattService;->writeCharValue(ILcom/broadcom/bt/service/gatt/BluetoothGattCharID;IB[B)V

    goto :goto_0
.end method
