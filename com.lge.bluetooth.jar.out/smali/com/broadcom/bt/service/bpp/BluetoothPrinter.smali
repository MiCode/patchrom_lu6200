.class public final Lcom/broadcom/bt/service/bpp/BluetoothPrinter;
.super Lcom/broadcom/bt/service/framework/BaseProxy;
.source "BluetoothPrinter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/bpp/BluetoothPrinter$1;,
        Lcom/broadcom/bt/service/bpp/BluetoothPrinter$PrintTaskBroadcastReceiver;,
        Lcom/broadcom/bt/service/bpp/BluetoothPrinter$PrintTaskCallback;,
        Lcom/broadcom/bt/service/bpp/BluetoothPrinter$PrinterBroadcastReceiver;,
        Lcom/broadcom/bt/service/bpp/BluetoothPrinter$PrinterCallback;,
        Lcom/broadcom/bt/service/bpp/BluetoothPrinter$PRINT_FORMAT;,
        Lcom/broadcom/bt/service/bpp/BluetoothPrinter$SERVICE_MASK;,
        Lcom/broadcom/bt/service/bpp/BluetoothPrinter$STATUS;,
        Lcom/broadcom/bt/service/bpp/BluetoothPrinter$JOB_STATE;,
        Lcom/broadcom/bt/service/bpp/BluetoothPrinter$STATE_REASON;,
        Lcom/broadcom/bt/service/bpp/BluetoothPrinter$STATE;
    }
.end annotation


# static fields
.field public static final ACTION_ON_AUTH:Ljava/lang/String; = "com.broadcom.bt.bpp.action.ON_AUTH"

.field public static final ACTION_ON_AUTH_PRTR:Ljava/lang/String; = "com.broadcom.bt.bpp.action.ON_AUTH_PRTR"

.field public static final ACTION_ON_DOC_CMPL:Ljava/lang/String; = "com.broadcom.bt.bpp.action.ON_DOC_CMPL"

.field public static final ACTION_ON_GET_OBJ:Ljava/lang/String; = "com.broadcom.bt.bpp.action.ON_GET_OBJ"

.field public static final ACTION_ON_GET_PRTR_CAP:Ljava/lang/String; = "com.broadcom.bt.bpp.action.ON_GET_PRTR_CAP"

.field public static final ACTION_ON_JOB_STATUS:Ljava/lang/String; = "com.broadcom.bt.bpp.action.ON_JOB_STATUS"

.field public static final ACTION_ON_PART_IMG:Ljava/lang/String; = "com.broadcom.bt.bpp.action.ON_PART_IMG"

.field public static final ACTION_ON_PRINTER_OPEN:Ljava/lang/String; = "com.broadcom.bt.bpp.action.ON_PRINTER_OPEN"

.field public static final ACTION_ON_PROGRESS:Ljava/lang/String; = "com.broadcom.bt.bpp.action.ON_PROGRESS"

.field public static final ACTION_ON_TASK_CLOSE:Ljava/lang/String; = "com.broadcom.bt.bpp.action.ON_CLOSE"

.field public static final ACTION_ON_TASK_OPEN:Ljava/lang/String; = "com.broadcom.bt.bpp.action.ON_OPEN"

.field public static final ACTION_ON_THUMBNAIL:Ljava/lang/String; = "com.broadcom.bt.bpp.action.ON_THUMBNAIL"

.field static final ACTION_PREFIX:Ljava/lang/String; = "com.broadcom.bt.bpp.action."

#the value of this static final field might be set in the static constructor
.field static final ACTION_PREFIX_LENGTH:I = 0x0

.field private static final D:Z = true

.field public static final EXTRA_BIP_CAP:Ljava/lang/String; = "BIPCAP"

.field public static final EXTRA_BIP_FEAT:Ljava/lang/String; = "BIP_FEAT"

.field public static final EXTRA_BPP_ATTR:Ljava/lang/String; = "BPPATTR"

.field public static final EXTRA_BPP_FEAT:Ljava/lang/String; = "BPP_FEAT"

.field public static final EXTRA_BYTES_TRANSFERRED:Ljava/lang/String; = "BYTES_TRANSFERRED"

