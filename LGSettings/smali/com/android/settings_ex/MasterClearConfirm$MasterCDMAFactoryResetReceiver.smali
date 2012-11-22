.class Lcom/android/settings_ex/MasterClearConfirm$MasterCDMAFactoryResetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MasterClearConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/MasterClearConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MasterCDMAFactoryResetReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/MasterClearConfirm;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/MasterClearConfirm;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/MasterClearConfirm$MasterCDMAFactoryResetReceiver;->this$0:Lcom/android/settings_ex/MasterClearConfirm;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/MasterClearConfirm;Lcom/android/settings_ex/MasterClearConfirm$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/MasterClearConfirm$MasterCDMAFactoryResetReceiver;-><init>(Lcom/android/settings_ex/MasterClearConfirm;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 248
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.ACTION_CDMA_REQUEST_FACTORY_RESET_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/MasterClearConfirm$MasterCDMAFactoryResetReceiver;->this$0:Lcom/android/settings_ex/MasterClearConfirm;

    #calls: Lcom/android/settings_ex/MasterClearConfirm;->MasterCDMAFactoryResetCompleted(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/android/settings_ex/MasterClearConfirm;->access$300(Lcom/android/settings_ex/MasterClearConfirm;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
