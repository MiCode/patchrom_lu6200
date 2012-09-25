.class final Lcom/broadcom/bt/app/system/DmAppService$DmServiceStub;
.super Lcom/broadcom/bt/service/dm/IDmService$Stub;
.source "DmAppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/app/system/DmAppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DmServiceStub"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mSvc:Lcom/broadcom/bt/service/dm/DmServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/broadcom/bt/service/dm/IDmService$Stub;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/broadcom/bt/app/system/DmAppService$DmServiceStub;->mContext:Landroid/content/Context;

    .line 73
    new-instance v0, Lcom/broadcom/bt/service/dm/DmServiceImpl;

    invoke-direct {v0, p1}, Lcom/broadcom/bt/service/dm/DmServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/system/DmAppService$DmServiceStub;->mSvc:Lcom/broadcom/bt/service/dm/DmServiceImpl;

    .line 74
    const-string v0, "DmServiceStub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSvc : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/broadcom/bt/app/system/DmAppService$DmServiceStub;->mSvc:Lcom/broadcom/bt/service/dm/DmServiceImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void
.end method


# virtual methods
.method public setEQGainConfig(IIIII)Z
    .locals 6
    .parameter "gain1"
    .parameter "gain2"
    .parameter "gain3"
    .parameter "gain4"
    .parameter "gain5"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/broadcom/bt/app/system/DmAppService$DmServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/broadcom/bt/app/system/DmAppService$DmServiceStub;->mSvc:Lcom/broadcom/bt/service/dm/DmServiceImpl;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/broadcom/bt/app/system/DmAppService$DmServiceStub;->mSvc:Lcom/broadcom/bt/service/dm/DmServiceImpl;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/broadcom/bt/service/dm/DmServiceImpl;->setEQGainConfig(IIIII)Z

    move-result v0

    .line 156
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEQMode(I)Z
    .locals 3
    .parameter "mode"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/broadcom/bt/app/system/DmAppService$DmServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/broadcom/bt/app/system/DmAppService$DmServiceStub;->mSvc:Lcom/broadcom/bt/service/dm/DmServiceImpl;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/broadcom/bt/app/system/DmAppService$DmServiceStub;->mSvc:Lcom/broadcom/bt/service/dm/DmServiceImpl;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/dm/DmServiceImpl;->setEQMode(I)Z

    move-result v0

    .line 142
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
