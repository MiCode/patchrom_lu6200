.class Lcom/android/internal/telephony/LgeFastDormancyHandler$IdleState;
.super Lcom/android/internal/util/State;
.source "LgeFastDormancyHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/LgeFastDormancyHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/LgeFastDormancyHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 826
    iput-object p1, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$IdleState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/LgeFastDormancyHandler;Lcom/android/internal/telephony/LgeFastDormancyHandler$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 826
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LgeFastDormancyHandler$IdleState;-><init>(Lcom/android/internal/telephony/LgeFastDormancyHandler;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 831
    iget-object v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$IdleState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    const-string v1, "Enter to IDLE State"

    #calls: Lcom/android/internal/telephony/LgeFastDormancyHandler;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->access$100(Lcom/android/internal/telephony/LgeFastDormancyHandler;Ljava/lang/String;)V

    .line 833
    iget-object v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$IdleState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->isUMTS()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$IdleState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$IdleState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    #getter for: Lcom/android/internal/telephony/LgeFastDormancyHandler;->mUnknownState:Lcom/android/internal/telephony/LgeFastDormancyHandler$UnknownState;
    invoke-static {v1}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->access$800(Lcom/android/internal/telephony/LgeFastDormancyHandler;)Lcom/android/internal/telephony/LgeFastDormancyHandler$UnknownState;

    move-result-object v1

    #calls: Lcom/android/internal/telephony/LgeFastDormancyHandler;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->access$1200(Lcom/android/internal/telephony/LgeFastDormancyHandler;Lcom/android/internal/util/IState;)V

    .line 834
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$IdleState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->resetAll()V

    .line 836
    iget-object v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$IdleState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    iget-object v0, v0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 838
    iget-object v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$IdleState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    iget-object v0, v0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 840
    :cond_1
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 845
    iget-object v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$IdleState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    const-string v1, "Exit from IDLE State"

    #calls: Lcom/android/internal/telephony/LgeFastDormancyHandler;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->access$100(Lcom/android/internal/telephony/LgeFastDormancyHandler;Ljava/lang/String;)V

    .line 846
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 853
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 907
    iget-object v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$IdleState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected Event Received : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/internal/telephony/LgeFastDormancyHandler;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->access$100(Lcom/android/internal/telephony/LgeFastDormancyHandler;Ljava/lang/String;)V

    .line 912
    :cond_0
    :goto_0
    return v3

    .line 858
    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$IdleState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    iget-object v0, v0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mNetStatMonitor:Lcom/android/internal/telephony/LgeFastDormancyHandler$NetStatMonitor;

    invoke-virtual {v0}, Lcom/android/internal/telephony/LgeFastDormancyHandler$NetStatMonitor;->checkNetStat()Z

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$IdleState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$IdleState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    #getter for: Lcom/android/internal/telephony/LgeFastDormancyHandler;->mDchFachState:Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;
    invoke-static {v1}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->access$900(Lcom/android/internal/telephony/LgeFastDormancyHandler;)Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;

    move-result-object v1

    #calls: Lcom/android/internal/telephony/LgeFastDormancyHandler;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->access$1300(Lcom/android/internal/telephony/LgeFastDormancyHandler;Lcom/android/internal/util/IState;)V

    .line 860
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$IdleState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    iget-object v0, v0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 862
    iget-object v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$IdleState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    iget-object v0, v0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 868
    :sswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$IdleState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    const-string v1, "ICC changed."

    #calls: Lcom/android/internal/telephony/LgeFastDormancyHandler;->logi(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->access$500(Lcom/android/internal/telephony/LgeFastDormancyHandler;Ljava/lang/String;)V

    .line 869
    iget-object v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$IdleState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->updateIccAvailability()V

    goto :goto_0

    .line 873
    :sswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$IdleState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    const-string v1, "Records loaded."

    #calls: Lcom/android/internal/telephony/LgeFastDormancyHandler;->logi(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->access$500(Lcom/android/internal/telephony/LgeFastDormancyHandler;Ljava/lang/String;)V

    .line 875
    iget-object v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$IdleState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->onRecordsLoaded()V

    goto :goto_0

    .line 879
    :sswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$IdleState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    const-string v1, "Radio Tech changed."

    #calls: Lcom/android/internal/telephony/LgeFastDormancyHandler;->logi(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->access$500(Lcom/android/internal/telephony/LgeFastDormancyHandler;Ljava/lang/String;)V

    .line 880
    iget-object v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$IdleState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->onRadioTechnologyChanged()V

    .line 882
    iget-object v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$IdleState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    iget-object v0, v0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 884
    iget-object v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$IdleState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    iget-object v0, v0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 889
    :sswitch_4
    iget-object v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$IdleState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    const-string v1, "Data call list changed."

    #calls: Lcom/android/internal/telephony/LgeFastDormancyHandler;->logi(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->access$500(Lcom/android/internal/telephony/LgeFastDormancyHandler;Ljava/lang/String;)V

    .line 891
    iget-object v1, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$IdleState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->onDataCallListChanged(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 896
    :sswitch_5
    iget-object v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$IdleState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    const-string v1, "Voice call is started"

    #calls: Lcom/android/internal/telephony/LgeFastDormancyHandler;->logi(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->access$500(Lcom/android/internal/telephony/LgeFastDormancyHandler;Ljava/lang/String;)V

    .line 897
    iget-object v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$IdleState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->onCallActiveStateChanged(Z)V

    goto :goto_0

    .line 901
    :sswitch_6
    iget-object v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$IdleState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    const-string v1, "Voice call is ended"

    #calls: Lcom/android/internal/telephony/LgeFastDormancyHandler;->logi(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->access$500(Lcom/android/internal/telephony/LgeFastDormancyHandler;Ljava/lang/String;)V

    .line 902
    iget-object v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler$IdleState;->this$0:Lcom/android/internal/telephony/LgeFastDormancyHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->onCallActiveStateChanged(Z)V

    goto/16 :goto_0

    .line 853
    nop

    :sswitch_data_0
    .sparse-switch
        0x18c4b -> :sswitch_0
        0x18c4c -> :sswitch_3
        0x42002 -> :sswitch_2
        0x42004 -> :sswitch_4
        0x42007 -> :sswitch_5
        0x42008 -> :sswitch_6
        0x42021 -> :sswitch_1
    .end sparse-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 918
    const-string v0, "[IDLE] "

    return-object v0
.end method
