.class Lcom/lge/camera/EffectsRecorder$4;
.super Ljava/lang/Object;
.source "EffectsRecorder.java"

# interfaces
.implements Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/EffectsRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/EffectsRecorder;


# direct methods
.method constructor <init>(Lcom/lge/camera/EffectsRecorder;)V
    .locals 0
    .parameter

    .prologue
    .line 857
    iput-object p1, p0, Lcom/lge/camera/EffectsRecorder$4;->this$0:Lcom/lge/camera/EffectsRecorder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRunnerDone(I)V
    .locals 9
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x3

    .line 859
    iget-object v4, p0, Lcom/lge/camera/EffectsRecorder$4;->this$0:Lcom/lge/camera/EffectsRecorder;

    monitor-enter v4

    .line 860
    const/4 v0, 0x0

    .line 861
    .local v0, bSurfaceTeardown:Z
    :try_start_0
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onRunnerDone:Graph runner done ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/camera/EffectsRecorder$4;->this$0:Lcom/lge/camera/EffectsRecorder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mRunner "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/camera/EffectsRecorder$4;->this$0:Lcom/lge/camera/EffectsRecorder;

    #getter for: Lcom/lge/camera/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;
    invoke-static {v7}, Lcom/lge/camera/EffectsRecorder;->access$600(Lcom/lge/camera/EffectsRecorder;)Landroid/filterfw/core/GraphRunner;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mOldRunner "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/camera/EffectsRecorder$4;->this$0:Lcom/lge/camera/EffectsRecorder;

    #getter for: Lcom/lge/camera/EffectsRecorder;->mOldRunner:Landroid/filterfw/core/GraphRunner;
    invoke-static {v7}, Lcom/lge/camera/EffectsRecorder;->access$700(Lcom/lge/camera/EffectsRecorder;)Landroid/filterfw/core/GraphRunner;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", result "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    const/4 v5, 0x6

    if-ne p1, v5, :cond_0

    .line 868
    const-string v5, "CameraApp"

    const-string v6, "Error running filter graph!"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    iget-object v5, p0, Lcom/lge/camera/EffectsRecorder$4;->this$0:Lcom/lge/camera/EffectsRecorder;

    iget-object v6, p0, Lcom/lge/camera/EffectsRecorder$4;->this$0:Lcom/lge/camera/EffectsRecorder;

    #getter for: Lcom/lge/camera/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;
    invoke-static {v6}, Lcom/lge/camera/EffectsRecorder;->access$600(Lcom/lge/camera/EffectsRecorder;)Landroid/filterfw/core/GraphRunner;

    move-result-object v6

    if-nez v6, :cond_7

    :goto_0
    #calls: Lcom/lge/camera/EffectsRecorder;->raiseError(Ljava/lang/Exception;)V
    invoke-static {v5, v3}, Lcom/lge/camera/EffectsRecorder;->access$800(Lcom/lge/camera/EffectsRecorder;Ljava/lang/Exception;)V

    .line 871
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/EffectsRecorder$4;->this$0:Lcom/lge/camera/EffectsRecorder;

    #getter for: Lcom/lge/camera/EffectsRecorder;->mOldRunner:Landroid/filterfw/core/GraphRunner;
    invoke-static {v3}, Lcom/lge/camera/EffectsRecorder;->access$700(Lcom/lge/camera/EffectsRecorder;)Landroid/filterfw/core/GraphRunner;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 873
    const-string v3, "CameraApp"

    const-string v5, "Tearing down old graph."

    invoke-static {v3, v5}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    iget-object v3, p0, Lcom/lge/camera/EffectsRecorder$4;->this$0:Lcom/lge/camera/EffectsRecorder;

    #getter for: Lcom/lge/camera/EffectsRecorder;->mGraphEnv:Landroid/filterfw/GraphEnvironment;
    invoke-static {v3}, Lcom/lge/camera/EffectsRecorder;->access$900(Lcom/lge/camera/EffectsRecorder;)Landroid/filterfw/GraphEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Landroid/filterfw/GraphEnvironment;->getContext()Landroid/filterfw/core/FilterContext;

    move-result-object v3

    invoke-virtual {v3}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v2

    .line 875
    .local v2, glEnv:Landroid/filterfw/core/GLEnvironment;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/filterfw/core/GLEnvironment;->isActive()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 877
    :try_start_1
    invoke-virtual {v2}, Landroid/filterfw/core/GLEnvironment;->activate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 884
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/lge/camera/EffectsRecorder$4;->this$0:Lcom/lge/camera/EffectsRecorder;

    #getter for: Lcom/lge/camera/EffectsRecorder;->mOldRunner:Landroid/filterfw/core/GraphRunner;
    invoke-static {v3}, Lcom/lge/camera/EffectsRecorder;->access$700(Lcom/lge/camera/EffectsRecorder;)Landroid/filterfw/core/GraphRunner;

    move-result-object v3

    invoke-virtual {v3}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v3

    iget-object v5, p0, Lcom/lge/camera/EffectsRecorder$4;->this$0:Lcom/lge/camera/EffectsRecorder;

    #getter for: Lcom/lge/camera/EffectsRecorder;->mGraphEnv:Landroid/filterfw/GraphEnvironment;
    invoke-static {v5}, Lcom/lge/camera/EffectsRecorder;->access$900(Lcom/lge/camera/EffectsRecorder;)Landroid/filterfw/GraphEnvironment;

    move-result-object v5

    invoke-virtual {v5}, Landroid/filterfw/GraphEnvironment;->getContext()Landroid/filterfw/core/FilterContext;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/filterfw/core/FilterGraph;->tearDown(Landroid/filterfw/core/FilterContext;)V

    .line 885
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/filterfw/core/GLEnvironment;->isActive()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 886
    invoke-virtual {v2}, Landroid/filterfw/core/GLEnvironment;->deactivate()V

    .line 888
    :cond_2
    iget-object v3, p0, Lcom/lge/camera/EffectsRecorder$4;->this$0:Lcom/lge/camera/EffectsRecorder;

    const/4 v5, 0x0

    #setter for: Lcom/lge/camera/EffectsRecorder;->mOldRunner:Landroid/filterfw/core/GraphRunner;
    invoke-static {v3, v5}, Lcom/lge/camera/EffectsRecorder;->access$702(Lcom/lge/camera/EffectsRecorder;Landroid/filterfw/core/GraphRunner;)Landroid/filterfw/core/GraphRunner;

    .line 890
    const/4 v0, 0x1

    .line 892
    .end local v2           #glEnv:Landroid/filterfw/core/GLEnvironment;
    :cond_3
    iget-object v3, p0, Lcom/lge/camera/EffectsRecorder$4;->this$0:Lcom/lge/camera/EffectsRecorder;

    #getter for: Lcom/lge/camera/EffectsRecorder;->mState:I
    invoke-static {v3}, Lcom/lge/camera/EffectsRecorder;->access$000(Lcom/lge/camera/EffectsRecorder;)I

    move-result v3

    if-eq v3, v8, :cond_4

    iget-object v3, p0, Lcom/lge/camera/EffectsRecorder$4;->this$0:Lcom/lge/camera/EffectsRecorder;

    #getter for: Lcom/lge/camera/EffectsRecorder;->mState:I
    invoke-static {v3}, Lcom/lge/camera/EffectsRecorder;->access$000(Lcom/lge/camera/EffectsRecorder;)I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_8

    .line 895
    :cond_4
    const-string v3, "CameraApp"

    const-string v5, "Previous effect halted, starting new effect."

    invoke-static {v3, v5}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    iget-object v3, p0, Lcom/lge/camera/EffectsRecorder$4;->this$0:Lcom/lge/camera/EffectsRecorder;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/lge/camera/EffectsRecorder;->tryEnable3ALocks(Z)Z

    .line 897
    iget-object v3, p0, Lcom/lge/camera/EffectsRecorder$4;->this$0:Lcom/lge/camera/EffectsRecorder;

    #getter for: Lcom/lge/camera/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;
    invoke-static {v3}, Lcom/lge/camera/EffectsRecorder;->access$600(Lcom/lge/camera/EffectsRecorder;)Landroid/filterfw/core/GraphRunner;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 898
    iget-object v3, p0, Lcom/lge/camera/EffectsRecorder$4;->this$0:Lcom/lge/camera/EffectsRecorder;

    #getter for: Lcom/lge/camera/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;
    invoke-static {v3}, Lcom/lge/camera/EffectsRecorder;->access$600(Lcom/lge/camera/EffectsRecorder;)Landroid/filterfw/core/GraphRunner;

    move-result-object v3

    invoke-virtual {v3}, Landroid/filterfw/core/GraphRunner;->run()V

    .line 908
    :cond_5
    :goto_1
    if-eqz v0, :cond_6

    .line 909
    iget-object v3, p0, Lcom/lge/camera/EffectsRecorder$4;->this$0:Lcom/lge/camera/EffectsRecorder;

    const/4 v5, 0x0

    const/4 v6, 0x7

    #calls: Lcom/lge/camera/EffectsRecorder;->sendMessage(II)V
    invoke-static {v3, v5, v6}, Lcom/lge/camera/EffectsRecorder;->access$400(Lcom/lge/camera/EffectsRecorder;II)V

    .line 912
    :cond_6
    monitor-exit v4

    .line 913
    :goto_2
    return-void

    .line 869
    :cond_7
    iget-object v3, p0, Lcom/lge/camera/EffectsRecorder$4;->this$0:Lcom/lge/camera/EffectsRecorder;

    #getter for: Lcom/lge/camera/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;
    invoke-static {v3}, Lcom/lge/camera/EffectsRecorder;->access$600(Lcom/lge/camera/EffectsRecorder;)Landroid/filterfw/core/GraphRunner;

    move-result-object v3

    invoke-virtual {v3}, Landroid/filterfw/core/GraphRunner;->getError()Ljava/lang/Exception;

    move-result-object v3

    goto/16 :goto_0

    .line 879
    .restart local v2       #glEnv:Landroid/filterfw/core/GLEnvironment;
    :catch_0
    move-exception v1

    .line 880
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v3, "CameraApp"

    const-string v5, "Cannot activate glEnv"

    invoke-static {v3, v5}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    monitor-exit v4

    goto :goto_2

    .line 912
    .end local v1           #e:Ljava/lang/RuntimeException;
    .end local v2           #glEnv:Landroid/filterfw/core/GLEnvironment;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 899
    :cond_8
    :try_start_3
    iget-object v3, p0, Lcom/lge/camera/EffectsRecorder$4;->this$0:Lcom/lge/camera/EffectsRecorder;

    #getter for: Lcom/lge/camera/EffectsRecorder;->mState:I
    invoke-static {v3}, Lcom/lge/camera/EffectsRecorder;->access$000(Lcom/lge/camera/EffectsRecorder;)I

    move-result v3

    const/4 v5, 0x5

    if-eq v3, v5, :cond_5

    .line 901
    const-string v3, "CameraApp"

    const-string v5, "Runner halted, restoring direct preview"

    invoke-static {v3, v5}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    iget-object v3, p0, Lcom/lge/camera/EffectsRecorder$4;->this$0:Lcom/lge/camera/EffectsRecorder;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/lge/camera/EffectsRecorder;->tryEnable3ALocks(Z)Z

    .line 903
    iget-object v3, p0, Lcom/lge/camera/EffectsRecorder$4;->this$0:Lcom/lge/camera/EffectsRecorder;

    const/4 v5, 0x0

    const/4 v6, 0x3

    #calls: Lcom/lge/camera/EffectsRecorder;->sendMessage(II)V
    invoke-static {v3, v5, v6}, Lcom/lge/camera/EffectsRecorder;->access$400(Lcom/lge/camera/EffectsRecorder;II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
