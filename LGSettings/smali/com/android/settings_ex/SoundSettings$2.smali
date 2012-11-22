.class Lcom/android/settings_ex/SoundSettings$2;
.super Landroid/os/Handler;
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
    iput-object p1, p0, Lcom/android/settings_ex/SoundSettings$2;->this$0:Lcom/android/settings_ex/SoundSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 306
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 308
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings$2;->this$0:Lcom/android/settings_ex/SoundSettings;

    #getter for: Lcom/android/settings_ex/SoundSettings;->mRingtonePreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings_ex/SoundSettings;->access$100(Lcom/android/settings_ex/SoundSettings;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings$2;->this$0:Lcom/android/settings_ex/SoundSettings;

    #getter for: Lcom/android/settings_ex/SoundSettings;->mRingtonePreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings_ex/SoundSettings;->access$100(Lcom/android/settings_ex/SoundSettings;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings$2;->this$0:Lcom/android/settings_ex/SoundSettings;

    #getter for: Lcom/android/settings_ex/SoundSettings;->mLGRingtonePreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings_ex/SoundSettings;->access$600(Lcom/android/settings_ex/SoundSettings;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 314
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings$2;->this$0:Lcom/android/settings_ex/SoundSettings;

    #getter for: Lcom/android/settings_ex/SoundSettings;->mNotificationPreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings_ex/SoundSettings;->access$300(Lcom/android/settings_ex/SoundSettings;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings$2;->this$0:Lcom/android/settings_ex/SoundSettings;

    #getter for: Lcom/android/settings_ex/SoundSettings;->mLGNotificationPreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings_ex/SoundSettings;->access$700(Lcom/android/settings_ex/SoundSettings;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings$2;->this$0:Lcom/android/settings_ex/SoundSettings;

    #getter for: Lcom/android/settings_ex/SoundSettings;->mLGNotificationPreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings_ex/SoundSettings;->access$700(Lcom/android/settings_ex/SoundSettings;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 324
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings$2;->this$0:Lcom/android/settings_ex/SoundSettings;

    #getter for: Lcom/android/settings_ex/SoundSettings;->mSubRingtonePreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings_ex/SoundSettings;->access$400(Lcom/android/settings_ex/SoundSettings;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 327
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings$2;->this$0:Lcom/android/settings_ex/SoundSettings;

    #getter for: Lcom/android/settings_ex/SoundSettings;->mSubNotificationPreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings_ex/SoundSettings;->access$500(Lcom/android/settings_ex/SoundSettings;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 333
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings$2;->this$0:Lcom/android/settings_ex/SoundSettings;

    #getter for: Lcom/android/settings_ex/SoundSettings;->mVCRingtonePreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings_ex/SoundSettings;->access$800(Lcom/android/settings_ex/SoundSettings;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 338
    :pswitch_5
    iget-object v0, p0, Lcom/android/settings_ex/SoundSettings$2;->this$0:Lcom/android/settings_ex/SoundSettings;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    #calls: Lcom/android/settings_ex/SoundSettings;->UpdateSoundEffect(Z)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/SoundSettings;->access$900(Lcom/android/settings_ex/SoundSettings;Z)V

    goto/16 :goto_0

    .line 306
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
