.class public Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "OppIncomingFileConfirmActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field mBluetoothAccessResponse:Lcom/broadcom/bt/service/framework/BluetoothAccessResponse;

.field private mContentView:Landroid/widget/TextView;

.field private mDeviceAddr:Ljava/lang/String;

.field private mDeviceName:Ljava/lang/String;

.field private mFileName:Ljava/lang/String;

.field mMode:I

.field private mNotificationId:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mTimeout:Z

.field private final mTimeoutHandler:Landroid/os/Handler;

.field private mTotalBytes:J

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->mNotificationId:I

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->mTimeout:Z

    .line 84
    new-instance v0, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity$1;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity$1;-><init>(Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 254
    new-instance v0, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity$2;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity$2;-><init>(Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->mTimeoutHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->onTimeout()V

    return-void
.end method

.method private cancelRequest()V
    .locals 5

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 192
    .local v1, resolver:Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->mUri:Landroid/net/Uri;

    const/16 v3, 0x1ea

    invoke-static {v1, v2, v3}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->updateStatus_Error(Landroid/content/ContentResolver;Landroid/net/Uri;I)V

    .line 193
    iget-object v2, p0, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->mUri:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->getRequest(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/broadcom/bt/app/opp/data/Job;

    move-result-object v0

    .line 194
    .local v0, request:Lcom/broadcom/bt/app/opp/data/Job;
    if-eqz v0, :cond_0

    .line 195
    invoke-static {v0}, Lcom/broadcom/bt/app/opp/notification/EventDispatcher;->requestCancelled(Lcom/broadcom/bt/app/opp/data/Job;)V

    .line 197
    :cond_0
    iget-object v2, p0, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->mBluetoothAccessResponse:Lcom/broadcom/bt/service/framework/BluetoothAccessResponse;

    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, p0, v3, v4}, Lcom/broadcom/bt/service/framework/BluetoothAccessResponse;->process(Landroid/content/Context;Landroid/content/Intent;Z)V

    .line 198
    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 149
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030004

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 151
    .local v1, view:Landroid/view/View;
    const v2, 0x7f08000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->mContentView:Landroid/widget/TextView;

    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, text:Ljava/lang/String;
    iget v2, p0, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->mMode:I

    packed-switch v2, :pswitch_data_0

    .line 164
    :goto_0
    iget-object v2, p0, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->mContentView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    return-object v1

    .line 156
    :pswitch_0
    const v2, 0x7f05000e

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->mDeviceName:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->mFileName:Ljava/lang/String;

    aput-object v4, v3, v6

    const/4 v4, 0x2

    iget-wide v5, p0, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->mTotalBytes:J

    invoke-static {p0, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 158
    goto :goto_0

    .line 160
    :pswitch_1
    const v2, 0x7f0500f6

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->mDeviceName:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onTimeout()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 234
    iput-boolean v2, p0, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->mTimeout:Z

    .line 235
    iget v0, p0, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 246
    :goto_0
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f050011

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->mTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 252
    return-void

    .line 237
    :pswitch_0
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->mContentView:Landroid/widget/TextView;

    const v1, 0x7f050012

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->mDeviceName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 241
    :pswitch_1
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->mContentView:Landroid/widget/TextView;

    const v1, 0x7f0500f7

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->mDeviceName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 235
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 169
    packed-switch p2, :pswitch_data_0

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 171
    :pswitch_0
    iget-boolean v0, p0, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->mTimeout:Z

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->mBluetoothAccessResponse:Lcom/broadcom/bt/service/framework/BluetoothAccessResponse;

    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, p0, v1, v2}, Lcom/broadcom/bt/service/framework/BluetoothAccessResponse;->process(Landroid/content/Context;Landroid/content/Intent;Z)V

    .line 173
    iget v0, p0, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->mMode:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 175
    :pswitch_1
    invoke-static {p0}, Lcom/broadcom/bt/app/opp/notification/NotificationUtils;->showToast_Receiving(Landroid/content/Context;)V

    goto :goto_0

    .line 178
    :pswitch_2
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->mDeviceName:Ljava/lang/String;

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->mDeviceAddr:Ljava/lang/String;

    invoke-static {p0, v2, v2, v0, v1}, Lcom/broadcom/bt/app/opp/notification/NotificationUtils;->showToast_Sending(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 185
    :pswitch_3
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->cancelRequest()V

    goto :goto_0

    .line 169
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_3
        :pswitch_0
    .end packed-switch

    .line 173
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 101
    .local v0, intent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/broadcom/bt/app/opp/data/OPPIntents;->getRemoteAddress(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->mDeviceAddr:Ljava/lang/String;

    .line 102
    invoke-static {v0}, Lcom/broadcom/bt/app/opp/data/OPPIntents;->getRemoteName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->mDeviceName:Ljava/lang/String;

    .line 103
    iget-object v2, p0, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->mDeviceName:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 104
    iget-object v2, p0, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->mDeviceAddr:Ljava/lang/String;

    iput-object v2, p0, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->mDeviceName:Ljava/lang/String;

    .line 106
    :cond_0
    invoke-static {v0}, Lcom/broadcom/bt/app/opp/data/OPPIntents;->getReceivedTotalBytes(Landroid/content/Intent;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->mTotalBytes:J

    .line 108
    invoke-static {v0}, Lcom/broadcom/bt/app/opp/data/OPPIntents;->getReceivedFilepath(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/broadcom/bt/app/opp/util/Utils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->mFileName:Ljava/lang/String;

    .line 109
    iget-object v2, p0, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->mFileName:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 110
    const v2, 0x7f050035

    invoke-virtual {p0, v2}, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->mFileName:Ljava/lang/String;

    .line 112
    :cond_1
    new-instance v2, Lcom/broadcom/bt/service/framework/BluetoothAccessResponse;

    invoke-direct {v2}, Lcom/broadcom/bt/service/framework/BluetoothAccessResponse;-><init>()V

    iput-object v2, p0, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->mBluetoothAccessResponse:Lcom/broadcom/bt/service/framework/BluetoothAccessResponse;

    .line 113
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->mUri:Landroid/net/Uri;

    .line 115
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->mNotificationId:I

    .line 117
    iget v2, p0, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->mNotificationId:I

    invoke-static {v2}, Lcom/broadcom/bt/app/opp/notification/EventDispatcher;->cancelFileConfirmNotification(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    const-string v2, "file_confirm_mode"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->mMode:I

    .line 123
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 124
    .local v1, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v2, 0x108009b

    iput v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 125
    iget v2, p0, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->mMode:I

    packed-switch v2, :pswitch_data_0

    .line 133
    :goto_1
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->createView()Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 134
    const v2, 0x7f050010

    invoke-virtual {p0, v2}, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 135
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 136
    const v2, 0x7f05000f

    invoke-virtual {p0, v2}, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 137
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 138
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->setupAlert()V

    .line 140
    iget-boolean v2, p0, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->mTimeout:Z

    if-eqz v2, :cond_2

    .line 141
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->onTimeout()V

    .line 144
    :cond_2
    iget-object v2, p0, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.btopp.intent.action.USER_CONFIRMATION_TIMEOUT"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 146
    return-void

    .line 127
    :pswitch_0
    const v2, 0x7f05000d

    invoke-virtual {p0, v2}, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    goto :goto_1

    .line 130
    :pswitch_1
    const v2, 0x7f0500f5

    invoke-virtual {p0, v2}, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    goto :goto_1

    .line 118
    .end local v1           #p:Lcom/android/internal/app/AlertController$AlertParams;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 125
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 212
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 213
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 214
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 202
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 203
    const-string v0, "OppIncomingFileConfirmActivity"

    const-string v1, "onKeyDown() called; Key: back key"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->cancelRequest()V

    .line 205
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->finish()V

    .line 207
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 218
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 219
    const-string v0, "user_timeout"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->mTimeout:Z

    .line 221
    iget-boolean v0, p0, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->mTimeout:Z

    if-eqz v0, :cond_0

    .line 222
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->onTimeout()V

    .line 224
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 228
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 230
    const-string v0, "user_timeout"

    iget-boolean v1, p0, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->mTimeout:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 231
    return-void
.end method
