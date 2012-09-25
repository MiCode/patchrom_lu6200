.class public Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothRequestServiceDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final MSG_ACTIVITY_CLOSE:I

.field private mActionString:Ljava/lang/String;

.field private mFileName:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIntent:Landroid/content/Intent;

.field private mLocalManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

.field private mOpCode:B

.field private mRemoteAddress:Ljava/lang/String;

.field private mRemoteName:Ljava/lang/String;

.field private mRequestedServiceDisplayName:Ljava/lang/String;

.field private mRequestedServiceName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 115
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->MSG_ACTIVITY_CLOSE:I

    .line 116
    new-instance v0, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog$1;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 6

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040019

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 279
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0b0029

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 280
    .local v0, messageView:Landroid/widget/TextView;
    const v2, 0x7f080a42

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->mRemoteName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->mActionString:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    return-object v1
.end method

.method private loadAccessRequestParams(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->mIntent:Landroid/content/Intent;

    const-string v1, "SVC_NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->mRequestedServiceName:Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->mIntent:Landroid/content/Intent;

    const-string v1, "OPERATION"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v0

    iput-byte v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->mOpCode:B

    .line 102
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->mIntent:Landroid/content/Intent;

    const-string v1, "FILEPATH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->mFileName:Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->mIntent:Landroid/content/Intent;

    const-string v1, "RMT_DEV_NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->mRemoteName:Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->mRemoteName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->mIntent:Landroid/content/Intent;

    const-string v1, "RMT_DEV_ADDR"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->mRemoteAddress:Ljava/lang/String;

    .line 109
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->mRemoteAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->mRemoteName:Ljava/lang/String;

    .line 112
    :cond_0
    return-void
.end method

.method private onAllow(Z)V
    .locals 2
    .parameter "allow"

    .prologue
    .line 301
    new-instance v0, Lcom/broadcom/bt/service/framework/BluetoothAccessResponse;

    invoke-direct {v0}, Lcom/broadcom/bt/service/framework/BluetoothAccessResponse;-><init>()V

    .line 302
    .local v0, bluetoothAccessResponse:Lcom/broadcom/bt/service/framework/BluetoothAccessResponse;
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p0, v1, p1}, Lcom/broadcom/bt/service/framework/BluetoothAccessResponse;->process(Landroid/content/Context;Landroid/content/Intent;Z)V

    .line 304
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->mRequestedServiceName:Ljava/lang/String;

    .line 305
    return-void
.end method

.method private setActionAndServerString()V
    .locals 2

    .prologue
    .line 203
    const-string v0, "bluetooth_ftp"

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->mRequestedServiceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 204
    iget-byte v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->mOpCode:B

    packed-switch v0, :pswitch_data_0

    .line 230
    :goto_0
    const v0, 0x7f080a4a

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->mRequestedServiceDisplayName:Ljava/lang/String;

    .line 267
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->mActionString:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 268
    const v0, 0x7f080a43

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->mActionString:Ljava/lang/String;

    .line 270
    :cond_1
    return-void

    .line 206
    :pswitch_0
    const v0, 0x7f080a4b

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->mActionString:Ljava/lang/String;

    goto :goto_0

    .line 210
    :pswitch_1
    const v0, 0x7f080a4c

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->mActionString:Ljava/lang/String;

    goto :goto_0

    .line 214
    :pswitch_2
    const v0, 0x7f080a4d

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->mActionString:Ljava/lang/String;

    goto :goto_0

    .line 218
    :pswitch_3
    const v0, 0x7f080a4e

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->mActionString:Ljava/lang/String;

    goto :goto_0

    .line 222
    :pswitch_4
    const v0, 0x7f080a4f

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->mActionString:Ljava/lang/String;

    goto :goto_0

    .line 226
    :pswitch_5
    const v0, 0x7f080a50

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->mActionString:Ljava/lang/String;

    goto :goto_0

    .line 231
    :cond_2
    const-string v0, "bluetooth_pbap"

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->mRequestedServiceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 233
    iget-byte v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->mOpCode:B

    packed-switch v0, :pswitch_data_1

    .line 252
    :goto_2
    const v0, 0x7f080a51

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->mRequestedServiceDisplayName:Ljava/lang/String;

    goto :goto_1

    .line 235
    :pswitch_6
    const v0, 0x7f080a52

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->mActionString:Ljava/lang/String;

    goto :goto_2

    .line 239
    :pswitch_7
    const v0, 0x7f080a53

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->mActionString:Ljava/lang/String;

    goto :goto_2

    .line 243
    :pswitch_8
    const v0, 0x7f080a54

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->mActionString:Ljava/lang/String;

    goto :goto_2

    .line 247
    :pswitch_9
    const v0, 0x7f080a55

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->mActionString:Ljava/lang/String;

    goto :goto_2

    .line 254
    :cond_3
    const-string v0, "bluetooth_opp_service"

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->mRequestedServiceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-byte v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->mOpCode:B

    packed-switch v0, :pswitch_data_2

    .line 264
    :goto_3
    const v0, 0x7f080a58

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->mRequestedServiceDisplayName:Ljava/lang/String;

    goto/16 :goto_1

    .line 258
    :pswitch_a
    const v0, 0x7f080a59

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->mActionString:Ljava/lang/String;

    goto :goto_3

    .line 261
    :pswitch_b
    const v0, 0x7f080a5a

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->mActionString:Ljava/lang/String;

    goto :goto_3

    .line 204
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 233
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 256
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 311
    packed-switch p2, :pswitch_data_0

    .line 320
    :goto_0
    return-void

    .line 313
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->onAllow(Z)V

    goto :goto_0

    .line 317
    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->onAllow(Z)V

    goto :goto_0

    .line 311
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 133
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 138
    invoke-static {}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->isAccessRequestEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 140
    new-instance v0, Lcom/broadcom/bt/service/framework/BluetoothAccessResponse;

    invoke-direct {v0}, Lcom/broadcom/bt/service/framework/BluetoothAccessResponse;-><init>()V

    .line 141
    .local v0, bluetoothAccessResponse:Lcom/broadcom/bt/service/framework/BluetoothAccessResponse;
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, p0, v3, v4}, Lcom/broadcom/bt/service/framework/BluetoothAccessResponse;->process(Landroid/content/Context;Landroid/content/Intent;Z)V

    .line 144
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 145
    .local v1, msg:Landroid/os/Message;
    const/16 v3, 0x64

    iput v3, v1, Landroid/os/Message;->what:I

    .line 146
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 181
    .end local v0           #bluetoothAccessResponse:Lcom/broadcom/bt/service/framework/BluetoothAccessResponse;
    .end local v1           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 151
    :cond_0
    invoke-static {p0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->mLocalManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    .line 152
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->getIntent()Landroid/content/Intent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->mIntent:Landroid/content/Intent;

    .line 154
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 155
    .local v2, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v3, 0x1080351

    iput v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 157
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "broadcom.android.bluetooth.intent.action.BT_SERVICE_ACCESS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 163
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->mIntent:Landroid/content/Intent;

    invoke-direct {p0, v3}, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->loadAccessRequestParams(Landroid/content/Intent;)V

    .line 164
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->setActionAndServerString()V

    .line 169
    const v3, 0x7f080a41

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 175
    :goto_1
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->createView()Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 176
    const v3, 0x7f080a46

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 177
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 178
    const v3, 0x7f080a47

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/bluetooth/BluetoothRequestServiceDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 179
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_0

    .line 172
    :cond_1
    const-string v3, "BluetoothRequestServiceDialog"

    const-string v4, "Unknown Intent "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 185
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 189
    return-void
.end method
