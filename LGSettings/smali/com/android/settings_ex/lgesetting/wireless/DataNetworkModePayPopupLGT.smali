.class public Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;
.super Landroid/app/Activity;
.source "DataNetworkModePayPopupLGT.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field private AlwaysReqWhenPS:Landroid/content/DialogInterface$OnDismissListener;

.field is_3G_Model:Z

.field is_selected:Z

.field is_toggled:Z

.field private mConnMgr:Landroid/net/ConnectivityManager;

.field private mStatusBar:Landroid/app/StatusBarManager;

.field private paydialog:Landroid/app/AlertDialog;

.field private paypopup:Landroid/app/AlertDialog$Builder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->is_toggled:Z

    iput-boolean v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->is_selected:Z

    const-string v0, "net.is_3g"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->is_3G_Model:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->mStatusBar:Landroid/app/StatusBarManager;

    new-instance v0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT$1;-><init>(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;)V

    iput-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->AlwaysReqWhenPS:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method private SetUserResponse(I)V
    .locals 4
    .parameter "response"

    .prologue
    const/4 v3, 0x1

    .line 198
    const-string v0, "LGE_DATA_PAYPOPUP_LGT"

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

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_network_user_paypopup_response"

    invoke-static {v0, v1, p1}, Lcom/lge/provider/SettingsEx$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_network_wait_for_paypopup_response"

    invoke-static {v0, v1, v3}, Lcom/lge/provider/SettingsEx$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_network_user_paypopup_response"

    invoke-static {v0, v1, p1}, Lcom/lge/provider/SettingsEx$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 209
    const-string v0, "LGE_DATA_PAYPOPUP_LGT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "end SetUserResponse "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "data_network_user_paypopup_response"

    invoke-static {v2, v3, p1}, Lcom/lge/provider/SettingsEx$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    if-ne p1, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_network_wait_for_paypopup_response"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/lge/provider/SettingsEx$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_network_user_paypopup_response"

    invoke-static {v0, v1, p1}, Lcom/lge/provider/SettingsEx$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->SetUserResponse(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;)Landroid/net/ConnectivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->mConnMgr:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->paydialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private shouldConsumeKey(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "aKeyCode"
    .parameter "aKeyEvent"

    .prologue
    .line 227
    const/16 v0, 0x54

    if-ne p1, v0, :cond_0

    .line 228
    const/4 v0, 0x1

    .line 230
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
    .line 269
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 270
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->requestWindowFeature(I)Z

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080883

    new-instance v3, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT$3;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT$3;-><init>(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080882

    new-instance v3, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT$2;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT$2;-><init>(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->paypopup:Landroid/app/AlertDialog$Builder;

    iget-boolean v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->is_3G_Model:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->paypopup:Landroid/app/AlertDialog$Builder;

    const v2, 0x7f08087e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->paypopup:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->paydialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .local v0, attrs:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x100

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->extend:I

    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->paydialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 174
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    iput-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->mStatusBar:Landroid/app/StatusBarManager;

    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->paydialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->AlwaysReqWhenPS:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->paydialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT$4;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT$4;-><init>(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->paydialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->paydialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->paydialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    invoke-direct {p0, v4}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->SetUserResponse(I)V

    const-string v1, "LGE_DATA_PAYPOPUP_LGT"

    const-string v2, "Ask for answer for pay popup "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .end local v0           #attrs:Landroid/view/WindowManager$LayoutParams;
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->is_3G_Model:Z

    if-ne v1, v5, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->paypopup:Landroid/app/AlertDialog$Builder;

    const v2, 0x7f080896

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 279
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 280
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "aDialog"
    .parameter "aKeyCode"
    .parameter "aKeyEvent"

    .prologue
    invoke-direct {p0, p2, p3}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->shouldConsumeKey(ILandroid/view/KeyEvent;)Z

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
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->shouldConsumeKey(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->mStatusBar:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->mStatusBar:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    const-string v0, "LGE_DATA_PAYPOPUP_LGT"

    const-string v1, "StatusBarManager.DISABLE_NONE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->paydialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    const-string v0, "LGE_DATA_PAYPOPUP_LGT"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->paydialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->paydialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->mStatusBar:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupLGT;->mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    const-string v0, "LGE_DATA_PAYPOPUP_LGT"

    const-string v1, "StatusBarManager.DISABLE_EXPAND"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 302
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 303
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 274
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 275
    return-void
.end method
