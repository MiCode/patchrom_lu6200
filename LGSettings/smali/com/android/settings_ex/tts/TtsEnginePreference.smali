.class public Lcom/android/settings_ex/tts/TtsEnginePreference;
.super Landroid/preference/Preference;
.source "TtsEnginePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;
    }
.end annotation


# instance fields
.field private final mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

.field private final mPreferenceActivity:Landroid/preference/PreferenceActivity;

.field private volatile mPreventRadioButtonCallbacks:Z

.field private mRadioButton:Landroid/widget/RadioButton;

.field private final mRadioChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mSettingsIcon:Landroid/view/View;

.field private final mSharedState:Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;

.field private mVoiceCheckData:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$EngineInfo;Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;Landroid/preference/PreferenceActivity;)V
    .locals 1
    .parameter "context"
    .parameter "info"
    .parameter "state"
    .parameter "prefActivity"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 87
    new-instance v0, Lcom/android/settings_ex/tts/TtsEnginePreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/tts/TtsEnginePreference$1;-><init>(Lcom/android/settings_ex/tts/TtsEnginePreference;)V

    iput-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mRadioChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 98
    const v0, 0x7f04007f

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/tts/TtsEnginePreference;->setLayoutResource(I)V

    .line 100
    iput-object p3, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;

    .line 101
    iput-object p4, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mPreferenceActivity:Landroid/preference/PreferenceActivity;

    .line 102
    iput-object p2, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mPreventRadioButtonCallbacks:Z

    .line 105
    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object v0, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/tts/TtsEnginePreference;->setKey(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object v0, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/tts/TtsEnginePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/tts/TtsEnginePreference;Landroid/widget/CompoundButton;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/tts/TtsEnginePreference;->onRadioButtonClicked(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/tts/TtsEnginePreference;)Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/tts/TtsEnginePreference;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/settings_ex/tts/TtsEnginePreference;->updateSettingsIconViews(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/tts/TtsEnginePreference;)Landroid/widget/RadioButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mRadioButton:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/tts/TtsEnginePreference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/tts/TtsEnginePreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/tts/TtsEnginePreference;)Landroid/speech/tts/TextToSpeech$EngineInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/tts/TtsEnginePreference;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mVoiceCheckData:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/tts/TtsEnginePreference;)Landroid/preference/PreferenceActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mPreferenceActivity:Landroid/preference/PreferenceActivity;

    return-object v0
.end method

.method private onRadioButtonClicked(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 225
    const-string v0, "TtsEnginePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRadioButtonClicked : isChecked : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " :key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/tts/TtsEnginePreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-boolean v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mPreventRadioButtonCallbacks:Z

    if-eqz v0, :cond_0

    .line 242
    :goto_0
    return-void

    .line 230
    :cond_0
    if-eqz p2, :cond_2

    .line 231
    const-string v0, "TtsEnginePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRadioButtonClicked : 0 : getCurrentChecked() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v2}, Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;->getCurrentChecked()Landroid/widget/Checkable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v0}, Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;->getCurrentChecked()Landroid/widget/Checkable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v0}, Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;->getCurrentChecked()Landroid/widget/Checkable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v0, p1}, Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;->setCurrentChecked(Landroid/widget/Checkable;)V

    .line 236
    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-virtual {p0}, Lcom/android/settings_ex/tts/TtsEnginePreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;->setCurrentKey(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v0}, Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;->getCurrentKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/tts/TtsEnginePreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 241
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/settings_ex/tts/TtsEnginePreference;->updateSettingsIconViews(Z)V

    goto :goto_0
.end method

.method private updateSettingsIconViews(Z)V
    .locals 2
    .parameter "checked"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 206
    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 207
    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 209
    if-nez p1, :cond_1

    .line 210
    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    const v1, 0x3ecccccd

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 111
    iget-object v5, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;

    if-nez v5, :cond_0

    .line 112
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Call to getView() before a call tosetSharedState()"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 116
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 117
    .local v4, view:Landroid/view/View;
    const v5, 0x7f0b013e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 118
    .local v1, rb:Landroid/widget/RadioButton;
    iget-object v5, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mRadioChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v5}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 122
    invoke-virtual {p0}, Lcom/android/settings_ex/tts/TtsEnginePreference;->getKey()Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v8}, Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;->getCurrentKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 123
    .local v0, isChecked:Z
    const-string v5, "TtsEnginePreference"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getView : isChecked: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " :key:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/settings_ex/tts/TtsEnginePreference;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    if-eqz v0, :cond_1

    .line 125
    iget-object v5, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v5, v1}, Lcom/android/settings_ex/tts/TtsEnginePreference$RadioButtonGroupState;->setCurrentChecked(Landroid/widget/Checkable;)V

    .line 128
    :cond_1
    iput-boolean v6, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mPreventRadioButtonCallbacks:Z

    .line 129
    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 130
    iput-boolean v7, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mPreventRadioButtonCallbacks:Z

    .line 132
    iput-object v1, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mRadioButton:Landroid/widget/RadioButton;

    .line 136
    const v5, 0x7f0b013f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 137
    .local v2, textLayout:Landroid/view/View;
    new-instance v5, Lcom/android/settings_ex/tts/TtsEnginePreference$2;

    invoke-direct {v5, p0, v1}, Lcom/android/settings_ex/tts/TtsEnginePreference$2;-><init>(Lcom/android/settings_ex/tts/TtsEnginePreference;Landroid/widget/RadioButton;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    const v5, 0x7f0b013d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 156
    .local v3, ttsEnginePref:Landroid/view/View;
    new-instance v5, Lcom/android/settings_ex/tts/TtsEnginePreference$3;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/tts/TtsEnginePreference$3;-><init>(Lcom/android/settings_ex/tts/TtsEnginePreference;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    const v5, 0x7f0b0140

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    .line 177
    iget-object v8, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mVoiceCheckData:Landroid/content/Intent;

    if-eqz v5, :cond_2

    move v5, v6

    :goto_0
    invoke-virtual {v8, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 178
    if-eqz v0, :cond_3

    iget-object v5, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mVoiceCheckData:Landroid/content/Intent;

    if-eqz v5, :cond_3

    :goto_1
    invoke-direct {p0, v6}, Lcom/android/settings_ex/tts/TtsEnginePreference;->updateSettingsIconViews(Z)V

    .line 179
    iget-object v5, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    new-instance v6, Lcom/android/settings_ex/tts/TtsEnginePreference$4;

    invoke-direct {v6, p0}, Lcom/android/settings_ex/tts/TtsEnginePreference$4;-><init>(Lcom/android/settings_ex/tts/TtsEnginePreference;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    return-object v4

    :cond_2
    move v5, v7

    .line 177
    goto :goto_0

    :cond_3
    move v6, v7

    .line 178
    goto :goto_1
.end method

.method public setVoiceDataDetails(Landroid/content/Intent;)V
    .locals 3
    .parameter "data"

    .prologue
    .line 218
    const-string v0, "TtsEnginePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVoiceDataDetails : Radiobutton.isChecked : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " :key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/tts/TtsEnginePreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iput-object p1, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mVoiceCheckData:Landroid/content/Intent;

    .line 221
    iget-object v0, p0, Lcom/android/settings_ex/tts/TtsEnginePreference;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/tts/TtsEnginePreference;->updateSettingsIconViews(Z)V

    .line 222
    return-void
.end method
