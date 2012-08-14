.class public Lcom/android/server/connectivity/Tethering$EntitlementCheckService;
.super Landroid/app/Service;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EntitlementCheckService"
.end annotation


# static fields
.field private static final ENTITLEMENT_FAIL_CAUSE:Ljava/lang/String; = "fail_cause"

.field private static final ENTITLEMENT_SUCCESS:Ljava/lang/String; = "success"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAPNIntentFilter:Landroid/content/IntentFilter;

.field mCm:Landroid/net/ConnectivityManager;

.field public mHandler:Landroid/os/Handler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field mWifiManager:Landroid/net/wifi/WifiManager;

.field private timeOutTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2337
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2338
    const-string v0, "Tethering"

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->TAG:Ljava/lang/String;

    .line 2346
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mHandler:Landroid/os/Handler;

    .line 2347
    new-instance v0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService$1;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$EntitlementCheckService$1;-><init>(Lcom/android/server/connectivity/Tethering$EntitlementCheckService;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->timeOutTask:Ljava/lang/Runnable;

    .line 2424
    new-instance v0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService$2;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$EntitlementCheckService$2;-><init>(Lcom/android/server/connectivity/Tethering$EntitlementCheckService;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public disableTethering()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2403
    const-string v5, "Tethering"

    const-string v6, "[EntitlementCheck] Disable Tethering"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2404
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v4

    .line 2405
    .local v4, mIfaces:[Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 2406
    .local v3, mIface:Ljava/lang/String;
    const-string v5, "Tethering"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[EntitlementCheck] Tethered Interface =>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2407
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v3}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    .line 2408
    const-string v5, "wlan0"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2409
    const-string v5, "Tethering"

    const-string v6, "[EntitlementCheck] Disable Mobile Hotspot"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2410
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v8}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 2412
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$400()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_saved_state"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v9, :cond_0

    .line 2413
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v9}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 2414
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$400()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_saved_state"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2405
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2418
    :cond_1
    const-string v5, "Tethering"

    const-string v6, "[EntitlementCheck] Disable USB Tethering"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2419
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v3}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    goto :goto_1

    .line 2422
    .end local v3           #mIface:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 2397
    const-string v0, "Tethering"

    const-string v1, "[EntitlementCheck] onBind()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2399
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 2357
    const-string v0, "Tethering"

    const-string v1, "[EntitlementCheck] onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2358
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mCm:Landroid/net/ConnectivityManager;

    .line 2359
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.DATA_CONNECTED_STATUS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mAPNIntentFilter:Landroid/content/IntentFilter;

    .line 2360
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mAPNIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2362
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2364
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 2387
    const-string v0, "Tethering"

    const-string v1, "[EntitlementCheck] onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2388
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2389
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->timeOutTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2390
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mCm:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    const-string v2, "enableENTITLEMENT"

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 2392
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 2369
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mCm:Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    const-string v3, "enableENTITLEMENT"

    invoke-virtual {v1, v2, v3}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v0

    .line 2371
    .local v0, result:I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 2372
    :cond_0
    const-string v1, "Tethering"

    const-string v2, "[EntitlementCheck] StartUsingNetwork failed   APN_REQUEST_FAILED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2373
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->disableTethering()V

    .line 2374
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->stopSelf()V

    .line 2383
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 2375
    :cond_1
    if-nez v0, :cond_2

    .line 2376
    const-string v1, "Tethering"

    const-string v2, "[EntitlementCheck] StartUsingNetwork APN_ALREADY_ACTIVE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2377
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->stopSelf()V

    goto :goto_0

    .line 2379
    :cond_2
    const-string v1, "Tethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[EntitlementCheck] onCreate  Entitlement Successfully tried ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\t Set TIMEOUT 30 sec"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2381
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$EntitlementCheckService;->timeOutTask:Ljava/lang/Runnable;

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
