.class public abstract Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;
.super Landroid/os/Binder;
.source "IBluetoothGatt.java"

# interfaces
.implements Lcom/broadcom/bt/service/gatt/IBluetoothGatt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/gatt/IBluetoothGatt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.broadcom.bt.service.gatt.IBluetoothGatt"

.field static final TRANSACTION_GATTServer_AddCharDescriptor:I = 0x25

.field static final TRANSACTION_GATTServer_AddCharacteristic:I = 0x24

.field static final TRANSACTION_GATTServer_AddIncludedService:I = 0x23

.field static final TRANSACTION_GATTServer_CancelOpen:I = 0x2d

.field static final TRANSACTION_GATTServer_Close:I = 0x2e

.field static final TRANSACTION_GATTServer_CreateService:I = 0x22

.field static final TRANSACTION_GATTServer_DeleteService:I = 0x26

.field static final TRANSACTION_GATTServer_HandleValueIndication:I = 0x29

.field static final TRANSACTION_GATTServer_HandleValueNotification:I = 0x2a

.field static final TRANSACTION_GATTServer_Open:I = 0x2c

.field static final TRANSACTION_GATTServer_SendRsp:I = 0x2b

.field static final TRANSACTION_GATTServer_StartService:I = 0x27

.field static final TRANSACTION_GATTServer_StopService:I = 0x28

.field static final TRANSACTION_clearManufacturerData:I = 0x7

.field static final TRANSACTION_close:I = 0xc

.field static final TRANSACTION_deregisterForNotifications:I = 0x1d

.field static final TRANSACTION_executeWrite:I = 0x1b

.field static final TRANSACTION_filterEnable:I = 0x5

.field static final TRANSACTION_filterEnableBDA:I = 0x6

.field static final TRANSACTION_filterManufacturerData:I = 0x8

.field static final TRANSACTION_filterManufacturerDataBDA:I = 0x9

.field static final TRANSACTION_getFirstChar:I = 0xf

.field static final TRANSACTION_getFirstCharDescr:I = 0x11

.field static final TRANSACTION_getFirstIncludedService:I = 0x13

.field static final TRANSACTION_getNextChar:I = 0x10

.field static final TRANSACTION_getNextCharDescr:I = 0x12

.field static final TRANSACTION_getNextIncludedService:I = 0x14

.field static final TRANSACTION_observe:I = 0xa

.field static final TRANSACTION_open:I = 0xb

.field static final TRANSACTION_prepareWrite:I = 0x1a

.field static final TRANSACTION_readChar:I = 0x15

.field static final TRANSACTION_readCharDescr:I = 0x16

.field static final TRANSACTION_registerApp:I = 0x1

.field static final TRANSACTION_registerForNotifications:I = 0x1c

.field static final TRANSACTION_registerServerProfileCallback:I = 0x1f

.field static final TRANSACTION_registerServerServiceCallback:I = 0x1e

.field static final TRANSACTION_registerServiceDataCallback:I = 0xd

.field static final TRANSACTION_searchService:I = 0xe

.field static final TRANSACTION_sendIndConfirm:I = 0x19

.field static final TRANSACTION_setEncryption:I = 0x3

.field static final TRANSACTION_setScanParameters:I = 0x4

.field static final TRANSACTION_unregisterApp:I = 0x2

.field static final TRANSACTION_unregisterServerProfileCallback:I = 0x21

.field static final TRANSACTION_unregisterServerServiceCallback:I = 0x20

.field static final TRANSACTION_writeCharDescrValue:I = 0x18

