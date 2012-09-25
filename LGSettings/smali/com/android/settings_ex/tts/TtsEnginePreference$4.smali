.class Lcom/android/settings_ex/tts/TtsEnginePreference$4;
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
    .line 179
    iput-object p1, p0, Lcom/android/settings_ex/tts/TtsEnginePreference$4;->this$0:Lcom/android/settings_ex/tts/TtsEnginePreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 182
    const-string v0, "TtsEnginePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSettingsIcon.onClick(): key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/tts/TtsEnginePreference$4;->this$0:Lcom/android/settings_ex/tts/TtsEnginePreference;

    invoke-virtual {v2}, Lcom/android/settings_ex/tts/TtsEnginePreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 184
    const-string v0, "name"

    iget-object v1, p0, Lcom/android/settings_ex/tts/TtsEnginePreference$4;->this$0:Lcom/android/settings_ex/tts/TtsEnginePreference;

    #getter for: Lcom/android/settings_ex/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;
    invoke-static {v1}, Lcom/android/settings_ex/tts/TtsEnginePreference;->access$500(Lcom/android/settings_ex/tts/TtsEnginePreference;)Landroid/speech/tts/TextToSpeech$EngineInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v0, "label"

    iget-object v1, p0, Lcom/android/settings_ex/tts/TtsEnginePreference$4;->this$0:Lcom/android/settings_ex/tts/TtsEnginePreference;

    #getter for: Lcom/android/settings_ex/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;
    invoke-static {v1}, Lcom/android/settings_ex/tts/TtsEnginePreference;->access$500(Lcom/android/settings_ex/tts/TtsEnginePreference;)Landroid/speech/tts/TextToSpeech$EngineInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference$4;->this$0:Lcom/android/settings_ex/tts/TtsEnginePreference;

    #getter for: Lcom/android/settings_ex/tts/TtsEnginePreference;->mVoiceCheckData:Landroid/content/Intent;
    invoke-static {v0}, Lcom/android/settings_ex/tts/TtsEnginePreference;->access$600(Lcom/android/settings_ex/tts/TtsEnginePreference;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    const-string v0, "voices"

    iget-object v1, p0, Lcom/android/settings_ex/tts/TtsEnginePreference$4;->this$0:Lcom/android/settings_ex/tts/TtsEnginePreference;

    #getter for: Lcom/android/settings_ex/tts/TtsEnginePreference;->mVoiceCheckData:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/settings_ex/tts/TtsEnginePreference;->access$600(Lcom/android/settings_ex/tts/TtsEnginePreference;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference$4;->this$0:Lcom/android/settings_ex/tts/TtsEnginePreference;

    #getter for: Lcom/android/settings_ex/tts/TtsEnginePreference;->mPreferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-static {v0}, Lcom/android/settings_ex/tts/TtsEnginePreference;->access$700(Lcom/android/settings_ex/tts/TtsEnginePreference;)Landroid/preference/PreferenceActivity;

    move-result-object v0

    const-class v1, Lcom/android/settings_ex/tts/TtsEngineSettingsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings_ex/tts/TtsEnginePreference$4;->this$0:Lcom/android/settings_ex/tts/TtsEnginePreference;

    #getter for: Lcom/android/settings_ex/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;
    invoke-static {v4}, Lcom/android/settings_ex/tts/TtsEnginePreference;->access$500(Lcom/android/settings_ex/tts/TtsEnginePreference;)Landroid/speech/tts/TextToSpeech$EngineInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    const/4 v5, 0x0

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 197
    return-void
.end method
