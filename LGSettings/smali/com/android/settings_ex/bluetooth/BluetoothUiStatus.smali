.class public Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;
.super Ljava/lang/Object;
.source "BluetoothUiStatus.java"


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private nPhoneState:I

.field private oPhoneState:I


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;)V
    .locals 1
    .parameter "localBluetoothManager"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/settings_ex/bluetooth/BluetoothUiStatus$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/bluetooth/BluetoothUiStatus$1;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings_ex/bluetooth/BluetoothUiStatus$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/bluetooth/BluetoothUiStatus$2;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;->mManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;->mManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;->mContext:Landroid/content/Context;

    .line 98
    return-void
.end method

.method static synthetic access$002(Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;->oPhoneState:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;->nPhoneState:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;->nPhoneState:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;)Landroid/telephony/TelephonyManager;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;)Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;->mManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;->sendIntentCallState()V

    return-void
.end method

.method private sendIntentCallState()V
    .locals 3

    .prologue
    .line 136
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.btui.callState"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 137
    .local v0, intent:Landroid/content/Intent;
    iget v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;->oPhoneState:I

    iget v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;->nPhoneState:I

    if-eq v1, v2, :cond_0

    const-string v1, "btui_call_state_prev"

    iget v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;->oPhoneState:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "btui_call_state"

    iget v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;->nPhoneState:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public isVoiceConversation()Z
    .locals 3

    .prologue
    .line 121
    const/4 v1, 0x0

    .line 122
    .local v1, value:Z
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 123
    .local v0, nState:I
    packed-switch v0, :pswitch_data_0

    .line 132
    :goto_0
    :pswitch_0
    return v1

    .line 128
    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public start()V
    .locals 4

    .prologue
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyPhoneCallState(I)V

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;->nPhoneState:I

    .line 114
    return-void
.end method
