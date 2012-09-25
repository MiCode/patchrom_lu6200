.class Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientRequestProcessor;
.super Ljava/lang/Object;
.source "OPPClientService.java"

# interfaces
.implements Lcom/broadcom/bt/service/opp/IOppEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/app/opp/client/OPPClientService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClientRequestProcessor"
.end annotation


# instance fields
.field public mClientHandler:Lcom/broadcom/bt/app/opp/client/BaseClientHandler;

.field public mStartId:I

.field final synthetic this$0:Lcom/broadcom/bt/app/opp/client/OPPClientService;


# direct methods
.method public constructor <init>(Lcom/broadcom/bt/app/opp/client/OPPClientService;ILcom/broadcom/bt/app/opp/client/BaseClientHandler;)V
    .locals 0
    .parameter
    .parameter "startId"
    .parameter "handler"

    .prologue
    .line 783
    iput-object p1, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientRequestProcessor;->this$0:Lcom/broadcom/bt/app/opp/client/OPPClientService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 784
    iput p2, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientRequestProcessor;->mStartId:I

    .line 785
    iput-object p3, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientRequestProcessor;->mClientHandler:Lcom/broadcom/bt/app/opp/client/BaseClientHandler;

    .line 786
    return-void
.end method


# virtual methods
.method public onOpOwnerVcardNotSet(Ljava/lang/String;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 927
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientRequestProcessor;->mClientHandler:Lcom/broadcom/bt/app/opp/client/BaseClientHandler;

    if-eqz v0, :cond_0

    .line 928
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientRequestProcessor;->mClientHandler:Lcom/broadcom/bt/app/opp/client/BaseClientHandler;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/app/opp/client/BaseClientHandler;->onOpOwnerVcardNotSet(Ljava/lang/String;)V

    .line 930
    :cond_0
    return-void
.end method

.method public onOpcAmpStateChanged(Ljava/lang/String;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 916
    return-void
.end method

.method public onOpcClose(I)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 861
    const-string v1, "ClientRequestProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOpcClose() state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientRequestProcessor;->this$0:Lcom/broadcom/bt/app/opp/client/OPPClientService;

    #getter for: Lcom/broadcom/bt/app/opp/client/OPPClientService;->mSessionManager:Lcom/broadcom/bt/app/opp/client/OPPClientService$SessionManager;
    invoke-static {v1}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->access$1800(Lcom/broadcom/bt/app/opp/client/OPPClientService;)Lcom/broadcom/bt/app/opp/client/OPPClientService$SessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/broadcom/bt/app/opp/client/OPPClientService$SessionManager;->getLatestSession()Lcom/broadcom/bt/app/opp/data/OPPSession;

    move-result-object v0

    .line 865
    .local v0, s:Lcom/broadcom/bt/app/opp/data/OPPSession;
    if-eqz v0, :cond_1

    .line 866
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/broadcom/bt/app/opp/data/OPPSession;->mClosed:Z

    .line 873
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientRequestProcessor;->this$0:Lcom/broadcom/bt/app/opp/client/OPPClientService;

    iget-object v2, v1, Lcom/broadcom/bt/app/opp/client/OPPClientService;->mTimeoutLock:Ljava/lang/Object;

    monitor-enter v2

    .line 874
    :try_start_0
    iget-boolean v1, v0, Lcom/broadcom/bt/app/opp/data/OPPSession;->mTimeoutOccurred:Z

    if-eqz v1, :cond_0

    .line 875
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientRequestProcessor;->this$0:Lcom/broadcom/bt/app/opp/client/OPPClientService;

    iget-object v1, v1, Lcom/broadcom/bt/app/opp/client/OPPClientService;->mTimeoutLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 877
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 881
    :cond_1
    if-eqz p1, :cond_2

    .line 882
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientRequestProcessor;->mClientHandler:Lcom/broadcom/bt/app/opp/client/BaseClientHandler;

    if-eqz v1, :cond_2

    .line 883
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientRequestProcessor;->mClientHandler:Lcom/broadcom/bt/app/opp/client/BaseClientHandler;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/app/opp/client/BaseClientHandler;->onOpcClose(I)V

    .line 886
    :cond_2
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientRequestProcessor;->this$0:Lcom/broadcom/bt/app/opp/client/OPPClientService;

    #getter for: Lcom/broadcom/bt/app/opp/client/OPPClientService;->mCloseHandler:Lcom/broadcom/bt/app/opp/util/ISessionCloseHandler;
    invoke-static {v1}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->access$1100(Lcom/broadcom/bt/app/opp/client/OPPClientService;)Lcom/broadcom/bt/app/opp/util/ISessionCloseHandler;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 887
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientRequestProcessor;->this$0:Lcom/broadcom/bt/app/opp/client/OPPClientService;

    #getter for: Lcom/broadcom/bt/app/opp/client/OPPClientService;->mCloseHandler:Lcom/broadcom/bt/app/opp/util/ISessionCloseHandler;
    invoke-static {v1}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->access$1100(Lcom/broadcom/bt/app/opp/client/OPPClientService;)Lcom/broadcom/bt/app/opp/util/ISessionCloseHandler;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/broadcom/bt/app/opp/util/ISessionCloseHandler;->onSessionClosed(I)V

    .line 889
    :cond_3
    return-void

    .line 877
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onOpcEnable()V
    .locals 6

    .prologue
    .line 811
    const-string v2, "ClientRequestProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Entering OnOpcEnable()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    iget-object v2, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientRequestProcessor;->this$0:Lcom/broadcom/bt/app/opp/client/OPPClientService;

    #getter for: Lcom/broadcom/bt/app/opp/util/BaseService;->mWatchdog:Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;
    invoke-static {v2}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->access$1700(Lcom/broadcom/bt/app/opp/client/OPPClientService;)Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;->stop()V

    .line 819
    iget-object v2, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientRequestProcessor;->this$0:Lcom/broadcom/bt/app/opp/client/OPPClientService;

    #getter for: Lcom/broadcom/bt/app/opp/client/OPPClientService;->mSessionManager:Lcom/broadcom/bt/app/opp/client/OPPClientService$SessionManager;
    invoke-static {v2}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->access$1800(Lcom/broadcom/bt/app/opp/client/OPPClientService;)Lcom/broadcom/bt/app/opp/client/OPPClientService$SessionManager;

    move-result-object v3

    monitor-enter v3

    .line 820
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientRequestProcessor;->this$0:Lcom/broadcom/bt/app/opp/client/OPPClientService;

    #getter for: Lcom/broadcom/bt/app/opp/client/OPPClientService;->mSessionManager:Lcom/broadcom/bt/app/opp/client/OPPClientService$SessionManager;
    invoke-static {v2}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->access$1800(Lcom/broadcom/bt/app/opp/client/OPPClientService;)Lcom/broadcom/bt/app/opp/client/OPPClientService$SessionManager;

    move-result-object v2

    iget-object v2, v2, Lcom/broadcom/bt/app/opp/client/OPPClientService$SessionManager;->mLatestSession:Lcom/broadcom/bt/app/opp/data/OPPSession;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientRequestProcessor;->this$0:Lcom/broadcom/bt/app/opp/client/OPPClientService;

    #getter for: Lcom/broadcom/bt/app/opp/client/OPPClientService;->mSessionManager:Lcom/broadcom/bt/app/opp/client/OPPClientService$SessionManager;
    invoke-static {v2}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->access$1800(Lcom/broadcom/bt/app/opp/client/OPPClientService;)Lcom/broadcom/bt/app/opp/client/OPPClientService$SessionManager;

    move-result-object v2

    iget-object v2, v2, Lcom/broadcom/bt/app/opp/client/OPPClientService$SessionManager;->mLatestSession:Lcom/broadcom/bt/app/opp/data/OPPSession;

    iget-boolean v2, v2, Lcom/broadcom/bt/app/opp/data/OPPSession;->mStarted:Z

    if-eqz v2, :cond_0

    .line 822
    const-string v2, "ClientRequestProcessor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "OPP Session already started, skipping OpcEnable request"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    monitor-exit v3

    .line 846
    :goto_0
    return-void

    .line 827
    :cond_0
    iget-object v2, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientRequestProcessor;->this$0:Lcom/broadcom/bt/app/opp/client/OPPClientService;

    #getter for: Lcom/broadcom/bt/app/opp/client/OPPClientService;->mSessionManager:Lcom/broadcom/bt/app/opp/client/OPPClientService$SessionManager;
    invoke-static {v2}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->access$1800(Lcom/broadcom/bt/app/opp/client/OPPClientService;)Lcom/broadcom/bt/app/opp/client/OPPClientService$SessionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/broadcom/bt/app/opp/client/OPPClientService$SessionManager;->setLatestSessionStarted()Z

    .line 832
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 838
    new-instance v0, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientRequestProcessor$1;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientRequestProcessor$1;-><init>(Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientRequestProcessor;)V

    .line 844
    .local v0, r:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 845
    .local v1, t:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 832
    .end local v0           #r:Ljava/lang/Runnable;
    .end local v1           #t:Ljava/lang/Thread;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public onOpcObjectPushed(ILjava/lang/String;)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 892
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientRequestProcessor;->mClientHandler:Lcom/broadcom/bt/app/opp/client/BaseClientHandler;

    if-eqz v0, :cond_0

    .line 893
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientRequestProcessor;->mClientHandler:Lcom/broadcom/bt/app/opp/client/BaseClientHandler;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/app/opp/client/BaseClientHandler;->onOpcObjectPushed(ILjava/lang/String;)V

    .line 895
    :cond_0
    return-void
.end method

.method public onOpcObjectReceived(ILjava/lang/String;)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 898
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientRequestProcessor;->mClientHandler:Lcom/broadcom/bt/app/opp/client/BaseClientHandler;

    if-eqz v0, :cond_0

    .line 899
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientRequestProcessor;->mClientHandler:Lcom/broadcom/bt/app/opp/client/BaseClientHandler;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/app/opp/client/BaseClientHandler;->onOpcObjectReceived(ILjava/lang/String;)V

    .line 901
    :cond_0
    return-void
.end method

.method public onOpcOpen()V
    .locals 3

    .prologue
    .line 850
    const-string v0, "ClientRequestProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Entering onOpcOpen(): Thread = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientRequestProcessor;->this$0:Lcom/broadcom/bt/app/opp/client/OPPClientService;

    sget-object v1, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;->STATE_OPC_OPEN:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    iput-object v1, v0, Lcom/broadcom/bt/app/opp/client/OPPClientService;->mClientState:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    .line 853
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientRequestProcessor;->this$0:Lcom/broadcom/bt/app/opp/client/OPPClientService;

    #getter for: Lcom/broadcom/bt/app/opp/util/BaseService;->mWatchdog:Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;
    invoke-static {v0}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->access$1900(Lcom/broadcom/bt/app/opp/client/OPPClientService;)Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;

    move-result-object v0

    const/16 v1, 0x3a98

    iget-object v2, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientRequestProcessor;->this$0:Lcom/broadcom/bt/app/opp/client/OPPClientService;

    iget-object v2, v2, Lcom/broadcom/bt/app/opp/client/OPPClientService;->mClientState:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;->pet(ILjava/lang/Object;)V

    .line 855
    const-string v0, "ClientRequestProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Leaving onOpcOpen()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    return-void
.end method

.method public onOpcProgress(JJ)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 921
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientRequestProcessor;->mClientHandler:Lcom/broadcom/bt/app/opp/client/BaseClientHandler;

    if-eqz v0, :cond_0

    .line 922
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientRequestProcessor;->mClientHandler:Lcom/broadcom/bt/app/opp/client/BaseClientHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/broadcom/bt/app/opp/client/BaseClientHandler;->onOpcProgress(JJ)V

    .line 924
    :cond_0
    return-void
.end method

.method public onOpsAccessRequest(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;J)V
    .locals 0
    .parameter "peerDeviceName"
    .parameter "peerBDAddress"
    .parameter "operation"
    .parameter "format"
    .parameter "filePathName"
    .parameter "totalBytes"

    .prologue
    .line 941
    return-void
.end method

.method public onOpsAmpStateChanged(Ljava/lang/String;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 949
    return-void
.end method

.method public onOpsClose()V
    .locals 0

    .prologue
    .line 957
    return-void
.end method

.method public onOpsObjectReceived(ILjava/lang/String;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 954
    return-void
.end method

.method public onOpsOpen()V
    .locals 0

    .prologue
    .line 937
    return-void
.end method

.method public onOpsProgress(JJ)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 944
    return-void
.end method

.method public processFirstRequest(Lcom/broadcom/bt/app/opp/data/Job;)Z
    .locals 5
    .parameter "r"

    .prologue
    const/4 v1, 0x1

    .line 790
    const-string v2, "ClientRequestProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "***** Processing First Client Request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/broadcom/bt/app/opp/data/Job;->mRequestId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "******"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    iget-object v2, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientRequestProcessor;->this$0:Lcom/broadcom/bt/app/opp/client/OPPClientService;

    sget-object v3, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;->STATE_OPC_ENABLE:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    iput-object v3, v2, Lcom/broadcom/bt/app/opp/client/OPPClientService;->mClientState:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    .line 795
    const/16 v2, 0xc0

    iput v2, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 796
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTimestamp:J

    .line 797
    iget-object v2, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientRequestProcessor;->this$0:Lcom/broadcom/bt/app/opp/client/OPPClientService;

    iget-object v3, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientRequestProcessor;->this$0:Lcom/broadcom/bt/app/opp/client/OPPClientService;

    invoke-virtual {v3}, Lcom/broadcom/bt/app/opp/client/OPPClientService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p1}, Lcom/broadcom/bt/app/opp/data/Job;->getJobUri()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v2, v3, v4, p1, v1}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->startRequestStatus(Lcom/broadcom/bt/app/opp/util/BaseService;Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/broadcom/bt/app/opp/data/Job;Z)I

    .line 801
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientRequestProcessor;->mClientHandler:Lcom/broadcom/bt/app/opp/client/BaseClientHandler;

    invoke-virtual {v2}, Lcom/broadcom/bt/app/opp/client/BaseClientHandler;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 805
    :goto_0
    return v1

    .line 803
    :catch_0
    move-exception v0

    .line 804
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "ClientRequestProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Error: while running handler"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 805
    const/4 v1, 0x0

    goto :goto_0
.end method
