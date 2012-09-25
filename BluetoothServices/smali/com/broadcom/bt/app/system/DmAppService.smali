.class public Lcom/broadcom/bt/app/system/DmAppService;
.super Landroid/app/Service;
.source "DmAppService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/app/system/DmAppService$DmServiceStub;
    }
.end annotation


# instance fields
.field private final mBinder:Lcom/broadcom/bt/service/dm/IDmService$Stub;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 42
    new-instance v0, Lcom/broadcom/bt/app/system/DmAppService$DmServiceStub;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/app/system/DmAppService$DmServiceStub;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/system/DmAppService;->mBinder:Lcom/broadcom/bt/service/dm/IDmService$Stub;

    .line 43
    const-string v0, "DmAppService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DmAppService - mBinder : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/broadcom/bt/app/system/DmAppService;->mBinder:Lcom/broadcom/bt/service/dm/IDmService$Stub;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 48
    const-string v0, "DmAppService"

    const-string v1, "Binding service..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v0, p0, Lcom/broadcom/bt/app/system/DmAppService;->mBinder:Lcom/broadcom/bt/service/dm/IDmService$Stub;

    return-object v0
.end method
