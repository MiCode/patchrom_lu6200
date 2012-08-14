.class Lcom/android/server/connectivity/Tethering$EntitlementCheckService$1;
.super Ljava/lang/Object;
.source "Tethering.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering$EntitlementCheckService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Tethering$EntitlementCheckService;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering$EntitlementCheckService;)V
    .locals 0
    .parameter

    .prologue
    .line 2347
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService$1;->this$0:Lcom/android/server/connectivity/Tethering$EntitlementCheckService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2349
    const-string v0, "Tethering"

    const-string v1, "[EntitlementCheck] Entitlement Failed 30sec TIMEOUT !!! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2350
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService$1;->this$0:Lcom/android/server/connectivity/Tethering$EntitlementCheckService;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->disableTethering()V

    .line 2351
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService$1;->this$0:Lcom/android/server/connectivity/Tethering$EntitlementCheckService;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->stopSelf()V

    .line 2352
    return-void
.end method
