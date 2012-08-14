.class Lcom/android/server/location/GpsLocationProvider$3;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GpsLocationProvider;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;

.field final synthetic val$_extras:Landroid/os/Bundle;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider;Landroid/os/Bundle;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1750
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$3;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iput-object p2, p0, Lcom/android/server/location/GpsLocationProvider$3;->val$_extras:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/android/server/location/GpsLocationProvider$3;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1752
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$3;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$3;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$3;->val$_extras:Landroid/os/Bundle;

    #calls: Lcom/android/server/location/GpsLocationProvider;->run_LG_command(Landroid/os/Bundle;)Z
    invoke-static {v1, v2}, Lcom/android/server/location/GpsLocationProvider;->access$1200(Lcom/android/server/location/GpsLocationProvider;Landroid/os/Bundle;)Z

    move-result v1

    #setter for: Lcom/android/server/location/GpsLocationProvider;->mLGGpsCmdRet:Z
    invoke-static {v0, v1}, Lcom/android/server/location/GpsLocationProvider;->access$1102(Lcom/android/server/location/GpsLocationProvider;Z)Z

    .line 1753
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$3;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1754
    return-void
.end method
