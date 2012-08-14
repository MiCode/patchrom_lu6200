.class Lcom/android/internal/policy/impl/LgeLockScreenPackageManager$2;
.super Landroid/content/BroadcastReceiver;
.source "LgeLockScreenPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager$2;->this$0:Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 97
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, action:Ljava/lang/String;
    const-string v3, "LgeLockScreenPackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "received broadcast "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, packageName:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager$2;->this$0:Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;

    #getter for: Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->mPackageName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->access$300(Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager$2;->this$0:Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;

    #getter for: Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->mPackageName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->access$300(Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    const-string v3, "android.intent.extra.REPLACING"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 107
    .local v2, replacing:Z
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 108
    if-eqz v2, :cond_2

    .line 109
    iget-object v3, p0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager$2;->this$0:Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;

    #getter for: Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->access$400(Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager$2;->this$0:Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;

    #getter for: Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->access$400(Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x66

    invoke-virtual {v4, v5, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 111
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager$2;->this$0:Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;

    #getter for: Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->access$400(Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager$2;->this$0:Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;

    #getter for: Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->access$400(Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x64

    invoke-virtual {v4, v5, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 112
    :cond_3
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 113
    if-nez v2, :cond_0

    .line 114
    iget-object v3, p0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager$2;->this$0:Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;

    #getter for: Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->access$400(Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager$2;->this$0:Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;

    #getter for: Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->access$400(Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x65

    invoke-virtual {v4, v5, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 115
    :cond_4
    const-string v3, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0
.end method
