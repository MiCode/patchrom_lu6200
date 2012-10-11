.class Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$4;
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
    .line 429
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 432
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 433
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.PersoStatus"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 434
    const-string v2, "GSM"

    const-string v3, "Enter PersoStatus!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const-string/jumbo v2, "reason"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 437
    .local v1, lockedReason:Ljava/lang/String;
    const-string v2, "SIM NETWORK"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 438
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/4 v3, 0x1

    #setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPersoStatus:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$602(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;I)I

    .line 448
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPersoStatus:I
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$600(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 450
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UpdaateSpnDisplay for Perso status("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPersoStatus:I
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$600(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    .line 454
    .end local v1           #lockedReason:Ljava/lang/String;
    :cond_1
    return-void

    .line 439
    .restart local v1       #lockedReason:Ljava/lang/String;
    :cond_2
    const-string v2, "SIM SERVICE PROVIDER"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 440
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/4 v3, 0x2

    #setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPersoStatus:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$602(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;I)I

    goto :goto_0

    .line 441
    :cond_3
    const-string v2, "SIM NETWORK SUBSET"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 442
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/4 v3, 0x3

    #setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPersoStatus:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$602(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;I)I

    goto :goto_0

    .line 443
    :cond_4
    const-string v2, "SIM CORPORATE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 444
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/4 v3, 0x4

    #setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPersoStatus:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$602(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;I)I

    goto :goto_0

    .line 445
    :cond_5
    const-string v2, "SIM SIM"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 446
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/4 v3, 0x5

    #setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPersoStatus:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$602(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;I)I

    goto :goto_0
.end method
