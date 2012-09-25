.class public Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;
.super Landroid/preference/PreferenceActivity;
.source "LgBtUiDutSettings.java"


# instance fields
.field private isDutEntered:Z

.field private isWaitBtOff:Z

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBackupScreen:I

.field private mDutDialog:Landroid/app/AlertDialog;

.field private final mHandler:Landroid/os/Handler;

.field private mPrefDut:Landroid/preference/Preference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWaitDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 68
    iput-boolean v0, p0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->isDutEntered:Z

    .line 69
    iput-boolean v0, p0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->isWaitBtOff:Z

    .line 75
    new-instance v0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings$1;-><init>(Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 93
    new-instance v0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings$2;-><init>(Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private BtUiLog(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 374
    const-string v0, "LgBtUiDutSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->isWaitBtOff:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->isWaitBtOff:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->closePleaseWaitDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->onEnterDUTMode()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->onPleaseWaitDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->onExitDUTMode()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->mWaitDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->mWaitDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->mDutDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->mDutDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method private closeDUTModeDialog()V
    .locals 1

    .prologue
    .line 327
    new-instance v0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings$8;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings$8;-><init>(Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 335
    return-void
.end method

.method private closePleaseWaitDialog()V
    .locals 1

    .prologue
    .line 264
    new-instance v0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings$5;-><init>(Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 272
    return-void
.end method

.method private initContentView()Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, -0x2

    const/4 v4, -0x1

    .line 140
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 141
    .local v2, root:Landroid/widget/LinearLayout;
    new-instance v3, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v3, v4, v5}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 144
    new-instance v1, Landroid/widget/ListView;

    invoke-direct {v1, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 145
    .local v1, list:Landroid/widget/ListView;
    new-instance v3, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v3, v4, v5}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    const v3, 0x102000a

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setId(I)V

    .line 148
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 149
    .local v0, comment:Landroid/widget/TextView;
    new-instance v3, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    const/16 v3, 0x64

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setId(I)V

    .line 151
    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 153
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 154
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 155
    return-object v2
.end method

.method private onEnterDUTMode()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 296
    iput-boolean v4, p0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->isDutEntered:Z

    .line 297
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->enterBluetoothDUTMode()I

    .line 298
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->BtUiSetScreenTimeout(Z)V

    .line 299
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->closePleaseWaitDialog()V

    .line 301
    const-string v2, "persist.service.btui.ble"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 302
    .local v0, isBle:Z
    if-eqz v0, :cond_0

    const-string v1, "BLE DUT mode"

    .line 303
    .local v1, msg:Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : ON"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->BtUiDisplayToast(Ljava/lang/String;)V

    .line 305
    invoke-direct {p0, v4}, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->updateStateMessage(Z)V

    .line 308
    return-void

    .line 302
    .end local v1           #msg:Ljava/lang/String;
    :cond_0
    const-string v1, "DUT mode"

    goto :goto_0
.end method

.method private onExitDUTMode()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 312
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->exitBluetoothDUTMode()I

    .line 313
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->BtUiSetScreenTimeout(Z)V

    .line 314
    iput-boolean v4, p0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->isDutEntered:Z

    .line 316
    const-string v2, "persist.service.btui.ble"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 317
    .local v0, isBle:Z
    if-eqz v0, :cond_0

    const-string v1, "BLE DUT mode"

    .line 318
    .local v1, msg:Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : OFF"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->BtUiDisplayToast(Ljava/lang/String;)V

    .line 320
    invoke-direct {p0, v4}, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->updateStateMessage(Z)V

    .line 323
    return-void

    .line 317
    .end local v1           #msg:Ljava/lang/String;
    :cond_0
    const-string v1, "DUT mode"

    goto :goto_0
.end method

.method private onPleaseWaitDialog(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 250
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->mWaitDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 261
    :goto_0
    return-void

    .line 251
    :cond_0
    move-object v0, p1

    .line 252
    .local v0, progressMsg:Ljava/lang/String;
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->mWaitDialog:Landroid/app/ProgressDialog;

    .line 253
    new-instance v1, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings$4;

    invoke-direct {v1, p0, v0}, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings$4;-><init>(Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private updateStateMessage(Z)V
    .locals 5
    .parameter "isDutMode"

    .prologue
    .line 160
    const-string v3, "persist.service.btui.ble"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 161
    .local v1, isBle:Z
    if-eqz v1, :cond_0

    const-string v2, "BLE DUT "

    .line 162
    .local v2, msg:Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_1

    const-string v3, "ON"

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 164
    const/16 v3, 0x64

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 165
    .local v0, comment:Landroid/widget/TextView;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    if-eqz p1, :cond_2

    .line 167
    const/high16 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 171
    :goto_2
    const/high16 v3, 0x4220

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 172
    return-void

    .line 161
    .end local v0           #comment:Landroid/widget/TextView;
    .end local v2           #msg:Ljava/lang/String;
    :cond_0
    const-string v2, "DUT "

    goto :goto_0

    .line 162
    .restart local v2       #msg:Ljava/lang/String;
    :cond_1
    const-string v3, "OFF"

    goto :goto_1

    .line 169
    .restart local v0       #comment:Landroid/widget/TextView;
    :cond_2
    const/high16 v3, -0x100

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2
.end method


# virtual methods
.method BtUiDisplayToast(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 359
    new-instance v0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings$9;

    invoke-direct {v0, p0, p1}, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings$9;-><init>(Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 364
    return-void
.end method

.method BtUiSetScreenTimeout(Z)V
    .locals 5
    .parameter "alwaysOn"

    .prologue
    const/4 v4, -0x2

    .line 339
    if-eqz p1, :cond_1

    .line 341
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_off_timeout"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->mBackupScreen:I

    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BTUI] BtUiSetScreenTimeout : old_value("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->mBackupScreen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") new_value("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->BtUiLog(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_off_timeout"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 344
    :catch_0
    move-exception v0

    .line 345
    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v1, "[BTUI] BtUiSetScreenTimeout : fail to get current SCREEN TIMEOUT VALUE!!"

    invoke-direct {p0, v1}, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->BtUiLog(Ljava/lang/String;)V

    .line 346
    iput v4, p0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->mBackupScreen:I

    goto :goto_0

    .line 349
    .end local v0           #snfe:Landroid/provider/Settings$SettingNotFoundException;
    :cond_1
    iget v1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->mBackupScreen:I

    if-eq v1, v4, :cond_0

    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BTUI] BtUiSetScreenTimeout : old_value("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->mBackupScreen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->BtUiLog(Ljava/lang/String;)V

    .line 351
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_off_timeout"

    iget v3, p0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->mBackupScreen:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public createDutDialog()V
    .locals 3

    .prologue
    .line 227
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Turn ON"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Turn OFF"

    aput-object v2, v0, v1

    .line 228
    .local v0, menu:[Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Bluetooth DUT mode"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings$3;-><init>(Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 247
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x1

    .line 110
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 115
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->initContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->setContentView(Landroid/view/View;)V

    .line 117
    const v2, 0x7f06000b

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->addPreferencesFromResource(I)V

    .line 119
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 120
    .local v0, prefScreen:Landroid/preference/PreferenceScreen;
    const v2, 0x7f080c32

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 125
    new-instance v2, Landroid/preference/Preference;

    invoke-direct {v2, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->mPrefDut:Landroid/preference/Preference;

    .line 126
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->mPrefDut:Landroid/preference/Preference;

    const-string v3, "DUT Mode"

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->mPrefDut:Landroid/preference/Preference;

    const-string v3, "Tap to toggle DUT mode"

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->mPrefDut:Landroid/preference/Preference;

    const-string v3, "dut_mode"

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 129
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->mPrefDut:Landroid/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 130
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->mPrefDut:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 133
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isDUTMode()I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->updateStateMessage(Z)V

    .line 136
    return-void

    .line 133
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 186
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 187
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 188
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    .line 208
    const-string v1, "dut_mode"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 210
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 212
    iput-boolean v0, p0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->isWaitBtOff:Z

    .line 213
    const-string v1, "Please wait.\nTurning Bluetooth Off."

    invoke-direct {p0, v1}, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->onPleaseWaitDialog(Ljava/lang/String;)V

    .line 223
    :goto_0
    return v0

    .line 217
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->createDutDialog()V

    goto :goto_0

    .line 223
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 177
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 179
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 180
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 182
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 192
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 193
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 1

    .prologue
    .line 197
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onUserLeaveHint()V

    .line 198
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->isDutEntered:Z

    if-eqz v0, :cond_0

    .line 199
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->onExitDUTMode()V

    .line 200
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/LgBtUiDutSettings;->closeDUTModeDialog()V

    .line 202
    :cond_0
    return-void
.end method
