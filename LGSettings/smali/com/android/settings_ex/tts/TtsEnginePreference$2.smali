.class Lcom/android/settings_ex/tts/TtsEnginePreference$2;
.super Ljava/lang/Object;
.source "TtsEnginePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/tts/TtsEnginePreference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/tts/TtsEnginePreference;

.field final synthetic val$rb:Landroid/widget/RadioButton;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/tts/TtsEnginePreference;Landroid/widget/RadioButton;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/settings_ex/tts/TtsEnginePreference$2;->this$0:Lcom/android/settings_ex/tts/TtsEnginePreference;

    iput-object p2, p0, Lcom/android/settings_ex/tts/TtsEnginePreference$2;->val$rb:Landroid/widget/RadioButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    .line 140
    const-string v2, "TtsEnginePreference"

    const-string v3, "textLayout.onClick()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v2, p0, Lcom/android/settings_ex/tts/TtsEnginePreference$2;->this$0:Lcom/android/settings_ex/tts/TtsEnginePreference;

    iget-object v3, p0, Lcom/android/settings_ex/tts/TtsEnginePreference$2;->val$rb:Landroid/widget/RadioButton;

    iget-object v4, p0, Lcom/android/settings_ex/tts/TtsEnginePreference$2;->val$rb:Landroid/widget/RadioButton;

    invoke-virtual {v4}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    #calls: Lcom/android/settings_ex/tts/TtsEnginePreference;->onRadioButtonClicked(Landroid/widget/CompoundButton;Z)V
    invoke-static {v2, v3, v1}, Lcom/android/settings_ex/tts/TtsEnginePreference;->access$000(Lcom/android/settings_ex/tts/TtsEnginePreference;Landroid/widget/CompoundButton;Z)V

    .line 143
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/tts/TtsEnginePreference$2;->this$0:Lcom/android/settings_ex/tts/TtsEnginePreference;

    #getter for: Lcom/android/settings_ex/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;
    invoke-static {v1}, Lcom/android/settings_ex/tts/TtsEnginePreference;->access$100(Lcom/android/settings_ex/tts/TtsEnginePreference;)Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/tts/TtsEnginePreference$2;->this$0:Lcom/android/settings_ex/tts/TtsEnginePreference;

    invoke-virtual {v1}, Lcom/android/settings_ex/tts/TtsEnginePreference;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/tts/TtsEnginePreference$2;->this$0:Lcom/android/settings_ex/tts/TtsEnginePreference;

    #getter for: Lcom/android/settings_ex/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;
    invoke-static {v2}, Lcom/android/settings_ex/tts/TtsEnginePreference;->access$100(Lcom/android/settings_ex/tts/TtsEnginePreference;)Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;->getCurrentKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    iget-object v1, p0, Lcom/android/settings_ex/tts/TtsEnginePreference$2;->this$0:Lcom/android/settings_ex/tts/TtsEnginePreference;

    const/4 v2, 0x1

    #calls: Lcom/android/settings_ex/tts/TtsEnginePreference;->updateSettingsIconViews(Z)V
    invoke-static {v1, v2}, Lcom/android/settings_ex/tts/TtsEnginePreference;->access$200(Lcom/android/settings_ex/tts/TtsEnginePreference;Z)V

    .line 145
    const-string v1, "TtsEnginePreference"

    const-string v2, "textLayout no change return"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_1
    return-void

    .line 141
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "[TtsEnginePreference]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/tts/TtsEnginePreference$2;->this$0:Lcom/android/settings_ex/tts/TtsEnginePreference;

    iget-object v2, p0, Lcom/android/settings_ex/tts/TtsEnginePreference$2;->val$rb:Landroid/widget/RadioButton;

    iget-object v3, p0, Lcom/android/settings_ex/tts/TtsEnginePreference$2;->val$rb:Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v3

    #calls: Lcom/android/settings_ex/tts/TtsEnginePreference;->onRadioButtonClicked(Landroid/widget/CompoundButton;Z)V
    invoke-static {v1, v2, v3}, Lcom/android/settings_ex/tts/TtsEnginePreference;->access$000(Lcom/android/settings_ex/tts/TtsEnginePreference;Landroid/widget/CompoundButton;Z)V

    goto :goto_1
.end method
