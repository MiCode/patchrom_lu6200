.class Lcom/android/settings_ex/SoundSettings$5;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/android/settings_ex/SoundSettings;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 740
    iput-object p1, p0, Lcom/android/settings_ex/SoundSettings$5;->this$0:Lcom/android/settings_ex/SoundSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 743
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 745
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings$5;->this$0:Lcom/android/settings_ex/SoundSettings;

    #getter for: Lcom/android/settings_ex/SoundSettings;->mRingtonePreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings_ex/SoundSettings;->access$100(Lcom/android/settings_ex/SoundSettings;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings$5;->this$0:Lcom/android/settings_ex/SoundSettings;

    iget-object v1, p0, Lcom/android/settings_ex/SoundSettings$5;->this$0:Lcom/android/settings_ex/SoundSettings;

    #getter for: Lcom/android/settings_ex/SoundSettings;->mRingtonePreference:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/settings_ex/SoundSettings;->access$100(Lcom/android/settings_ex/SoundSettings;)Landroid/preference/Preference;

    move-result-object v1

    #calls: Lcom/android/settings_ex/SoundSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V
    invoke-static {v0, v2, v1, v2}, Lcom/android/settings_ex/SoundSettings;->access$200(Lcom/android/settings_ex/SoundSettings;ILandroid/preference/Preference;I)V

    .line 749
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings$5;->this$0:Lcom/android/settings_ex/SoundSettings;

    #getter for: Lcom/android/settings_ex/SoundSettings;->mNotificationPreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings_ex/SoundSettings;->access$300(Lcom/android/settings_ex/SoundSettings;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 750
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings$5;->this$0:Lcom/android/settings_ex/SoundSettings;

    iget-object v1, p0, Lcom/android/settings_ex/SoundSettings$5;->this$0:Lcom/android/settings_ex/SoundSettings;

    #getter for: Lcom/android/settings_ex/SoundSettings;->mNotificationPreference:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/settings_ex/SoundSettings;->access$300(Lcom/android/settings_ex/SoundSettings;)Landroid/preference/Preference;

    move-result-object v1

    #calls: Lcom/android/settings_ex/SoundSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V
    invoke-static {v0, v3, v1, v3}, Lcom/android/settings_ex/SoundSettings;->access$200(Lcom/android/settings_ex/SoundSettings;ILandroid/preference/Preference;I)V

    .line 754
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings$5;->this$0:Lcom/android/settings_ex/SoundSettings;

    #getter for: Lcom/android/settings_ex/SoundSettings;->mSubRingtonePreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings_ex/SoundSettings;->access$400(Lcom/android/settings_ex/SoundSettings;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 755
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings$5;->this$0:Lcom/android/settings_ex/SoundSettings;

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/android/settings_ex/SoundSettings$5;->this$0:Lcom/android/settings_ex/SoundSettings;

    #getter for: Lcom/android/settings_ex/SoundSettings;->mSubRingtonePreference:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/android/settings_ex/SoundSettings;->access$400(Lcom/android/settings_ex/SoundSettings;)Landroid/preference/Preference;

    move-result-object v2

    const/4 v3, 0x3

    #calls: Lcom/android/settings_ex/SoundSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/settings_ex/SoundSettings;->access$200(Lcom/android/settings_ex/SoundSettings;ILandroid/preference/Preference;I)V

    .line 759
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings$5;->this$0:Lcom/android/settings_ex/SoundSettings;

    #getter for: Lcom/android/settings_ex/SoundSettings;->mSubNotificationPreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings_ex/SoundSettings;->access$500(Lcom/android/settings_ex/SoundSettings;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 760
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings$5;->this$0:Lcom/android/settings_ex/SoundSettings;

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/android/settings_ex/SoundSettings$5;->this$0:Lcom/android/settings_ex/SoundSettings;

    #getter for: Lcom/android/settings_ex/SoundSettings;->mSubNotificationPreference:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/android/settings_ex/SoundSettings;->access$500(Lcom/android/settings_ex/SoundSettings;)Landroid/preference/Preference;

    move-result-object v2

    const/4 v3, 0x4

    #calls: Lcom/android/settings_ex/SoundSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/settings_ex/SoundSettings;->access$200(Lcom/android/settings_ex/SoundSettings;ILandroid/preference/Preference;I)V

    .line 764
    :cond_3
    return-void
.end method
