.class Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "PowerSaveWarningPopupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 58
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, action:Ljava/lang/String;
    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 60
    const-string v7, "level"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 61
    .local v3, level:I
    const-string v7, "scale"

    const/16 v8, 0x64

    move-object/from16 v0, p2

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 63
    .local v6, scale:I
    mul-int/lit8 v7, v3, 0x64

    div-int v2, v7, v6

    .line 64
    .local v2, battery:I
    const-string v7, "plugged"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 66
    .local v4, plugType:I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;

    move-object/from16 v0, p1

    #calls: Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->getPowerSaveModeValue(Landroid/content/Context;)I
    invoke-static {v7, v0}, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->access$000(Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;Landroid/content/Context;)I

    move-result v5

    .line 68
    .local v5, powerSaveModeValue:I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;

    #getter for: Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->access$100(Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;)Landroid/widget/TextView;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    const-string v7, "ar"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "fa"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 74
    :cond_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;

    #getter for: Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->access$100(Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;)Landroid/widget/TextView;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;

    const v9, 0x7f080b72

    invoke-virtual {v8, v9}, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    const-string v13, "%d"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "%"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    :goto_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;

    #getter for: Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->mBatteryImg:Landroid/widget/ImageView;
    invoke-static {v7}, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->access$300(Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;)Landroid/widget/ImageView;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;

    #getter for: Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->mPowerSave:Lcom/android/settings_ex/powersave/PowerSave;
    invoke-static {v8}, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->access$200(Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;)Lcom/android/settings_ex/powersave/PowerSave;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/android/settings_ex/powersave/PowerSave;->getPopupBatteryImgId(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 83
    if-le v2, v5, :cond_3

    .line 84
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;

    const/4 v8, 0x1

    #setter for: Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->noActivation:Z
    invoke-static {v7, v8}, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->access$402(Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;Z)Z

    .line 85
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;

    invoke-virtual {v7}, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->finish()V

    .line 97
    .end local v2           #battery:I
    .end local v3           #level:I
    .end local v4           #plugType:I
    .end local v5           #powerSaveModeValue:I
    .end local v6           #scale:I
    :cond_1
    :goto_1
    return-void

    .line 77
    .restart local v2       #battery:I
    .restart local v3       #level:I
    .restart local v4       #plugType:I
    .restart local v5       #powerSaveModeValue:I
    .restart local v6       #scale:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;

    #getter for: Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->access$100(Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;)Landroid/widget/TextView;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;

    const v9, 0x7f080b72

    invoke-virtual {v8, v9}, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "%"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 87
    :cond_3
    if-lez v4, :cond_1

    .line 88
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;

    const/4 v8, 0x1

    #setter for: Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->noActivation:Z
    invoke-static {v7, v8}, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->access$402(Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;Z)Z

    .line 89
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;

    invoke-virtual {v7}, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->finish()V

    goto :goto_1

    .line 94
    .end local v2           #battery:I
    .end local v3           #level:I
    .end local v4           #plugType:I
    .end local v5           #powerSaveModeValue:I
    .end local v6           #scale:I
    :cond_4
    const-string v7, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1
.end method
