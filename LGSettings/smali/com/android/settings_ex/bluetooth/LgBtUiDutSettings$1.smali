.class Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "LgBtUiDutSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings$1;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 78
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    const-string v2, "android.bluetooth.adapter.extra.STATE"

    const/high16 v3, -0x8000

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 82
    .local v1, state:I
    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings$1;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;

    #getter for: Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->isWaitBtOff:Z
    invoke-static {v2}, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->access$000(Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings$1;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;

    const/4 v3, 0x0

    #setter for: Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->isWaitBtOff:Z
    invoke-static {v2, v3}, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->access$002(Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;Z)Z

    .line 84
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings$1;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;

    #calls: Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->closePleaseWaitDialog()V
    invoke-static {v2}, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->access$100(Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;)V

    .line 85
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings$1;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;

    invoke-virtual {v2}, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->createDutDialog()V

    .line 89
    .end local v1           #state:I
    :cond_0
    return-void
.end method
