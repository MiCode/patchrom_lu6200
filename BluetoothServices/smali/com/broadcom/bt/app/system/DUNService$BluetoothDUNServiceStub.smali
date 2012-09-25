.class final Lcom/broadcom/bt/app/system/DUNService$BluetoothDUNServiceStub;
.super Lcom/broadcom/bt/service/dun/IBluetoothDUN$Stub;
.source "DUNService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/app/system/DUNService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BluetoothDUNServiceStub"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSvc:Lcom/broadcom/bt/service/dun/BluetoothDUNService;

.field private mSvcStarted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/broadcom/bt/service/dun/IBluetoothDUN$Stub;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/app/system/DUNService$BluetoothDUNServiceStub;->mSvc:Lcom/broadcom/bt/service/dun/BluetoothDUNService;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/app/system/DUNService$BluetoothDUNServiceStub;->mSvcStarted:Z

    .line 67
    iput-object p1, p0, Lcom/broadcom/bt/app/system/DUNService$BluetoothDUNServiceStub;->mContext:Landroid/content/Context;

    .line 68
    const-string v0, "bluetooth_dun"

    invoke-static {v0}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->getService(Ljava/lang/String;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;

    iput-object v0, p0, Lcom/broadcom/bt/app/system/DUNService$BluetoothDUNServiceStub;->mSvc:Lcom/broadcom/bt/service/dun/BluetoothDUNService;

    .line 71
    return-void
.end method


# virtual methods
.method public getAllPortStatus()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/broadcom/bt/app/system/DUNService$BluetoothDUNServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/broadcom/bt/app/system/DUNService$BluetoothDUNServiceStub;->mSvc:Lcom/broadcom/bt/service/dun/BluetoothDUNService;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/broadcom/bt/app/system/DUNService$BluetoothDUNServiceStub;->mSvc:Lcom/broadcom/bt/service/dun/BluetoothDUNService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->getAllPortStatus()Landroid/os/Bundle;

    move-result-object v0

    .line 101
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public registerCallback(Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback;)V
    .locals 3
    .parameter "cb"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/broadcom/bt/app/system/DUNService$BluetoothDUNServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/app/system/DUNService$BluetoothDUNServiceStub;->mSvc:Lcom/broadcom/bt/service/dun/BluetoothDUNService;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/broadcom/bt/app/system/DUNService$BluetoothDUNServiceStub;->mSvc:Lcom/broadcom/bt/service/dun/BluetoothDUNService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->registerCallback(Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback;)V

    .line 87
    :cond_0
    return-void
.end method

.method public unregisterCallback(Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback;)V
    .locals 3
    .parameter "cb"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/broadcom/bt/app/system/DUNService$BluetoothDUNServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/app/system/DUNService$BluetoothDUNServiceStub;->mSvc:Lcom/broadcom/bt/service/dun/BluetoothDUNService;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/broadcom/bt/app/system/DUNService$BluetoothDUNServiceStub;->mSvc:Lcom/broadcom/bt/service/dun/BluetoothDUNService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->unregisterCallback(Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback;)V

    .line 94
    :cond_0
    return-void
.end method
