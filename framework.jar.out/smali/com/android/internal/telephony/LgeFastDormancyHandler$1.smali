.class Lcom/android/internal/telephony/LgeFastDormancyHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "LgeFastDormancyHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/LgeFastDormancyHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/LgeFastDormancyHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$1;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 180
    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, action:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$1;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "intent received :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/internal/telephony/LgeFastDormancyHandler;->logv(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->access$000(Lcom/android/internal/telephony/LgeFastDormancyHandler;Ljava/lang/String;)V

    .line 184
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 186
    iget-object v3, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$1;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    iget-object v3, v3, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mFDConfig:Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->updateScreenState(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 189
    :cond_1
    :try_start_1
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 191
    iget-object v3, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$1;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    iget-object v3, v3, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mFDConfig:Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->updateScreenState(Z)V

    .line 194
    iget-object v3, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$1;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    const-string/jumbo v4, "persist.lge.data.fdlog_basic"

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/internal/telephony/LgeFastDormancyHandler;->DBG:Z

    .line 195
    iget-object v3, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$1;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    const-string/jumbo v4, "persist.lge.data.fdlog_detail"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/internal/telephony/LgeFastDormancyHandler;->VDBG:Z

    .line 199
    const-string/jumbo v3, "persist.lge.data.fdpause"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 200
    .local v1, newFDPause:Z
    iget-object v3, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$1;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "newFDPause = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/internal/telephony/LgeFastDormancyHandler;->logv(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->access$000(Lcom/android/internal/telephony/LgeFastDormancyHandler;Ljava/lang/String;)V

    .line 201
    iget-object v3, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$1;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    iget-boolean v3, v3, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mIsFdPause:Z

    if-eq v3, v1, :cond_0

    .line 202
    iget-object v3, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$1;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    iput-boolean v1, v3, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mIsFdPause:Z

    .line 203
    iget-object v3, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$1;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FdPause state is changed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$1;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    iget-boolean v5, v5, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mIsFdPause:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/internal/telephony/LgeFastDormancyHandler;->logd(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->access$100(Lcom/android/internal/telephony/LgeFastDormancyHandler;Ljava/lang/String;)V

    .line 205
    iget-object v3, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$1;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    invoke-virtual {v3}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->scheduleCheckNetStat()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 180
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #newFDPause:Z
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 210
    .restart local v0       #action:Ljava/lang/String;
    :cond_2
    :try_start_2
    const-string v3, "com.android.internal.telephony.ACTION_CHECK_NETSTAT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 212
    iget-object v3, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$1;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    iget-object v3, v3, Lcom/android/internal/telephony/LgeFastDormancyHandler;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 214
    iget-object v3, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$1;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    iget-object v3, v3, Lcom/android/internal/telephony/LgeFastDormancyHandler;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 218
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$1;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    iget-object v3, v3, Lcom/android/internal/telephony/LgeFastDormancyHandler;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 220
    iget-object v3, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$1;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    const v4, 0x18c4b

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->sendMessage(I)V

    goto/16 :goto_0

    .line 222
    :cond_4
    const-string v3, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 224
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v2

    .line 226
    .local v2, ss:Landroid/telephony/ServiceState;
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->access$202(I)I

    .line 227
    invoke-static {}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->access$300()I

    move-result v3

    invoke-static {}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->access$200()I

    move-result v4

    if-ne v3, v4, :cond_6

    .line 229
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->access$402(Z)Z

    .line 237
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$1;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Service State is changed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/internal/telephony/LgeFastDormancyHandler;->logi(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->access$500(Lcom/android/internal/telephony/LgeFastDormancyHandler;Ljava/lang/String;)V

    .line 239
    iget-object v3, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$1;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    iget-object v3, v3, Lcom/android/internal/telephony/LgeFastDormancyHandler;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 241
    iget-object v3, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$1;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    iget-object v3, v3, Lcom/android/internal/telephony/LgeFastDormancyHandler;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 245
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$1;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    iget-object v3, v3, Lcom/android/internal/telephony/LgeFastDormancyHandler;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 247
    iget-object v3, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$1;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    const v4, 0x18c4c

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->sendMessage(I)V

    goto/16 :goto_0

    .line 233
    :cond_6
    invoke-static {}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->access$200()I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->access$302(I)I

    .line 234
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->access$402(Z)Z

    goto :goto_1

    .line 250
    .end local v2           #ss:Landroid/telephony/ServiceState;
    :cond_7
    const-string v3, "android.net.conn.ACTION_FAST_DORMANCY_ENABLED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 252
    iget-object v3, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$1;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    const-string/jumbo v4, "intent received : ACTION__FAST_DORMANCY_ENABLED"

    #calls: Lcom/android/internal/telephony/LgeFastDormancyHandler;->logv(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->access$000(Lcom/android/internal/telephony/LgeFastDormancyHandler;Ljava/lang/String;)V

    .line 253
    iget-object v3, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$1;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    iget-object v3, v3, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mFDConfig:Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->mFDEnableDependOnEmailIntent:Z

    goto/16 :goto_0

    .line 255
    :cond_8
    const-string v3, "android.net.conn.ACTION_FAST_DORMANCY_DISABLED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 257
    iget-object v3, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$1;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    const-string/jumbo v4, "intent received : ACTION_FAST_DORMANCY_DISABLED"

    #calls: Lcom/android/internal/telephony/LgeFastDormancyHandler;->logv(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->access$000(Lcom/android/internal/telephony/LgeFastDormancyHandler;Ljava/lang/String;)V

    .line 258
    iget-object v3, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$1;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    iget-object v3, v3, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mFDConfig:Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->mFDEnableDependOnEmailIntent:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method
