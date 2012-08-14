.class public abstract Lcom/android/internal/telephony/IUsimInfoCallback$Stub;
.super Landroid/os/Binder;
.source "IUsimInfoCallback.java"

# interfaces
.implements Lcom/android/internal/telephony/IUsimInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IUsimInfoCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IUsimInfoCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.IUsimInfoCallback"

.field static final TRANSACTION_onPBMDeleteCB:I = 0x4

.field static final TRANSACTION_onPBMInfoCB:I = 0x1

.field static final TRANSACTION_onPBMReadCB:I = 0x2

.field static final TRANSACTION_onPBMWriteCB:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.android.internal.telephony.IUsimInfoCallback"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/IUsimInfoCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IUsimInfoCallback;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.android.internal.telephony.IUsimInfoCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/IUsimInfoCallback;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/android/internal/telephony/IUsimInfoCallback;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/IUsimInfoCallback$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/IUsimInfoCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
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
    const/4 v2, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 92
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 42
    :sswitch_0
    const-string v3, "com.android.internal.telephony.IUsimInfoCallback"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v3, "com.android.internal.telephony.IUsimInfoCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 50
    sget-object v3, Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;

    .line 55
    .local v0, _arg0:Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IUsimInfoCallback$Stub;->onPBMInfoCB(Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;)V

    goto :goto_0

    .line 53
    .end local v0           #_arg0:Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;
    goto :goto_1

    .line 60
    .end local v0           #_arg0:Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;
    :sswitch_2
    const-string v3, "com.android.internal.telephony.IUsimInfoCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 63
    sget-object v3, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;

    .line 68
    .local v0, _arg0:Lcom/android/internal/telephony/gsm/LGE_PBM_Records;
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IUsimInfoCallback$Stub;->onPBMReadCB(Lcom/android/internal/telephony/gsm/LGE_PBM_Records;)V

    goto :goto_0

    .line 66
    .end local v0           #_arg0:Lcom/android/internal/telephony/gsm/LGE_PBM_Records;
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/android/internal/telephony/gsm/LGE_PBM_Records;
    goto :goto_2

    .line 73
    .end local v0           #_arg0:Lcom/android/internal/telephony/gsm/LGE_PBM_Records;
    :sswitch_3
    const-string v3, "com.android.internal.telephony.IUsimInfoCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 77
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 78
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IUsimInfoCallback$Stub;->onPBMWriteCB(II)V

    goto :goto_0

    .line 83
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    :sswitch_4
    const-string v3, "com.android.internal.telephony.IUsimInfoCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 87
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 88
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IUsimInfoCallback$Stub;->onPBMDeleteCB(II)V

    goto :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
