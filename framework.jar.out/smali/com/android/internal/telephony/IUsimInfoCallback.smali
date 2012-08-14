.class public interface abstract Lcom/android/internal/telephony/IUsimInfoCallback;
.super Ljava/lang/Object;
.source "IUsimInfoCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IUsimInfoCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onPBMDeleteCB(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onPBMInfoCB(Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onPBMReadCB(Lcom/android/internal/telephony/gsm/LGE_PBM_Records;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onPBMWriteCB(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
