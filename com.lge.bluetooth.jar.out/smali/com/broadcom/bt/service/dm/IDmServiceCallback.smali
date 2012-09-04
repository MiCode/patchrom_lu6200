.class public interface abstract Lcom/broadcom/bt/service/dm/IDmServiceCallback;
.super Ljava/lang/Object;
.source "IDmServiceCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/dm/IDmServiceCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onEQModeSetEvent(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
