.class Lcom/android/settings_ex/SoundSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "SoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/SoundSettings;
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
    iput-object p1, p0, Lcom/android/settings_ex/SoundSettings$1;->this$0:Lcom/android/settings_ex/SoundSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 270
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings$1;->this$0:Lcom/android/settings_ex/SoundSettings;

    const/4 v1, 0x0

    #calls: Lcom/android/settings_ex/SoundSettings;->updateState(Z)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/SoundSettings;->access$000(Lcom/android/settings_ex/SoundSettings;Z)V

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SoundSettings"

    const-string v1, "#####ACTION_MEDIA_SCANNER_FINISHED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings$1;->this$0:Lcom/android/settings_ex/SoundSettings;

    #getter for: Lcom/android/settings_ex/SoundSettings;->mRingtonePreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings_ex/SoundSettings;->access$100(Lcom/android/settings_ex/SoundSettings;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings$1;->this$0:Lcom/android/settings_ex/SoundSettings;

    iget-object v1, p0, Lcom/android/settings_ex/SoundSettings$1;->this$0:Lcom/android/settings_ex/SoundSettings;

    #getter for: Lcom/android/settings_ex/SoundSettings;->mRingtonePreference:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/settings_ex/SoundSettings;->access$100(Lcom/android/settings_ex/SoundSettings;)Landroid/preference/Preference;

    move-result-object v1

    #calls: Lcom/android/settings_ex/SoundSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V
    invoke-static {v0, v2, v1, v2}, Lcom/android/settings_ex/SoundSettings;->access$200(Lcom/android/settings_ex/SoundSettings;ILandroid/preference/Preference;I)V

    .line 283
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings$1;->this$0:Lcom/android/settings_ex/SoundSettings;

    #getter for: Lcom/android/settings_ex/SoundSettings;->mNotificationPreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings_ex/SoundSettings;->access$300(Lcom/android/settings_ex/SoundSettings;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings$1;->this$0:Lcom/android/settings_ex/SoundSettings;

    iget-object v1, p0, Lcom/android/settings_ex/SoundSettings$1;->this$0:Lcom/android/settings_ex/SoundSettings;

    #getter for: Lcom/android/settings_ex/SoundSettings;->mNotificationPreference:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/settings_ex/SoundSettings;->access$300(Lcom/android/settings_ex/SoundSettings;)Landroid/preference/Preference;

    move-result-object v1

    #calls: Lcom/android/settings_ex/SoundSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V
    invoke-static {v0, v3, v1, v3}, Lcom/android/settings_ex/SoundSettings;->access$200(Lcom/android/settings_ex/SoundSettings;ILandroid/preference/Preference;I)V

    .line 288
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings$1;->this$0:Lcom/android/settings_ex/SoundSettings;

    #getter for: Lcom/android/settings_ex/SoundSettings;->mSubRingtonePreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings_ex/SoundSettings;->access$400(Lcom/android/settings_ex/SoundSettings;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings$1;->this$0:Lcom/android/settings_ex/SoundSettings;

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/android/settings_ex/SoundSettings$1;->this$0:Lcom/android/settings_ex/SoundSettings;

    #getter for: Lcom/android/settings_ex/SoundSettings;->mSubRingtonePreference:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/android/settings_ex/SoundSettings;->access$400(Lcom/android/settings_ex/SoundSettings;)Landroid/preference/Preference;

    move-result-object v2

    const/4 v3, 0x3

    #calls: Lcom/android/settings_ex/SoundSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/settings_ex/SoundSettings;->access$200(Lcom/android/settings_ex/SoundSettings;ILandroid/preference/Preference;I)V

    .line 293
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings$1;->this$0:Lcom/android/settings_ex/SoundSettings;

    #getter for: Lcom/android/settings_ex/SoundSettings;->mSubNotificationPreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings_ex/SoundSettings;->access$500(Lcom/android/settings_ex/SoundSettings;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings$1;->this$0:Lcom/android/settings_ex/SoundSettings;

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/android/settings_ex/SoundSettings$1;->this$0:Lcom/android/settings_ex/SoundSettings;

    #getter for: Lcom/android/settings_ex/SoundSettings;->mSubNotificationPreference:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/android/settings_ex/SoundSettings;->access$500(Lcom/android/settings_ex/SoundSettings;)Landroid/preference/Preference;

    move-result-object v2

    const/4 v3, 0x4

    #calls: Lcom/android/settings_ex/SoundSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/settings_ex/SoundSettings;->access$200(Lcom/android/settings_ex/SoundSettings;ILandroid/preference/Preference;I)V

    goto :goto_0
.end method
