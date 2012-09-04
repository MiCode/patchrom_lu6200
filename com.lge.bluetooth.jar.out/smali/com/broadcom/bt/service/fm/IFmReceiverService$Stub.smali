.class public abstract Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;
.super Landroid/os/Binder;
.source "IFmReceiverService.java"

# interfaces
.implements Lcom/broadcom/bt/service/fm/IFmReceiverService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/fm/IFmReceiverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.broadcom.bt.service.fm.IFmReceiverService"

.field static final TRANSACTION_estimateNoiseFloorLevel:I = 0x12

.field static final TRANSACTION_getIsMute:I = 0x17

.field static final TRANSACTION_getMonoStereoMode:I = 0x15

.field static final TRANSACTION_getRadioIsOn:I = 0x4

.field static final TRANSACTION_getStatus:I = 0x8

.field static final TRANSACTION_getTunedFrequency:I = 0x16

.field static final TRANSACTION_init:I = 0x1

.field static final TRANSACTION_muteAudio:I = 0x9

.field static final TRANSACTION_registerCallback:I = 0x2

.field static final TRANSACTION_seekRdsStation:I = 0xb

.field static final TRANSACTION_seekStation:I = 0xa

.field static final TRANSACTION_seekStationAbort:I = 0xc

.field static final TRANSACTION_setAudioMode:I = 0xe

.field static final TRANSACTION_setAudioPath:I = 0xf

.field static final TRANSACTION_setFMVolume:I = 0x14

.field static final TRANSACTION_setLiveAudioPolling:I = 0x13

.field static final TRANSACTION_setRdsMode:I = 0xd

.field static final TRANSACTION_setStepSize:I = 0x10

.field static final TRANSACTION_setWorldRegion:I = 0x11

.field static final TRANSACTION_tuneRadio:I = 0x7

.field static final TRANSACTION_turnOffRadio:I = 0x6

.field static final TRANSACTION_turnOnRadio:I = 0x5

.field static final TRANSACTION_unregisterCallback:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p0, p0, v0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/fm/IFmReceiverService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/broadcom/bt/service/fm/IFmReceiverService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/broadcom/bt/service/fm/IFmReceiverService;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
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
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 281
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 45
    :sswitch_0
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->init()V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 57
    :sswitch_2
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    move-result-object v0

    .line 60
    .local v0, _arg0:Lcom/broadcom/bt/service/fm/IFmReceiverCallback;
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->registerCallback(Lcom/broadcom/bt/service/fm/IFmReceiverCallback;)V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 66
    .end local v0           #_arg0:Lcom/broadcom/bt/service/fm/IFmReceiverCallback;
    :sswitch_3
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    move-result-object v0

    .line 69
    .restart local v0       #_arg0:Lcom/broadcom/bt/service/fm/IFmReceiverCallback;
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->unregisterCallback(Lcom/broadcom/bt/service/fm/IFmReceiverCallback;)V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 75
    .end local v0           #_arg0:Lcom/broadcom/bt/service/fm/IFmReceiverCallback;
    :sswitch_4
    const-string v7, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->getRadioIsOn()Z

    move-result v4

    .line 77
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    if-eqz v4, :cond_0

    move v5, v6

    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 83
    .end local v4           #_result:Z
    :sswitch_5
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 87
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createCharArray()[C

    move-result-object v1

    .line 88
    .local v1, _arg1:[C
    invoke-virtual {p0, v0, v1}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->turnOnRadio(I[C)I

    move-result v4

    .line 89
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeCharArray([C)V

    goto :goto_0

    .line 96
    .end local v0           #_arg0:I
    .end local v1           #_arg1:[C
    .end local v4           #_result:I
    :sswitch_6
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->turnOffRadio()I

    move-result v4

    .line 98
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 104
    .end local v4           #_result:I
    :sswitch_7
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 107
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->tuneRadio(I)I

    move-result v4

    .line 108
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 114
    .end local v0           #_arg0:I
    .end local v4           #_result:I
    :sswitch_8
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->getStatus()I

    move-result v4

    .line 116
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 122
    .end local v4           #_result:I
    :sswitch_9
    const-string v7, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1

    move v0, v6

    .line 125
    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->muteAudio(Z)I

    move-result v4

    .line 126
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v4           #_result:I
    :cond_1
    move v0, v5

    .line 124
    goto :goto_1

    .line 132
    :sswitch_a
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 136
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 137
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->seekStation(II)I

    move-result v4

    .line 138
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 144
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v4           #_result:I
    :sswitch_b
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 148
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 150
    .restart local v1       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 152
    .local v2, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 153
    .local v3, _arg3:I
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->seekRdsStation(IIII)I

    move-result v4

    .line 154
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 160
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v2           #_arg2:I
    .end local v3           #_arg3:I
    .end local v4           #_result:I
    :sswitch_c
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->seekStationAbort()I

    move-result v4

    .line 162
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 168
    .end local v4           #_result:I
    :sswitch_d
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 172
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 174
    .restart local v1       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 176
    .restart local v2       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 177
    .restart local v3       #_arg3:I
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->setRdsMode(IIII)I

    move-result v4

    .line 178
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 184
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v2           #_arg2:I
    .end local v3           #_arg3:I
    .end local v4           #_result:I
    :sswitch_e
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 187
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->setAudioMode(I)I

    move-result v4

    .line 188
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 194
    .end local v0           #_arg0:I
    .end local v4           #_result:I
    :sswitch_f
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 197
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->setAudioPath(I)I

    move-result v4

    .line 198
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 204
    .end local v0           #_arg0:I
    .end local v4           #_result:I
    :sswitch_10
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 207
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->setStepSize(I)I

    move-result v4

    .line 208
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 214
    .end local v0           #_arg0:I
    .end local v4           #_result:I
    :sswitch_11
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 218
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 219
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->setWorldRegion(II)I

    move-result v4

    .line 220
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 226
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v4           #_result:I
    :sswitch_12
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 229
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->estimateNoiseFloorLevel(I)I

    move-result v4

    .line 230
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 236
    .end local v0           #_arg0:I
    .end local v4           #_result:I
    :sswitch_13
    const-string v7, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2

    move v0, v6

    .line 240
    .local v0, _arg0:Z
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 241
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->setLiveAudioPolling(ZI)I

    move-result v4

    .line 242
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v1           #_arg1:I
    .end local v4           #_result:I
    :cond_2
    move v0, v5

    .line 238
    goto :goto_2

    .line 248
    :sswitch_14
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 251
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->setFMVolume(I)I

    move-result v4

    .line 252
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 258
    .end local v0           #_arg0:I
    .end local v4           #_result:I
    :sswitch_15
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->getMonoStereoMode()I

    move-result v4

    .line 260
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 266
    .end local v4           #_result:I
    :sswitch_16
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->getTunedFrequency()I

    move-result v4

    .line 268
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 274
    .end local v4           #_result:I
    :sswitch_17
    const-string v7, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->getIsMute()Z

    move-result v4

    .line 276
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    if-eqz v4, :cond_3

    move v5, v6

    :cond_3
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 41
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
