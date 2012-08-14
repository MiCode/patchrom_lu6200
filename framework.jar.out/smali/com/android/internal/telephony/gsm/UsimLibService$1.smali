.class Lcom/android/internal/telephony/gsm/UsimLibService$1;
.super Landroid/content/BroadcastReceiver;
.source "UsimLibService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/UsimLibService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/UsimLibService;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/UsimLibService;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimLibService$1;->this$0:Lcom/android/internal/telephony/gsm/UsimLibService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 153
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    const-string/jumbo v2, "ss"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, stateExtra:Ljava/lang/String;
    const-string v2, "READY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimLibService$1;->this$0:Lcom/android/internal/telephony/gsm/UsimLibService;

    #calls: Lcom/android/internal/telephony/gsm/UsimLibService;->startUsimServiceListener()V
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/UsimLibService;->access$000(Lcom/android/internal/telephony/gsm/UsimLibService;)V

    .line 158
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimLibService$1;->this$0:Lcom/android/internal/telephony/gsm/UsimLibService;

    #calls: Lcom/android/internal/telephony/gsm/UsimLibService;->getIccValue()V
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/UsimLibService;->access$100(Lcom/android/internal/telephony/gsm/UsimLibService;)V

    .line 161
    .end local v1           #stateExtra:Ljava/lang/String;
    :cond_0
    return-void
.end method
