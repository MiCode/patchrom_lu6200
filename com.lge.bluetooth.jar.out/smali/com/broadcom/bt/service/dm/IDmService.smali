.class public interface abstract Lcom/broadcom/bt/service/dm/IDmService;
.super Ljava/lang/Object;
.source "IDmService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/dm/IDmService$Stub;
    }
.end annotation


# virtual methods
.method public abstract setEQGainConfig(IIIII)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setEQMode(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
