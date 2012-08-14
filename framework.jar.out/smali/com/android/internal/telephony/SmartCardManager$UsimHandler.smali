.class Lcom/android/internal/telephony/SmartCardManager$UsimHandler;
.super Landroid/os/Handler;
.source "SmartCardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmartCardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsimHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SmartCardManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/SmartCardManager;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/internal/telephony/SmartCardManager$UsimHandler;->this$0:Lcom/android/internal/telephony/SmartCardManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/SmartCardManager;Lcom/android/internal/telephony/SmartCardManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmartCardManager$UsimHandler;-><init>(Lcom/android/internal/telephony/SmartCardManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 131
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 134
    .local v0, ar:Landroid/os/AsyncResult;
    const-string v2, "LGE_USIM"

    const-string v3, "UsimHandler "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    .line 137
    :cond_0
    if-eqz v0, :cond_1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    .line 138
    const-string v2, "LGE_USIM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UsimHandler Excepion"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/gsm/SmartCardResult;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmartCardResult;-><init>()V

    .line 141
    .local v1, data:Lcom/android/internal/telephony/gsm/SmartCardResult;
    const/4 v2, -0x1

    iput v2, v1, Lcom/android/internal/telephony/gsm/SmartCardResult;->ret:I

    .line 142
    iget-object v2, p0, Lcom/android/internal/telephony/SmartCardManager$UsimHandler;->this$0:Lcom/android/internal/telephony/SmartCardManager;

    #setter for: Lcom/android/internal/telephony/SmartCardManager;->returnData:Lcom/android/internal/telephony/gsm/SmartCardResult;
    invoke-static {v2, v1}, Lcom/android/internal/telephony/SmartCardManager;->access$102(Lcom/android/internal/telephony/SmartCardManager;Lcom/android/internal/telephony/gsm/SmartCardResult;)Lcom/android/internal/telephony/gsm/SmartCardResult;

    .line 143
    iget-object v2, p0, Lcom/android/internal/telephony/SmartCardManager$UsimHandler;->this$0:Lcom/android/internal/telephony/SmartCardManager;

    #getter for: Lcom/android/internal/telephony/SmartCardManager;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/internal/telephony/SmartCardManager;->access$200(Lcom/android/internal/telephony/SmartCardManager;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 144
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/SmartCardManager$UsimHandler;->this$0:Lcom/android/internal/telephony/SmartCardManager;

    #getter for: Lcom/android/internal/telephony/SmartCardManager;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/internal/telephony/SmartCardManager;->access$200(Lcom/android/internal/telephony/SmartCardManager;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 145
    monitor-exit v3

    .line 173
    .end local v1           #data:Lcom/android/internal/telephony/gsm/SmartCardResult;
    :goto_0
    return-void

    .line 145
    .restart local v1       #data:Lcom/android/internal/telephony/gsm/SmartCardResult;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 149
    .end local v1           #data:Lcom/android/internal/telephony/gsm/SmartCardResult;
    :cond_2
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 169
    const-string v2, "LGE_USIM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UsimHandler Unknown  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 154
    :pswitch_0
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 155
    const-string v2, "LGE_USIM"

    const-string v3, "UsimHandler EVENT_SMARTCARD_TRANSMIT "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :goto_1
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/gsm/SmartCardResult;

    .line 160
    .restart local v1       #data:Lcom/android/internal/telephony/gsm/SmartCardResult;
    const-string v2, "LGE_USIM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_DONE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmartCardResult;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v2, p0, Lcom/android/internal/telephony/SmartCardManager$UsimHandler;->this$0:Lcom/android/internal/telephony/SmartCardManager;

    #setter for: Lcom/android/internal/telephony/SmartCardManager;->returnData:Lcom/android/internal/telephony/gsm/SmartCardResult;
    invoke-static {v2, v1}, Lcom/android/internal/telephony/SmartCardManager;->access$102(Lcom/android/internal/telephony/SmartCardManager;Lcom/android/internal/telephony/gsm/SmartCardResult;)Lcom/android/internal/telephony/gsm/SmartCardResult;

    .line 163
    iget-object v2, p0, Lcom/android/internal/telephony/SmartCardManager$UsimHandler;->this$0:Lcom/android/internal/telephony/SmartCardManager;

    #getter for: Lcom/android/internal/telephony/SmartCardManager;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/internal/telephony/SmartCardManager;->access$200(Lcom/android/internal/telephony/SmartCardManager;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 164
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/SmartCardManager$UsimHandler;->this$0:Lcom/android/internal/telephony/SmartCardManager;

    #getter for: Lcom/android/internal/telephony/SmartCardManager;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/internal/telephony/SmartCardManager;->access$200(Lcom/android/internal/telephony/SmartCardManager;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 165
    monitor-exit v3

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    .line 157
    .end local v1           #data:Lcom/android/internal/telephony/gsm/SmartCardResult;
    :cond_3
    const-string v2, "LGE_USIM"

    const-string v3, "UsimHandler EVENT_SMARTCARD_GET_ATR "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
