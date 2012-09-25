.class Lcom/android/settings_ex/powersave/PowerSaveService$1;
.super Landroid/content/BroadcastReceiver;
.source "PowerSaveService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/powersave/PowerSaveService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/powersave/PowerSaveService;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/powersave/PowerSaveService;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/settings_ex/powersave/PowerSaveService$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x2

    const/high16 v7, 0x1000

    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 51
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 53
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 56
    const-string v0, "level"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 57
    const-string v1, "scale"

    const/16 v2, 0x64

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 59
    iget-object v2, p0, Lcom/android/settings_ex/powersave/PowerSaveService$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveService;

    mul-int/lit8 v0, v0, 0x64

    div-int/2addr v0, v1

    #setter for: Lcom/android/settings_ex/powersave/PowerSaveService;->mCurrentBatteryLevel:I
    invoke-static {v2, v0}, Lcom/android/settings_ex/powersave/PowerSaveService;->access$002(Lcom/android/settings_ex/powersave/PowerSaveService;I)I

    .line 60
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveService$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveService;

    #calls: Lcom/android/settings_ex/powersave/PowerSaveService;->getPowerSaveModeValue(Landroid/content/Context;)I
    invoke-static {v0, p1}, Lcom/android/settings_ex/powersave/PowerSaveService;->access$100(Lcom/android/settings_ex/powersave/PowerSaveService;Landroid/content/Context;)I

    move-result v1

    .line 62
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveService$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveService;

    const-string v2, "plugged"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #setter for: Lcom/android/settings_ex/powersave/PowerSaveService;->mPlugType:I
    invoke-static {v0, v2}, Lcom/android/settings_ex/powersave/PowerSaveService;->access$202(Lcom/android/settings_ex/powersave/PowerSaveService;I)I

    .line 64
    const-string v2, "PowerSaveService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPowerSaveStarted : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveService$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveService;

    #getter for: Lcom/android/settings_ex/powersave/PowerSaveService;->mPowerSaveStarted:Z
    invoke-static {v0}, Lcom/android/settings_ex/powersave/PowerSaveService;->access$300(Lcom/android/settings_ex/powersave/PowerSaveService;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "true, "

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "mCurrentBatteryLevel : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings_ex/powersave/PowerSaveService$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveService;

    #getter for: Lcom/android/settings_ex/powersave/PowerSaveService;->mCurrentBatteryLevel:I
    invoke-static {v3}, Lcom/android/settings_ex/powersave/PowerSaveService;->access$000(Lcom/android/settings_ex/powersave/PowerSaveService;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", powerSaveModeValue : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", plugType : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings_ex/powersave/PowerSaveService$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveService;

    #getter for: Lcom/android/settings_ex/powersave/PowerSaveService;->mPlugType:I
    invoke-static {v3}, Lcom/android/settings_ex/powersave/PowerSaveService;->access$200(Lcom/android/settings_ex/powersave/PowerSaveService;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveService$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveService;

    #getter for: Lcom/android/settings_ex/powersave/PowerSaveService;->mPowerSaveStarted:Z
    invoke-static {v0}, Lcom/android/settings_ex/powersave/PowerSaveService;->access$300(Lcom/android/settings_ex/powersave/PowerSaveService;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveService$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveService;

    #getter for: Lcom/android/settings_ex/powersave/PowerSaveService;->mPlugType:I
    invoke-static {v0}, Lcom/android/settings_ex/powersave/PowerSaveService;->access$200(Lcom/android/settings_ex/powersave/PowerSaveService;)I

    move-result v0

    if-lez v0, :cond_3

    .line 71
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveService$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveService;

    #calls: Lcom/android/settings_ex/powersave/PowerSaveService;->startNotification(I)V
    invoke-static {v0, v8}, Lcom/android/settings_ex/powersave/PowerSaveService;->access$400(Lcom/android/settings_ex/powersave/PowerSaveService;I)V

    .line 74
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveService$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveService;

    #calls: Lcom/android/settings_ex/powersave/PowerSaveService;->getPowerSaveStarted()I
    invoke-static {v0}, Lcom/android/settings_ex/powersave/PowerSaveService;->access$500(Lcom/android/settings_ex/powersave/PowerSaveService;)I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveService$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveService;

    #getter for: Lcom/android/settings_ex/powersave/PowerSaveService;->mPowerSave:Lcom/android/settings_ex/powersave/PowerSave;
    invoke-static {v0}, Lcom/android/settings_ex/powersave/PowerSaveService;->access$600(Lcom/android/settings_ex/powersave/PowerSaveService;)Lcom/android/settings_ex/powersave/PowerSave;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/powersave/PowerSave;->doRestore()V

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveService$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveService;

    #getter for: Lcom/android/settings_ex/powersave/PowerSaveService;->mPowerSave:Lcom/android/settings_ex/powersave/PowerSave;
    invoke-static {v0}, Lcom/android/settings_ex/powersave/PowerSaveService;->access$600(Lcom/android/settings_ex/powersave/PowerSaveService;)Lcom/android/settings_ex/powersave/PowerSave;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/powersave/PowerSave;->updatePowerControl()V

    .line 82
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveService$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveService;

    #setter for: Lcom/android/settings_ex/powersave/PowerSaveService;->mPowerSaveStarted:Z
    invoke-static {v0, v4}, Lcom/android/settings_ex/powersave/PowerSaveService;->access$302(Lcom/android/settings_ex/powersave/PowerSaveService;Z)Z

    .line 83
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveService$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveService;

    #calls: Lcom/android/settings_ex/powersave/PowerSaveService;->setActivationState(Z)V
    invoke-static {v0, v4}, Lcom/android/settings_ex/powersave/PowerSaveService;->access$700(Lcom/android/settings_ex/powersave/PowerSaveService;Z)V

    .line 84
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveService$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveService;

    #calls: Lcom/android/settings_ex/powersave/PowerSaveService;->setPowerSaveStarted(I)V
    invoke-static {v0, v6}, Lcom/android/settings_ex/powersave/PowerSaveService;->access$800(Lcom/android/settings_ex/powersave/PowerSaveService;I)V

    .line 199
    :cond_1
    :goto_1
    return-void

    .line 64
    :cond_2
    const-string v0, "false, "

    goto :goto_0

    .line 85
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveService$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveService;

    #getter for: Lcom/android/settings_ex/powersave/PowerSaveService;->mPlugType:I
    invoke-static {v0}, Lcom/android/settings_ex/powersave/PowerSaveService;->access$200(Lcom/android/settings_ex/powersave/PowerSaveService;)I

    move-result v0

    if-lez v0, :cond_4

    .line 86
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveService$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveService;

    #calls: Lcom/android/settings_ex/powersave/PowerSaveService;->startNotification(I)V
    invoke-static {v0, v8}, Lcom/android/settings_ex/powersave/PowerSaveService;->access$400(Lcom/android/settings_ex/powersave/PowerSaveService;I)V

    goto :goto_1

    .line 87
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveService$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveService;

    #getter for: Lcom/android/settings_ex/powersave/PowerSaveService;->mPlugType:I
    invoke-static {v0}, Lcom/android/settings_ex/powersave/PowerSaveService;->access$200(Lcom/android/settings_ex/powersave/PowerSaveService;)I

    move-result v0

    if-nez v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveService$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveService;

    #getter for: Lcom/android/settings_ex/powersave/PowerSaveService;->mCurrentBatteryLevel:I
    invoke-static {v0}, Lcom/android/settings_ex/powersave/PowerSaveService;->access$000(Lcom/android/settings_ex/powersave/PowerSaveService;)I

    move-result v0

    if-gt v0, v1, :cond_5

    .line 90
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveService$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveService;

    #getter for: Lcom/android/settings_ex/powersave/PowerSaveService;->mPowerSaveStarted:Z
    invoke-static {v0}, Lcom/android/settings_ex/powersave/PowerSaveService;->access$300(Lcom/android/settings_ex/powersave/PowerSaveService;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveService$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveService;

    #calls: Lcom/android/settings_ex/powersave/PowerSaveService;->checkCondition()Z
    invoke-static {v0}, Lcom/android/settings_ex/powersave/PowerSaveService;->access$900(Lcom/android/settings_ex/powersave/PowerSaveService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 93
    iget-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveService$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveService;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/powersave/PowerSaveService;->startActivity(Landroid/content/Intent;)V

    .line 94
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveService$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveService;

    #setter for: Lcom/android/settings_ex/powersave/PowerSaveService;->mPowerSaveStarted:Z
    invoke-static {v0, v5}, Lcom/android/settings_ex/powersave/PowerSaveService;->access$302(Lcom/android/settings_ex/powersave/PowerSaveService;Z)Z

    goto :goto_1

    .line 97
    :cond_5
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveService$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveService;

    const/4 v2, 0x3

    #calls: Lcom/android/settings_ex/powersave/PowerSaveService;->startNotification(I)V
    invoke-static {v0, v2}, Lcom/android/settings_ex/powersave/PowerSaveService;->access$400(Lcom/android/settings_ex/powersave/PowerSaveService;I)V

    .line 98
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveService$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveService;

    #getter for: Lcom/android/settings_ex/powersave/PowerSaveService;->mPowerSaveStarted:Z
    invoke-static {v0}, Lcom/android/settings_ex/powersave/PowerSaveService;->access$300(Lcom/android/settings_ex/powersave/PowerSaveService;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveService$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveService;

    #getter for: Lcom/android/settings_ex/powersave/PowerSaveService;->mCurrentBatteryLevel:I
    invoke-static {v0}, Lcom/android/settings_ex/powersave/PowerSaveService;->access$000(Lcom/android/settings_ex/powersave/PowerSaveService;)I

    move-result v0

    if-le v0, v1, :cond_1

    .line 102
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveService$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveService;

    #calls: Lcom/android/settings_ex/powersave/PowerSaveService;->getPowerSaveStarted()I
    invoke-static {v0}, Lcom/android/settings_ex/powersave/PowerSaveService;->access$500(Lcom/android/settings_ex/powersave/PowerSaveService;)I

    move-result v0

    if-ne v0, v5, :cond_6

    .line 103
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveService$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveService;

    #getter for: Lcom/android/settings_ex/powersave/PowerSaveService;->mPowerSave:Lcom/android/settings_ex/powersave/PowerSave;
    invoke-static {v0}, Lcom/android/settings_ex/powersave/PowerSaveService;->access$600(Lcom/android/settings_ex/powersave/PowerSaveService;)Lcom/android/settings_ex/powersave/PowerSave;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/powersave/PowerSave;->doRestore()V

    .line 107
    :cond_6
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveService$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveService;

    #setter for: Lcom/android/settings_ex/powersave/PowerSaveService;->mPowerSaveStarted:Z
    invoke-static {v0, v4}, Lcom/android/settings_ex/powersave/PowerSaveService;->access$302(Lcom/android/settings_ex/powersave/PowerSaveService;Z)Z

    .line 109
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveService$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveService;

    #calls: Lcom/android/settings_ex/powersave/PowerSaveService;->setActivationState(Z)V
    invoke-static {v0, v4}, Lcom/android/settings_ex/powersave/PowerSaveService;->access$700(Lcom/android/settings_ex/powersave/PowerSaveService;Z)V

    .line 110
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveService$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveService;

    #calls: Lcom/android/settings_ex/powersave/PowerSaveService;->setPowerSaveStarted(I)V
    invoke-static {v0, v6}, Lcom/android/settings_ex/powersave/PowerSaveService;->access$800(Lcom/android/settings_ex/powersave/PowerSaveService;I)V

    .line 113
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveService$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveService;

    #getter for: Lcom/android/settings_ex/powersave/PowerSaveService;->mPowerSave:Lcom/android/settings_ex/powersave/PowerSave;
    invoke-static {v0}, Lcom/android/settings_ex/powersave/PowerSaveService;->access$600(Lcom/android/settings_ex/powersave/PowerSaveService;)Lcom/android/settings_ex/powersave/PowerSave;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/powersave/PowerSave;->updatePowerControl()V

    goto/16 :goto_1

    .line 117
    :cond_7
    const-string v1, "com.android.settings_ex.powersave.action.MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 118
    const-string v0, "PowerSaveService"

    const-string v1, "PowerSave.ACTION_POWERSAVE_MODE_CHANGED received"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveService$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveService;

    #calls: Lcom/android/settings_ex/powersave/PowerSaveService;->getPowerSaveModeValue(Landroid/content/Context;)I
    invoke-static {v0, p1}, Lcom/android/settings_ex/powersave/PowerSaveService;->access$100(Lcom/android/settings_ex/powersave/PowerSaveService;Landroid/content/Context;)I

    move-result v0

    .line 121
    iget-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveService$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveService;

    #getter for: Lcom/android/settings_ex/powersave/PowerSaveService;->mCurrentBatteryLevel:I
    invoke-static {v1}, Lcom/android/settings_ex/powersave/PowerSaveService;->access$000(Lcom/android/settings_ex/powersave/PowerSaveService;)I

    move-result v1

    if-le v1, v6, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveService$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveService;

    #getter for: Lcom/android/settings_ex/powersave/PowerSaveService;->mPlugType:I
    invoke-static {v1}, Lcom/android/settings_ex/powersave/PowerSaveService;->access$200(Lcom/android/settings_ex/powersave/PowerSaveService;)I

    move-result v1

    if-nez v1, :cond_1

    .line 122
    iget-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveService$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveService;

    #getter for: Lcom/android/settings_ex/powersave/PowerSaveService;->mCurrentBatteryLevel:I
    invoke-static {v1}, Lcom/android/settings_ex/powersave/PowerSaveService;->access$000(Lcom/android/settings_ex/powersave/PowerSaveService;)I

    move-result v1

    if-gt v1, v0, :cond_8

    .line 123
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveService$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveService;

    #getter for: Lcom/android/settings_ex/powersave/PowerSaveService;->mPowerSaveStarted:Z
    invoke-static {v0}, Lcom/android/settings_ex/powersave/PowerSaveService;->access$300(Lcom/android/settings_ex/powersave/PowerSaveService;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveService$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveService;

    #calls: Lcom/android/settings_ex/powersave/PowerSaveService;->checkCondition()Z
    invoke-static {v0}, Lcom/android/settings_ex/powersave/PowerSaveService;->access$900(Lcom/android/settings_ex/powersave/PowerSaveService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 125
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 126
    iget-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveService$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveService;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/powersave/PowerSaveService;->startActivity(Landroid/content/Intent;)V

    .line 128
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveService$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveService;

    #setter for: Lcom/android/settings_ex/powersave/PowerSaveService;->mPowerSaveStarted:Z
    invoke-static {v0, v5}, Lcom/android/settings_ex/powersave/PowerSaveService;->access$302(Lcom/android/settings_ex/powersave/PowerSaveService;Z)Z

    goto/16 :goto_1

    .line 131
    :cond_8
    iget-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveService$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveService;

    const/4 v2, 0x3

    #calls: Lcom/android/settings_ex/powersave/PowerSaveService;->startNotification(I)V
    invoke-static {v1, v2}, Lcom/android/settings_ex/powersave/PowerSaveService;->access$400(Lcom/android/settings_ex/powersave/PowerSaveService;I)V

    .line 132
    iget-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveService$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveService;

    #getter for: Lcom/android/settings_ex/powersave/PowerSaveService;->mPowerSaveStarted:Z
    invoke-static {v1}, Lcom/android/settings_ex/powersave/PowerSaveService;->access$300(Lcom/android/settings_ex/powersave/PowerSaveService;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveService$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveService;

    #getter for: Lcom/android/settings_ex/powersave/PowerSaveService;->mCurrentBatteryLevel:I
    invoke-static {v1}, Lcom/android/settings_ex/powersave/PowerSaveService;->access$000(Lcom/android/settings_ex/powersave/PowerSaveService;)I

    move-result v1

    if-le v1, v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveService$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveService;

    #calls: Lcom/android/settings_ex/powersave/PowerSaveService;->getPowerSaveStarted()I
    invoke-static {v0}, Lcom/android/settings_ex/powersave/PowerSaveService;->access$500(Lcom/android/settings_ex/powersave/PowerSaveService;)I

    move-result v0

    if-ne v0, v5, :cond_9

    .line 137
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveService$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveService;

    #getter for: Lcom/android/settings_ex/powersave/PowerSaveService;->mPowerSave:Lcom/android/settings_ex/powersave/PowerSave;
    invoke-static {v0}, Lcom/android/settings_ex/powersave/PowerSaveService;->access$600(Lcom/android/settings_ex/powersave/PowerSaveService;)Lcom/android/settings_ex/powersave/PowerSave;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/powersave/PowerSave;->doRestore()V

    .line 141
    :cond_9
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveService$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveService;

    #setter for: Lcom/android/settings_ex/powersave/PowerSaveService;->mPowerSaveStarted:Z
    invoke-static {v0, v4}, Lcom/android/settings_ex/powersave/PowerSaveService;->access$302(Lcom/android/settings_ex/powersave/PowerSaveService;Z)Z

    .line 143
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveService$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveService;

    #calls: Lcom/android/settings_ex/powersave/PowerSaveService;->setActivationState(Z)V
    invoke-static {v0, v4}, Lcom/android/settings_ex/powersave/PowerSaveService;->access$700(Lcom/android/settings_ex/powersave/PowerSaveService;Z)V

    .line 144
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveService$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveService;

    #calls: Lcom/android/settings_ex/powersave/PowerSaveService;->setPowerSaveStarted(I)V
    invoke-static {v0, v6}, Lcom/android/settings_ex/powersave/PowerSaveService;->access$800(Lcom/android/settings_ex/powersave/PowerSaveService;I)V

    .line 147
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveService$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveService;

    #getter for: Lcom/android/settings_ex/powersave/PowerSaveService;->mPowerSave:Lcom/android/settings_ex/powersave/PowerSave;
    invoke-static {v0}, Lcom/android/settings_ex/powersave/PowerSaveService;->access$600(Lcom/android/settings_ex/powersave/PowerSaveService;)Lcom/android/settings_ex/powersave/PowerSave;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/powersave/PowerSave;->updatePowerControl()V

    goto/16 :goto_1

    .line 152
    :cond_a
    const-string v1, "com.android.settings_ex.powersave.POWERSAVE_ACTIVATION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 153
    const-string v0, "powersave_activation"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 154
    if-ne v0, v5, :cond_b

    .line 155
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveService$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveService;

    #getter for: Lcom/android/settings_ex/powersave/PowerSaveService;->mPowerSave:Lcom/android/settings_ex/powersave/PowerSave;
    invoke-static {v0}, Lcom/android/settings_ex/powersave/PowerSaveService;->access$600(Lcom/android/settings_ex/powersave/PowerSaveService;)Lcom/android/settings_ex/powersave/PowerSave;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/powersave/PowerSave;->doPowerSave()V

    .line 158
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveService$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveService;

    #calls: Lcom/android/settings_ex/powersave/PowerSaveService;->endNotification()V
    invoke-static {v0}, Lcom/android/settings_ex/powersave/PowerSaveService;->access$1000(Lcom/android/settings_ex/powersave/PowerSaveService;)V

    .line 159
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveService$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveService;

    #calls: Lcom/android/settings_ex/powersave/PowerSaveService;->startNotification(I)V
    invoke-static {v0, v5}, Lcom/android/settings_ex/powersave/PowerSaveService;->access$400(Lcom/android/settings_ex/powersave/PowerSaveService;I)V

    .line 160
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveService$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveService;

    #calls: Lcom/android/settings_ex/powersave/PowerSaveService;->setPowerSaveStarted(I)V
    invoke-static {v0, v5}, Lcom/android/settings_ex/powersave/PowerSaveService;->access$800(Lcom/android/settings_ex/powersave/PowerSaveService;I)V

    .line 162
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveService$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveService;

    #calls: Lcom/android/settings_ex/powersave/PowerSaveService;->setActivationState(Z)V
    invoke-static {v0, v5}, Lcom/android/settings_ex/powersave/PowerSaveService;->access$700(Lcom/android/settings_ex/powersave/PowerSaveService;Z)V

    .line 165
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveService$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveService;

    #getter for: Lcom/android/settings_ex/powersave/PowerSaveService;->mPowerSave:Lcom/android/settings_ex/powersave/PowerSave;
    invoke-static {v0}, Lcom/android/settings_ex/powersave/PowerSaveService;->access$600(Lcom/android/settings_ex/powersave/PowerSaveService;)Lcom/android/settings_ex/powersave/PowerSave;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/powersave/PowerSave;->updatePowerControl()V

    goto/16 :goto_1

    .line 167
    :cond_b
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveService$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveService;

    #calls: Lcom/android/settings_ex/powersave/PowerSaveService;->endNotification()V
    invoke-static {v0}, Lcom/android/settings_ex/powersave/PowerSaveService;->access$1000(Lcom/android/settings_ex/powersave/PowerSaveService;)V

    .line 169
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveService$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveService;

    invoke-virtual {v0}, Lcom/android/settings_ex/powersave/PowerSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "power_save_mode"

    const/16 v2, 0x1e

    invoke-static {v0, v1, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 170
    const/16 v1, 0x64

    if-ne v0, v1, :cond_c

    .line 171
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveService$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveService;

    invoke-virtual {v0}, Lcom/android/settings_ex/powersave/PowerSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "power_save_enabled"

    invoke-static {v0, v1, v4}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 172
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveService$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveService;

    invoke-virtual {v0}, Lcom/android/settings_ex/powersave/PowerSaveService;->stopSelf()V

    goto/16 :goto_1

    .line 174
    :cond_c
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveService$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveService;

    #calls: Lcom/android/settings_ex/powersave/PowerSaveService;->startNotification(I)V
    invoke-static {v0, v4}, Lcom/android/settings_ex/powersave/PowerSaveService;->access$400(Lcom/android/settings_ex/powersave/PowerSaveService;I)V

    .line 175
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveService$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveService;

    #calls: Lcom/android/settings_ex/powersave/PowerSaveService;->setPowerSaveStarted(I)V
    invoke-static {v0, v4}, Lcom/android/settings_ex/powersave/PowerSaveService;->access$800(Lcom/android/settings_ex/powersave/PowerSaveService;I)V

    goto/16 :goto_1

    .line 179
    :cond_d
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 181
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveService$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveService;

    #calls: Lcom/android/settings_ex/powersave/PowerSaveService;->getPowerSaveStarted()I
    invoke-static {v0}, Lcom/android/settings_ex/powersave/PowerSaveService;->access$500(Lcom/android/settings_ex/powersave/PowerSaveService;)I

    move-result v0

    .line 182
    if-le v0, v6, :cond_1

    .line 183
    const-string v1, "PowerSaveService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Intent.ACTION_LOCALE_CHANGED receive, POWER_SAVE_STARTED : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveService$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveService;

    #calls: Lcom/android/settings_ex/powersave/PowerSaveService;->startNotification(I)V
    invoke-static {v1, v0}, Lcom/android/settings_ex/powersave/PowerSaveService;->access$400(Lcom/android/settings_ex/powersave/PowerSaveService;I)V

    goto/16 :goto_1

    .line 189
    :cond_e
    const-string v1, "com.android.settings_ex.powersave.POWERSAVE_GO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveService$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveService;

    #calls: Lcom/android/settings_ex/powersave/PowerSaveService;->checkCondition()Z
    invoke-static {v0}, Lcom/android/settings_ex/powersave/PowerSaveService;->access$900(Lcom/android/settings_ex/powersave/PowerSaveService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 192
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 193
    iget-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveService$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveService;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/powersave/PowerSaveService;->startActivity(Landroid/content/Intent;)V

    .line 195
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveService$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveService;

    #setter for: Lcom/android/settings_ex/powersave/PowerSaveService;->mPowerSaveStarted:Z
    invoke-static {v0, v5}, Lcom/android/settings_ex/powersave/PowerSaveService;->access$302(Lcom/android/settings_ex/powersave/PowerSaveService;Z)Z

    goto/16 :goto_1
.end method
