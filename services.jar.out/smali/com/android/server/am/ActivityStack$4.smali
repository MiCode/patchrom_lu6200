.class Lcom/android/server/am/ActivityStack$4;
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
    .line 512
    iput-object p1, p0, Lcom/android/server/am/ActivityStack$4;->this$0:Lcom/android/server/am/ActivityStack;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 515
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 516
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 517
    iget-object v1, p0, Lcom/android/server/am/ActivityStack$4;->this$0:Lcom/android/server/am/ActivityStack;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/am/ActivityStack;->mMediaScanEnd:Z

    .line 525
    :cond_0
    :goto_0
    return-void

    .line 521
    :cond_1
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 523
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/ActivityStack$4;->this$0:Lcom/android/server/am/ActivityStack;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/am/ActivityStack;->mMediaScanEnd:Z

    goto :goto_0
.end method
