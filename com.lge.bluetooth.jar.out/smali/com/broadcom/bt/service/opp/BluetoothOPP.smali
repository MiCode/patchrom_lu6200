.class public Lcom/broadcom/bt/service/opp/BluetoothOPP;
.super Lcom/broadcom/bt/service/framework/BaseProxy;
.source "BluetoothOPP.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/opp/BluetoothOPP$1;,
        Lcom/broadcom/bt/service/opp/BluetoothOPP$OppBroadcastReceiver;,
        Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;
    }
.end annotation


# static fields
.field private static final D:Z = true

.field public static final SERVICE_NAME:Ljava/lang/String; = "bluetooth_opp_service"

.field private static final TAG:Ljava/lang/String; = "BluetoothOPP"

.field private static mRefs:I


# instance fields
.field private mCallback:Lcom/broadcom/bt/service/opp/IOppCallback;

.field private mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;

.field private mService:Lcom/broadcom/bt/service/opp/IOppService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    sput v0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mRefs:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;

    .line 101
    sget v0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mRefs:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mRefs:I

    .line 102
    const-string v0, "BluetoothOPP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constructor: Reference Count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mRefs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void
.end method

.method public constructor <init>(Lcom/broadcom/bt/service/opp/IOppService;)V
    .locals 3
    .parameter "service"

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;

    .line 134
    sget v0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mRefs:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mRefs:I

    .line 135
    const-string v0, "BluetoothOPP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constructor: Reference Count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mRefs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iput-object p1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mService:Lcom/broadcom/bt/service/opp/IOppService;

    .line 139
    return-void
.end method