.field static final TRANSACTION_writeCharValue:I = 0x17


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p0, p0, v0}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/gatt/IBluetoothGatt;
    .locals 2
    .parameter "obj"

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string v1, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/broadcom/bt/service/gatt/IBluetoothGatt;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/broadcom/bt/service/gatt/IBluetoothGatt;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 785
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    :goto_0
    return v9

    .line 46
    :sswitch_0
    const-string v0, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v0, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 60
    .local v1, _arg0:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/broadcom/bt/le/api/IBleClientCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/le/api/IBleClientCallback;

    move-result-object v2

    .line 61
    .local v2, _arg1:Lcom/broadcom/bt/le/api/IBleClientCallback;
    invoke-virtual {p0, v1, v2}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->registerApp(Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/le/api/IBleClientCallback;)V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 57
    .end local v1           #_arg0:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v2           #_arg1:Lcom/broadcom/bt/le/api/IBleClientCallback;
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #_arg0:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_1

    .line 67
    .end local v1           #_arg0:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :sswitch_2
    const-string v0, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 70
    .local v1, _arg0:B
    invoke-virtual {p0, v1}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->unregisterApp(B)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 76
    .end local v1           #_arg0:B
    :sswitch_3
    const-string v0, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 81
    .local v2, _arg1:B
    invoke-virtual {p0, v1, v2}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->setEncryption(Ljava/lang/String;B)V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 87
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:B
    :sswitch_4
    const-string v0, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 91
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 92
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->setScanParameters(II)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 98
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_5
    const-string v10, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1

    move v1, v9

    .line 101
    .local v1, _arg0:Z
    :goto_2
    invoke-virtual {p0, v1}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->filterEnable(Z)V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v1           #_arg0:Z
    :cond_1
    move v1, v0

    .line 100
    goto :goto_2

    .line 107
    :sswitch_6
    const-string v10, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_2

    move v1, v9

    .line 111
    .restart local v1       #_arg0:Z
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 113
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 114
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->filterEnableBDA(ZILjava/lang/String;)V

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Ljava/lang/String;
    :cond_2
    move v1, v0

    .line 109
    goto :goto_3

    .line 120
    :sswitch_7
    const-string v0, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->clearManufacturerData()V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 127
    :sswitch_8
    const-string v0, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 131
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 133
    .local v2, _arg1:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 135
    .local v3, _arg2:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 137
    .local v4, _arg3:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .local v5, _arg4:[B
    move-object v0, p0

    .line 138
    invoke-virtual/range {v0 .. v5}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->filterManufacturerData(I[B[B[B[B)V

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 144
    .end local v1           #_arg0:I
    .end local v2           #_arg1:[B
    .end local v3           #_arg2:[B
    .end local v4           #_arg3:[B
    .end local v5           #_arg4:[B
    :sswitch_9
    const-string v10, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 148
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 150
    .restart local v2       #_arg1:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 152
    .restart local v3       #_arg2:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 154
    .restart local v4       #_arg3:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 156
    .restart local v5       #_arg4:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_3

    move v6, v9

    .line 158
    .local v6, _arg5:Z
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 160
    .local v7, _arg6:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .local v8, _arg7:Ljava/lang/String;
    move-object v0, p0

    .line 161
    invoke-virtual/range {v0 .. v8}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->filterManufacturerDataBDA(I[B[B[B[BZILjava/lang/String;)V

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v6           #_arg5:Z
    .end local v7           #_arg6:I
    .end local v8           #_arg7:Ljava/lang/String;
    :cond_3
    move v6, v0

    .line 156
    goto :goto_4

    .line 167
    .end local v1           #_arg0:I
    .end local v2           #_arg1:[B
    .end local v3           #_arg2:[B
    .end local v4           #_arg3:[B
    .end local v5           #_arg4:[B
    :sswitch_a
    const-string v10, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_4

    move v1, v9

    .line 171
    .local v1, _arg0:Z
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 172
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->observe(ZI)V

    .line 173
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    .end local v2           #_arg1:I
    :cond_4
    move v1, v0

    .line 169
    goto :goto_5

    .line 178
    :sswitch_b
    const-string v10, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 182
    .local v1, _arg0:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 184
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_5

    move v3, v9

    .line 185
    .local v3, _arg2:Z
    :goto_6
    invoke-virtual {p0, v1, v2, v3}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->open(BLjava/lang/String;Z)V

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v3           #_arg2:Z
    :cond_5
    move v3, v0

    .line 184
    goto :goto_6

    .line 191
    .end local v1           #_arg0:B
    .end local v2           #_arg1:Ljava/lang/String;
    :sswitch_c
    const-string v10, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 195
    .restart local v1       #_arg0:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 197
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 199
    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_6

    move v4, v9

    .line 200
    .local v4, _arg3:Z
    :goto_7
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->close(BLjava/lang/String;IZ)V

    .line 201
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v4           #_arg3:Z
    :cond_6
    move v4, v0

    .line 199
    goto :goto_7

    .line 206
    .end local v1           #_arg0:B
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:I
    :sswitch_d
    const-string v0, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 210
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    .line 211
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 217
    .local v2, _arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 219
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;

    move-result-object v4

    .line 220
    .local v4, _arg3:Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->registerServiceDataCallback(ILcom/broadcom/bt/service/gatt/BluetoothGattID;Ljava/lang/String;Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;)V

    .line 221
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 214
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Lcom/broadcom/bt/le/api/IBleCharacteristicDataCallback;
    :cond_7
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_8

    .line 226
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :sswitch_e
    const-string v0, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 230
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    .line 231
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 236
    .restart local v2       #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_9
    invoke-virtual {p0, v1, v2}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->searchService(ILcom/broadcom/bt/service/gatt/BluetoothGattID;)V

    .line 237
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 234
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :cond_8
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_9

    .line 242
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :sswitch_f
    const-string v0, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 246
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    .line 247
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 253
    .restart local v2       #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    .line 254
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 259
    .local v3, _arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_b
    invoke-virtual {p0, v1, v2, v3}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->getFirstChar(ILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V

    .line 260
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 250
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v3           #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :cond_9
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_a

    .line 257
    :cond_a
    const/4 v3, 0x0

    .restart local v3       #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_b

    .line 265
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v3           #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :sswitch_10
    const-string v0, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 269
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    .line 270
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;

    .line 276
    .local v2, _arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;
    :goto_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    .line 277
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 282
    .restart local v3       #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_d
    invoke-virtual {p0, v1, v2, v3}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->getNextChar(ILcom/broadcom/bt/service/gatt/BluetoothGattCharID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V

    .line 283
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 273
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;
    .end local v3           #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :cond_b
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;
    goto :goto_c

    .line 280
    :cond_c
    const/4 v3, 0x0

    .restart local v3       #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_d

    .line 288
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;
    .end local v3           #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :sswitch_11
    const-string v0, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 292
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    .line 293
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;

    .line 299
    .restart local v2       #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;
    :goto_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    .line 300
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 305
    .restart local v3       #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_f
    invoke-virtual {p0, v1, v2, v3}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->getFirstCharDescr(ILcom/broadcom/bt/service/gatt/BluetoothGattCharID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V

    .line 306
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 296
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;
    .end local v3           #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :cond_d
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;
    goto :goto_e

    .line 303
    :cond_e
    const/4 v3, 0x0

    .restart local v3       #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_f

    .line 311
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;
    .end local v3           #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :sswitch_12
    const-string v0, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 315
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    .line 316
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;

    .line 322
    .local v2, _arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;
    :goto_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10

    .line 323
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 328
    .restart local v3       #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_11
    invoke-virtual {p0, v1, v2, v3}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->getNextCharDescr(ILcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V

    .line 329
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 319
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;
    .end local v3           #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :cond_f
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;
    goto :goto_10

    .line 326
    :cond_10
    const/4 v3, 0x0

    .restart local v3       #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_11

    .line 334
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;
    .end local v3           #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :sswitch_13
    const-string v0, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 338
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11

    .line 339
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 345
    .local v2, _arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_12

    .line 346
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 351
    .restart local v3       #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_13
    invoke-virtual {p0, v1, v2, v3}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->getFirstIncludedService(ILcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V

    .line 352
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 342
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v3           #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :cond_11
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_12

    .line 349
    :cond_12
    const/4 v3, 0x0

    .restart local v3       #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_13

    .line 357
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v3           #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :sswitch_14
    const-string v0, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 361
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    .line 362
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID;

    .line 368
    .local v2, _arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID;
    :goto_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_14

    .line 369
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 374
    .restart local v3       #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_15
    invoke-virtual {p0, v1, v2, v3}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->getNextIncludedService(ILcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;)V

    .line 375
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 365
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID;
    .end local v3           #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :cond_13
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID;
    goto :goto_14

    .line 372
    :cond_14
    const/4 v3, 0x0

    .restart local v3       #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_15

    .line 380
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattInclSrvcID;
    .end local v3           #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :sswitch_15
    const-string v0, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 382
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 384
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_15

    .line 385
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;

    .line 391
    .local v2, _arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;
    :goto_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .line 392
    .local v3, _arg2:B
    invoke-virtual {p0, v1, v2, v3}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->readChar(ILcom/broadcom/bt/service/gatt/BluetoothGattCharID;B)V

    .line 393
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 388
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;
    .end local v3           #_arg2:B
    :cond_15
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;
    goto :goto_16

    .line 398
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;
    :sswitch_16
    const-string v0, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 400
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 402
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_16

    .line 403
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;

    .line 409
    .local v2, _arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;
    :goto_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .line 410
    .restart local v3       #_arg2:B
    invoke-virtual {p0, v1, v2, v3}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->readCharDescr(ILcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;B)V

    .line 411
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 406
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;
    .end local v3           #_arg2:B
    :cond_16
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;
    goto :goto_17

    .line 416
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;
    :sswitch_17
    const-string v0, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 418
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 420
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_17

    .line 421
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;

    .line 427
    .local v2, _arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;
    :goto_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 429
    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v4

    .line 431
    .local v4, _arg3:B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .restart local v5       #_arg4:[B
    move-object v0, p0

    .line 432
    invoke-virtual/range {v0 .. v5}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->writeCharValue(ILcom/broadcom/bt/service/gatt/BluetoothGattCharID;IB[B)V

    .line 433
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 424
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;
    .end local v3           #_arg2:I
    .end local v4           #_arg3:B
    .end local v5           #_arg4:[B
    :cond_17
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;
    goto :goto_18

    .line 438
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;
    :sswitch_18
    const-string v0, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 442
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_18

    .line 443
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;

    .line 449
    .local v2, _arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;
    :goto_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 451
    .restart local v3       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v4

    .line 453
    .restart local v4       #_arg3:B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .restart local v5       #_arg4:[B
    move-object v0, p0

    .line 454
    invoke-virtual/range {v0 .. v5}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->writeCharDescrValue(ILcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;IB[B)V

    .line 455
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 446
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;
    .end local v3           #_arg2:I
    .end local v4           #_arg3:B
    .end local v5           #_arg4:[B
    :cond_18
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;
    goto :goto_19

    .line 460
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattCharDescrID;
    :sswitch_19
    const-string v0, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 462
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 464
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_19

    .line 465
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;

    .line 470
    .local v2, _arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;
    :goto_1a
    invoke-virtual {p0, v1, v2}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->sendIndConfirm(ILcom/broadcom/bt/service/gatt/BluetoothGattCharID;)V

    .line 471
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 468
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;
    :cond_19
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;
    goto :goto_1a

    .line 476
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;
    :sswitch_1a
    const-string v0, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 478
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 480
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1a

    .line 481
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;

    .line 487
    .restart local v2       #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;
    :goto_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 489
    .restart local v3       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 491
    .local v4, _arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .restart local v5       #_arg4:[B
    move-object v0, p0

    .line 492
    invoke-virtual/range {v0 .. v5}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->prepareWrite(ILcom/broadcom/bt/service/gatt/BluetoothGattCharID;II[B)V

    .line 493
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 484
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:[B
    :cond_1a
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;
    goto :goto_1b

    .line 498
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;
    :sswitch_1b
    const-string v10, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 500
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 502
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1b

    move v2, v9

    .line 503
    .local v2, _arg1:Z
    :goto_1c
    invoke-virtual {p0, v1, v2}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->executeWrite(IZ)V

    .line 504
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v2           #_arg1:Z
    :cond_1b
    move v2, v0

    .line 502
    goto :goto_1c

    .line 509
    .end local v1           #_arg0:I
    :sswitch_1c
    const-string v0, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 511
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 513
    .local v1, _arg0:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 515
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1c

    .line 516
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;

    .line 521
    .local v3, _arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;
    :goto_1d
    invoke-virtual {p0, v1, v2, v3}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->registerForNotifications(BLjava/lang/String;Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;)V

    .line 522
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 519
    .end local v3           #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;
    :cond_1c
    const/4 v3, 0x0

    .restart local v3       #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;
    goto :goto_1d

    .line 527
    .end local v1           #_arg0:B
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;
    :sswitch_1d
    const-string v0, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 529
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 531
    .restart local v1       #_arg0:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 533
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1d

    .line 534
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;

    .line 539
    .restart local v3       #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;
    :goto_1e
    invoke-virtual {p0, v1, v2, v3}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->deregisterForNotifications(BLjava/lang/String;Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;)V

    .line 540
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 537
    .end local v3           #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;
    :cond_1d
    const/4 v3, 0x0

    .restart local v3       #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;
    goto :goto_1e

    .line 545
    .end local v1           #_arg0:B
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattCharID;
    :sswitch_1e
    const-string v0, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 547
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1e

    .line 548
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 554
    .local v1, _arg0:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1f

    .line 555
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 561
    .local v2, _arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/broadcom/bt/le/api/IBleServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/le/api/IBleServiceCallback;

    move-result-object v3

    .line 562
    .local v3, _arg2:Lcom/broadcom/bt/le/api/IBleServiceCallback;
    invoke-virtual {p0, v1, v2, v3}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->registerServerServiceCallback(Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/le/api/IBleServiceCallback;)V

    .line 563
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 551
    .end local v1           #_arg0:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v3           #_arg2:Lcom/broadcom/bt/le/api/IBleServiceCallback;
    :cond_1e
    const/4 v1, 0x0

    .restart local v1       #_arg0:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_1f

    .line 558
    :cond_1f
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_20

    .line 568
    .end local v1           #_arg0:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :sswitch_1f
    const-string v0, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 570
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_20

    .line 571
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 577
    .restart local v1       #_arg0:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/broadcom/bt/le/api/IBleProfileEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/le/api/IBleProfileEventCallback;

    move-result-object v2

    .line 578
    .local v2, _arg1:Lcom/broadcom/bt/le/api/IBleProfileEventCallback;
    invoke-virtual {p0, v1, v2}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->registerServerProfileCallback(Lcom/broadcom/bt/service/gatt/BluetoothGattID;Lcom/broadcom/bt/le/api/IBleProfileEventCallback;)V

    .line 579
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 574
    .end local v1           #_arg0:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v2           #_arg1:Lcom/broadcom/bt/le/api/IBleProfileEventCallback;
    :cond_20
    const/4 v1, 0x0

    .restart local v1       #_arg0:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_21

    .line 584
    .end local v1           #_arg0:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :sswitch_20
    const-string v0, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 586
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 587
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->unregisterServerServiceCallback(I)V

    .line 588
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 593
    .end local v1           #_arg0:I
    :sswitch_21
    const-string v0, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 595
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 596
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->unregisterServerProfileCallback(I)V

    .line 597
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 602
    .end local v1           #_arg0:I
    :sswitch_22
    const-string v0, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 604
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 606
    .local v1, _arg0:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_21

    .line 607
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 613
    .local v2, _arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 614
    .local v3, _arg2:I
    invoke-virtual {p0, v1, v2, v3}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->GATTServer_CreateService(BLcom/broadcom/bt/service/gatt/BluetoothGattID;I)V

    .line 615
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 610
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v3           #_arg2:I
    :cond_21
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_22

    .line 620
    .end local v1           #_arg0:B
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :sswitch_23
    const-string v0, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 622
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 624
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 625
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->GATTServer_AddIncludedService(II)V

    .line 626
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 631
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_24
    const-string v10, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 633
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 635
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_22

    .line 636
    sget-object v10, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 642
    .local v2, _arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 644
    .restart local v3       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 646
    .restart local v4       #_arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_23

    move v5, v9

    .line 648
    .local v5, _arg4:Z
    :goto_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, _arg5:I
    move-object v0, p0

    .line 649
    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->GATTServer_AddCharacteristic(ILcom/broadcom/bt/service/gatt/BluetoothGattID;IIZI)V

    .line 650
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 639
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:Z
    .end local v6           #_arg5:I
    :cond_22
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_23

    .restart local v3       #_arg2:I
    .restart local v4       #_arg3:I
    :cond_23
    move v5, v0

    .line 646
    goto :goto_24

    .line 655
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    :sswitch_25
    const-string v0, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 657
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 659
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 661
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_24

    .line 662
    sget-object v0, Lcom/broadcom/bt/service/gatt/BluetoothGattID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    .line 667
    .local v3, _arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :goto_25
    invoke-virtual {p0, v1, v2, v3}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->GATTServer_AddCharDescriptor(IILcom/broadcom/bt/service/gatt/BluetoothGattID;)V

    .line 668
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 665
    .end local v3           #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :cond_24
    const/4 v3, 0x0

    .restart local v3       #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    goto :goto_25

    .line 673
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    :sswitch_26
    const-string v0, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 675
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 676
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->GATTServer_DeleteService(I)V

    .line 677
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 682
    .end local v1           #_arg0:I
    :sswitch_27
    const-string v0, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 684
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 686
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 687
    .local v2, _arg1:B
    invoke-virtual {p0, v1, v2}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->GATTServer_StartService(IB)V

    .line 688
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 693
    .end local v1           #_arg0:I
    .end local v2           #_arg1:B
    :sswitch_28
    const-string v0, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 695
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 696
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->GATTServer_StopService(I)V

    .line 697
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 702
    .end local v1           #_arg0:I
    :sswitch_29
    const-string v0, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 704
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 706
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 708
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 709
    .local v3, _arg2:[B
    invoke-virtual {p0, v1, v2, v3}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->GATTServer_HandleValueIndication(II[B)V

    .line 710
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 715
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:[B
    :sswitch_2a
    const-string v0, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 717
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 719
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 721
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 722
    .restart local v3       #_arg2:[B
    invoke-virtual {p0, v1, v2, v3}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->GATTServer_HandleValueNotification(II[B)V

    .line 723
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 728
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:[B
    :sswitch_2b
    const-string v10, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 730
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 732
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 734
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .line 736
    .local v3, _arg2:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 738
    .restart local v4       #_arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 740
    .local v5, _arg4:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 742
    .local v6, _arg5:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v7

    .line 744
    .local v7, _arg6:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_25

    move v8, v9

    .local v8, _arg7:Z
    :goto_26
    move-object v0, p0

    .line 745
    invoke-virtual/range {v0 .. v8}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->GATTServer_SendRsp(IIBII[BBZ)V

    .line 746
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v8           #_arg7:Z
    :cond_25
    move v8, v0

    .line 744
    goto :goto_26

    .line 751
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:B
    .end local v4           #_arg3:I
    .end local v5           #_arg4:I
    .end local v6           #_arg5:[B
    .end local v7           #_arg6:B
    :sswitch_2c
    const-string v10, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 753
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 755
    .local v1, _arg0:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 757
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_26

    move v3, v9

    .line 758
    .local v3, _arg2:Z
    :goto_27
    invoke-virtual {p0, v1, v2, v3}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->GATTServer_Open(BLjava/lang/String;Z)V

    .line 759
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v3           #_arg2:Z
    :cond_26
    move v3, v0

    .line 757
    goto :goto_27

    .line 764
    .end local v1           #_arg0:B
    .end local v2           #_arg1:Ljava/lang/String;
    :sswitch_2d
    const-string v10, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 766
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 768
    .restart local v1       #_arg0:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 770
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_27

    move v3, v9

    .line 771
    .restart local v3       #_arg2:Z
    :goto_28
    invoke-virtual {p0, v1, v2, v3}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->GATTServer_CancelOpen(BLjava/lang/String;Z)V

    .line 772
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v3           #_arg2:Z
    :cond_27
    move v3, v0

    .line 770
    goto :goto_28

    .line 777
    .end local v1           #_arg0:B
    .end local v2           #_arg1:Ljava/lang/String;
    :sswitch_2e
    const-string v0, "com.broadcom.bt.service.gatt.IBluetoothGatt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 779
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 780
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/broadcom/bt/service/gatt/IBluetoothGatt$Stub;->GATTServer_Close(I)V

    .line 781
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 42
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
