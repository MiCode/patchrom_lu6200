.class Lcom/android/internal/telephony/LgeFastDormancyHandler$NetStatMonitor;
.super Ljava/lang/Object;
.source "LgeFastDormancyHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/LgeFastDormancyHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetStatMonitor"
.end annotation


# instance fields
.field private mRxPkts:J

.field private mTxPkts:J

.field final synthetic this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/LgeFastDormancyHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 563
    iput-object p1, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$NetStatMonitor;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 565
    return-void
.end method


# virtual methods
.method public checkNetStat()Z
    .locals 8

    .prologue
    .line 571
    iget-wide v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$NetStatMonitor;->mTxPkts:J

    .line 572
    .local v2, preTxPkts:J
    iget-wide v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$NetStatMonitor;->mRxPkts:J

    .line 574
    .local v0, preRxPkts:J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxPackets()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$NetStatMonitor;->mTxPkts:J

    .line 575
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxPackets()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$NetStatMonitor;->mRxPkts:J

    .line 577
    iget-object v4, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$NetStatMonitor;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "prev: TxPkts("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "), RxPkts("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/internal/telephony/LgeFastDormancyHandler;->logv(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->access$000(Lcom/android/internal/telephony/LgeFastDormancyHandler;Ljava/lang/String;)V

    .line 578
    iget-object v4, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$NetStatMonitor;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "curr: TxPkts("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$NetStatMonitor;->mTxPkts:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "), RxPkts("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$NetStatMonitor;->mRxPkts:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/internal/telephony/LgeFastDormancyHandler;->logv(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->access$000(Lcom/android/internal/telephony/LgeFastDormancyHandler;Ljava/lang/String;)V

    .line 580
    iget-wide v4, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$NetStatMonitor;->mTxPkts:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    iget-wide v4, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$NetStatMonitor;->mRxPkts:J

    cmp-long v4, v0, v4

    if-eqz v4, :cond_1

    .line 581
    :cond_0
    const/4 v4, 0x1

    .line 583
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method
