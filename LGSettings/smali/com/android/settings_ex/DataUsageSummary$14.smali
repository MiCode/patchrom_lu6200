.class Lcom/android/settings_ex/DataUsageSummary$14;
.super Landroid/content/BroadcastReceiver;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DataUsageSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 2572
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary$14;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2575
    if-nez p2, :cond_1

    .line 2614
    :cond_0
    :goto_0
    return-void

    .line 2577
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2578
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2579
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary$14;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-virtual {v4}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v7, "connectivity"

    invoke-virtual {v4, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 2583
    .local v1, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    .line 2585
    .local v2, enabled:Z
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary$14;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #getter for: Lcom/android/settings_ex/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;
    invoke-static {v4}, Lcom/android/settings_ex/DataUsageSummary;->access$4100(Lcom/android/settings_ex/DataUsageSummary;)Landroid/net/ConnectivityManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 2586
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings_ex/DataUsageSummary;->access$4202(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 2587
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary$14;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #calls: Lcom/android/settings_ex/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v4, v6}, Lcom/android/settings_ex/DataUsageSummary;->access$1400(Lcom/android/settings_ex/DataUsageSummary;Z)V

    .line 2589
    #calls: Lcom/android/settings_ex/DataUsageSummary;->setConfirmDialogShowed(Z)V
    invoke-static {v6}, Lcom/android/settings_ex/DataUsageSummary;->access$1300(Z)V

    .line 2605
    .end local v1           #cm:Landroid/net/ConnectivityManager;
    .end local v2           #enabled:Z
    :cond_2
    :goto_1
    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2606
    const-string v4, "state"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 2608
    .restart local v2       #enabled:Z
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary$14;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #getter for: Lcom/android/settings_ex/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;
    invoke-static {v4}, Lcom/android/settings_ex/DataUsageSummary;->access$4100(Lcom/android/settings_ex/DataUsageSummary;)Landroid/net/ConnectivityManager;

    move-result-object v7

    if-nez v2, :cond_4

    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 2609
    if-nez v2, :cond_5

    :goto_3
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings_ex/DataUsageSummary;->access$4202(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 2610
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary$14;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #calls: Lcom/android/settings_ex/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v4, v6}, Lcom/android/settings_ex/DataUsageSummary;->access$1400(Lcom/android/settings_ex/DataUsageSummary;Z)V

    .line 2612
    #calls: Lcom/android/settings_ex/DataUsageSummary;->setConfirmDialogShowed(Z)V
    invoke-static {v6}, Lcom/android/settings_ex/DataUsageSummary;->access$1300(Z)V

    goto :goto_0

    .line 2592
    .end local v2           #enabled:Z
    :cond_3
    const-string v4, "android.skt.intent.action.USER_BACKG_SETTING"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2593
    const-string v4, "on_off"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 2594
    .restart local v2       #enabled:Z
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary$14;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #calls: Lcom/android/settings_ex/DataUsageSummary;->getRestrictBackground()Z
    invoke-static {v4}, Lcom/android/settings_ex/DataUsageSummary;->access$4300(Lcom/android/settings_ex/DataUsageSummary;)Z

    move-result v3

    .line 2596
    .local v3, getBackground:Z
    const-string v4, "DataUsage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " [LGE_DATA] USER_BACKG_SETTING :: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2597
    const-string v4, "DataUsage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " [LGE_DATA] getBackground :: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2599
    if-eq v3, v2, :cond_2

    .line 2600
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary$14;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #calls: Lcom/android/settings_ex/DataUsageSummary;->setRestrictBackground(Z)V
    invoke-static {v4, v2}, Lcom/android/settings_ex/DataUsageSummary;->access$4000(Lcom/android/settings_ex/DataUsageSummary;Z)V

    goto :goto_1

    .end local v3           #getBackground:Z
    :cond_4
    move v4, v6

    .line 2608
    goto :goto_2

    :cond_5
    move v5, v6

    .line 2609
    goto :goto_3
.end method
