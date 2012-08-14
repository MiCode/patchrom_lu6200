.class Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher$LockOrderIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CdmaRILEventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LockOrderIntentReceiver"
.end annotation


# static fields
.field public static final INTENT_ACTION_CDMA_LOCK_ORDER:Ljava/lang/String; = "android.intent.action.CDMA_LOCK_ORDER"

.field public static final INTENT_ACTION_CDMA_MAINT_REQ:Ljava/lang/String; = "android.intent.action.CDMA_MAINT_REQ"

.field public static final INTENT_ACTION_EHRPD_AN_LOCK:Ljava/lang/String; = "android.intent.action.EHRPD_AN_LOCK"

.field public static final INTENT_ACTION_EHRPD_LOCK_ORDER:Ljava/lang/String; = "android.intent.action.EHRPD_LOCK_ORDER"

.field public static final INTENT_ACTION_LGT_AUTH_LOCK:Ljava/lang/String; = "android.intent.action.LGT_AUTH_LOCK"

.field public static final INTENT_ACTION_LGT_HDR_NETWORK_ERROR:Ljava/lang/String; = "android.intent.action.LGT_HDR_NETWORK_ERROR"

.field public static final INTENT_ACTION_LTE_EMM_REJECT:Ljava/lang/String; = "android.intent.action.LTE_EMM_REJECT"

.field public static final INTENT_ACTION_LTE_LOCK_ORDER:Ljava/lang/String; = "android.intent.action.LTE_LOCK_ORDER"

.field private static final TAG:Ljava/lang/String; = "LockOrderIntentReceiver"


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;)V
    .locals 0
    .parameter

    .prologue
    .line 466
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher$LockOrderIntentReceiver;->this$0:Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 466
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher$LockOrderIntentReceiver;-><init>(Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    .line 487
    const-string v1, "LockOrderIntentReceiver"

    const-string v2, "LockOrderIntentReceiver/onReceive"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 490
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.CDMA_LOCK_ORDER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.CDMA_MAINT_REQ"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 491
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher$LockOrderIntentReceiver;->this$0:Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;

    #setter for: Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mIsLGTUnregister:Z
    invoke-static {v1, v3}, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->access$202(Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;Z)Z

    .line 509
    :cond_1
    :goto_0
    const-string v1, "LockOrderIntentReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive / result, mIsLGTUnregister:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher$LockOrderIntentReceiver;->this$0:Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;

    #getter for: Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mIsLGTUnregister:Z
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->access$200(Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  ,mIsLGTUnauthenticated:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher$LockOrderIntentReceiver;->this$0:Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;

    #getter for: Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mIsLGTUnauthenticated:Z
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->access$300(Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,mIsLGTHDRNetworkError:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher$LockOrderIntentReceiver;->this$0:Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;

    #getter for: Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mIsLGTHDRNetworkError:Z
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->access$400(Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,mIsLTEAuthError:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher$LockOrderIntentReceiver;->this$0:Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;

    #getter for: Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mIsLTEAuthError:Z
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->access$500(Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,mIsLTEEMMReject:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher$LockOrderIntentReceiver;->this$0:Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;

    #getter for: Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mIsLTEEMMReject:Z
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->access$600(Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,mRejectNum:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher$LockOrderIntentReceiver;->this$0:Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;

    #getter for: Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mRejectNum:I
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->access$700(Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher$LockOrderIntentReceiver;->this$0:Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;

    #calls: Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->setPopUp()V
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->access$800(Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;)V

    .line 515
    return-void

    .line 492
    :cond_2
    const-string v1, "android.intent.action.LGT_AUTH_LOCK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 493
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher$LockOrderIntentReceiver;->this$0:Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;

    #setter for: Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mIsLGTUnauthenticated:Z
    invoke-static {v1, v3}, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->access$302(Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;Z)Z

    goto/16 :goto_0

    .line 494
    :cond_3
    const-string v1, "android.intent.action.LGT_HDR_NETWORK_ERROR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 495
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher$LockOrderIntentReceiver;->this$0:Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;

    #setter for: Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mIsLGTHDRNetworkError:Z
    invoke-static {v1, v3}, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->access$402(Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;Z)Z

    goto/16 :goto_0

    .line 498
    :cond_4
    const-string v1, "android.intent.action.EHRPD_LOCK_ORDER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "android.intent.action.LTE_LOCK_ORDER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "android.intent.action.EHRPD_AN_LOCK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 501
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher$LockOrderIntentReceiver;->this$0:Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;

    #setter for: Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mIsLTEAuthError:Z
    invoke-static {v1, v3}, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->access$502(Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;Z)Z

    goto/16 :goto_0

    .line 504
    :cond_6
    const-string v1, "android.intent.action.LTE_EMM_REJECT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 505
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher$LockOrderIntentReceiver;->this$0:Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;

    #setter for: Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mIsLTEEMMReject:Z
    invoke-static {v1, v3}, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->access$602(Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;Z)Z

    .line 506
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher$LockOrderIntentReceiver;->this$0:Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;

    const-string/jumbo v2, "rejectCode"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #setter for: Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mRejectNum:I
    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->access$702(Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;I)I

    goto/16 :goto_0
.end method
