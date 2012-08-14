.class Lcom/android/internal/telephony/UiccCard$2;
.super Landroid/os/Handler;
.source "UiccCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/UiccCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/UiccCard;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/UiccCard;)V
    .locals 0
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Lcom/android/internal/telephony/UiccCard$2;->this$0:Lcom/android/internal/telephony/UiccCard;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 240
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCard$2;->this$0:Lcom/android/internal/telephony/UiccCard;

    #getter for: Lcom/android/internal/telephony/UiccCard;->mDestroyed:Z
    invoke-static {v1}, Lcom/android/internal/telephony/UiccCard;->access$200(Lcom/android/internal/telephony/UiccCard;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 241
    const-string v1, "RIL_UiccCard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] while being destroyed. Ignoring."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 269
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCard$2;->this$0:Lcom/android/internal/telephony/UiccCard;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown Event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/internal/telephony/UiccCard;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/UiccCard;->access$400(Lcom/android/internal/telephony/UiccCard;Ljava/lang/String;)V

    goto :goto_0

    .line 249
    :pswitch_0
    invoke-static {}, Lcom/android/internal/telephony/LGEIccUtils;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 254
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCard$2;->this$0:Lcom/android/internal/telephony/UiccCard;

    const/4 v2, 0x0

    #calls: Lcom/android/internal/telephony/UiccCard;->onIccSwap(Z)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/UiccCard;->access$300(Lcom/android/internal/telephony/UiccCard;Z)V

    goto :goto_0

    .line 257
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCard$2;->this$0:Lcom/android/internal/telephony/UiccCard;

    const/4 v2, 0x1

    #calls: Lcom/android/internal/telephony/UiccCard;->onIccSwap(Z)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/UiccCard;->access$300(Lcom/android/internal/telephony/UiccCard;Z)V

    goto :goto_0

    .line 261
    :pswitch_2
    invoke-static {}, Lcom/android/internal/telephony/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DCM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCard$2;->this$0:Lcom/android/internal/telephony/UiccCard;

    const-string v2, "[CARD_REMOVED] Reboot due to SIM swap"

    #calls: Lcom/android/internal/telephony/UiccCard;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/UiccCard;->access$000(Lcom/android/internal/telephony/UiccCard;Ljava/lang/String;)V

    .line 263
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCard$2;->this$0:Lcom/android/internal/telephony/UiccCard;

    #getter for: Lcom/android/internal/telephony/UiccCard;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/telephony/UiccCard;->access$100(Lcom/android/internal/telephony/UiccCard;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 264
    .local v0, pm:Landroid/os/PowerManager;
    const-string v1, "SIM is added."

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    goto :goto_0

    .line 246
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