.method static synthetic access$100(Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/IOppEventHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;

    return-object v0
.end method

.method static synthetic access$1000(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 65
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 65
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 65
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 65
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 65
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 65
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 65
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 65
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 65
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 65
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 65
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static createFilterAll(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .locals 1
    .parameter "filter"

    .prologue
    .line 203
    invoke-static {p0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->createFilterOpc(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;

    move-result-object v0

    .line 204
    .local v0, f:Landroid/content/IntentFilter;
    invoke-static {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->createFilterOps(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;

    .line 205
    invoke-static {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->createFilterVCard(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;

    .line 206
    return-object v0
.end method

.method public static createFilterOpc(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .locals 1
    .parameter "filter"

    .prologue
    .line 250
    if-nez p0, :cond_0

    .line 251
    new-instance p0, Landroid/content/IntentFilter;

    .end local p0
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 253
    .restart local p0
    :cond_0
    const-string v0, "com.broadcom.bt.app.opp.action.ON_OPC_OPEN"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 254
    const-string v0, "com.broadcom.bt.app.opp.action.ON_OPC_ENABLE"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 255
    const-string v0, "com.broadcom.bt.app.opp.action.ON_OPC_PROGRESS"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 256
    const-string v0, "com.broadcom.bt.app.opp.action.ON_OPC_OBJECT_PUSHED"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 263
    const-string v0, "com.broadcom.bt.app.opp.action.ACTION_ON_OPC_OBJECT_PUSHED"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 264
    const-string v0, "com.broadcom.bt.app.opp.action.ON_OPC_CLOSE"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 266
    return-object p0
.end method

.method public static createFilterOps(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .locals 1
    .parameter "filter"

    .prologue
    .line 226
    if-nez p0, :cond_0

    .line 227
    new-instance p0, Landroid/content/IntentFilter;

    .end local p0
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 229
    .restart local p0
    :cond_0
    const-string v0, "broadcom.android.bluetooth.intent.action.BT_SERVICE_ACCESS"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 230
    const-string v0, "com.broadcom.bt.app.opp.action.ON_OPS_PROGRESS"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 237
    const-string v0, "com.broadcom.bt.app.opp.action.ON_OPS_OBJECT_RECEIVED"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 238
    const-string v0, "com.broadcom.bt.app.opp.action.ON_OPS_CLOSE"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 240
    return-object p0
.end method

.method public static createFilterVCard(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .locals 1
    .parameter "filter"

    .prologue
    .line 210
    if-nez p0, :cond_0

    .line 211
    new-instance p0, Landroid/content/IntentFilter;

    .end local p0
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 214
    .restart local p0
    :cond_0
    const-string v0, "com.broadcom.bt.app.opp.action.ON_OP_OWNER_VCARD_NOT_SET"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 215
    return-object p0
.end method

.method private getOutputResult(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .parameter "is"

    .prologue
    .line 653
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 654
    .local v1, r:Ljava/io/BufferedReader;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 655
    .local v0, b:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 657
    .local v2, s:Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 658
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 661
    :catch_0
    move-exception v3

    .line 665
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 663
    :catchall_0
    move-exception v3

    throw v3
.end method

.method public static getProxy(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z
    .locals 3
    .parameter "ctx"
    .parameter "cb"

    .prologue
    .line 89
    const-string v1, "bluetooth_opp_service"

    invoke-static {p0, v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->isServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 90
    const-string v1, "BluetoothOPP"

    const-string v2, "Unable to get proxy: service is not enabled."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/4 v1, 0x0

    .line 94
    :goto_0
    return v1

    .line 93
    :cond_0
    new-instance v0, Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-direct {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;-><init>()V

    .line 94
    .local v0, p:Lcom/broadcom/bt/service/opp/BluetoothOPP;
    const-string v1, "com.broadcom.bt.app.system"

    const-string v2, "com.broadcom.bt.app.system.OppService"

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->create(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public closeOpcSession()V
    .locals 2

    .prologue
    .line 321
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mService:Lcom/broadcom/bt/service/opp/IOppService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/opp/IOppService;->closeOpcSession()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :goto_0
    return-void

    .line 322
    :catch_0
    move-exception v0

    .line 323
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public closeOpsSession()V
    .locals 2

    .prologue
    .line 336
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mService:Lcom/broadcom/bt/service/opp/IOppService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/opp/IOppService;->closeOpsSession()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :goto_0
    return-void

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public deleteMergedVcards(Ljava/lang/String;)Z
    .locals 13
    .parameter "filePathPrefix"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 556
    const/4 v8, 0x0

    .line 558
    .local v8, success:Z
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 560
    .local v1, fPrefix:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 561
    .local v4, parentDir:Ljava/io/File;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "rm "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 562
    .local v6, rmCmd:Ljava/lang/String;
    const/4 v11, 0x3

    new-array v7, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "sh"

    aput-object v12, v7, v11

    const/4 v11, 0x1

    const-string v12, "-c"

    aput-object v12, v7, v11

    const/4 v11, 0x2

    aput-object v6, v7, v11

    .line 564
    .local v7, rmCmdArg:[Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v7, v12, v4}, Ljava/lang/Runtime;->exec([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 565
    .local v3, p:Ljava/lang/Process;
    const/4 v2, 0x0

    .line 567
    .local v2, is:Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    .line 569
    invoke-direct {p0, v2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->getOutputResult(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    .line 570
    .local v5, result:Ljava/lang/String;
    const-string v11, "BluetoothOPP"

    invoke-static {v11, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v11

    if-nez v11, :cond_1

    :cond_0
    move v9, v10

    .line 580
    :cond_1
    if-eqz v2, :cond_2

    .line 582
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 593
    .end local v1           #fPrefix:Ljava/io/File;
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #p:Ljava/lang/Process;
    .end local v4           #parentDir:Ljava/io/File;
    .end local v5           #result:Ljava/lang/String;
    .end local v6           #rmCmd:Ljava/lang/String;
    .end local v7           #rmCmdArg:[Ljava/lang/String;
    :cond_2
    :goto_0
    return v9

    .line 577
    .restart local v1       #fPrefix:Ljava/io/File;
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v3       #p:Ljava/lang/Process;
    .restart local v4       #parentDir:Ljava/io/File;
    .restart local v6       #rmCmd:Ljava/lang/String;
    .restart local v7       #rmCmdArg:[Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 580
    if-eqz v2, :cond_3

    .line 582
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 588
    :cond_3
    :goto_1
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .end local v1           #fPrefix:Ljava/io/File;
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #p:Ljava/lang/Process;
    .end local v4           #parentDir:Ljava/io/File;
    .end local v6           #rmCmd:Ljava/lang/String;
    .end local v7           #rmCmdArg:[Ljava/lang/String;
    :goto_2
    move v9, v8

    .line 593
    goto :goto_0

    .line 580
    .restart local v1       #fPrefix:Ljava/io/File;
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v3       #p:Ljava/lang/Process;
    .restart local v4       #parentDir:Ljava/io/File;
    .restart local v6       #rmCmd:Ljava/lang/String;
    .restart local v7       #rmCmdArg:[Ljava/lang/String;
    :catchall_0
    move-exception v9

    if-eqz v2, :cond_4

    .line 582
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 584
    :cond_4
    :goto_3
    :try_start_6
    throw v9
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 590
    .end local v1           #fPrefix:Ljava/io/File;
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #p:Ljava/lang/Process;
    .end local v4           #parentDir:Ljava/io/File;
    .end local v6           #rmCmd:Ljava/lang/String;
    .end local v7           #rmCmdArg:[Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 591
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 583
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #fPrefix:Ljava/io/File;
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v3       #p:Ljava/lang/Process;
    .restart local v4       #parentDir:Ljava/io/File;
    .restart local v5       #result:Ljava/lang/String;
    .restart local v6       #rmCmd:Ljava/lang/String;
    .restart local v7       #rmCmdArg:[Ljava/lang/String;
    :catch_2
    move-exception v10

    goto :goto_0

    .end local v5           #result:Ljava/lang/String;
    :catch_3
    move-exception v9

    goto :goto_1

    :catch_4
    move-exception v10

    goto :goto_3
.end method

.method public enableOpcSession()V
    .locals 2

    .prologue
    .line 306
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mService:Lcom/broadcom/bt/service/opp/IOppService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/opp/IOppService;->enableOpcSession()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    :goto_0
    return-void

    .line 307
    :catch_0
    move-exception v0

    .line 308
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public exchangeVcard(Ljava/lang/String;)V
    .locals 4
    .parameter "peerBDAddress"

    .prologue
    .line 473
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mService:Lcom/broadcom/bt/service/opp/IOppService;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/opp/IOppService;->exchangeVcard(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    :goto_0
    return-void

    .line 474
    :catch_0
    move-exception v0

    .line 475
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothOPP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exchangeVcard("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected finalize()V
    .locals 3

    .prologue
    .line 480
    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finalize()V

    .line 482
    sget v0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mRefs:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mRefs:I

    .line 483
    const-string v0, "BluetoothOPP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finalize: Reference Count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mRefs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    return-void
.end method

.method public declared-synchronized finish()V
    .locals 3

    .prologue
    .line 518
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;

    if-eqz v1, :cond_0

    .line 519
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;

    .line 528
    :cond_0
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mCallback:Lcom/broadcom/bt/service/opp/IOppCallback;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mService:Lcom/broadcom/bt/service/opp/IOppService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 530
    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mService:Lcom/broadcom/bt/service/opp/IOppService;

    iget-object v2, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mCallback:Lcom/broadcom/bt/service/opp/IOppCallback;

    invoke-interface {v1, v2}, Lcom/broadcom/bt/service/opp/IOppService;->unregisterCallback(Lcom/broadcom/bt/service/opp/IOppCallback;)V

    .line 531
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mService:Lcom/broadcom/bt/service/opp/IOppService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 536
    :cond_1
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mCallback:Lcom/broadcom/bt/service/opp/IOppCallback;

    .line 538
    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finish()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 539
    monitor-exit p0

    return-void

    .line 532
    :catch_0
    move-exception v0

    .line 533
    .local v0, t:Ljava/lang/Throwable;
    :try_start_3
    const-string v1, "BluetoothOPP"

    const-string v2, "Unable to unregister callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 518
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public grantAccess(IILjava/lang/String;)V
    .locals 4
    .parameter "operation"
    .parameter "access"
    .parameter "filePathName"

    .prologue
    .line 390
    const-string v1, "BluetoothOPP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "grantAccess("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mService:Lcom/broadcom/bt/service/opp/IOppService;

    invoke-interface {v1, p1, p2, p3}, Lcom/broadcom/bt/service/opp/IOppService;->grantAccess(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    :goto_0
    return-void

    .line 394
    :catch_0
    move-exception v0

    .line 395
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothOPP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "grantAccess("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected init(Landroid/os/IBinder;)Z
    .locals 3
    .parameter "service"

    .prologue
    .line 113
    :try_start_0
    invoke-static {p1}, Lcom/broadcom/bt/service/opp/IOppService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/opp/IOppService;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mService:Lcom/broadcom/bt/service/opp/IOppService;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    const/4 v1, 0x1

    .line 117
    :goto_0
    return v1

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothOPP"

    const-string v2, "Unable to initialize proxy with service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mergeVcards(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .parameter "filePathPrefix"
    .parameter "mergedVcardFilepath"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 615
    const/4 v8, 0x0

    .line 617
    .local v8, success:Z
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 618
    .local v3, fPrefix:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    .line 619
    .local v6, parentDir:Ljava/io/File;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "cat "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " > "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 620
    .local v0, catCmd:Ljava/lang/String;
    const/4 v11, 0x3

    new-array v1, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "sh"

    aput-object v12, v1, v11

    const/4 v11, 0x1

    const-string v12, "-c"

    aput-object v12, v1, v11

    const/4 v11, 0x2

    aput-object v0, v1, v11

    .line 622
    .local v1, catCmdArg:[Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v1, v12, v6}, Ljava/lang/Runtime;->exec([Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 623
    .local v5, p:Ljava/lang/Process;
    const/4 v4, 0x0

    .line 625
    .local v4, is:Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    .line 627
    invoke-direct {p0, v4}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->getOutputResult(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    .line 628
    .local v7, result:Ljava/lang/String;
    const-string v11, "BluetoothOPP"

    invoke-static {v11, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v11

    if-nez v11, :cond_1

    :cond_0
    move v9, v10

    .line 637
    :cond_1
    if-eqz v4, :cond_2

    .line 639
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 649
    .end local v0           #catCmd:Ljava/lang/String;
    .end local v1           #catCmdArg:[Ljava/lang/String;
    .end local v3           #fPrefix:Ljava/io/File;
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #p:Ljava/lang/Process;
    .end local v6           #parentDir:Ljava/io/File;
    .end local v7           #result:Ljava/lang/String;
    :cond_2
    :goto_0
    return v9

    .line 634
    .restart local v0       #catCmd:Ljava/lang/String;
    .restart local v1       #catCmdArg:[Ljava/lang/String;
    .restart local v3       #fPrefix:Ljava/io/File;
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v5       #p:Ljava/lang/Process;
    .restart local v6       #parentDir:Ljava/io/File;
    :catch_0
    move-exception v9

    .line 637
    if-eqz v4, :cond_3

    .line 639
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 645
    :cond_3
    :goto_1
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .end local v0           #catCmd:Ljava/lang/String;
    .end local v1           #catCmdArg:[Ljava/lang/String;
    .end local v3           #fPrefix:Ljava/io/File;
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #p:Ljava/lang/Process;
    .end local v6           #parentDir:Ljava/io/File;
    :goto_2
    move v9, v8

    .line 649
    goto :goto_0

    .line 637
    .restart local v0       #catCmd:Ljava/lang/String;
    .restart local v1       #catCmdArg:[Ljava/lang/String;
    .restart local v3       #fPrefix:Ljava/io/File;
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v5       #p:Ljava/lang/Process;
    .restart local v6       #parentDir:Ljava/io/File;
    :catchall_0
    move-exception v9

    if-eqz v4, :cond_4

    .line 639
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 641
    :cond_4
    :goto_3
    :try_start_6
    throw v9
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 646
    .end local v0           #catCmd:Ljava/lang/String;
    .end local v1           #catCmdArg:[Ljava/lang/String;
    .end local v3           #fPrefix:Ljava/io/File;
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #p:Ljava/lang/Process;
    .end local v6           #parentDir:Ljava/io/File;
    :catch_1
    move-exception v2

    .line 647
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 640
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #catCmd:Ljava/lang/String;
    .restart local v1       #catCmdArg:[Ljava/lang/String;
    .restart local v3       #fPrefix:Ljava/io/File;
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v5       #p:Ljava/lang/Process;
    .restart local v6       #parentDir:Ljava/io/File;
    .restart local v7       #result:Ljava/lang/String;
    :catch_2
    move-exception v10

    goto :goto_0

    .end local v7           #result:Ljava/lang/String;
    :catch_3
    move-exception v9

    goto :goto_1

    :catch_4
    move-exception v10

    goto :goto_3
.end method

.method public pullVcard(Ljava/lang/String;)V
    .locals 4
    .parameter "peerBDAddress"

    .prologue
    .line 455
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mService:Lcom/broadcom/bt/service/opp/IOppService;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/opp/IOppService;->pullVcard(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    :goto_0
    return-void

    .line 456
    :catch_0
    move-exception v0

    .line 457
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothOPP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pullVcard("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public pushObject(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "peerBDAddress"
    .parameter "filePathName"

    .prologue
    .line 356
    const-string v1, "BluetoothOPP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call pushObject("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mService:Lcom/broadcom/bt/service/opp/IOppService;

    if-eqz v1, :cond_0

    .line 365
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mService:Lcom/broadcom/bt/service/opp/IOppService;

    invoke-interface {v1, p1, p2}, Lcom/broadcom/bt/service/opp/IOppService;->pushObject(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 366
    :catch_0
    move-exception v0

    .line 367
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public declared-synchronized registerEventHandler(Lcom/broadcom/bt/service/opp/IOppEventHandler;)V
    .locals 3
    .parameter "handler"

    .prologue
    .line 152
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothOPP"

    const-string v1, "registerEventHandler()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0xc8

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->registerEventHandler(Lcom/broadcom/bt/service/opp/IOppEventHandler;Landroid/content/IntentFilter;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    monitor-exit p0

    return-void

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerEventHandler(Lcom/broadcom/bt/service/opp/IOppEventHandler;Landroid/content/IntentFilter;Landroid/os/Handler;I)V
    .locals 3
    .parameter "eventHandler"
    .parameter "filter"
    .parameter "threadHandler"
    .parameter "receiverPriority"

    .prologue
    .line 172
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;

    .line 191
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mCallback:Lcom/broadcom/bt/service/opp/IOppCallback;

    if-nez v1, :cond_0

    .line 192
    new-instance v1, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/broadcom/bt/service/opp/BluetoothOPP$OppCallback;-><init>(Lcom/broadcom/bt/service/opp/BluetoothOPP;Lcom/broadcom/bt/service/opp/BluetoothOPP$1;)V

    iput-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mCallback:Lcom/broadcom/bt/service/opp/IOppCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mService:Lcom/broadcom/bt/service/opp/IOppService;

    iget-object v2, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mCallback:Lcom/broadcom/bt/service/opp/IOppCallback;

    invoke-interface {v1, v2}, Lcom/broadcom/bt/service/opp/IOppService;->registerCallback(Lcom/broadcom/bt/service/opp/IOppCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 200
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v1, "BluetoothOPP"

    const-string v2, "Error registering callback handler"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 172
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized registerEventHandler(Lcom/broadcom/bt/service/opp/IOppEventHandler;Landroid/content/IntentFilter;ZI)V
    .locals 2
    .parameter "eventHandler"
    .parameter "filter"
    .parameter "createCallbackThread"
    .parameter "receiverPriority"

    .prologue
    .line 164
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0, v1, p4}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->registerEventHandler(Lcom/broadcom/bt/service/opp/IOppEventHandler;Landroid/content/IntentFilter;Landroid/os/Handler;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    monitor-exit p0

    return-void

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public requiresAccessProcessing()Z
    .locals 1

    .prologue
    .line 492
    const/4 v0, 0x1

    return v0
.end method

.method public setAccess(IZLjava/lang/Object;)V
    .locals 1
    .parameter "opCode"
    .parameter "allow"
    .parameter "name"

    .prologue
    .line 500
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    check-cast p3, Ljava/lang/String;

    .end local p3
    invoke-virtual {p0, p1, v0, p3}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->grantAccess(IILjava/lang/String;)V

    .line 501
    return-void

    .line 500
    .restart local p3
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setExchangeFolder(Ljava/lang/String;)V
    .locals 4
    .parameter "pathName"

    .prologue
    .line 432
    const-string v1, "BluetoothOPP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setExchangeFolder("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mService:Lcom/broadcom/bt/service/opp/IOppService;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/opp/IOppService;->setExchangeFolder(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    :goto_0
    return-void

    .line 437
    :catch_0
    move-exception v0

    .line 438
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothOPP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setExchangeFolder("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setOwnerVcard(Ljava/lang/String;)V
    .locals 4
    .parameter "fileName"

    .prologue
    .line 411
    const-string v1, "BluetoothOPP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOwnerVcard("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mService:Lcom/broadcom/bt/service/opp/IOppService;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/opp/IOppService;->setOwnerVcard(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    :goto_0
    return-void

    .line 416
    :catch_0
    move-exception v0

    .line 417
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothOPP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOwnerVcard("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public declared-synchronized unregisterEventHandler()V
    .locals 3

    .prologue
    .line 279
    monitor-enter p0

    :try_start_0
    const-string v1, "BluetoothOPP"

    const-string v2, "unregisterEventHandler()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mEventHandler:Lcom/broadcom/bt/service/opp/IOppEventHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mService:Lcom/broadcom/bt/service/opp/IOppService;

    iget-object v2, p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;->mCallback:Lcom/broadcom/bt/service/opp/IOppCallback;

    invoke-interface {v1, v2}, Lcom/broadcom/bt/service/opp/IOppService;->unregisterCallback(Lcom/broadcom/bt/service/opp/IOppCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 296
    :goto_0
    monitor-exit p0

    return-void

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v1, "BluetoothOPP"

    const-string v2, "Unable to unregister callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 279
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
