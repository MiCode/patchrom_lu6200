.class final Lcom/android/settings_ex/bluetooth/BluetoothEventManager;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/bluetooth/BluetoothEventManager$BtUiEventHandler;,
        Lcom/android/settings_ex/bluetooth/BluetoothEventManager$DockEventHandler;,
        Lcom/android/settings_ex/bluetooth/BluetoothEventManager$PairingCancelHandler;,
        Lcom/android/settings_ex/bluetooth/BluetoothEventManager$UuidChangedHandler;,
        Lcom/android/settings_ex/bluetooth/BluetoothEventManager$ClassChangedHandler;,
        Lcom/android/settings_ex/bluetooth/BluetoothEventManager$BondStateChangedHandler;,
        Lcom/android/settings_ex/bluetooth/BluetoothEventManager$NameChangedHandler;,
        Lcom/android/settings_ex/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;,
        Lcom/android/settings_ex/bluetooth/BluetoothEventManager$DeviceFoundHandler;,
        Lcom/android/settings_ex/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;,
        Lcom/android/settings_ex/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;,
        Lcom/android/settings_ex/bluetooth/BluetoothEventManager$Handler;
    }
.end annotation


# static fields
.field private static final LG_BTUI_HIDDEN:Z

.field public static isRecordStarted:Z


# instance fields
.field private final mAdapterIntentFilter:Landroid/content/IntentFilter;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCallbacks:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/settings_ex/bluetooth/BluetoothCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mDeviceManager:Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;

.field private final mHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings_ex/bluetooth/BluetoothEventManager$Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

.field private final mProfileIntentFilter:Landroid/content/IntentFilter;

.field private mProfileManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    const-string v0, "persist.service.btui.hidden"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->LG_BTUI_HIDDEN:Z

    .line 82
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->isRecordStarted:Z

    return-void
.end method

