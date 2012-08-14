.class Lcom/android/server/connectivity/Tethering$EntitlementCheckService$2;
.super Landroid/content/BroadcastReceiver;
.source "Tethering.java"


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
    .line 2424
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService$2;->this$0:Lcom/android/server/connectivity/Tethering$EntitlementCheckService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 2427
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2429
    .local v0, action:Ljava/lang/String;
    const-string v3, "Tethering"

    const-string v4, "[EntitlementCheck] mReceiver "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2430
    const-string v3, "android.net.conn.DATA_CONNECTED_STATUS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2431
    const-string v3, "success"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 2432
    .local v2, result:I
    const-string v3, "fail_cause"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2433
    .local v1, reason:I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 2434
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService$2;->this$0:Lcom/android/server/connectivity/Tethering$EntitlementCheckService;

    invoke-virtual {v3}, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->disableTethering()V

    .line 2435
    :cond_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService$2;->this$0:Lcom/android/server/connectivity/Tethering$EntitlementCheckService;

    invoke-virtual {v3}, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->stopSelf()V

    .line 2437
    .end local v1           #reason:I
    .end local v2           #result:I
    :cond_1
    return-void
.end method
