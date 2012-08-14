.class public abstract Landroid/os/IPowerManager$Stub;
.super Landroid/os/Binder;
.source "IPowerManager.java"

# interfaces
.implements Landroid/os/IPowerManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IPowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IPowerManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IPowerManager"

.field static final TRANSACTION_acquireWakeLock:I = 0x1

.field static final TRANSACTION_clearUserActivityTimeout:I = 0x9

.field static final TRANSACTION_crash:I = 0x11

.field static final TRANSACTION_getBacklightBrightness:I = 0x13

.field static final TRANSACTION_getBatteryLevel:I = 0x15

.field static final TRANSACTION_getLockState:I = 0x19

.field static final TRANSACTION_getSupportedWakeLockFlags:I = 0xb

.field static final TRANSACTION_goToSleep:I = 0x3

.field static final TRANSACTION_goToSleepWithReason:I = 0x4

.field static final TRANSACTION_hideLocked:I = 0x18

.field static final TRANSACTION_isScreenOn:I = 0xf

.field static final TRANSACTION_preventScreenOn:I = 0xe

.field static final TRANSACTION_reboot:I = 0x10

.field static final TRANSACTION_releaseWakeLock:I = 0x5

.field static final TRANSACTION_setAttentionLight:I = 0x14

.field static final TRANSACTION_setBacklightBrightness:I = 0x12

.field static final TRANSACTION_setBattery:I = 0x16

.field static final TRANSACTION_setMaximumScreenOffTimeount:I = 0xd

.field static final TRANSACTION_setPokeLock:I = 0xa

.field static final TRANSACTION_setStayOnSetting:I = 0xc

.field static final TRANSACTION_showLocked:I = 0x17

.field static final TRANSACTION_updateWakeLockWorkSource:I = 0x2

.field static final TRANSACTION_userActivity:I = 0x6

.field static final TRANSACTION_userActivityWithForce:I = 0x8