.method constructor <init>(Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;Landroid/content/Context;)V
    .locals 4
    .parameter "adapter"
    .parameter "deviceManager"
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 115
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    .line 201
    new-instance v0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager$1;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothEventManager;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 116
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    .line 117
    iput-object p2, p0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;

    .line 118
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->mAdapterIntentFilter:Landroid/content/IntentFilter;

    .line 119
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->mProfileIntentFilter:Landroid/content/IntentFilter;

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->mHandlerMap:Ljava/util/Map;

    .line 121
    iput-object p3, p0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    .line 124
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    new-instance v1, Lcom/android/settings_ex/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothEventManager;Lcom/android/settings_ex/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settings_ex/bluetooth/BluetoothEventManager$Handler;)V

    .line 127
    const-string v0, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    new-instance v1, Lcom/android/settings_ex/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothEventManager;Z)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settings_ex/bluetooth/BluetoothEventManager$Handler;)V

    .line 128
    const-string v0, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    new-instance v1, Lcom/android/settings_ex/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothEventManager;Z)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settings_ex/bluetooth/BluetoothEventManager$Handler;)V

    .line 129
    const-string v0, "android.bluetooth.device.action.FOUND"

    new-instance v1, Lcom/android/settings_ex/bluetooth/BluetoothEventManager$DeviceFoundHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager$DeviceFoundHandler;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothEventManager;Lcom/android/settings_ex/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settings_ex/bluetooth/BluetoothEventManager$Handler;)V

    .line 130
    const-string v0, "android.bluetooth.device.action.DISAPPEARED"

    new-instance v1, Lcom/android/settings_ex/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothEventManager;Lcom/android/settings_ex/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settings_ex/bluetooth/BluetoothEventManager$Handler;)V

    .line 131
    const-string v0, "android.bluetooth.device.action.NAME_CHANGED"

    new-instance v1, Lcom/android/settings_ex/bluetooth/BluetoothEventManager$NameChangedHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager$NameChangedHandler;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothEventManager;Lcom/android/settings_ex/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settings_ex/bluetooth/BluetoothEventManager$Handler;)V

    .line 134
    const-string v0, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    new-instance v1, Lcom/android/settings_ex/bluetooth/BluetoothEventManager$BondStateChangedHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager$BondStateChangedHandler;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothEventManager;Lcom/android/settings_ex/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settings_ex/bluetooth/BluetoothEventManager$Handler;)V

    .line 135
    const-string v0, "android.bluetooth.device.action.PAIRING_CANCEL"

    new-instance v1, Lcom/android/settings_ex/bluetooth/BluetoothEventManager$PairingCancelHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager$PairingCancelHandler;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothEventManager;Lcom/android/settings_ex/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settings_ex/bluetooth/BluetoothEventManager$Handler;)V

    .line 138
    const-string v0, "android.bluetooth.device.action.CLASS_CHANGED"

    new-instance v1, Lcom/android/settings_ex/bluetooth/BluetoothEventManager$ClassChangedHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager$ClassChangedHandler;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothEventManager;Lcom/android/settings_ex/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settings_ex/bluetooth/BluetoothEventManager$Handler;)V

    .line 139
    const-string v0, "android.bluetooth.device.action.UUID"

    new-instance v1, Lcom/android/settings_ex/bluetooth/BluetoothEventManager$UuidChangedHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager$UuidChangedHandler;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothEventManager;Lcom/android/settings_ex/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settings_ex/bluetooth/BluetoothEventManager$Handler;)V

    .line 150
    const-string v0, "android.bluetooth.intent.action.AUTHORIZE_REJECTED"

    new-instance v1, Lcom/android/settings_ex/bluetooth/BluetoothEventManager$BtUiEventHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager$BtUiEventHandler;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothEventManager;Lcom/android/settings_ex/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settings_ex/bluetooth/BluetoothEventManager$Handler;)V

    .line 153
    const-string v0, "com.lge.bluetooth.toast_msg"

    new-instance v1, Lcom/android/settings_ex/bluetooth/BluetoothEventManager$BtUiEventHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager$BtUiEventHandler;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothEventManager;Lcom/android/settings_ex/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settings_ex/bluetooth/BluetoothEventManager$Handler;)V

    .line 156
    const-string v0, "android.bluetooth.pbap.intent.action.PBAP_STATE_CHANGED"

    new-instance v1, Lcom/android/settings_ex/bluetooth/BluetoothEventManager$BtUiEventHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager$BtUiEventHandler;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothEventManager;Lcom/android/settings_ex/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settings_ex/bluetooth/BluetoothEventManager$Handler;)V

    .line 159
    const-string v0, "voice_video_record_playing"

    new-instance v1, Lcom/android/settings_ex/bluetooth/BluetoothEventManager$BtUiEventHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager$BtUiEventHandler;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothEventManager;Lcom/android/settings_ex/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settings_ex/bluetooth/BluetoothEventManager$Handler;)V

    .line 160
    const-string v0, "voice_video_record_finish"

    new-instance v1, Lcom/android/settings_ex/bluetooth/BluetoothEventManager$BtUiEventHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager$BtUiEventHandler;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothEventManager;Lcom/android/settings_ex/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settings_ex/bluetooth/BluetoothEventManager$Handler;)V

    .line 163
    const-string v0, "android.intent.action.DOCK_EVENT"

    new-instance v1, Lcom/android/settings_ex/bluetooth/BluetoothEventManager$DockEventHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager$DockEventHandler;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothEventManager;Lcom/android/settings_ex/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settings_ex/bluetooth/BluetoothEventManager$Handler;)V

    .line 164
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->mAdapterIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 165
    return-void
.end method

