.class Lcom/android/internal/policy/impl/KeyguardViewManager$1;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardViewManager.java"


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
    .line 128
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 131
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.nttdocomo.android.mascot.KEYGUARD_UPDATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 136
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    const-string v2, "RemoteViews"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews;

    iput-object v2, v3, Lcom/android/internal/policy/impl/KeyguardViewManager;->mRemoteViews:Landroid/widget/RemoteViews;

    .line 137
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/KeyguardViewManager;->mRemoteViews:Landroid/widget/RemoteViews;

    if-nez v2, :cond_1

    .line 138
    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardViewManager;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyguardViewManager.BroadcastReceiver.onReceive(): mascot is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.nttdocomo.android.mascot.KEYGUARD_UPDATE_LOCAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 145
    .local v1, intent2:Landroid/content/Intent;
    const-string v2, "RemoteViews"

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/KeyguardViewManager;->mRemoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 146
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardViewManager;->access$100(Lcom/android/internal/policy/impl/KeyguardViewManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 149
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    #setter for: Lcom/android/internal/policy/impl/KeyguardViewManager;->mIsWaitingForBootComplete:Z
    invoke-static {v2, v4}, Lcom/android/internal/policy/impl/KeyguardViewManager;->access$202(Lcom/android/internal/policy/impl/KeyguardViewManager;Z)Z

    .line 179
    .end local v1           #intent2:Landroid/content/Intent;
    :cond_0
    :goto_1
    return-void

    .line 141
    :cond_1
    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardViewManager;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyguardViewManager.BroadcastReceiver.onReceive(): mascot is exist"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 152
    :cond_2
    const-string v2, "jp.co.nttdocomo.carriermail.APP_LINK_RECEIVED_MESSAGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "com.android.internal.policy.impl.CARRIERMAIL_COUNT_UPDATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 156
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/nttdocomo/android/screenlockservice/IScreenLockService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 157
    .restart local v1       #intent2:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardViewManager;->access$100(Lcom/android/internal/policy/impl/KeyguardViewManager;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewManager;->mServiceConnection:Landroid/content/ServiceConnection;
    invoke-static {v3}, Lcom/android/internal/policy/impl/KeyguardViewManager;->access$300(Lcom/android/internal/policy/impl/KeyguardViewManager;)Landroid/content/ServiceConnection;

    move-result-object v3

    invoke-virtual {v2, v1, v3, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 158
    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardViewManager;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyguardViewManager.BroadcastReceiver.onReceive(): can\'t connect IScreenLockService"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 162
    .end local v1           #intent2:Landroid/content/Intent;
    :cond_4
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    #setter for: Lcom/android/internal/policy/impl/KeyguardViewManager;->mIsBootCompleted:Z
    invoke-static {v2, v5}, Lcom/android/internal/policy/impl/KeyguardViewManager;->access$402(Lcom/android/internal/policy/impl/KeyguardViewManager;Z)Z

    .line 168
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewManager;->mIsWaitingForBootComplete:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardViewManager;->access$200(Lcom/android/internal/policy/impl/KeyguardViewManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.nttdocomo.android.mascot.KEYGUARD_UPDATE_LOCAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 172
    .restart local v1       #intent2:Landroid/content/Intent;
    const-string v2, "RemoteViews"

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/KeyguardViewManager;->mRemoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 173
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/KeyguardViewManager;->access$100(Lcom/android/internal/policy/impl/KeyguardViewManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 176
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    #setter for: Lcom/android/internal/policy/impl/KeyguardViewManager;->mIsWaitingForBootComplete:Z
    invoke-static {v2, v4}, Lcom/android/internal/policy/impl/KeyguardViewManager;->access$202(Lcom/android/internal/policy/impl/KeyguardViewManager;Z)Z

    goto :goto_1
.end method
