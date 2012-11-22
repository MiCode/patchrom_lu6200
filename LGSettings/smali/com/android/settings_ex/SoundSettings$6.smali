.class Lcom/android/settings_ex/SoundSettings$6;
.super Landroid/os/storage/StorageEventListener;
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
    iput-object p1, p0, Lcom/android/settings_ex/SoundSettings$6;->this$0:Lcom/android/settings_ex/SoundSettings;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "path"
    .parameter "oldState"
    .parameter "newState"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1296
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1300
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings$6;->this$0:Lcom/android/settings_ex/SoundSettings;

    #getter for: Lcom/android/settings_ex/SoundSettings;->mRingtonePreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings_ex/SoundSettings;->access$100(Lcom/android/settings_ex/SoundSettings;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings$6;->this$0:Lcom/android/settings_ex/SoundSettings;

    iget-object v1, p0, Lcom/android/settings_ex/SoundSettings$6;->this$0:Lcom/android/settings_ex/SoundSettings;

    #getter for: Lcom/android/settings_ex/SoundSettings;->mRingtonePreference:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/settings_ex/SoundSettings;->access$100(Lcom/android/settings_ex/SoundSettings;)Landroid/preference/Preference;

    move-result-object v1

    #calls: Lcom/android/settings_ex/SoundSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V
    invoke-static {v0, v2, v1, v2}, Lcom/android/settings_ex/SoundSettings;->access$200(Lcom/android/settings_ex/SoundSettings;ILandroid/preference/Preference;I)V

    .line 1304
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings$6;->this$0:Lcom/android/settings_ex/SoundSettings;

    #getter for: Lcom/android/settings_ex/SoundSettings;->mNotificationPreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings_ex/SoundSettings;->access$300(Lcom/android/settings_ex/SoundSettings;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings$6;->this$0:Lcom/android/settings_ex/SoundSettings;

    iget-object v1, p0, Lcom/android/settings_ex/SoundSettings$6;->this$0:Lcom/android/settings_ex/SoundSettings;

    #getter for: Lcom/android/settings_ex/SoundSettings;->mNotificationPreference:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/settings_ex/SoundSettings;->access$300(Lcom/android/settings_ex/SoundSettings;)Landroid/preference/Preference;

    move-result-object v1

    #calls: Lcom/android/settings_ex/SoundSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V
    invoke-static {v0, v3, v1, v3}, Lcom/android/settings_ex/SoundSettings;->access$200(Lcom/android/settings_ex/SoundSettings;ILandroid/preference/Preference;I)V

    .line 1309
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings$6;->this$0:Lcom/android/settings_ex/SoundSettings;

    #getter for: Lcom/android/settings_ex/SoundSettings;->mSubRingtonePreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings_ex/SoundSettings;->access$400(Lcom/android/settings_ex/SoundSettings;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings$6;->this$0:Lcom/android/settings_ex/SoundSettings;

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/android/settings_ex/SoundSettings$6;->this$0:Lcom/android/settings_ex/SoundSettings;

    #getter for: Lcom/android/settings_ex/SoundSettings;->mSubRingtonePreference:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/android/settings_ex/SoundSettings;->access$400(Lcom/android/settings_ex/SoundSettings;)Landroid/preference/Preference;

    move-result-object v2

    const/4 v3, 0x3

    #calls: Lcom/android/settings_ex/SoundSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/settings_ex/SoundSettings;->access$200(Lcom/android/settings_ex/SoundSettings;ILandroid/preference/Preference;I)V

    .line 1314
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings$6;->this$0:Lcom/android/settings_ex/SoundSettings;

    #getter for: Lcom/android/settings_ex/SoundSettings;->mSubNotificationPreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings_ex/SoundSettings;->access$500(Lcom/android/settings_ex/SoundSettings;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings$6;->this$0:Lcom/android/settings_ex/SoundSettings;

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/android/settings_ex/SoundSettings$6;->this$0:Lcom/android/settings_ex/SoundSettings;

    #getter for: Lcom/android/settings_ex/SoundSettings;->mSubNotificationPreference:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/android/settings_ex/SoundSettings;->access$500(Lcom/android/settings_ex/SoundSettings;)Landroid/preference/Preference;

    move-result-object v2

    const/4 v3, 0x4

    #calls: Lcom/android/settings_ex/SoundSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/settings_ex/SoundSettings;->access$200(Lcom/android/settings_ex/SoundSettings;ILandroid/preference/Preference;I)V

    .line 1319
    :cond_3
    return-void

    .line 1297
    :catch_0
    move-exception v0

    goto :goto_0
.end method
