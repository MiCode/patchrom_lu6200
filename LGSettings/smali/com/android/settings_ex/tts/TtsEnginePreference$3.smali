.class Lcom/android/settings_ex/tts/TtsEnginePreference$3;
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


# direct methods
.method constructor <init>(Lcom/android/settings_ex/tts/TtsEnginePreference;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/settings_ex/tts/TtsEnginePreference$3;->this$0:Lcom/android/settings_ex/tts/TtsEnginePreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 159
    const-string v0, "TtsEnginePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTtsEnginePref.onClick(): key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/tts/TtsEnginePreference$3;->this$0:Lcom/android/settings_ex/tts/TtsEnginePreference;

    invoke-virtual {v2}, Lcom/android/settings_ex/tts/TtsEnginePreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference$3;->this$0:Lcom/android/settings_ex/tts/TtsEnginePreference;

    #getter for: Lcom/android/settings_ex/tts/TtsEnginePreference;->mRadioButton:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/android/settings_ex/tts/TtsEnginePreference;->access$300(Lcom/android/settings_ex/tts/TtsEnginePreference;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference$3;->this$0:Lcom/android/settings_ex/tts/TtsEnginePreference;

    #getter for: Lcom/android/settings_ex/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;
    invoke-static {v0}, Lcom/android/settings_ex/tts/TtsEnginePreference;->access$100(Lcom/android/settings_ex/tts/TtsEnginePreference;)Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;->getCurrentChecked()Landroid/widget/Checkable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference$3;->this$0:Lcom/android/settings_ex/tts/TtsEnginePreference;

    #getter for: Lcom/android/settings_ex/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;
    invoke-static {v0}, Lcom/android/settings_ex/tts/TtsEnginePreference;->access$100(Lcom/android/settings_ex/tts/TtsEnginePreference;)Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;->getCurrentChecked()Landroid/widget/Checkable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference$3;->this$0:Lcom/android/settings_ex/tts/TtsEnginePreference;

    #getter for: Lcom/android/settings_ex/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;
    invoke-static {v0}, Lcom/android/settings_ex/tts/TtsEnginePreference;->access$100(Lcom/android/settings_ex/tts/TtsEnginePreference;)Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/tts/TtsEnginePreference$3;->this$0:Lcom/android/settings_ex/tts/TtsEnginePreference;

    #getter for: Lcom/android/settings_ex/tts/TtsEnginePreference;->mRadioButton:Landroid/widget/RadioButton;
    invoke-static {v1}, Lcom/android/settings_ex/tts/TtsEnginePreference;->access$300(Lcom/android/settings_ex/tts/TtsEnginePreference;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;->setCurrentChecked(Landroid/widget/Checkable;)V

    .line 168
    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference$3;->this$0:Lcom/android/settings_ex/tts/TtsEnginePreference;

    #getter for: Lcom/android/settings_ex/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;
    invoke-static {v0}, Lcom/android/settings_ex/tts/TtsEnginePreference;->access$100(Lcom/android/settings_ex/tts/TtsEnginePreference;)Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/tts/TtsEnginePreference$3;->this$0:Lcom/android/settings_ex/tts/TtsEnginePreference;

    invoke-virtual {v1}, Lcom/android/settings_ex/tts/TtsEnginePreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;->setCurrentKey(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference$3;->this$0:Lcom/android/settings_ex/tts/TtsEnginePreference;

    iget-object v1, p0, Lcom/android/settings_ex/tts/TtsEnginePreference$3;->this$0:Lcom/android/settings_ex/tts/TtsEnginePreference;

    #getter for: Lcom/android/settings_ex/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;
    invoke-static {v1}, Lcom/android/settings_ex/tts/TtsEnginePreference;->access$100(Lcom/android/settings_ex/tts/TtsEnginePreference;)Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;->getCurrentKey()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/settings_ex/tts/TtsEnginePreference;->callChangeListener(Ljava/lang/Object;)Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/tts/TtsEnginePreference;->access$400(Lcom/android/settings_ex/tts/TtsEnginePreference;Ljava/lang/Object;)Z

    goto :goto_0
.end method
