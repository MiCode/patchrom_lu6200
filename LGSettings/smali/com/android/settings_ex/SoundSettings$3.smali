.class Lcom/android/settings_ex/SoundSettings$3;
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
    .line 605
    iput-object p1, p0, Lcom/android/settings_ex/SoundSettings$3;->this$0:Lcom/android/settings_ex/SoundSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 607
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings$3;->this$0:Lcom/android/settings_ex/SoundSettings;

    #getter for: Lcom/android/settings_ex/SoundSettings;->mRingtonePreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings_ex/SoundSettings;->access$100(Lcom/android/settings_ex/SoundSettings;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings$3;->this$0:Lcom/android/settings_ex/SoundSettings;

    iget-object v1, p0, Lcom/android/settings_ex/SoundSettings$3;->this$0:Lcom/android/settings_ex/SoundSettings;

    #getter for: Lcom/android/settings_ex/SoundSettings;->mRingtonePreference:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/settings_ex/SoundSettings;->access$100(Lcom/android/settings_ex/SoundSettings;)Landroid/preference/Preference;

    move-result-object v1

    #calls: Lcom/android/settings_ex/SoundSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V
    invoke-static {v0, v2, v1, v2}, Lcom/android/settings_ex/SoundSettings;->access$200(Lcom/android/settings_ex/SoundSettings;ILandroid/preference/Preference;I)V

    .line 611
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings$3;->this$0:Lcom/android/settings_ex/SoundSettings;

    #getter for: Lcom/android/settings_ex/SoundSettings;->mNotificationPreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings_ex/SoundSettings;->access$300(Lcom/android/settings_ex/SoundSettings;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 612
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings$3;->this$0:Lcom/android/settings_ex/SoundSettings;

    iget-object v1, p0, Lcom/android/settings_ex/SoundSettings$3;->this$0:Lcom/android/settings_ex/SoundSettings;

    #getter for: Lcom/android/settings_ex/SoundSettings;->mNotificationPreference:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/settings_ex/SoundSettings;->access$300(Lcom/android/settings_ex/SoundSettings;)Landroid/preference/Preference;

    move-result-object v1

    #calls: Lcom/android/settings_ex/SoundSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V
    invoke-static {v0, v3, v1, v3}, Lcom/android/settings_ex/SoundSettings;->access$200(Lcom/android/settings_ex/SoundSettings;ILandroid/preference/Preference;I)V

    .line 619
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings$3;->this$0:Lcom/android/settings_ex/SoundSettings;

    #getter for: Lcom/android/settings_ex/SoundSettings;->mSubRingtonePreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings_ex/SoundSettings;->access$400(Lcom/android/settings_ex/SoundSettings;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 620
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings$3;->this$0:Lcom/android/settings_ex/SoundSettings;

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/android/settings_ex/SoundSettings$3;->this$0:Lcom/android/settings_ex/SoundSettings;

    #getter for: Lcom/android/settings_ex/SoundSettings;->mSubRingtonePreference:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/android/settings_ex/SoundSettings;->access$400(Lcom/android/settings_ex/SoundSettings;)Landroid/preference/Preference;

    move-result-object v2

    const/4 v3, 0x3

    #calls: Lcom/android/settings_ex/SoundSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/settings_ex/SoundSettings;->access$200(Lcom/android/settings_ex/SoundSettings;ILandroid/preference/Preference;I)V

    .line 624
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings$3;->this$0:Lcom/android/settings_ex/SoundSettings;

    #getter for: Lcom/android/settings_ex/SoundSettings;->mSubNotificationPreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings_ex/SoundSettings;->access$500(Lcom/android/settings_ex/SoundSettings;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 625
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings$3;->this$0:Lcom/android/settings_ex/SoundSettings;

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/android/settings_ex/SoundSettings$3;->this$0:Lcom/android/settings_ex/SoundSettings;

    #getter for: Lcom/android/settings_ex/SoundSettings;->mSubNotificationPreference:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/android/settings_ex/SoundSettings;->access$500(Lcom/android/settings_ex/SoundSettings;)Landroid/preference/Preference;

    move-result-object v2

    const/4 v3, 0x4

    #calls: Lcom/android/settings_ex/SoundSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/settings_ex/SoundSettings;->access$200(Lcom/android/settings_ex/SoundSettings;ILandroid/preference/Preference;I)V

    .line 634
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings$3;->this$0:Lcom/android/settings_ex/SoundSettings;

    #getter for: Lcom/android/settings_ex/SoundSettings;->mVCRingtonePreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings_ex/SoundSettings;->access$800(Lcom/android/settings_ex/SoundSettings;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 635
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings$3;->this$0:Lcom/android/settings_ex/SoundSettings;

    const/16 v1, 0x20

    iget-object v2, p0, Lcom/android/settings_ex/SoundSettings$3;->this$0:Lcom/android/settings_ex/SoundSettings;

    #getter for: Lcom/android/settings_ex/SoundSettings;->mVCRingtonePreference:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/android/settings_ex/SoundSettings;->access$800(Lcom/android/settings_ex/SoundSettings;)Landroid/preference/Preference;

    move-result-object v2

    const/4 v3, 0x6

    #calls: Lcom/android/settings_ex/SoundSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/settings_ex/SoundSettings;->access$200(Lcom/android/settings_ex/SoundSettings;ILandroid/preference/Preference;I)V

    .line 640
    :cond_4
    return-void
.end method
