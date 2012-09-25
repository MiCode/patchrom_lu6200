.class Lcom/android/settings_ex/SoundSettings$4;
.super Ljava/lang/Object;
.source "SoundSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/SoundSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/SoundSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/SoundSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 644
    iput-object p1, p0, Lcom/android/settings_ex/SoundSettings$4;->this$0:Lcom/android/settings_ex/SoundSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 646
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings$4;->this$0:Lcom/android/settings_ex/SoundSettings;

    #getter for: Lcom/android/settings_ex/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings_ex/SoundSettings;->access$1000(Lcom/android/settings_ex/SoundSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-ne v1, v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings$4;->this$0:Lcom/android/settings_ex/SoundSettings;

    #calls: Lcom/android/settings_ex/SoundSettings;->UpdateSoundEffect(Z)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/SoundSettings;->access$900(Lcom/android/settings_ex/SoundSettings;Z)V

    .line 652
    :goto_0
    return-void

    .line 650
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings$4;->this$0:Lcom/android/settings_ex/SoundSettings;

    const/4 v1, 0x0

    #calls: Lcom/android/settings_ex/SoundSettings;->UpdateSoundEffect(Z)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/SoundSettings;->access$900(Lcom/android/settings_ex/SoundSettings;Z)V

    goto :goto_0
.end method
