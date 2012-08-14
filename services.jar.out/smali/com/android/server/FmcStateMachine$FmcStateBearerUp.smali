.class Lcom/android/server/FmcStateMachine$FmcStateBearerUp;
.super Lcom/android/server/FmcStateMachine$FmcState;
.source "FmcStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FmcStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FmcStateBearerUp"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/FmcStateMachine;


# direct methods
.method protected constructor <init>(Lcom/android/server/FmcStateMachine;)V
    .locals 2
    .parameter

    .prologue
    .line 679
    iput-object p1, p0, Lcom/android/server/FmcStateMachine$FmcStateBearerUp;->this$0:Lcom/android/server/FmcStateMachine;

    .line 680
    invoke-direct {p0, p1}, Lcom/android/server/FmcStateMachine$FmcState;-><init>(Lcom/android/server/FmcStateMachine;)V

    .line 681
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcStateBearerUp;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 686
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcStateBearerUp;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/server/FmcStateMachine$FmcStateBearerUp;->setStatus(I)V

    .line 689
    const-string v0, "fmc.data.enable.timeout"

    const v1, 0xafc8

    invoke-virtual {p0, v0, v1}, Lcom/android/server/FmcStateMachine$FmcStateBearerUp;->startStateTimer(Ljava/lang/String;I)V

    .line 690
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcStateBearerUp;->sendEnableData()V

    .line 691
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 695
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcStateBearerUp;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processMessage message="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 720
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcStateBearerUp;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "processMessage not handled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    :goto_0
    return v3

    .line 699
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/FmcStateMachine$FmcStateBearerUp;->this$0:Lcom/android/server/FmcStateMachine;

    #getter for: Lcom/android/server/FmcStateMachine;->mFmcStateShutDown:Lcom/android/server/FmcStateMachine$FmcState;
    invoke-static {v0}, Lcom/android/server/FmcStateMachine;->access$700(Lcom/android/server/FmcStateMachine;)Lcom/android/server/FmcStateMachine$FmcState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/FmcStateMachine$FmcStateBearerUp;->transitionToState(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 702
    :pswitch_2
    invoke-static {v3}, Lcom/android/server/FmcStateMachine;->access$902(Z)Z

    .line 703
    iget-object v0, p0, Lcom/android/server/FmcStateMachine$FmcStateBearerUp;->this$0:Lcom/android/server/FmcStateMachine;

    #getter for: Lcom/android/server/FmcStateMachine;->mFmcStateDSNotAvail:Lcom/android/server/FmcStateMachine$FmcState;
    invoke-static {v0}, Lcom/android/server/FmcStateMachine;->access$1000(Lcom/android/server/FmcStateMachine;)Lcom/android/server/FmcStateMachine$FmcState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/FmcStateMachine$FmcStateBearerUp;->transitionToState(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 706
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/FmcStateMachine$FmcStateBearerUp;->this$0:Lcom/android/server/FmcStateMachine;

    #getter for: Lcom/android/server/FmcStateMachine;->mFmcStateActive:Lcom/android/server/FmcStateMachine$FmcState;
    invoke-static {v0}, Lcom/android/server/FmcStateMachine;->access$1300(Lcom/android/server/FmcStateMachine;)Lcom/android/server/FmcStateMachine$FmcState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/FmcStateMachine$FmcStateBearerUp;->transitionToState(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 709
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/FmcStateMachine$FmcStateBearerUp;->this$0:Lcom/android/server/FmcStateMachine;

    #getter for: Lcom/android/server/FmcStateMachine;->mFmcStateRegistered:Lcom/android/server/FmcStateMachine$FmcState;
    invoke-static {v0}, Lcom/android/server/FmcStateMachine;->access$1400(Lcom/android/server/FmcStateMachine;)Lcom/android/server/FmcStateMachine$FmcState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/FmcStateMachine$FmcStateBearerUp;->transitionToState(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 712
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/FmcStateMachine$FmcStateBearerUp;->this$0:Lcom/android/server/FmcStateMachine;

    #getter for: Lcom/android/server/FmcStateMachine;->mFmcStateBearerDown:Lcom/android/server/FmcStateMachine$FmcState;
    invoke-static {v0}, Lcom/android/server/FmcStateMachine;->access$1500(Lcom/android/server/FmcStateMachine;)Lcom/android/server/FmcStateMachine$FmcState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/FmcStateMachine$FmcStateBearerUp;->transitionToState(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 716
    :pswitch_6
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/FmcStateMachine;->access$402(Z)Z

    .line 717
    iget-object v0, p0, Lcom/android/server/FmcStateMachine$FmcStateBearerUp;->this$0:Lcom/android/server/FmcStateMachine;

    #getter for: Lcom/android/server/FmcStateMachine;->mFmcStateFailure:Lcom/android/server/FmcStateMachine$FmcState;
    invoke-static {v0}, Lcom/android/server/FmcStateMachine;->access$1200(Lcom/android/server/FmcStateMachine;)Lcom/android/server/FmcStateMachine$FmcState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/FmcStateMachine$FmcStateBearerUp;->transitionToState(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 697
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
