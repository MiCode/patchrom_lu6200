.class Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread$1;
.super Landroid/os/Handler;
.source "SecurityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread$1;->this$0:Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 152
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 223
    const-string v1, "SecurityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleMessage: unexpected message code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :goto_0
    return-void

    .line 154
    :sswitch_0
    const-string v1, "SecurityManager"

    const-string/jumbo v2, "handleMessage : SECURITY_PROCESS_COMMAND_PERSONALIZATION_INFORMATION"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 156
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread$1;->this$0:Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread;

    iget-object v1, v1, Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread;->data:Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread$SecurityIO;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iput-object v2, v1, Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread$SecurityIO;->response:Ljava/lang/Object;

    .line 163
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread$1;->this$0:Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread;

    monitor-enter v2

    .line 165
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread$1;->this$0:Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread;

    const/4 v3, 0x1

    #setter for: Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread;->mDone:Z
    invoke-static {v1, v3}, Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread;->access$102(Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread;Z)Z

    .line 166
    iget-object v1, p0, Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread$1;->this$0:Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 167
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 159
    :cond_0
    const-string v1, "SecurityManager"

    const-string/jumbo v2, "handleMessage: Faile"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v1, p0, Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread$1;->this$0:Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread;

    iget-object v1, v1, Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread;->data:Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread$SecurityIO;

    iput-object v3, v1, Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread$SecurityIO;->response:Ljava/lang/Object;

    goto :goto_1

    .line 170
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_1
    const-string v1, "SecurityManager"

    const-string/jumbo v2, "handleMessage : SECURITY_PROCESS_COMMAND_DEPERSONALIZATION"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 172
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 173
    iget-object v1, p0, Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread$1;->this$0:Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread;

    iget-object v1, v1, Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread;->data:Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread$SecurityIO;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iput-object v2, v1, Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread$SecurityIO;->response:Ljava/lang/Object;

    .line 174
    const-string v1, "SecurityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleMessage : SECURITY_PROCESS_COMMAND_DEPERSONALIZATION("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread$1;->this$0:Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread;

    iget-object v3, v3, Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread;->data:Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread$SecurityIO;

    iget-object v3, v3, Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread$SecurityIO;->response:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :goto_2
    iget-object v2, p0, Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread$1;->this$0:Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread;

    monitor-enter v2

    .line 182
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread$1;->this$0:Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread;

    const/4 v3, 0x1

    #setter for: Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread;->mDone:Z
    invoke-static {v1, v3}, Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread;->access$102(Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread;Z)Z

    .line 183
    iget-object v1, p0, Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread$1;->this$0:Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 184
    monitor-exit v2

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 176
    :cond_1
    const-string v1, "SecurityManager"

    const-string/jumbo v2, "handleMessage: Faile"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v1, p0, Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread$1;->this$0:Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread;

    iget-object v1, v1, Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread;->data:Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread$SecurityIO;

    iput-object v3, v1, Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread$SecurityIO;->response:Ljava/lang/Object;

    goto :goto_2

    .line 187
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_2
    const-string v1, "SecurityManager"

    const-string/jumbo v2, "handleMessage : SECURITY_PROCESS_COMMAND_PERSONALIZATION"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 189
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_2

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 190
    iget-object v1, p0, Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread$1;->this$0:Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread;

    iget-object v1, v1, Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread;->data:Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread$SecurityIO;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iput-object v2, v1, Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread$SecurityIO;->response:Ljava/lang/Object;

    .line 191
    const-string v1, "SecurityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleMessage : SECURITY_PROCESS_COMMAND_PERSONALIZATION("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread$1;->this$0:Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread;

    iget-object v3, v3, Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread;->data:Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread$SecurityIO;

    iget-object v3, v3, Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread$SecurityIO;->response:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :goto_3
    iget-object v2, p0, Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread$1;->this$0:Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread;

    monitor-enter v2

    .line 199
    :try_start_2
    iget-object v1, p0, Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread$1;->this$0:Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread;

    const/4 v3, 0x1

    #setter for: Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread;->mDone:Z
    invoke-static {v1, v3}, Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread;->access$102(Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread;Z)Z

    .line 200
    iget-object v1, p0, Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread$1;->this$0:Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 201
    monitor-exit v2

    goto/16 :goto_0

    :catchall_2
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v1

    .line 193
    :cond_2
    const-string v1, "SecurityManager"

    const-string/jumbo v2, "handleMessage: Faile"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v1, p0, Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread$1;->this$0:Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread;

    iget-object v1, v1, Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread;->data:Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread$SecurityIO;

    iput-object v3, v1, Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread$SecurityIO;->response:Ljava/lang/Object;

    goto :goto_3

    .line 205
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_3
    const-string v1, "SecurityManager"

    const-string/jumbo v2, "handleMessage : SECURITY_PROCESS_COMMAND_DEBUG_ENABLE"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 207
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_3

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 208
    iget-object v1, p0, Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread$1;->this$0:Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread;

    iget-object v1, v1, Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread;->data:Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread$SecurityIO;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iput-object v2, v1, Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread$SecurityIO;->response:Ljava/lang/Object;

    .line 209
    const-string v1, "SecurityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleMessage : SECURITY_PROCESS_COMMAND_DEBUG_ENABLE("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread$1;->this$0:Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread;

    iget-object v3, v3, Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread;->data:Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread$SecurityIO;

    iget-object v3, v3, Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread$SecurityIO;->response:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :goto_4
    iget-object v2, p0, Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread$1;->this$0:Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread;

    monitor-enter v2

    .line 217
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread$1;->this$0:Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread;

    const/4 v3, 0x1

    #setter for: Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread;->mDone:Z
    invoke-static {v1, v3}, Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread;->access$102(Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread;Z)Z

    .line 218
    iget-object v1, p0, Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread$1;->this$0:Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 219
    monitor-exit v2

    goto/16 :goto_0

    :catchall_3
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v1

    .line 211
    :cond_3
    const-string v1, "SecurityManager"

    const-string/jumbo v2, "handleMessage: Faile"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v1, p0, Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread$1;->this$0:Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread;

    iget-object v1, v1, Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread;->data:Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread$SecurityIO;

    iput-object v3, v1, Lcom/android/internal/telephony/SecurityManager$SecurityCommandThread$SecurityIO;->response:Ljava/lang/Object;

    goto :goto_4

    .line 152
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0xe -> :sswitch_3
    .end sparse-switch
.end method
