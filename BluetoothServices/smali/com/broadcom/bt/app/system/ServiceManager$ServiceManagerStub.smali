.class Lcom/broadcom/bt/app/system/ServiceManager$ServiceManagerStub;
.super Lcom/broadcom/bt/service/framework/IServiceManager$Stub;
.source "ServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/app/system/ServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceManagerStub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/IServiceManager$Stub;-><init>()V

    .line 54
    return-void
.end method


# virtual methods
.method public disableService(Ljava/lang/String;)V
    .locals 0
    .parameter "serviceName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-static {p1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->disableService(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public enableService(Ljava/lang/String;)V
    .locals 0
    .parameter "serviceName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-static {p1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->enableService(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public getServiceState(Ljava/lang/String;)I
    .locals 1
    .parameter "serviceName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-static {p1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->getServiceState(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