.field static final TRANSACTION_userActivity_legacy:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/IPowerManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;
    .locals 2
    .parameter "obj"

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v1, "android.os.IPowerManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IPowerManager;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/os/IPowerManager;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Landroid/os/IPowerManager$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/IPowerManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 15
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
    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 321
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 43
    :sswitch_0
    const-string v1, "android.os.IPowerManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/4 v1, 0x1

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v1, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 52
    .local v2, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 54
    .local v3, _arg1:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 56
    .local v4, _arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    sget-object v1, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/WorkSource;

    .line 62
    .local v5, _arg3:Landroid/os/WorkSource;
    :goto_1
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/os/IPowerManager$Stub;->acquireWakeLock(ILandroid/os/IBinder;Ljava/lang/String;Landroid/os/WorkSource;)V

    .line 63
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    const/4 v1, 0x1

    goto :goto_0

    .line 60
    .end local v5           #_arg3:Landroid/os/WorkSource;
    :cond_0
    const/4 v5, 0x0

    .restart local v5       #_arg3:Landroid/os/WorkSource;
    goto :goto_1

    .line 68
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/os/IBinder;
    .end local v4           #_arg2:Ljava/lang/String;
    .end local v5           #_arg3:Landroid/os/WorkSource;
    :sswitch_2
    const-string v1, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 72
    .local v2, _arg0:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    sget-object v1, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/WorkSource;

    .line 78
    .local v3, _arg1:Landroid/os/WorkSource;
    :goto_2
    invoke-virtual {p0, v2, v3}, Landroid/os/IPowerManager$Stub;->updateWakeLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V

    .line 79
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    const/4 v1, 0x1

    goto :goto_0

    .line 76
    .end local v3           #_arg1:Landroid/os/WorkSource;
    :cond_1
    const/4 v3, 0x0

    .restart local v3       #_arg1:Landroid/os/WorkSource;
    goto :goto_2

    .line 84
    .end local v2           #_arg0:Landroid/os/IBinder;
    .end local v3           #_arg1:Landroid/os/WorkSource;
    :sswitch_3
    const-string v1, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 87
    .local v10, _arg0:J
    invoke-virtual {p0, v10, v11}, Landroid/os/IPowerManager$Stub;->goToSleep(J)V

    .line 88
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    const/4 v1, 0x1

    goto :goto_0

    .line 93
    .end local v10           #_arg0:J
    :sswitch_4
    const-string v1, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 97
    .restart local v10       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 98
    .local v3, _arg1:I
    invoke-virtual {p0, v10, v11, v3}, Landroid/os/IPowerManager$Stub;->goToSleepWithReason(JI)V

    .line 99
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 104
    .end local v3           #_arg1:I
    .end local v10           #_arg0:J
    :sswitch_5
    const-string v1, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 108
    .restart local v2       #_arg0:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 109
    .restart local v3       #_arg1:I
    invoke-virtual {p0, v2, v3}, Landroid/os/IPowerManager$Stub;->releaseWakeLock(Landroid/os/IBinder;I)V

    .line 110
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 115
    .end local v2           #_arg0:Landroid/os/IBinder;
    .end local v3           #_arg1:I
    :sswitch_6
    const-string v1, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 119
    .restart local v10       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    .line 120
    .local v3, _arg1:Z
    :goto_3
    invoke-virtual {p0, v10, v11, v3}, Landroid/os/IPowerManager$Stub;->userActivity(JZ)V

    .line 121
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 119
    .end local v3           #_arg1:Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    .line 126
    .end local v10           #_arg0:J
    :sswitch_7
    const-string v1, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 130
    .restart local v10       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v3, 0x1

    .line 131
    .restart local v3       #_arg1:Z
    :goto_4
    invoke-virtual {p0, v10, v11, v3}, Landroid/os/IPowerManager$Stub;->userActivity_legacy(JZ)V

    .line 132
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 130
    .end local v3           #_arg1:Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_4

    .line 137
    .end local v10           #_arg0:J
    :sswitch_8
    const-string v1, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 141
    .restart local v10       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v3, 0x1

    .line 143
    .restart local v3       #_arg1:Z
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    const/4 v4, 0x1

    .line 144
    .local v4, _arg2:Z
    :goto_6
    invoke-virtual {p0, v10, v11, v3, v4}, Landroid/os/IPowerManager$Stub;->userActivityWithForce(JZZ)V

    .line 145
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 141
    .end local v3           #_arg1:Z
    .end local v4           #_arg2:Z
    :cond_4
    const/4 v3, 0x0

    goto :goto_5

    .line 143
    .restart local v3       #_arg1:Z
    :cond_5
    const/4 v4, 0x0

    goto :goto_6

    .line 150
    .end local v3           #_arg1:Z
    .end local v10           #_arg0:J
    :sswitch_9
    const-string v1, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 154
    .restart local v10       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 155
    .local v12, _arg1:J
    invoke-virtual {p0, v10, v11, v12, v13}, Landroid/os/IPowerManager$Stub;->clearUserActivityTimeout(JJ)V

    .line 156
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 161
    .end local v10           #_arg0:J
    .end local v12           #_arg1:J
    :sswitch_a
    const-string v1, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 165
    .local v2, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 167
    .local v3, _arg1:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 168
    .local v4, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v2, v3, v4}, Landroid/os/IPowerManager$Stub;->setPokeLock(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 169
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 174
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/os/IBinder;
    .end local v4           #_arg2:Ljava/lang/String;
    :sswitch_b
    const-string v1, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->getSupportedWakeLockFlags()I

    move-result v14

    .line 176
    .local v14, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 182
    .end local v14           #_result:I
    :sswitch_c
    const-string v1, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 185
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Landroid/os/IPowerManager$Stub;->setStayOnSetting(I)V

    .line 186
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 191
    .end local v2           #_arg0:I
    :sswitch_d
    const-string v1, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 194
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Landroid/os/IPowerManager$Stub;->setMaximumScreenOffTimeount(I)V

    .line 195
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 200
    .end local v2           #_arg0:I
    :sswitch_e
    const-string v1, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    const/4 v2, 0x1

    .line 203
    .local v2, _arg0:Z
    :goto_7
    invoke-virtual {p0, v2}, Landroid/os/IPowerManager$Stub;->preventScreenOn(Z)V

    .line 204
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 202
    .end local v2           #_arg0:Z
    :cond_6
    const/4 v2, 0x0

    goto :goto_7

    .line 209
    :sswitch_f
    const-string v1, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->isScreenOn()Z

    move-result v14

    .line 211
    .local v14, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    if-eqz v14, :cond_7

    const/4 v1, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 212
    :cond_7
    const/4 v1, 0x0

    goto :goto_8

    .line 217
    .end local v14           #_result:Z
    :sswitch_10
    const-string v1, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/os/IPowerManager$Stub;->reboot(Ljava/lang/String;)V

    .line 221
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 226
    .end local v2           #_arg0:Ljava/lang/String;
    :sswitch_11
    const-string v1, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 229
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/os/IPowerManager$Stub;->crash(Ljava/lang/String;)V

    .line 230
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 235
    .end local v2           #_arg0:Ljava/lang/String;
    :sswitch_12
    const-string v1, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 238
    .local v2, _arg0:I
    invoke-virtual {p0, v2}, Landroid/os/IPowerManager$Stub;->setBacklightBrightness(I)V

    .line 239
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 244
    .end local v2           #_arg0:I
    :sswitch_13
    const-string v1, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->getBacklightBrightness()I

    move-result v14

    .line 246
    .local v14, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 252
    .end local v14           #_result:I
    :sswitch_14
    const-string v1, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    const/4 v2, 0x1

    .line 256
    .local v2, _arg0:Z
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 257
    .local v3, _arg1:I
    invoke-virtual {p0, v2, v3}, Landroid/os/IPowerManager$Stub;->setAttentionLight(ZI)V

    .line 258
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 254
    .end local v2           #_arg0:Z
    .end local v3           #_arg1:I
    :cond_8
    const/4 v2, 0x0

    goto :goto_9

    .line 263
    :sswitch_15
    const-string v1, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->getBatteryLevel()I

    move-result v14

    .line 265
    .restart local v14       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 271
    .end local v14           #_result:I
    :sswitch_16
    const-string v1, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9

    const/4 v2, 0x1

    .line 275
    .restart local v2       #_arg0:Z
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 277
    .restart local v3       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 279
    .local v4, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a

    const/4 v5, 0x1

    .line 281
    .local v5, _arg3:Z
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 283
    .local v6, _arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 285
    .local v7, _arg5:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 287
    .local v8, _arg6:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .local v9, _arg7:Ljava/lang/String;
    move-object v1, p0

    .line 288
    invoke-virtual/range {v1 .. v9}, Landroid/os/IPowerManager$Stub;->setBattery(ZIIZIIILjava/lang/String;)V

    .line 289
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 273
    .end local v2           #_arg0:Z
    .end local v3           #_arg1:I
    .end local v4           #_arg2:I
    .end local v5           #_arg3:Z
    .end local v6           #_arg4:I
    .end local v7           #_arg5:I
    .end local v8           #_arg6:I
    .end local v9           #_arg7:Ljava/lang/String;
    :cond_9
    const/4 v2, 0x0

    goto :goto_a

    .line 279
    .restart local v2       #_arg0:Z
    .restart local v3       #_arg1:I
    .restart local v4       #_arg2:I
    :cond_a
    const/4 v5, 0x0

    goto :goto_b

    .line 294
    .end local v2           #_arg0:Z
    .end local v3           #_arg1:I
    .end local v4           #_arg2:I
    :sswitch_17
    const-string v1, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b

    const/4 v2, 0x1

    .line 298
    .restart local v2       #_arg0:Z
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 300
    .local v3, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 301
    .local v4, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v2, v3, v4}, Landroid/os/IPowerManager$Stub;->showLocked(ZLjava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 296
    .end local v2           #_arg0:Z
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:Ljava/lang/String;
    :cond_b
    const/4 v2, 0x0

    goto :goto_c

    .line 307
    :sswitch_18
    const-string v1, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->hideLocked()V

    .line 309
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 314
    :sswitch_19
    const-string v1, "android.os.IPowerManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->getLockState()Z

    move-result v14

    .line 316
    .local v14, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    if-eqz v14, :cond_c

    const/4 v1, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 317
    :cond_c
    const/4 v1, 0x0

    goto :goto_d

    .line 39
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
