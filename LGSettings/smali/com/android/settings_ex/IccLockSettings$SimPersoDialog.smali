.class Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;
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
    name = "SimPersoDialog"
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
    iput-object p1, p0, Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;->this$0:Lcom/android/settings_ex/IccLockSettings;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/settings_ex/EditPinPreferenceBehavior;-><init>(Lcom/android/settings_ex/EditPinPreference;Lcom/android/settings_ex/EditPinPreferenceBehavior$Callback;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;->mResumed:Z

    invoke-virtual {p0, p0}, Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;->setCallback(Lcom/android/settings_ex/EditPinPreferenceBehavior$Callback;)V

    return-void
.end method


# virtual methods
.method public handleUserReasonablePinEntered(ILjava/lang/String;)I
    .locals 1
    .parameter "aCurStep"
    .parameter "aText"

    .prologue
    .line 1319
    const/4 v0, 0x0

    return v0
.end method

.method public isResumed()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;->mResumed:Z

    return v0
.end method

.method protected onCheckReasonable(ILjava/lang/String;)I
    .locals 4
    .parameter "aStep"
    .parameter "aText"

    .prologue
    const/4 v1, 0x1

    .line 1234
    const-string v2, "ro.build.target_operator"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SKT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1235
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 1236
    .local v0, len:I
    if-nez v0, :cond_1

    .line 1237
    const/4 v1, 0x2

    .line 1250
    .end local v0           #len:I
    :cond_0
    :goto_0
    return v1

    .line 1239
    .restart local v0       #len:I
    :cond_1
    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 1243
    invoke-static {p2}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1247
    const/4 v1, 0x0

    goto :goto_0

    .line 1250
    .end local v0           #len:I
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/EditPinPreferenceBehavior;->onCheckReasonable(ILjava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)V
    .locals 1
    .parameter "aPref"

    .prologue
    check-cast p1, Lcom/android/settings_ex/EditPinPreference;

    .end local p1
    invoke-virtual {p1}, Lcom/android/settings_ex/EditPinPreference;->isVirtualEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1391
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/settings_ex/EditPinPreferenceBehavior;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;->mResumed:Z

    return-void
.end method

.method protected onSetDialogValues(ILcom/android/settings_ex/EditPinPreference;)V
    .locals 5
    .parameter "aStep"
    .parameter "aPref"

    .prologue
    const v4, 0x7f080042

    const v3, 0x7f080041

    const v2, 0x7f08003e

    const v1, 0x7f08003d

    .line 1254
    const-string v0, ""

    .line 1255
    .local v0, msg:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1311
    :pswitch_0
    invoke-static {}, Lcom/android/settings_ex/IccLockSettings;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Step = UNK"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p2, v0}, Lcom/android/settings_ex/EditPinPreference;->setText(Ljava/lang/String;)V

    return-void

    :pswitch_1
    const v1, 0x7f080034

    invoke-virtual {p2, v1}, Lcom/android/settings_ex/EditPinPreference;->setDialogTitle(I)V

    const v1, 0x7f080035

    invoke-virtual {p2, v1}, Lcom/android/settings_ex/EditPinPreference;->setDialogMessage(I)V

    goto :goto_0

    :pswitch_2
    const v1, 0x7f080036

    invoke-virtual {p2, v1}, Lcom/android/settings_ex/EditPinPreference;->setDialogTitle(I)V

    const v1, 0x7f080037

    invoke-virtual {p2, v1}, Lcom/android/settings_ex/EditPinPreference;->setDialogMessage(I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;->getOldText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1}, Lcom/android/settings_ex/EditPinPreference;->setDialogTitle(I)V

    invoke-virtual {p2, v2}, Lcom/android/settings_ex/EditPinPreference;->setDialogMessage(I)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;->getNewText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v3}, Lcom/android/settings_ex/EditPinPreference;->setDialogTitle(I)V

    invoke-virtual {p2, v4}, Lcom/android/settings_ex/EditPinPreference;->setDialogMessage(I)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;->getNewText()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/settings_ex/IccLockSettings;->access$600()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v3}, Lcom/android/settings_ex/EditPinPreference;->setDialogTitle(I)V

    invoke-virtual {p2, v4}, Lcom/android/settings_ex/EditPinPreference;->setDialogMessage(I)V

    goto :goto_0

    :cond_0
    const v1, 0x7f080045

    invoke-virtual {p2, v1}, Lcom/android/settings_ex/EditPinPreference;->setDialogTitle(I)V

    const v1, 0x7f080046

    invoke-virtual {p2, v1}, Lcom/android/settings_ex/EditPinPreference;->setDialogMessage(I)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0}, Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;->getReenterText()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f080043

    invoke-virtual {p2, v1}, Lcom/android/settings_ex/EditPinPreference;->setDialogTitle(I)V

    const v1, 0x7f080044

    invoke-virtual {p2, v1}, Lcom/android/settings_ex/EditPinPreference;->setDialogMessage(I)V

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0}, Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;->resetText()V

    invoke-virtual {p2, v1}, Lcom/android/settings_ex/EditPinPreference;->setDialogTitle(I)V

    invoke-virtual {p2, v2}, Lcom/android/settings_ex/EditPinPreference;->setDialogMessage(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public onSetEnabled(Lcom/android/settings_ex/EditPinPreferenceBehavior;Z)V
    .locals 0
    .parameter "aBehavior"
    .parameter "aEnabled"

    .prologue
    .line 1396
    return-void
.end method

.method public onShowNotifyAndReturnStage(Lcom/android/settings_ex/EditPinPreferenceBehavior;II)V
    .locals 3
    .parameter "aBehavior"
    .parameter "aReturnStep"
    .parameter "aReason"

    .prologue
    .line 1351
    packed-switch p3, :pswitch_data_0

    .line 1382
    :goto_0
    return-void

    .line 1353
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;->this$0:Lcom/android/settings_ex/IccLockSettings;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/IccLockSettings;->showDialog(I)V

    goto :goto_0

    .line 1357
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;->this$0:Lcom/android/settings_ex/IccLockSettings;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/IccLockSettings;->showDialog(I)V

    goto :goto_0

    .line 1364
    :pswitch_2
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1365
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x68

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1366
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1367
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;->getOldText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;->this$0:Lcom/android/settings_ex/IccLockSettings;

    #getter for: Lcom/android/settings_ex/IccLockSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings_ex/IccLockSettings;->access$2000(Lcom/android/settings_ex/IccLockSettings;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1373
    .end local v0           #msg:Landroid/os/Message;
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;->this$0:Lcom/android/settings_ex/IccLockSettings;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/IccLockSettings;->showDialog(I)V

    goto :goto_0

    .line 1376
    :pswitch_4
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;->this$0:Lcom/android/settings_ex/IccLockSettings;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/IccLockSettings;->showDialog(I)V

    goto :goto_0

    .line 1379
    :pswitch_5
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;->this$0:Lcom/android/settings_ex/IccLockSettings;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/IccLockSettings;->showDialog(I)V

    goto :goto_0

    .line 1351
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onValidPinEntered(Lcom/android/settings_ex/EditPinPreferenceBehavior;ILjava/lang/String;Ljava/lang/String;)I
    .locals 4
    .parameter "aBehavior"
    .parameter "aStage"
    .parameter "aParam1"
    .parameter "aParam2"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v0, 0x0

    .line 1323
    packed-switch p2, :pswitch_data_0

    :goto_0
    :pswitch_0
    move v0, v1

    .line 1346
    :cond_0
    :goto_1
    return v0

    .line 1326
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;->this$0:Lcom/android/settings_ex/IccLockSettings;

    iget-object v3, p0, Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;->this$0:Lcom/android/settings_ex/IccLockSettings;

    #getter for: Lcom/android/settings_ex/IccLockSettings;->mSimPersoLock:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/settings_ex/IccLockSettings;->access$2100(Lcom/android/settings_ex/IccLockSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    :cond_1
    #calls: Lcom/android/settings_ex/IccLockSettings;->changeSimPersoLock(ZLjava/lang/String;)Z
    invoke-static {v2, v0, p3}, Lcom/android/settings_ex/IccLockSettings;->access$2200(Lcom/android/settings_ex/IccLockSettings;ZLjava/lang/String;)Z

    goto :goto_0

    .line 1331
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;->this$0:Lcom/android/settings_ex/IccLockSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/IccLockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "usim_perso_control_key"

    invoke-static {v1, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1332
    const/4 v0, 0x5

    goto :goto_1

    .line 1334
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;->this$0:Lcom/android/settings_ex/IccLockSettings;

    #getter for: Lcom/android/settings_ex/IccLockSettings;->mSimPersoDialog:Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;
    invoke-static {v1}, Lcom/android/settings_ex/IccLockSettings;->access$900(Lcom/android/settings_ex/IccLockSettings;)Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;->showNotifyAndReturnStage(II)V

    goto :goto_1

    .line 1340
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;->this$0:Lcom/android/settings_ex/IccLockSettings;

    #calls: Lcom/android/settings_ex/IccLockSettings;->changeSimPersoControlKey(Ljava/lang/String;)Z
    invoke-static {v1, p4}, Lcom/android/settings_ex/IccLockSettings;->access$2300(Lcom/android/settings_ex/IccLockSettings;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 1343
    goto :goto_1

    .line 1323
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
