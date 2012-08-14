.class Lcom/android/internal/telephony/IMSPhone$MyHandler;
.super Landroid/os/Handler;
.source "IMSPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IMSPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/IMSPhone;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/IMSPhone;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/internal/telephony/IMSPhone$MyHandler;->this$0:Lcom/android/internal/telephony/IMSPhone;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/IMSPhone;Lcom/android/internal/telephony/IMSPhone$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IMSPhone$MyHandler;-><init>(Lcom/android/internal/telephony/IMSPhone;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v9, 0x1

    .line 192
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    move-object v1, v6

    check-cast v1, Landroid/os/AsyncResult;

    .line 195
    .local v1, ar:Landroid/os/AsyncResult;
    const-string v6, "IMS/IMSPhone"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "handleMessage :: event ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    if-nez v1, :cond_1

    .line 200
    const-string v6, "IMS/IMSPhone"

    const-string v7, "ar is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    iget-object v6, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_2

    .line 207
    const-string v6, "IMS/IMSPhone"

    const-string v7, "ar.exception is not null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 212
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/IMSPhone;->getSysMonitor()Lcom/android/internal/telephony/ISysMonitor;

    move-result-object v5

    .line 214
    .local v5, sysMonitor:Lcom/android/internal/telephony/ISysMonitor;
    if-nez v5, :cond_3

    .line 216
    const-string v6, "IMS/IMSPhone"

    const-string v7, "SysMonitor is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 221
    :cond_3
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 282
    const-string v6, "IMS/IMSPhone"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown event ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 225
    :sswitch_0
    const-string v6, "IMS/IMSPhone"

    const-string v7, "Received EVENT_REQUEST_VSS_VT_CTR"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 233
    :sswitch_1
    const-string v6, "IMS/IMSPhone"

    const-string v7, "Received EVENT_REQUEST_VSS_LTE_VT_INFO"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 245
    :sswitch_2
    iget-object v6, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v6, :cond_4

    .line 247
    const-string v6, "IMS/IMSPhone"

    const-string v7, "ar.result is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 253
    :cond_4
    :try_start_0
    iget-object v6, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [I

    move-object v0, v6

    check-cast v0, [I

    move-object v3, v0

    .line 254
    .local v3, ret:[I
    array-length v4, v3

    .line 257
    .local v4, ret_length:I
    const-string v6, "IMS/IMSPhone"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "result length = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    if-le v4, v9, :cond_0

    .line 261
    const/4 v6, 0x1

    const/4 v7, 0x0

    aget v7, v3, v7

    const/4 v8, 0x1

    aget v8, v3, v8

    const-string v9, ""

    invoke-interface {v5, v6, v7, v8, v9}, Lcom/android/internal/telephony/ISysMonitor;->onPhoneStateChanged(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 263
    .end local v3           #ret:[I
    .end local v4           #ret_length:I
    :catch_0
    move-exception v2

    .line 265
    .local v2, e:Landroid/os/RemoteException;
    const-string v6, "IMS/IMSPhone"

    const-string v7, "Unexpected remote exception"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 267
    iget-object v6, p0, Lcom/android/internal/telephony/IMSPhone$MyHandler;->this$0:Lcom/android/internal/telephony/IMSPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/IMSPhone;->handleRemoteException()V

    goto/16 :goto_0

    .line 275
    .end local v2           #e:Landroid/os/RemoteException;
    :sswitch_3
    const-string v6, "IMS/IMSPhone"

    const-string v7, "RIL_RESPONSE received"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 221
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x64 -> :sswitch_3
        0x42d -> :sswitch_2
    .end sparse-switch
.end method
