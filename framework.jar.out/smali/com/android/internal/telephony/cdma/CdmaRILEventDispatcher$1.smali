.class Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher$1;
.super Landroid/content/BroadcastReceiver;
.source "CdmaRILEventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;)V
    .locals 0
    .parameter

    .prologue
    .line 441
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 444
    const-string v0, "CdmaRILEventDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mBroadcastReceiver : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.LGT_ROAMING_UI_TEST_LGT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;

    const/4 v1, 0x0

    #calls: Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->handleLGTRoamingUITest(I)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->access$000(Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;I)V

    .line 449
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.LGT_ROAMING_UI_TEST_KT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 450
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;

    const/4 v1, 0x1

    #calls: Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->handleLGTRoamingUITest(I)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->access$000(Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;I)V

    .line 452
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.LGT_ROAMING_UI_TEST_JCDMA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 453
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;

    const/4 v1, 0x2

    #calls: Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->handleLGTRoamingUITest(I)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->access$000(Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;I)V

    .line 455
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.LGT_ROAMING_UI_TEST_DCN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 456
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;

    const/4 v1, 0x3

    #calls: Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->handleLGTRoamingUITest(I)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->access$000(Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;I)V

    .line 458
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.LG_NVITEM_RESET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 459
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher$1;->this$0:Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;

    #calls: Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->handleNVItemReset()V
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->access$100(Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;)V

    .line 461
    :cond_4
    return-void
.end method