.method private BtUiBondStateHandle(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;IZ)V
    .locals 4
    .parameter "context"
    .parameter "intent"
    .parameter "device"
    .parameter "bondState"
    .parameter "auto_accept"

    .prologue
    .line 631
    packed-switch p4, :pswitch_data_0

    .line 667
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 634
    :pswitch_1
    const-string v2, "android.bluetooth.device.extra.REASON"

    const/high16 v3, -0x8000

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 635
    .local v1, reason:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BTUI] BOND_NONE == reason("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") [failed:1 / rejected:2 / canceled:3 / down:4 / timeout:6 / rem_canceled:8 / removed:9]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->BtUiLog(Ljava/lang/String;)V

    .line 636
    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 645
    :pswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BTUI] == Not displaying any message for reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->BtUiLog(Ljava/lang/String;)V

    goto :goto_0

    .line 649
    :pswitch_3
    const-string v2, "notification"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 651
    .local v0, manager:Landroid/app/NotificationManager;
    const v2, 0x1080080

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 662
    .end local v0           #manager:Landroid/app/NotificationManager;
    .end local v1           #reason:I
    :pswitch_4
    if-nez p5, :cond_0

    .line 663
    const v2, 0x7f080af2

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->BtUiToast(Ljava/lang/String;)V

    goto :goto_0

    .line 631
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 636
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private BtUiLog(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 674
    const-string v0, "BluetoothEventManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    return-void
.end method

.method private BtUiToast(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 670
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 671
    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/bluetooth/BluetoothEventManager;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->mHandlerMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/bluetooth/BluetoothEventManager;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->BtUiLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/bluetooth/BluetoothEventManager;)Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings_ex/bluetooth/BluetoothEventManager;)Ljava/util/Collection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings_ex/bluetooth/BluetoothEventManager;)Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings_ex/bluetooth/BluetoothEventManager;)Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->mProfileManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings_ex/bluetooth/BluetoothEventManager;Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->dispatchDeviceAdded(Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/settings_ex/bluetooth/BluetoothEventManager;Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 60
    invoke-direct/range {p0 .. p5}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->BtUiBondStateHandle(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;IZ)V

    return-void
.end method

.method static synthetic access$1800(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-static {p0}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->getDockedDeviceAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings_ex/bluetooth/BluetoothEventManager;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->BtUiToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000()Z
    .locals 1

    .prologue
    .line 60
    sget-boolean v0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->LG_BTUI_HIDDEN:Z

    return v0
.end method

.method private dispatchDeviceAdded(Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;)V
    .locals 4
    .parameter "cachedDevice"

    .prologue
    .line 293
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v3

    .line 294
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/bluetooth/BluetoothCallback;

    .line 295
    .local v0, callback:Lcom/android/settings_ex/bluetooth/BluetoothCallback;
    invoke-interface {v0, p1}, Lcom/android/settings_ex/bluetooth/BluetoothCallback;->onDeviceAdded(Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    .line 297
    .end local v0           #callback:Lcom/android/settings_ex/bluetooth/BluetoothCallback;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 298
    return-void
.end method

.method private static getDockedDeviceAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 188
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.DOCK_EVENT"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 189
    .local v1, i:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 190
    const-string v4, "android.intent.extra.DOCK_STATE"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 191
    .local v2, state:I
    if-eqz v2, :cond_0

    .line 192
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 193
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 198
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #state:I
    :cond_0
    return-object v3
.end method


# virtual methods
.method addHandler(Ljava/lang/String;Lcom/android/settings_ex/bluetooth/BluetoothEventManager$Handler;)V
    .locals 1
    .parameter "action"
    .parameter "handler"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->mAdapterIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method addProfileHandler(Ljava/lang/String;Lcom/android/settings_ex/bluetooth/BluetoothEventManager$Handler;)V
    .locals 1
    .parameter "action"
    .parameter "handler"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->mProfileIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method readPairedDevices()Z
    .locals 8

    .prologue
    .line 533
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 534
    .local v0, bondedDevices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    if-nez v0, :cond_1

    .line 535
    const/4 v3, 0x0

    .line 548
    :cond_0
    return v3

    .line 538
    :cond_1
    const/4 v3, 0x0

    .line 539
    .local v3, deviceAdded:Z
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 540
    .local v2, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v5, v2}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 541
    .local v1, cachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;
    if-nez v1, :cond_2

    .line 542
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;

    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    iget-object v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->mProfileManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v5, v6, v7, v2}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 543
    invoke-direct {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->dispatchDeviceAdded(Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;)V

    .line 544
    const/4 v3, 0x1

    goto :goto_0
.end method

.method registerCallback(Lcom/android/settings_ex/bluetooth/BluetoothCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 173
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v1

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 175
    monitor-exit v1

    .line 176
    return-void

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method registerProfileIntentReceiver()V
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->mProfileIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 169
    return-void
.end method

.method setProfileManager(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;)V
    .locals 0
    .parameter "manager"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->mProfileManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;

    .line 112
    return-void
.end method

.method unregisterCallback(Lcom/android/settings_ex/bluetooth/BluetoothCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 180
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v1

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 182
    monitor-exit v1

    .line 183
    return-void

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