.field public static final EXTRA_JOBID:Ljava/lang/String; = "JOBID"

.field public static final EXTRA_NAME:Ljava/lang/String; = "NAME"

.field public static final EXTRA_OPP_FEAT:Ljava/lang/String; = "OPP_FEAT"

.field public static final EXTRA_REALM_CHARSET:Ljava/lang/String; = "REALM_CHARSET"

.field public static final EXTRA_REALM_IDX:Ljava/lang/String; = "REALM_INDEX"

.field public static final EXTRA_REALM_LNGTH:Ljava/lang/String; = "REALM_LNGTH"

.field public static final EXTRA_REQD:Ljava/lang/String; = "REQD"

.field public static final EXTRA_STATUS:Ljava/lang/String; = "STATUS"

.field public static final EXTRA_SVC:Ljava/lang/String; = "SVC"

.field public static final EXTRA_SVCID:Ljava/lang/String; = "SVCID"

.field public static final EXTRA_TOTAL_BYTES:Ljava/lang/String; = "TOTAL_BYTES"

.field public static final PR_BIP_SERVICE_MASK:I = 0x2000

.field public static final PR_BPP_SERVICE_MASK:I = 0x1000

.field public static final PR_OPP_SERVICE_MASK:I = 0x80

.field public static final SERVICE_NAME:Ljava/lang/String; = "bluetooth_bpp_service"

.field private static final TAG:Ljava/lang/String; = "BluetoothPrinter"


# instance fields
.field private mCallback:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback;

.field private mEventHandler:Lcom/broadcom/bt/service/bpp/IPrinterEventHandler;

.field private mPrintTaskBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mPrintTaskCallback:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;

.field private mPrintTaskEventHandler:Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;

.field private mPrintTaskReceiverPriority:I

.field private mService:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-string v0, "com.broadcom.bt.bpp.action."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->ACTION_PREFIX_LENGTH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 439
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;-><init>()V

    .line 415
    const/16 v0, 0xc8

    iput v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mPrintTaskReceiverPriority:I

    .line 440
    return-void
.end method

