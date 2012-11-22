.class Lcom/android/settings_ex/IccLockSettings$PinDialog;
.super Lcom/android/settings_ex/EditPinPreferenceBehavior;
.source "IccLockSettings.java"

# interfaces
.implements Lcom/android/settings_ex/EditPinPreferenceBehavior$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/IccLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PinDialog"
.end annotation


# instance fields
.field private mResumed:Z

.field final synthetic this$0:Lcom/android/settings_ex/IccLockSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/IccLockSettings;Lcom/android/settings_ex/EditPinPreference;)V
    .locals 1
    .parameter
    .parameter "aPref"

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/IccLockSettings$PinDialog;->this$0:Lcom/android/settings_ex/IccLockSettings;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/settings_ex/EditPinPreferenceBehavior;-><init>(Lcom/android/settings_ex/EditPinPreference;Lcom/android/settings_ex/EditPinPreferenceBehavior$Callback;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/IccLockSettings$PinDialog;->mResumed:Z

    invoke-virtual {p0, p0}, Lcom/android/settings_ex/IccLockSettings$PinDialog;->setCallback(Lcom/android/settings_ex/EditPinPreferenceBehavior$Callback;)V

    return-void
.end method


# virtual methods
.method public handleUserReasonablePinEntered(ILjava/lang/String;)I
    .locals 1
    .parameter "aCurStep"
    .parameter "aText"

    .prologue
    .line 1130
    const/4 v0, 0x0

    return v0
.end method

.method public isResumed()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/settings_ex/IccLockSettings$PinDialog;->mResumed:Z

    return v0
.end method

.method protected onCheckReasonable(ILjava/lang/String;)I
    .locals 2
    .parameter "aStep"
    .parameter "aText"

    .prologue
    .line 1051
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1052
    .local v0, len:I
    if-nez v0, :cond_0

    .line 1053
    const/4 v1, 0x2

    .line 1056
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/EditPinPreferenceBehavior;->onCheckReasonable(ILjava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)V
    .locals 2
    .parameter "aPref"

    .prologue
    check-cast p1, Lcom/android/settings_ex/EditPinPreference;

    .end local p1
    invoke-virtual {p1}, Lcom/android/settings_ex/EditPinPreference;->isVirtualEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings$PinDialog;->this$0:Lcom/android/settings_ex/IccLockSettings;

    #getter for: Lcom/android/settings_ex/IccLockSettings;->mSimLock:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings_ex/IccLockSettings;->access$1600(Lcom/android/settings_ex/IccLockSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings$PinDialog;->this$0:Lcom/android/settings_ex/IccLockSettings;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/IccLockSettings;->showDialog(I)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/settings_ex/EditPinPreferenceBehavior;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/IccLockSettings$PinDialog;->mResumed:Z

    return-void
.end method

.method protected onSetDialogValues(ILcom/android/settings_ex/EditPinPreference;)V
    .locals 5
    .parameter "aStep"
    .parameter "aPref"

    .prologue
    const v4, 0x7f080028

    const v3, 0x7f080027

    const v2, 0x7f080026

    const v1, 0x7f080025

    .line 1060
    const-string v0, ""

    .line 1061
    .local v0, message:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1121
    :pswitch_0
    invoke-static {}, Lcom/android/settings_ex/IccLockSettings;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Step = UNK"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_1
    const v1, 0x7f080013

    invoke-virtual {p2, v1}, Lcom/android/settings_ex/EditPinPreference;->setDialogTitle(I)V

    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings$PinDialog;->this$0:Lcom/android/settings_ex/IccLockSettings;

    const v2, 0x7f080014

    #calls: Lcom/android/settings_ex/IccLockSettings;->getResString(I)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/settings_ex/IccLockSettings;->access$1500(Lcom/android/settings_ex/IccLockSettings;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/settings_ex/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {p2, v0}, Lcom/android/settings_ex/EditPinPreference;->setText(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const v1, 0x7f080015

    invoke-virtual {p2, v1}, Lcom/android/settings_ex/EditPinPreference;->setDialogTitle(I)V

    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings$PinDialog;->this$0:Lcom/android/settings_ex/IccLockSettings;

    const v2, 0x7f080016

    #calls: Lcom/android/settings_ex/IccLockSettings;->getResString(I)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/settings_ex/IccLockSettings;->access$1500(Lcom/android/settings_ex/IccLockSettings;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/settings_ex/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/settings_ex/IccLockSettings$PinDialog;->getOldText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1}, Lcom/android/settings_ex/EditPinPreference;->setDialogTitle(I)V

    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings$PinDialog;->this$0:Lcom/android/settings_ex/IccLockSettings;

    #calls: Lcom/android/settings_ex/IccLockSettings;->getResString(I)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/settings_ex/IccLockSettings;->access$1500(Lcom/android/settings_ex/IccLockSettings;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/settings_ex/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0}, Lcom/android/settings_ex/IccLockSettings$PinDialog;->getNewText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v3}, Lcom/android/settings_ex/EditPinPreference;->setDialogTitle(I)V

    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings$PinDialog;->this$0:Lcom/android/settings_ex/IccLockSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/IccLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/settings_ex/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0}, Lcom/android/settings_ex/IccLockSettings$PinDialog;->getReenterText()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f080029

    invoke-virtual {p2, v1}, Lcom/android/settings_ex/EditPinPreference;->setDialogTitle(I)V

    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings$PinDialog;->this$0:Lcom/android/settings_ex/IccLockSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/IccLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08002a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/settings_ex/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0}, Lcom/android/settings_ex/IccLockSettings$PinDialog;->getNewText()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/settings_ex/IccLockSettings;->access$600()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v3}, Lcom/android/settings_ex/EditPinPreference;->setDialogTitle(I)V

    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings$PinDialog;->this$0:Lcom/android/settings_ex/IccLockSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/IccLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/settings_ex/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    const v1, 0x7f08002b

    invoke-virtual {p2, v1}, Lcom/android/settings_ex/EditPinPreference;->setDialogTitle(I)V

    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings$PinDialog;->this$0:Lcom/android/settings_ex/IccLockSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/IccLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08002c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/settings_ex/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {p0}, Lcom/android/settings_ex/IccLockSettings$PinDialog;->resetText()V

    invoke-virtual {p2, v1}, Lcom/android/settings_ex/EditPinPreference;->setDialogTitle(I)V

    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings$PinDialog;->this$0:Lcom/android/settings_ex/IccLockSettings;

    #calls: Lcom/android/settings_ex/IccLockSettings;->getResString(I)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/settings_ex/IccLockSettings;->access$1500(Lcom/android/settings_ex/IccLockSettings;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/settings_ex/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1061
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onSetEnabled(Lcom/android/settings_ex/EditPinPreferenceBehavior;Z)V
    .locals 0
    .parameter "aBehavior"
    .parameter "aEnabled"

    .prologue
    .line 1202
    return-void
