.class Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;
.super Ljava/lang/Object;
.source "IccPhonebookProviderBackendImp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncCallSynchronizer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RESU",
        "LT:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mLock:Ljava/lang/Object;

.field private mNotified:Z

.field protected mResultHolder:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRESU",
            "LT;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;)V
    .locals 1
    .parameter

    .prologue
    .line 893
    .local p0, this:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;,"Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer<TRESULT;>;"
    iput-object p1, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->this$0:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 886
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->mLock:Ljava/lang/Object;

    .line 887
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->mNotified:Z

    .line 894
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 883
    .local p0, this:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;,"Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer<TRESULT;>;"
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;-><init>(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 883
    invoke-direct {p0}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->reset()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 883
    invoke-direct {p0}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->waitResult()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 883
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method private notifyResult(Ljava/lang/Object;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRESU",
            "LT;",
            ")V"
        }
    .end annotation

    .prologue
    .line 934
    .local p0, this:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;,"Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer<TRESULT;>;"
    .local p1, result:Ljava/lang/Object;,"TRESULT;"
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 936
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->mNotified:Z

    .line 937
    iput-object p1, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->mResultHolder:Ljava/lang/Object;

    .line 938
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 940
    monitor-exit v1

    .line 941
    return-void

    .line 940
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 900
    .local p0, this:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;,"Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer<TRESULT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->mNotified:Z

    .line 901
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->mResultHolder:Ljava/lang/Object;

    .line 902
    return-void
.end method

.method private waitResult()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRESU",
            "LT;"
        }
    .end annotation

    .prologue
    .line 907
    .local p0, this:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;,"Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer<TRESULT;>;"
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 909
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->mNotified:Z

    if-nez v1, :cond_0

    .line 910
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->mNotified:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 914
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 920
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->mResultHolder:Ljava/lang/Object;

    monitor-exit v2

    return-object v1

    .line 915
    :catch_0
    move-exception v0

    .line 916
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "IccPhonebookProvider"

    const-string v3, "Interrupted while wait"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 921
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