.method public constructor <init>(Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 462
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;-><init>()V

    .line 415
    const/16 v0, 0xc8

    iput v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mPrintTaskReceiverPriority:I

    .line 464
    iput-object p1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mService:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;

    .line 465
    return-void
.end method

.method static synthetic access$1000(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/broadcom/bt/service/bpp/BluetoothPrinter;)Lcom/broadcom/bt/service/bpp/IPrinterEventHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mEventHandler:Lcom/broadcom/bt/service/bpp/IPrinterEventHandler;

    return-object v0
.end method

.method static synthetic access$300(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/broadcom/bt/service/bpp/BluetoothPrinter;)Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mPrintTaskEventHandler:Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;

    return-object v0
.end method

.method static synthetic access$700(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static createFilterPrintTaskEvents(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .locals 1
    .parameter "filter"

    .prologue
    .line 583
    if-nez p0, :cond_0

    .line 584
    new-instance p0, Landroid/content/IntentFilter;

    .end local p0
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 585
    .restart local p0
    const-string v0, "com.broadcom.bt.bpp.action.ON_DOC_CMPL"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 586
    const-string v0, "com.broadcom.bt.bpp.action.ON_GET_OBJ"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 587
    const-string v0, "com.broadcom.bt.bpp.action.ON_PROGRESS"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 588
    const-string v0, "com.broadcom.bt.bpp.action.ON_CLOSE"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 589
    const-string v0, "com.broadcom.bt.bpp.action.ON_OPEN"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 590
    const-string v0, "com.broadcom.bt.bpp.action.ON_THUMBNAIL"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 591
    const-string v0, "com.broadcom.bt.bpp.action.ON_PART_IMG"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 592
    const-string v0, "com.broadcom.bt.bpp.action.ON_JOB_STATUS"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 594
    :cond_0
    return-object p0
.end method

.method public static createFilterPrinterEvents(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .locals 1
    .parameter "filter"

    .prologue
    .line 573
    if-nez p0, :cond_0

    .line 574
    new-instance p0, Landroid/content/IntentFilter;

    .end local p0
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 575
    .restart local p0
    const-string v0, "com.broadcom.bt.bpp.action.ON_PRINTER_OPEN"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 576
    const-string v0, "com.broadcom.bt.bpp.action.ON_AUTH_PRTR"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 577
    const-string v0, "com.broadcom.bt.bpp.action.ON_GET_PRTR_CAP"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 579
    :cond_0
    return-object p0
.end method

.method public static doesClassMatch(I)Z
    .locals 2
    .parameter "btClass"

    .prologue
    .line 398
    const/high16 v0, 0x4

    invoke-static {p0, v0}, Landroid/bluetooth/BluetoothClass$Service;->hasService(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x10

    invoke-static {p0, v0}, Landroid/bluetooth/BluetoothClass$Service;->hasService(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/bluetooth/BluetoothClass$Device$Major;->getDeviceMajor(I)I

    move-result v0

    const/16 v1, 0x600

    if-ne v0, v1, :cond_0

    .line 403
    const/4 v0, 0x1

    .line 405
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getProxy(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z
    .locals 3
    .parameter "ctx"
    .parameter "cb"

    .prologue
    .line 427
    const-string v1, "bluetooth_bpp_service"

    invoke-static {p0, v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->isServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 428
    const-string v1, "BluetoothPrinter"

    const-string v2, "Unable to get BluetoothPrinter proxy: service is not enabled."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const/4 v1, 0x0

    .line 434
    :goto_0
    return v1

    .line 433
    :cond_0
    new-instance v0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;

    invoke-direct {v0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;-><init>()V

    .line 434
    .local v0, p:Lcom/broadcom/bt/service/bpp/BluetoothPrinter;
    const-string v1, "com.broadcom.bt.app.system"

    const-string v2, "com.broadcom.bt.app.system.BppService"

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->create(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized abortPrinting()V
    .locals 3

    .prologue
    .line 922
    monitor-enter p0

    :try_start_0
    const-string v1, "BluetoothPrinter"

    const-string v2, "Call BluetoothPrinterService.abort()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mService:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;->abort()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 928
    :goto_0
    monitor-exit p0

    return-void

    .line 925
    :catch_0
    move-exception v0

    .line 926
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "BluetoothPrinter"

    const-string v2, "BluetoothPrinterService.abort() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 922
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized cancelBppStatusReporting()V
    .locals 3

    .prologue
    .line 936
    monitor-enter p0

    :try_start_0
    const-string v1, "BluetoothPrinter"

    const-string v2, "Call BluetoothPrinterService.cancelBppStatus()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mService:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;->cancelBppStatus()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 942
    :goto_0
    monitor-exit p0

    return-void

    .line 939
    :catch_0
    move-exception v0

    .line 940
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "BluetoothPrinter"

    const-string v2, "BluetoothPrinterService.cancelBppStatus() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 936
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 945
    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finalize()V

    .line 946
    return-void
.end method

.method public declared-synchronized finish()V
    .locals 2

    .prologue
    .line 954
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mEventHandler:Lcom/broadcom/bt/service/bpp/IPrinterEventHandler;

    if-eqz v0, :cond_0

    .line 955
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mEventHandler:Lcom/broadcom/bt/service/bpp/IPrinterEventHandler;

    .line 959
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 960
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 961
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 963
    :cond_1
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mPrintTaskBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 964
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mPrintTaskBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 965
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mPrintTaskBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 978
    :cond_2
    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 979
    monitor-exit p0

    return-void

    .line 954
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPrinterCapabilities(Ljava/lang/String;)V
    .locals 3
    .parameter "bluetoothAddress"

    .prologue
    .line 647
    monitor-enter p0

    :try_start_0
    const-string v1, "BluetoothPrinter"

    const-string v2, "Call BluetoothPrinterService.getPrinterCapabilities()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 650
    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mService:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;->getCapabilities(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 654
    :goto_0
    monitor-exit p0

    return-void

    .line 651
    :catch_0
    move-exception v0

    .line 652
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "BluetoothPrinter"

    const-string v2, "BluetoothPrinterService.getPrinterCapabilities() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 647
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected init(Landroid/os/IBinder;)Z
    .locals 3
    .parameter "service"

    .prologue
    .line 444
    :try_start_0
    invoke-static {p1}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mService:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    const/4 v1, 0x1

    .line 449
    :goto_0
    return v1

    .line 447
    :catch_0
    move-exception v0

    .line 448
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothPrinter"

    const-string v2, "Unable to initialize proxy with service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 449
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized obexAuthenticationResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "password"
    .parameter "userId"

    .prologue
    .line 785
    monitor-enter p0

    :try_start_0
    const-string v1, "BluetoothPrinter"

    const-string v2, "Call BluetoothPrinterService.obexAuthenticationResponse()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mService:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;

    invoke-interface {v1, p1, p2}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;->obexAuthenticationResponse(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 794
    :goto_0
    monitor-exit p0

    return-void

    .line 789
    :catch_0
    move-exception v0

    .line 790
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "BluetoothPrinter"

    const-string v2, "BluetoothPrinterService.obexAuthenticationResponse() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 785
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onPrinterGetObject(JLjava/lang/String;)V
    .locals 1
    .parameter "jobId"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1173
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mPrintTaskEventHandler:Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;

    .line 1174
    .local v0, handler:Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;
    if-eqz v0, :cond_0

    .line 1175
    invoke-interface {v0, p1, p2, p3}, Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;->onPrinterGetObject(JLjava/lang/String;)V

    .line 1178
    :cond_0
    return-void
.end method

.method public onPrinterJobStatus(JLcom/broadcom/bt/service/bpp/JobStatus;)V
    .locals 1
    .parameter "jobId"
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mPrintTaskEventHandler:Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;

    .line 1183
    .local v0, handler:Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;
    if-eqz v0, :cond_0

    .line 1184
    invoke-interface {v0, p1, p2, p3}, Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;->onPrinterJobStatus(JLcom/broadcom/bt/service/bpp/JobStatus;)V

    .line 1187
    :cond_0
    return-void
.end method

.method public onPrinterPartialImage(JLjava/lang/String;)V
    .locals 1
    .parameter "jobId"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mPrintTaskEventHandler:Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;

    .line 1192
    .local v0, handler:Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;
    if-eqz v0, :cond_0

    .line 1193
    invoke-interface {v0, p1, p2, p3}, Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;->onPrinterPartialImage(JLjava/lang/String;)V

    .line 1196
    :cond_0
    return-void
.end method

.method public onPrinterProgress(JII)V
    .locals 1
    .parameter "jobId"
    .parameter "totalBytes"
    .parameter "processedBytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1200
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mPrintTaskEventHandler:Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;

    .line 1201
    .local v0, handler:Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;
    if-eqz v0, :cond_0

    .line 1202
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;->onPrinterProgress(JII)V

    .line 1205
    :cond_0
    return-void
.end method

.method public onPrinterTaskClosed(JI)V
    .locals 1
    .parameter "jobId"
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1209
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mPrintTaskEventHandler:Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;

    .line 1210
    .local v0, handler:Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;
    if-eqz v0, :cond_0

    .line 1211
    invoke-interface {v0, p1, p2, p3}, Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;->onPrinterTaskClosed(JI)V

    .line 1214
    :cond_0
    return-void
.end method

.method public onPrinterTaskOpen(JI)V
    .locals 1
    .parameter "jobId"
    .parameter "serviceId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mPrintTaskEventHandler:Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;

    .line 1219
    .local v0, handler:Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;
    if-eqz v0, :cond_0

    .line 1220
    invoke-virtual {p0, p1, p2, p3}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->onPrinterTaskOpen(JI)V

    .line 1223
    :cond_0
    return-void
.end method

.method public onPrinterThumbnail(J)V
    .locals 1
    .parameter "jobId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1226
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mPrintTaskEventHandler:Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;

    .line 1227
    .local v0, handler:Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;
    if-eqz v0, :cond_0

    .line 1228
    invoke-virtual {p0, p1, p2}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->onPrinterThumbnail(J)V

    .line 1231
    :cond_0
    return-void
.end method

.method public declared-synchronized printAny(Ljava/lang/String;Ljava/lang/String;I)J
    .locals 3
    .parameter "bluetoothAddress"
    .parameter "name"
    .parameter "fileFormat"

    .prologue
    .line 672
    monitor-enter p0

    :try_start_0
    const-string v1, "BluetoothPrinter"

    const-string v2, "Call BluetoothPrinterService.printAny()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 677
    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mService:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;

    const/4 v2, 0x0

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;->printAny(Ljava/lang/String;Ljava/lang/String;ILcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v1

    .line 684
    :goto_0
    monitor-exit p0

    return-wide v1

    .line 681
    :catch_0
    move-exception v0

    .line 682
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "BluetoothPrinter"

    const-string v2, "BluetoothPrinterService.printAny() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 684
    const-wide/16 v1, -0x1

    goto :goto_0

    .line 672
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized printBip(Ljava/lang/String;Ljava/lang/String;)J
    .locals 3
    .parameter "bluetoothAddress"
    .parameter "name"

    .prologue
    .line 756
    monitor-enter p0

    :try_start_0
    const-string v1, "BluetoothPrinter"

    const-string v2, "Call BluetoothPrinterService.printBip()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 761
    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mService:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;

    const/4 v2, 0x0

    invoke-interface {v1, p1, p2, v2}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;->printBip(Ljava/lang/String;Ljava/lang/String;Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v1

    .line 768
    :goto_0
    monitor-exit p0

    return-wide v1

    .line 765
    :catch_0
    move-exception v0

    .line 766
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "BluetoothPrinter"

    const-string v2, "BluetoothPrinterService.printBip() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 768
    const-wide/16 v1, -0x1

    goto :goto_0

    .line 756
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized printBpp(Ljava/lang/String;Ljava/lang/String;Lcom/broadcom/bt/service/bpp/BppParameters;)J
    .locals 3
    .parameter "bluetoothAddress"
    .parameter "name"
    .parameter "bppParams"

    .prologue
    .line 729
    monitor-enter p0

    :try_start_0
    const-string v1, "BluetoothPrinter"

    const-string v2, "Call BluetoothPrinterService.printBpp()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 734
    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mService:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;

    const/4 v2, 0x0

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;->printBpp(Ljava/lang/String;Ljava/lang/String;Lcom/broadcom/bt/service/bpp/BppParameters;Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v1

    .line 741
    :goto_0
    monitor-exit p0

    return-wide v1

    .line 738
    :catch_0
    move-exception v0

    .line 739
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "BluetoothPrinter"

    const-string v2, "BluetoothPrinterService.printBpp() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 741
    const-wide/16 v1, -0x1

    goto :goto_0

    .line 729
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized printObject(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/broadcom/bt/service/bpp/BipParameters;Lcom/broadcom/bt/service/bpp/BppParameters;Lcom/broadcom/bt/service/bpp/BppObjectResolver;)J
    .locals 11
    .parameter "bluetoothAddress"
    .parameter "serviceMask"
    .parameter "fileFormat"
    .parameter "header"
    .parameter "name"
    .parameter "bipParams"
    .parameter "bppParams"
    .parameter "bppObjectResolver"

    .prologue
    .line 801
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothPrinter"

    const-string v1, "Call BluetoothPrinterService.printObject()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 806
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mService:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;

    const/4 v9, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-interface/range {v0 .. v9}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;->print(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/broadcom/bt/service/bpp/BipParameters;Lcom/broadcom/bt/service/bpp/BppParameters;Lcom/broadcom/bt/service/bpp/BppObjectResolver;Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v0

    .line 821
    :goto_0
    monitor-exit p0

    return-wide v0

    .line 809
    :catch_0
    move-exception v10

    .line 810
    .local v10, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v0, "BluetoothPrinter"

    const-string v1, "BluetoothPrinterService.print() failed"

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 821
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 801
    .end local v10           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized printObject(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/broadcom/bt/service/bpp/BipParameters;Lcom/broadcom/bt/service/bpp/BppParameters;Lcom/broadcom/bt/service/bpp/BppObjectResolver;Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;)J
    .locals 2
    .parameter "bluetoothAddress"
    .parameter "serviceMask"
    .parameter "fileFormat"
    .parameter "header"
    .parameter "name"
    .parameter "bipParams"
    .parameter "bppParams"
    .parameter "bppObjectResolver"
    .parameter "printTaskEventHandler"

    .prologue
    .line 871
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p9}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->registerPrintTaskEventHandler(Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;)V

    .line 872
    invoke-virtual/range {p0 .. p8}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->printObject(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/broadcom/bt/service/bpp/BipParameters;Lcom/broadcom/bt/service/bpp/BppParameters;Lcom/broadcom/bt/service/bpp/BppObjectResolver;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 871
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized printOpp(Ljava/lang/String;Ljava/lang/String;I)J
    .locals 3
    .parameter "bluetoothAddress"
    .parameter "name"
    .parameter "fileFormat"

    .prologue
    .line 702
    monitor-enter p0

    :try_start_0
    const-string v1, "BluetoothPrinter"

    const-string v2, "Call BluetoothPrinterService.printOpp()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 707
    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mService:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;

    const/4 v2, 0x0

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;->printOpp(Ljava/lang/String;Ljava/lang/String;ILcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v1

    .line 714
    :goto_0
    monitor-exit p0

    return-wide v1

    .line 711
    :catch_0
    move-exception v0

    .line 712
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "BluetoothPrinter"

    const-string v2, "BluetoothPrinterService.printOpp() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 714
    const-wide/16 v1, -0x1

    goto :goto_0

    .line 702
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized registerPrintTaskEventHandler(Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;)V
    .locals 3
    .parameter "handler"

    .prologue
    .line 524
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0xc8

    :try_start_0
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->registerPrintTaskEventHandler(Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;Landroid/content/IntentFilter;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    monitor-exit p0

    return-void

    .line 524
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerPrintTaskEventHandler(Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;Landroid/content/IntentFilter;Landroid/os/Handler;I)V
    .locals 4
    .parameter "eventHandler"
    .parameter "filter"
    .parameter "threadHandler"
    .parameter "receiverPriority"

    .prologue
    .line 546
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mPrintTaskEventHandler:Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;

    .line 547
    iput p4, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mPrintTaskReceiverPriority:I

    .line 552
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mPrintTaskBroadcastReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 554
    if-nez p2, :cond_0

    .line 555
    const/4 v1, 0x0

    :try_start_1
    invoke-static {v1}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->createFilterPrintTaskEvents(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;

    move-result-object p2

    .line 557
    :cond_0
    iget v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mPrintTaskReceiverPriority:I

    invoke-virtual {p2, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 558
    new-instance v1, Lcom/broadcom/bt/service/bpp/BluetoothPrinter$PrintTaskBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter$PrintTaskBroadcastReceiver;-><init>(Lcom/broadcom/bt/service/bpp/BluetoothPrinter;Lcom/broadcom/bt/service/bpp/BluetoothPrinter$1;)V

    iput-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mPrintTaskBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 559
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mPrintTaskBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v2, p2, v3, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 570
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 561
    :catch_0
    move-exception v0

    .line 562
    .local v0, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v1, "BluetoothPrinter"

    const-string v2, "Error registering broadcast receiver"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 546
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized registerPrintTaskEventHandler(Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;Landroid/content/IntentFilter;ZI)V
    .locals 1
    .parameter "eventHandler"
    .parameter "filter"
    .parameter "createCallbackThread"
    .parameter "receiverPriority"

    .prologue
    .line 532
    monitor-enter p0

    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->initEventCallbackHandler()Landroid/os/Handler;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->registerPrintTaskEventHandler(Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;Landroid/content/IntentFilter;Landroid/os/Handler;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 540
    monitor-exit p0

    return-void

    .line 532
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerPrinterEventHandler(Lcom/broadcom/bt/service/bpp/IPrinterEventHandler;)V
    .locals 3
    .parameter "handler"

    .prologue
    .line 469
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0xc8

    :try_start_0
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->registerPrinterEventHandler(Lcom/broadcom/bt/service/bpp/IPrinterEventHandler;Landroid/content/IntentFilter;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    monitor-exit p0

    return-void

    .line 469
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerPrinterEventHandler(Lcom/broadcom/bt/service/bpp/IPrinterEventHandler;Landroid/content/IntentFilter;Landroid/os/Handler;I)V
    .locals 4
    .parameter "eventHandler"
    .parameter "filter"
    .parameter "threadHandler"
    .parameter "receiverPriority"

    .prologue
    .line 491
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mEventHandler:Lcom/broadcom/bt/service/bpp/IPrinterEventHandler;

    .line 492
    iput p4, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mReceiverPriority:I

    .line 497
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 499
    if-nez p2, :cond_0

    .line 500
    const/4 v1, 0x0

    :try_start_1
    invoke-static {v1}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->createFilterPrinterEvents(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;

    move-result-object p2

    .line 502
    :cond_0
    iget v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mReceiverPriority:I

    invoke-virtual {p2, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 503
    new-instance v1, Lcom/broadcom/bt/service/bpp/BluetoothPrinter$PrinterBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter$PrinterBroadcastReceiver;-><init>(Lcom/broadcom/bt/service/bpp/BluetoothPrinter;Lcom/broadcom/bt/service/bpp/BluetoothPrinter$1;)V

    iput-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 504
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v2, p2, v3, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 520
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 506
    :catch_0
    move-exception v0

    .line 507
    .local v0, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v1, "BluetoothPrinter"

    const-string v2, "Error registering broadcast receiver"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 491
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized registerPrinterEventHandler(Lcom/broadcom/bt/service/bpp/IPrinterEventHandler;Landroid/content/IntentFilter;ZI)V
    .locals 1
    .parameter "eventHandler"
    .parameter "filter"
    .parameter "createCallbackThread"
    .parameter "receiverPriority"

    .prologue
    .line 477
    monitor-enter p0

    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->initEventCallbackHandler()Landroid/os/Handler;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->registerPrinterEventHandler(Lcom/broadcom/bt/service/bpp/IPrinterEventHandler;Landroid/content/IntentFilter;Landroid/os/Handler;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 485
    monitor-exit p0

    return-void

    .line 477
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sendPartialImageResponse(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 887
    monitor-enter p0

    :try_start_0
    const-string v1, "BluetoothPrinter"

    const-string v2, "Call BluetoothPrinterService.partialImageResponse()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mService:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;->partialImageResponse(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 894
    :goto_0
    monitor-exit p0

    return-void

    .line 890
    :catch_0
    move-exception v0

    .line 891
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "BluetoothPrinter"

    const-string v2, "BluetoothPrinterService.partialImageResponse() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 887
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized sendReferenceObjectResponse(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 906
    monitor-enter p0

    :try_start_0
    const-string v1, "BluetoothPrinter"

    const-string v2, "Call BluetoothPrinterService.refObjectResponse()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mService:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;->refObjectResponse(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 912
    :goto_0
    monitor-exit p0

    return-void

    .line 909
    :catch_0
    move-exception v0

    .line 910
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "BluetoothPrinter"

    const-string v2, "BluetoothPrinterService.refObjectResponse() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 906
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized unregisterPrintTaskEventHandler()V
    .locals 2

    .prologue
    .line 620
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothPrinter"

    const-string v1, "unregisterPrintTaskEventHandler()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mPrintTaskEventHandler:Lcom/broadcom/bt/service/bpp/IPrintTaskEventHandler;

    .line 625
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mPrintTaskBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mPrintTaskBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 627
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mPrintTaskBroadcastReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 636
    :cond_0
    monitor-exit p0

    return-void

    .line 620
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregisterPrinterEventHandler()V
    .locals 2

    .prologue
    .line 599
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothPrinter"

    const-string v1, "unregisterEventHandler()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;->mEventHandler:Lcom/broadcom/bt/service/bpp/IPrinterEventHandler;

    .line 604
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 606
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 616
    :cond_0
    monitor-exit p0

    return-void

    .line 599
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
