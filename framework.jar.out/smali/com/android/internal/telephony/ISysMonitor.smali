.class public interface abstract Lcom/android/internal/telephony/ISysMonitor;
.super Ljava/lang/Object;
.source "ISysMonitor.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ISysMonitor$Stub;
    }
.end annotation


# virtual methods
.method public abstract onPhoneStateChanged(IIILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
