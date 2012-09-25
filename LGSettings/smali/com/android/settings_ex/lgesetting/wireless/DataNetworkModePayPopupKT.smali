.class public Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;
.super Landroid/app/Activity;
.source "DataNetworkModePayPopupKT.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field private AlwaysReqWhenPS:Landroid/content/DialogInterface$OnDismissListener;

.field am:Landroid/app/AlarmManager;

.field private isRoaming:I

.field is_clicked:Z

.field is_toggled:Z

.field private mConnMgr:Landroid/net/ConnectivityManager;

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mStatusBar:Landroid/app/StatusBarManager;

.field private mTimeoutIntent:Landroid/app/PendingIntent;

.field private paydialog:Landroid/app/AlertDialog;

.field private paypopup:Landroid/app/AlertDialog$Builder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    iput-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->mTimeoutIntent:Landroid/app/PendingIntent;

    .line 57
    iput-boolean v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->is_toggled:Z

    .line 58
    iput-boolean v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->is_clicked:Z

    .line 62
    iput-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->mStatusBar:Landroid/app/StatusBarManager;

    .line 64
    new-instance v0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT$1;-><init>(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;)V

    iput-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 83
    new-instance v0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT$2;-><init>(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;)V

    iput-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->AlwaysReqWhenPS:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method private SetUserResponse(I)V
    .locals 5
    .parameter "response"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 204
    const-string v0, "LGE_DATA_PAYPOPUP"

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

    .line 205
    if-nez p1, :cond_1

    .line 206
    iput-boolean v3, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->is_clicked:Z

    .line 207
    invoke-virtual {p0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 208
    invoke-virtual {p0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_network_user_paypopup_response"

    invoke-static {v0, v1, p1}, Lcom/lge/provider/SettingsEx$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 209
    invoke-virtual {p0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_network_wait_for_paypopup_response"

    invoke-static {v0, v1, v4}, Lcom/lge/provider/SettingsEx$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 212
    iput-boolean v4, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->is_clicked:Z

    .line 214
    invoke-virtual {p0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 215
    invoke-virtual {p0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_network_user_paypopup_response"

    invoke-static {v0, v1, p1}, Lcom/lge/provider/SettingsEx$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 216
    invoke-virtual {p0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_network_wait_for_paypopup_response"

    invoke-static {v0, v1, v3}, Lcom/lge/provider/SettingsEx$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 218
    const-string v0, "LGE_DATA_PAYPOPUP"

    const-string v1, "********     SetUserResponse, dismiss    "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->paydialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 222
    :catch_0
    move-exception v0

    goto :goto_0

    .line 224
    :cond_2
    if-ne p1, v4, :cond_0

    .line 225
    iput-boolean v4, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->is_clicked:Z

    .line 227
    invoke-virtual {p0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_network_wait_for_paypopup_response"

    invoke-static {v0, v1, v3}, Lcom/lge/provider/SettingsEx$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 228
    invoke-virtual {p0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_network_user_paypopup_response"

    invoke-static {v0, v1, p1}, Lcom/lge/provider/SettingsEx$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->SetUserResponse(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;)Landroid/net/ConnectivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->mConnMgr:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->paydialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->mTimeoutIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method private shouldConsumeKey(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "aKeyCode"
    .parameter "aKeyEvent"

    .prologue
    .line 233
    const/16 v0, 0x54

    if-ne p1, v0, :cond_0

    .line 234
    const/4 v0, 0x1

    .line 236
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 269
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 270
    const-string v0, "LGE_DATA_PAYPOPUP"

    const-string v1, "********      onConfigurationChanged "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    const/4 v9, 0x0

    .line 98
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    invoke-virtual {p0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "isRoaming"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->isRoaming:I

    .line 104
    const-string v3, "LGE_DATA_PAYPOPUP"

    const-string v4, "onCreate() "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 108
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v3, "com.lge.settings.wireless.PAYPOPUPWAITINGALARM"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 113
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    iput-object v3, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 121
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->requestWindowFeature(I)Z

    .line 127
    const-string v3, "statusbar"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    iput-object v3, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->mStatusBar:Landroid/app/StatusBarManager;

    .line 130
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT$4;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT$4;-><init>(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f080881

    new-instance v5, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT$3;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT$3;-><init>(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->paypopup:Landroid/app/AlertDialog$Builder;

    .line 162
    iget v3, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->isRoaming:I

    if-ne v3, v6, :cond_0

    .line 163
    iget-object v3, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->paypopup:Landroid/app/AlertDialog$Builder;

    const v4, 0x7f08087d

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 171
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->paypopup:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->paydialog:Landroid/app/AlertDialog;

    .line 174
    invoke-virtual {p0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 175
    .local v0, attrs:Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x100

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->extend:I

    .line 176
    iget-object v3, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->paydialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 178
    iget-object v3, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->paydialog:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->AlwaysReqWhenPS:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 180
    iget-object v3, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->paydialog:Landroid/app/AlertDialog;

    new-instance v4, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT$5;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT$5;-><init>(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 188
    iget-object v3, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->paydialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v9}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 189
    iget-object v3, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->paydialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v9}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 190
    iget-object v3, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->paydialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 193
    invoke-virtual {p0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    iput-object v3, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->am:Landroid/app/AlarmManager;

    .line 194
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.lge.settings.wireless.PAYPOPUPWAITINGALARM"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 195
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v9, v2, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->mTimeoutIntent:Landroid/app/PendingIntent;

    .line 196
    iget-object v3, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->am:Landroid/app/AlarmManager;

    const/4 v4, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const-wide/16 v7, 0x7530

    add-long/2addr v5, v7

    iget-object v7, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 198
    invoke-direct {p0, v9}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->SetUserResponse(I)V

    .line 200
    const-string v3, "LGE_DATA_PAYPOPUP"

    const-string v4, "Ask for answer for pay popup "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return-void

    .line 165
    .end local v0           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    const-string v3, "net.is_3g"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 166
    iget-object v3, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->paypopup:Landroid/app/AlertDialog$Builder;

    const v4, 0x7f080895

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 168
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->paypopup:Landroid/app/AlertDialog$Builder;

    const v4, 0x7f08087c

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 281
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 282
    const-string v0, "LGE_DATA_PAYPOPUP"

    const-string v1, "********      onDestroy "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "aDialog"
    .parameter "aKeyCode"
    .parameter "aKeyEvent"

    .prologue
    const/4 v0, 0x1

    .line 254
    invoke-direct {p0, p2, p3}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->shouldConsumeKey(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    :goto_0
    return v0

    .line 257
    :cond_0
    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->is_toggled:Z

    if-nez v1, :cond_1

    .line 258
    iput-boolean v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->is_toggled:Z

    .line 259
    const-string v1, "LGE_DATA_PAYPOPUP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKey =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is_toggled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->is_toggled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->SetUserResponse(I)V

    .line 262
    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 265
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "aKeyCode"
    .parameter "aKeyEvent"

    .prologue
    const/4 v0, 0x1

    .line 240
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->shouldConsumeKey(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    :goto_0
    return v0

    .line 243
    :cond_0
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 244
    const-string v1, "LGE_DATA_PAYPOPUP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyDown =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->SetUserResponse(I)V

    .line 247
    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 250
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->mStatusBar:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->mStatusBar:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 311
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 312
    const-string v0, "LGE_DATA_PAYPOPUP"

    const-string v1, "********      onPause "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 287
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 288
    const-string v0, "LGE_DATA_PAYPOPUP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "********      paydialog.isShowing  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->paydialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->paydialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->paydialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 291
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->paydialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->mStatusBar:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 297
    :cond_1
    const-string v0, "LGE_DATA_PAYPOPUP"

    const-string v1, "********      onResume "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 302
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 303
    const-string v0, "LGE_DATA_PAYPOPUP"

    const-string v1, "********      onStart "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 275
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 276
    const-string v0, "LGE_DATA_PAYPOPUP"

    const-string v1, "********      onStop "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    return-void
.end method
