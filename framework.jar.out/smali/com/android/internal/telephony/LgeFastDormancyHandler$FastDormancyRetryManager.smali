.class Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyRetryManager;
.super Ljava/lang/Object;
.source "LgeFastDormancyHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/LgeFastDormancyHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FastDormancyRetryManager"
.end annotation


# instance fields
.field mConfig:Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;

.field mRetryCount:I

.field final synthetic this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/LgeFastDormancyHandler;Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;)V
    .locals 1
    .parameter
    .parameter "config"

    .prologue
    .line 530
    iput-object p1, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyRetryManager;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 527
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyRetryManager;->mConfig:Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;

    .line 528
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyRetryManager;->mRetryCount:I

    .line 531
    iput-object p2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyRetryManager;->mConfig:Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;

    .line 532
    return-void
.end method


# virtual methods
.method public increaseCount()V
    .locals 3

    .prologue
    .line 535
    iget v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyRetryManager;->mRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyRetryManager;->mRetryCount:I

    .line 536
    iget-object v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyRetryManager;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "increaseCount(): mRetryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyRetryManager;->mRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/internal/telephony/LgeFastDormancyHandler;->logv(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->access$000(Lcom/android/internal/telephony/LgeFastDormancyHandler;Ljava/lang/String;)V

    .line 537
    return-void
.end method

.method public isRetryNeeded()Z
    .locals 3

    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyRetryManager;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isRetryNeeded(): mRetryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyRetryManager;->mRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", MaxRetry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyRetryManager;->mConfig:Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;

    invoke-virtual {v2}, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->getFDMaxRetry()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/internal/telephony/LgeFastDormancyHandler;->logv(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->access$000(Lcom/android/internal/telephony/LgeFastDormancyHandler;Ljava/lang/String;)V

    .line 550
    iget v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyRetryManager;->mRetryCount:I

    iget-object v1, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyRetryManager;->mConfig:Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;

    invoke-virtual {v1}, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->getFDMaxRetry()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 551
    const/4 v0, 0x1

    .line 553
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetCount()V
    .locals 3

    .prologue
    .line 540
    iget v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyRetryManager;->mRetryCount:I

    if-eqz v0, :cond_0

    .line 542
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyRetryManager;->mRetryCount:I

    .line 543
    iget-object v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyRetryManager;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetCount(): mRetryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyRetryManager;->mRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/internal/telephony/LgeFastDormancyHandler;->logv(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->access$000(Lcom/android/internal/telephony/LgeFastDormancyHandler;Ljava/lang/String;)V

    .line 545
    :cond_0
    return-void
.end method
