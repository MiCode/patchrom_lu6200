.class Lcom/android/server/am/ActivityStack$1;
.super Landroid/content/BroadcastReceiver;
.source "ActivityStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityStack;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStack;)V
    .locals 0
    .parameter

    .prologue
    .line 347
    iput-object p1, p0, Lcom/android/server/am/ActivityStack$1;->this$0:Lcom/android/server/am/ActivityStack;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 349
    const-string v0, "state"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/android/server/am/ActivityStack$1;->this$0:Lcom/android/server/am/ActivityStack;

    const/4 v1, 0x1

    #setter for: Lcom/android/server/am/ActivityStack;->mHDMIConnected:Z
    invoke-static {v0, v1}, Lcom/android/server/am/ActivityStack;->access$002(Lcom/android/server/am/ActivityStack;Z)Z

    .line 352
    iget-object v0, p0, Lcom/android/server/am/ActivityStack$1;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 353
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack$1;->this$0:Lcom/android/server/am/ActivityStack;

    const/4 v2, 0x0

    #calls: Lcom/android/server/am/ActivityStack;->suspendHDMILocked(Lcom/android/server/am/ActivityRecord;)V
    invoke-static {v0, v2}, Lcom/android/server/am/ActivityStack;->access$100(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;)V

    .line 354
    monitor-exit v1

    .line 359
    :goto_0
    return-void

    .line 354
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack$1;->this$0:Lcom/android/server/am/ActivityStack;

    #setter for: Lcom/android/server/am/ActivityStack;->mHDMIConnected:Z
    invoke-static {v0, v1}, Lcom/android/server/am/ActivityStack;->access$002(Lcom/android/server/am/ActivityStack;Z)Z

    goto :goto_0
.end method
