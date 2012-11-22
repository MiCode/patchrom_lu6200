.class public Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothAuthorizeDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog$1;,
        Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;
    }
.end annotation


# static fields
.field private static mContext:Landroid/content/Context;


# instance fields
.field private mBrcvr:Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

.field private mLocalManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

.field private mName:Ljava/lang/String;

.field private mService:Ljava/lang/String;

.field private mTemporaryKey:Z

.field private mUserConfirmed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    iput-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mTemporaryKey:Z

    iput-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mUserConfirmed:Z

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->onDecline()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->quitActivity()V

    return-void
.end method

.method private createView(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 10
    .parameter "deviceName"
    .parameter "svc"

    .prologue
    const/4 v9, 0x1

    const v8, 0x7f0b002a

    const-string v5, "BluetoothAuthorizeDialog"

    const-string v6, "createView"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f04000f

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 179
    .local v4, view:Landroid/view/View;
    const v5, 0x7f0b0029

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 180
    .local v2, msgView:Landroid/widget/TextView;
    const v5, 0x7f080a34

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    aput-object p2, v6, v9

    invoke-virtual {p0, v5, v6}, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mTemporaryKey:Z

    if-eqz v5, :cond_0

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .local v1, checkbox:Landroid/widget/CheckBox;
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .end local v1           #checkbox:Landroid/widget/CheckBox;
    :cond_0
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mService:Ljava/lang/String;

    const-string v6, "service_pbap"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 201
    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 202
    .local v0, alwaysAllowed:Landroid/widget/CheckBox;
    invoke-virtual {v0, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 206
    .end local v0           #alwaysAllowed:Landroid/widget/CheckBox;
    :cond_1
    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 207
    .local v3, trustCheck:Landroid/widget/CheckBox;
    invoke-virtual {v3, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    return-object v4
.end method

.method private isAutoReply()Z
    .locals 5

    .prologue
    iget-boolean v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mTemporaryKey:Z

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const v2, 0x7f0b002a

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 217
    .local v0, checkbox:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 218
    .local v1, isChecked:Z
    const-string v2, "BluetoothAuthorizeDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isChecked ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onAuthorize()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 223
    const-string v1, "BluetoothAuthorizeDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAuthorize : mUserConfirmed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mUserConfirmed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mUserConfirmed:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mUserConfirmed:Z

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mService:Ljava/lang/String;

    const-string v2, "service_pbap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 233
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 234
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 235
    const-string v1, "android.bluetooth.device.extra.ALWAYS_ALLOWED"

    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->isAutoReply()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->sendBroadcast(Landroid/content/Intent;)V

    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mService:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->isAutoReply()Z

    move-result v3

    invoke-virtual {v1, v2, v4, v3}, Landroid/bluetooth/BluetoothDevice;->authorizeService(Ljava/lang/String;ZZ)Z

    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->isAutoReply()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothDevice;->setTrust(Z)Z

    goto :goto_0
.end method

.method private onDecline()V
    .locals 5

    .prologue
    .line 250
    const-string v1, "BluetoothAuthorizeDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDecline : mUserConfirmed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mUserConfirmed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mUserConfirmed:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mUserConfirmed:Z

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mService:Ljava/lang/String;

    const-string v2, "service_pbap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 260
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 261
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->sendBroadcast(Landroid/content/Intent;)V

    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mService:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->isAutoReply()Z

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/bluetooth/BluetoothDevice;->authorizeService(Ljava/lang/String;ZZ)Z

    goto :goto_0
.end method

.method private quitActivity()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->finish()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const-string v0, "BluetoothAuthorizeDialog"

    const-string v1, "onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->onAuthorize()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->onDecline()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 379
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const v10, 0x7f080a37

    const v9, 0x7f080a3a

    const/4 v8, 0x0

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v5, "BluetoothAuthorizeDialog"

    const-string v6, "onCreate"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    const-string v5, "broadcom.android.bluetooth.intent.action.AUTHORIZE_REQUEST"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 86
    const-string v5, "BluetoothAuthorizeDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreate: Unknown intent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->finish()V

    :goto_0
    return-void

    :cond_0
    const-string v5, "broadcom.android.bluetooth.intent.DEVICE"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    iput-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 92
    const-string v5, "broadcom.android.bluetooth.intent.SERVICE"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mService:Ljava/lang/String;

    .line 93
    const-string v5, "broadcom.android.bluetooth.intent.TEMPORARY_KEY"

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mTemporaryKey:Z

    new-instance v5, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog$1;)V

    iput-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mBrcvr:Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .local v1, intFltr:Landroid/content/IntentFilter;
    const-string v5, "android.bluetooth.device.action.PAIRING_CANCEL"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mBrcvr:Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;

    invoke-virtual {v5, v6, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {p0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mLocalManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mLocalManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    invoke-virtual {v5}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getContext()Landroid/content/Context;

    move-result-object v5

    sput-object v5, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mLocalManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    invoke-virtual {v5}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mLocalManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    invoke-virtual {v5}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5, v6}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mName:Ljava/lang/String;

    .line 109
    const-string v5, "BluetoothAuthorizeDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mTemporaryKey: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mTemporaryKey:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const-string v5, "BluetoothAuthorizeDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[BTUI] mService = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mService:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mService:Ljava/lang/String;

    const-string v6, "service_pbap"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const v5, 0x7f080a35

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    .local v4, svc:Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .local v3, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v5, 0x1080351

    iput v5, v3, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    const v5, 0x7f080a33

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mName:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-virtual {p0, v5, v6}, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mName:Ljava/lang/String;

    invoke-direct {p0, v5, v4}, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->createView(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v5

    iput-object v5, v3, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 155
    const v5, 0x7f080a46

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 156
    iput-object p0, v3, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 157
    const v5, 0x7f080a47

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iput-object p0, v3, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->setupAlert()V

    iput-boolean v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mUserConfirmed:Z

    goto/16 :goto_0

    .end local v3           #p:Lcom/android/internal/app/AlertController$AlertParams;
    .end local v4           #svc:Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mService:Ljava/lang/String;

    const-string v6, "service_opp"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #svc:Ljava/lang/String;
    goto :goto_1

    .line 126
    .end local v4           #svc:Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mService:Ljava/lang/String;

    const-string v6, "service_ftp"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #svc:Ljava/lang/String;
    goto :goto_1

    .line 128
    .end local v4           #svc:Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mService:Ljava/lang/String;

    const-string v6, "service_dun"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 129
    const v5, 0x7f080a39

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #svc:Ljava/lang/String;
    goto :goto_1

    .line 130
    .end local v4           #svc:Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mService:Ljava/lang/String;

    const-string v6, "service_spp"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 131
    const v5, 0x7f080a38

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #svc:Ljava/lang/String;
    goto :goto_1

    .line 132
    .end local v4           #svc:Ljava/lang/String;
    :cond_5
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mService:Ljava/lang/String;

    const-string v6, "service_map"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #svc:Ljava/lang/String;
    goto/16 :goto_1

    .line 134
    .end local v4           #svc:Ljava/lang/String;
    :cond_6
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mService:Ljava/lang/String;

    const-string v6, "service_mse"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #svc:Ljava/lang/String;
    goto/16 :goto_1

    .line 136
    .end local v4           #svc:Ljava/lang/String;
    :cond_7
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mService:Ljava/lang/String;

    const-string v6, "service_mns"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #svc:Ljava/lang/String;
    goto/16 :goto_1

    .line 139
    .end local v4           #svc:Ljava/lang/String;
    :cond_8
    const v5, 0x7f080a3b

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #svc:Ljava/lang/String;
    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mBrcvr:Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mUserConfirmed:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->onDecline()V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 359
    packed-switch p1, :pswitch_data_0

    .line 364
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/app/AlertActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->onDecline()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onUserLeaveHint()V
    .locals 0

    .prologue
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onUserLeaveHint()V

    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->onDecline()V

    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->quitActivity()V

    return-void
.end method
