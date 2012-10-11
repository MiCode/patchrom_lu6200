.class Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$2;
.super Landroid/content/BroadcastReceiver;
.source "GsmServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 400
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 403
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 404
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 406
    const-string v2, "GSM"

    const-string v3, "Enter ACTION_SIM_STATE_CHANGED!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    const-string/jumbo v2, "ss"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 408
    .local v1, icc_state:Ljava/lang/String;
    const-string v2, "CARD_IO_ERROR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 409
    const-string v2, "GSM"

    const-string v3, "UpdateSpnDisplay for ACTION_SIM_STATE_CHANGED / INTENT_VALUE_ICC_CARD_IO_ERROR status"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$402(Z)Z

    .line 411
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    .line 416
    .end local v1           #icc_state:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 413
    .restart local v1       #icc_state:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$402(Z)Z

    goto :goto_0
.end method
