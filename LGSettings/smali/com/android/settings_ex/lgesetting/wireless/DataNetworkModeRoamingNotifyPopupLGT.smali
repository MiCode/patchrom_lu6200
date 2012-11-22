.class public Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingNotifyPopupLGT;
.super Landroid/app/Activity;
.source "DataNetworkModeRoamingNotifyPopupLGT.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field private AlwaysReqWhenPS:Landroid/content/DialogInterface$OnDismissListener;

.field is_selected:Z

.field is_toggled:Z

.field private roamingdialog:Landroid/app/AlertDialog;

.field private roamingnotification:Landroid/app/AlertDialog$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingNotifyPopupLGT;->is_toggled:Z

    iput-boolean v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingNotifyPopupLGT;->is_selected:Z

    new-instance v0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingNotifyPopupLGT$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingNotifyPopupLGT$1;-><init>(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingNotifyPopupLGT;)V

    iput-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingNotifyPopupLGT;->AlwaysReqWhenPS:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method private SetUserResponse(I)V
    .locals 4
    .parameter "response"

    .prologue
    const/4 v3, 0x0

    .line 134
    const-string v0, "LGE_DATA_ROAMINGPOPUP_LGT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetUserResponse "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingNotifyPopupLGT;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_network_user_roamingnotify_response"

    invoke-static {v0, v1, v3}, Lcom/lge/provider/SettingsEx$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingNotifyPopupLGT;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_network_wait_for_roamingnotify_response"

    invoke-static {v0, v1, v3}, Lcom/lge/provider/SettingsEx$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 148
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingNotifyPopupLGT;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingNotifyPopupLGT;->SetUserResponse(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingNotifyPopupLGT;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingNotifyPopupLGT;->roamingdialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private shouldConsumeKey(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "aKeyCode"
    .parameter "aKeyEvent"

    .prologue
    .line 150
    const/16 v0, 0x54

    if-ne p1, v0, :cond_0

    .line 151
    const/4 v0, 0x1

    .line 153
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 174
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 175
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/16 v5, 0x100

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingNotifyPopupLGT;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingNotifyPopupLGT;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .local v0, attrs:Landroid/view/WindowManager$LayoutParams;
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->extend:I

    invoke-virtual {p0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingNotifyPopupLGT;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080887

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08088e

    new-instance v3, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingNotifyPopupLGT$2;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingNotifyPopupLGT$2;-><init>(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingNotifyPopupLGT;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingNotifyPopupLGT;->roamingnotification:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingNotifyPopupLGT;->roamingnotification:Landroid/app/AlertDialog$Builder;

    const v2, 0x7f080888

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingNotifyPopupLGT;->roamingnotification:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingNotifyPopupLGT;->roamingdialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingNotifyPopupLGT;->roamingdialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 118
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->extend:I

    .line 120
    const-string v1, "LGE_DATA_ROAMINGPOPUP_LGT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[LGT]attrs.extend "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->extend:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingNotifyPopupLGT;->roamingdialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingNotifyPopupLGT;->roamingdialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingNotifyPopupLGT;->AlwaysReqWhenPS:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingNotifyPopupLGT;->roamingdialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    invoke-direct {p0, v4}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingNotifyPopupLGT;->SetUserResponse(I)V

    const-string v1, "LGE_DATA_ROAMINGPOPUP_LGT"

    const-string v2, "Ask for answer for roaming notification "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 184
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 185
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "aDialog"
    .parameter "aKeyCode"
    .parameter "aKeyEvent"

    .prologue
    invoke-direct {p0, p2, p3}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingNotifyPopupLGT;->shouldConsumeKey(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "aKeyCode"
    .parameter "aKeyEvent"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingNotifyPopupLGT;->shouldConsumeKey(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 206
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 207
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingNotifyPopupLGT;->roamingdialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    const-string v0, "LGE_DATA_ROAMINGPOPUP_LGT"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingNotifyPopupLGT;->roamingdialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingNotifyPopupLGT;->roamingdialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 200
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 201
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 179
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 180
    return-void
.end method
