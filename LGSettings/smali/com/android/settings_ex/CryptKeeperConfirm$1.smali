.class Lcom/android/settings_ex/CryptKeeperConfirm$1;
.super Landroid/content/BroadcastReceiver;
.source "CryptKeeperConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/CryptKeeperConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/CryptKeeperConfirm;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/CryptKeeperConfirm;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/settings_ex/CryptKeeperConfirm$1;->this$0:Lcom/android/settings_ex/CryptKeeperConfirm;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 46
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, action:Ljava/lang/String;
    const-string v8, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 48
    const-string v8, "level"

    invoke-virtual {p2, v8, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 49
    .local v2, level:I
    const-string v8, "plugged"

    invoke-virtual {p2, v8, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 50
    .local v4, plugged:I
    const-string v8, "invalid_charger"

    invoke-virtual {p2, v8, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 52
    .local v1, invalidCharger:I
    const/16 v8, 0x50

    if-lt v2, v8, :cond_2

    move v3, v7

    .line 53
    .local v3, levelOk:Z
    :goto_0
    if-eq v4, v7, :cond_0

    const/4 v8, 0x2

    if-ne v4, v8, :cond_3

    :cond_0
    if-nez v1, :cond_3

    move v5, v7

    .line 59
    .local v5, pluggedOk:Z
    :goto_1
    iget-object v8, p0, Lcom/android/settings_ex/CryptKeeperConfirm$1;->this$0:Lcom/android/settings_ex/CryptKeeperConfirm;

    #getter for: Lcom/android/settings_ex/CryptKeeperConfirm;->mFinalButton:Landroid/widget/Button;
    invoke-static {v8}, Lcom/android/settings_ex/CryptKeeperConfirm;->access$000(Lcom/android/settings_ex/CryptKeeperConfirm;)Landroid/widget/Button;

    move-result-object v8

    if-eqz v3, :cond_4

    if-eqz v5, :cond_4

    :goto_2
    invoke-virtual {v8, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 61
    .end local v1           #invalidCharger:I
    .end local v2           #level:I
    .end local v3           #levelOk:Z
    .end local v4           #plugged:I
    .end local v5           #pluggedOk:Z
    :cond_1
    return-void

    .restart local v1       #invalidCharger:I
    .restart local v2       #level:I
    .restart local v4       #plugged:I
    :cond_2
    move v3, v6

    .line 52
    goto :goto_0

    .restart local v3       #levelOk:Z
    :cond_3
    move v5, v6

    .line 53
    goto :goto_1

    .restart local v5       #pluggedOk:Z
    :cond_4
    move v7, v6

    .line 59
    goto :goto_2
.end method
