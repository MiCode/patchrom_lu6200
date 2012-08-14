.class Lcom/android/internal/policy/impl/KeyguardViewManager$2;
.super Ljava/lang/Object;
.source "KeyguardViewManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardViewManager;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7
    .parameter "name"
    .parameter "service"

    .prologue
    .line 189
    invoke-static {p2}, Lcom/nttdocomo/android/screenlockservice/IScreenLockService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/nttdocomo/android/screenlockservice/IScreenLockService;

    move-result-object v3

    .line 192
    .local v3, spLinkService:Lcom/nttdocomo/android/screenlockservice/IScreenLockService;
    if-eqz v3, :cond_0

    .line 194
    :try_start_0
    invoke-interface {v3}, Lcom/nttdocomo/android/screenlockservice/IScreenLockService;->getUnreadCount()I

    move-result v0

    .line 200
    .local v0, cnt:I
    new-instance v2, Landroid/content/Intent;

    const-string v4, "jp.co.nttdocomo.carriermail.APP_LINK_RECEIVED_MESSAGE_LOCAL"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 201
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "spcnt"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 202
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/impl/KeyguardViewManager;->access$100(Lcom/android/internal/policy/impl/KeyguardViewManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    .end local v0           #cnt:I
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/impl/KeyguardViewManager;->access$100(Lcom/android/internal/policy/impl/KeyguardViewManager;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewManager;->mServiceConnection:Landroid/content/ServiceConnection;
    invoke-static {v5}, Lcom/android/internal/policy/impl/KeyguardViewManager;->access$300(Lcom/android/internal/policy/impl/KeyguardViewManager;)Landroid/content/ServiceConnection;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 214
    :goto_1
    return-void

    .line 204
    :catch_0
    move-exception v1

    .line 205
    .local v1, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardViewManager;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "KeyguardViewManager.ServiceConnection.onServiceConnected(): can\'t get unread count"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 210
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 211
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardViewManager;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KeyguardViewManager.ServiceConnection.onServiceConnected(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 217
    return-void
.end method
