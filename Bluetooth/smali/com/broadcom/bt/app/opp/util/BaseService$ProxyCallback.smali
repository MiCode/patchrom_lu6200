.class Lcom/broadcom/bt/app/opp/util/BaseService$ProxyCallback;
.super Ljava/lang/Object;
.source "BaseService.java"

# interfaces
.implements Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/app/opp/util/BaseService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxyCallback"
.end annotation


# instance fields
.field private mDiscard:Z

.field final synthetic this$0:Lcom/broadcom/bt/app/opp/util/BaseService;


# direct methods
.method private constructor <init>(Lcom/broadcom/bt/app/opp/util/BaseService;)V
    .locals 0
    .parameter

    .prologue
    .line 568
    iput-object p1, p0, Lcom/broadcom/bt/app/opp/util/BaseService$ProxyCallback;->this$0:Lcom/broadcom/bt/app/opp/util/BaseService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/broadcom/bt/app/opp/util/BaseService;Lcom/broadcom/bt/app/opp/util/BaseService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 568
    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/opp/util/BaseService$ProxyCallback;-><init>(Lcom/broadcom/bt/app/opp/util/BaseService;)V

    return-void
.end method

.method static synthetic access$602(Lcom/broadcom/bt/app/opp/util/BaseService$ProxyCallback;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 568
    iput-boolean p1, p0, Lcom/broadcom/bt/app/opp/util/BaseService$ProxyCallback;->mDiscard:Z

    return p1
.end method


# virtual methods
.method public onProxyAvailable(Ljava/lang/Object;)V
    .locals 5
    .parameter "proxyObject"

    .prologue
    .line 577
    const-string v2, "OPPBaseService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "onProxyAvailable(). Proxy object = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p1

    .line 580
    check-cast v1, Lcom/broadcom/bt/service/opp/BluetoothOPP;

    .line 582
    .local v1, proxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;
    iget-boolean v2, p0, Lcom/broadcom/bt/app/opp/util/BaseService$ProxyCallback;->mDiscard:Z

    if-eqz v2, :cond_0

    .line 584
    :try_start_0
    invoke-virtual {v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    const/4 v1, 0x0

    .line 590
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/broadcom/bt/app/opp/util/BaseService$ProxyCallback;->this$0:Lcom/broadcom/bt/app/opp/util/BaseService;

    iput-object v1, v2, Lcom/broadcom/bt/app/opp/util/BaseService;->mOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    .line 591
    iget-object v2, p0, Lcom/broadcom/bt/app/opp/util/BaseService$ProxyCallback;->this$0:Lcom/broadcom/bt/app/opp/util/BaseService;

    iget-object v3, v2, Lcom/broadcom/bt/app/opp/util/BaseService;->mRequestManager:Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;

    monitor-enter v3

    .line 592
    :try_start_1
    iget-object v2, p0, Lcom/broadcom/bt/app/opp/util/BaseService$ProxyCallback;->this$0:Lcom/broadcom/bt/app/opp/util/BaseService;

    iget-object v2, v2, Lcom/broadcom/bt/app/opp/util/BaseService;->mRequestManager:Lcom/broadcom/bt/app/opp/util/BaseService$RequestManager;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 593
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 594
    return-void

    .line 586
    :catch_0
    move-exception v0

    .line 587
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "OPPBaseService"

    const-string v3, "Error discarding proxy object"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 593
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method
