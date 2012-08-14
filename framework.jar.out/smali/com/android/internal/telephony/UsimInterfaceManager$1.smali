.class Lcom/android/internal/telephony/UsimInterfaceManager$1;
.super Landroid/content/BroadcastReceiver;
.source "UsimInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/UsimInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/UsimInterfaceManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/UsimInterfaceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/internal/telephony/UsimInterfaceManager$1;->this$0:Lcom/android/internal/telephony/UsimInterfaceManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 186
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 188
    const-string/jumbo v2, "ss"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, stateExtra:Ljava/lang/String;
    const-string v2, "READY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 190
    iget-object v2, p0, Lcom/android/internal/telephony/UsimInterfaceManager$1;->this$0:Lcom/android/internal/telephony/UsimInterfaceManager;

    #calls: Lcom/android/internal/telephony/UsimInterfaceManager;->getIccValue()V
    invoke-static {v2}, Lcom/android/internal/telephony/UsimInterfaceManager;->access$100(Lcom/android/internal/telephony/UsimInterfaceManager;)V

    .line 200
    .end local v1           #stateExtra:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    const-string v2, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 194
    iget-object v2, p0, Lcom/android/internal/telephony/UsimInterfaceManager$1;->this$0:Lcom/android/internal/telephony/UsimInterfaceManager;

    #calls: Lcom/android/internal/telephony/UsimInterfaceManager;->getIccValue()V
    invoke-static {v2}, Lcom/android/internal/telephony/UsimInterfaceManager;->access$100(Lcom/android/internal/telephony/UsimInterfaceManager;)V

    goto :goto_0

    .line 196
    :cond_2
    const-string v2, "android.intent.action.INVALID_USIM_IMSI"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 197
    const-string v2, "LGE_USIM"

    const-string v3, "android.intent.action.INVALID_USIM_IMS -skt,kt"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/internal/telephony/UsimInterfaceManager;->mInvalidUsimImsi_usim:Z

    goto :goto_0
.end method
