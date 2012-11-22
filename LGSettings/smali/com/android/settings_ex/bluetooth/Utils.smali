.class final Lcom/android/settings_ex/bluetooth/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static mAlertDialog:Landroid/app/AlertDialog;

.field private static mContext:Landroid/content/Context;

.field private static mDelayedDialog:Z

.field private static mDevice:Landroid/bluetooth/BluetoothDevice;

.field private static final mHandler:Landroid/os/Handler;

.field private static mMessageResId:I

.field private static mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/android/settings_ex/bluetooth/Utils$3;

    invoke-direct {v0}, Lcom/android/settings_ex/bluetooth/Utils$3;-><init>()V

    sput-object v0, Lcom/android/settings_ex/bluetooth/Utils;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method static BtUiPropertyGet(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    .line 204
    const-string v1, "0"

    invoke-static {p0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, value:Ljava/lang/String;
    return-object v0
.end method

.method static BtUiPropertySet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 199
    const-string v0, "Utils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BTUI] [SET] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    sput-boolean p0, Lcom/android/settings_ex/bluetooth/Utils;->mDelayedDialog:Z

    return p0
.end method

.method static synthetic access$100()Landroid/content/Context;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/settings_ex/bluetooth/Utils;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/settings_ex/bluetooth/Utils;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    sget v0, Lcom/android/settings_ex/bluetooth/Utils;->mMessageResId:I

    return v0
.end method

.method static synthetic access$400()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/settings_ex/bluetooth/Utils;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$500()Landroid/os/Handler;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/settings_ex/bluetooth/Utils;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static dismissDialog()V
    .locals 1

    .prologue
    sget-object v0, Lcom/android/settings_ex/bluetooth/Utils;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings_ex/bluetooth/Utils;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public static getConnectionStateSummary(I)I
    .locals 1
    .parameter "connectionState"

    .prologue
    .line 56
    packed-switch p0, :pswitch_data_0

    .line 66
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 58
    :pswitch_0
    const v0, 0x7f0800b9

    goto :goto_0

    .line 60
    :pswitch_1
    const v0, 0x7f0800bf

    goto :goto_0

    .line 62
    :pswitch_2
    const v0, 0x7f0800bd

    goto :goto_0

    .line 64
    :pswitch_3
    const v0, 0x7f0800be

    goto :goto_0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method static showDisconnectDialog(Landroid/content/Context;Landroid/app/AlertDialog;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;
    .locals 4
    .parameter "context"
    .parameter "dialog"
    .parameter "disconnectListener"
    .parameter "title"
    .parameter "message"

    .prologue
    const v2, 0x104000a

    .line 75
    if-nez p1, :cond_0

    .line 76
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 89
    :goto_0
    invoke-virtual {p1, p3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 90
    invoke-virtual {p1, p4}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 91
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 92
    return-object p1

    .line 81
    :cond_0
    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 85
    :cond_1
    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 86
    .local v0, okText:Ljava/lang/CharSequence;
    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0, p2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method static showError(Landroid/content/Context;Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V
    .locals 8
    .parameter "context"
    .parameter "name"
    .parameter "messageResId"
    .parameter "device"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const v7, 0x7f080afe

    sput-object p0, Lcom/android/settings_ex/bluetooth/Utils;->mContext:Landroid/content/Context;

    sput-object p1, Lcom/android/settings_ex/bluetooth/Utils;->mName:Ljava/lang/String;

    sput p2, Lcom/android/settings_ex/bluetooth/Utils;->mMessageResId:I

    sput-object p3, Lcom/android/settings_ex/bluetooth/Utils;->mDevice:Landroid/bluetooth/BluetoothDevice;

    sget-boolean v4, Lcom/android/settings_ex/bluetooth/Utils;->mDelayedDialog:Z

    if-nez v4, :cond_0

    sget-object v4, Lcom/android/settings_ex/bluetooth/Utils;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .local v3, msg:Landroid/os/Message;
    sget-object v4, Lcom/android/settings_ex/bluetooth/Utils;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x64

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .end local v3           #msg:Landroid/os/Message;
    :goto_0
    return-void

    :cond_0
    sput-boolean v5, Lcom/android/settings_ex/bluetooth/Utils;->mDelayedDialog:Z

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-virtual {p0, p2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, message:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    move-result-object v1

    .local v1, manager:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;
    const-string v4, "Utils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[BTUI] ****** showError("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "service.btui.gap.pairByLocal"

    invoke-static {v6}, Lcom/android/settings_ex/bluetooth/Utils;->BtUiPropertyGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") ******"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    if-nez v1, :cond_1

    .line 128
    const-string v4, "Utils"

    const-string v5, "[BTUI] Can\'t get manager: exiting"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 131
    :cond_1
    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->isForegroundActivity()Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz p3, :cond_3

    const-string v4, "Utils"

    const-string v5, "[BTUI] mForegroundActivity, device is not null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .local v0, cachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;
    const-string v4, "service.btui.gap.pairByLocal"

    invoke-static {v4}, Lcom/android/settings_ex/bluetooth/Utils;->BtUiPropertyGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 138
    const-string v4, "Utils"

    const-string v5, "[BTUI] 1st fail : retry popup"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getForegroundActivity()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x1010355

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f080c2f

    new-instance v6, Lcom/android/settings_ex/bluetooth/Utils$2;

    invoke-direct {v6, v0}, Lcom/android/settings_ex/bluetooth/Utils$2;-><init>(Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f080c30

    new-instance v6, Lcom/android/settings_ex/bluetooth/Utils$1;

    invoke-direct {v6}, Lcom/android/settings_ex/bluetooth/Utils$1;-><init>()V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v4

    sput-object v4, Lcom/android/settings_ex/bluetooth/Utils;->mAlertDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 162
    :cond_2
    const-string v4, "Utils"

    const-string v5, "[BTUI] 2nd fail : popup only"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "service.btui.gap.pairByLocal"

    const-string v5, "0"

    invoke-static {v4, v5}, Lcom/android/settings_ex/bluetooth/Utils;->BtUiPropertySet(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getForegroundActivity()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v7, v2}, Lcom/android/settings_ex/bluetooth/Utils;->showErrorForBondFail(Landroid/content/Context;ILjava/lang/String;)V

    goto/16 :goto_0

    .end local v0           #cachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;
    :cond_3
    const-string v4, "Utils"

    const-string v5, "[BTUI] mForegroundActivity, device is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v7, v2}, Lcom/android/settings_ex/bluetooth/Utils;->showErrorForBondFail(Landroid/content/Context;ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string v4, "Utils"

    const-string v5, "[BTUI] mForegroundActivity is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v7, v2}, Lcom/android/settings_ex/bluetooth/Utils;->showErrorForBondFail(Landroid/content/Context;ILjava/lang/String;)V

    const-string v4, "service.btui.gap.pairByLocal"

    const-string v5, "0"

    invoke-static {v4, v5}, Lcom/android/settings_ex/bluetooth/Utils;->BtUiPropertySet(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method static showErrorForBondFail(Landroid/content/Context;ILjava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "titleResId"
    .parameter "message"

    .prologue
    .line 181
    const-string v1, "Utils"

    const-string v2, "[BTUI] showErrorForBondFail()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :try_start_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    sput-object v1, Lcom/android/settings_ex/bluetooth/Utils;->mAlertDialog:Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :goto_0
    return-void

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Utils"

    const-string v2, "[BTUI] Exception handled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/4 v1, 0x0

    invoke-static {p0, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
