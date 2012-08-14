.class final Lcom/android/server/location/GpsLocationProvider$GpsLocationDownloadThread;
.super Ljava/lang/Thread;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GpsLocationDownloadThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 1
    .parameter

    .prologue
    .line 2971
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$GpsLocationDownloadThread;->this$0:Lcom/android/server/location/GpsLocationProvider;

    .line 2972
    const-string v0, "GpsLocationDownloadThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 2973
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2976
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2977
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsLocationDownloadThread;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #calls: Lcom/android/server/location/GpsLocationProvider;->initialize()V
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$3800(Lcom/android/server/location/GpsLocationProvider;)V

    .line 2978
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 2980
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsLocationDownloadThread;->this$0:Lcom/android/server/location/GpsLocationProvider;

    new-instance v1, Lcom/android/server/location/GpsLocationProvider$DownloadHandler;

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$GpsLocationDownloadThread;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/server/location/GpsLocationProvider$DownloadHandler;-><init>(Lcom/android/server/location/GpsLocationProvider;Lcom/android/server/location/GpsLocationProvider$1;)V

    #setter for: Lcom/android/server/location/GpsLocationProvider;->mDownloadHandler:Landroid/os/Handler;
    invoke-static {v0, v1}, Lcom/android/server/location/GpsLocationProvider;->access$4102(Lcom/android/server/location/GpsLocationProvider;Landroid/os/Handler;)Landroid/os/Handler;

    .line 2983
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$GpsLocationDownloadThread;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mDownloadThreadInitializedLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$4300(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 2984
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 2985
    return-void
.end method