.end method

.method public onShowNotifyAndReturnStage(Lcom/android/settings_ex/EditPinPreferenceBehavior;II)V
    .locals 3
    .parameter "aBehavior"
    .parameter "aReturnStep"
    .parameter "aReason"

    .prologue
    .line 1161
    packed-switch p3, :pswitch_data_0

    .line 1188
    :goto_0
    :pswitch_0
    return-void

    .line 1163
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings$PinDialog;->this$0:Lcom/android/settings_ex/IccLockSettings;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/IccLockSettings;->showDialog(I)V

    goto :goto_0

    .line 1167
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings$PinDialog;->this$0:Lcom/android/settings_ex/IccLockSettings;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/IccLockSettings;->showDialog(I)V

    goto :goto_0

    .line 1171
    :pswitch_3
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1172
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x67

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1173
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settings_ex/IccLockSettings$PinDialog;->getOldText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings$PinDialog;->this$0:Lcom/android/settings_ex/IccLockSettings;

    #getter for: Lcom/android/settings_ex/IccLockSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings_ex/IccLockSettings;->access$2000(Lcom/android/settings_ex/IccLockSettings;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1181
    .end local v0           #msg:Landroid/os/Message;
    :pswitch_4
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings$PinDialog;->this$0:Lcom/android/settings_ex/IccLockSettings;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/IccLockSettings;->showDialog(I)V

    goto :goto_0

    .line 1185
    :pswitch_5
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings$PinDialog;->this$0:Lcom/android/settings_ex/IccLockSettings;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/IccLockSettings;->showDialog(I)V

    goto :goto_0

    .line 1161
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onValidPinEntered(Lcom/android/settings_ex/EditPinPreferenceBehavior;ILjava/lang/String;Ljava/lang/String;)I
    .locals 4
    .parameter "aBehavior"
    .parameter "aStep"
    .parameter "aParam1"
    .parameter "aParam2"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1134
    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    move v0, v1

    .line 1156
    :goto_1
    return v0

    .line 1137
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings$PinDialog;->this$0:Lcom/android/settings_ex/IccLockSettings;

    iget-object v3, p0, Lcom/android/settings_ex/IccLockSettings$PinDialog;->this$0:Lcom/android/settings_ex/IccLockSettings;

    #getter for: Lcom/android/settings_ex/IccLockSettings;->mSimLock:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/settings_ex/IccLockSettings;->access$1600(Lcom/android/settings_ex/IccLockSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    :cond_1
    #calls: Lcom/android/settings_ex/IccLockSettings;->triggerSimLockChanging(ZLjava/lang/String;)V
    invoke-static {v2, v0, p3}, Lcom/android/settings_ex/IccLockSettings;->access$1700(Lcom/android/settings_ex/IccLockSettings;ZLjava/lang/String;)V

    goto :goto_0

    .line 1142
    :pswitch_2
    const-string v2, "ro.build.target_operator"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SKT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "ro.build.target_operator"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "LGU"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1144
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings$PinDialog;->this$0:Lcom/android/settings_ex/IccLockSettings;

    #calls: Lcom/android/settings_ex/IccLockSettings;->triggerPinCheck(Ljava/lang/String;)V
    invoke-static {v1, p3}, Lcom/android/settings_ex/IccLockSettings;->access$1800(Lcom/android/settings_ex/IccLockSettings;Ljava/lang/String;)V

    goto :goto_1

    .line 1152
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings$PinDialog;->this$0:Lcom/android/settings_ex/IccLockSettings;

    #calls: Lcom/android/settings_ex/IccLockSettings;->triggerPinChanging(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p3, p4}, Lcom/android/settings_ex/IccLockSettings;->access$1900(Lcom/android/settings_ex/IccLockSettings;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1134
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
