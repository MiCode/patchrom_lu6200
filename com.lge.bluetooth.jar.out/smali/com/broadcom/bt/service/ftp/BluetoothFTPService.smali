.class public Lcom/broadcom/bt/service/ftp/BluetoothFTPService;
.super Lcom/broadcom/bt/service/framework/BaseService;
.source "BluetoothFTPService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/ftp/BluetoothFTPService$1;,
        Lcom/broadcom/bt/service/ftp/BluetoothFTPService$UnmountBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothFTPService"

.field private static final V:Z = true

.field private static isStateRunning:Z


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothService:Landroid/bluetooth/IBluetooth;

.field private mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback;",
            ">;"
        }
    .end annotation
.end field

.field mMediaScanner:Landroid/media/MediaScannerConnection;

.field private mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

.field private mUnmountReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput-boolean v0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->isStateRunning:Z

    .line 73
    invoke-static {}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->classInitNative()V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 131
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/framework/BaseService;-><init>(Landroid/content/Context;)V

    .line 64
    iput-object v1, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 65
    iput-object v1, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 66
    iput-object v1, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mBluetoothService:Landroid/bluetooth/IBluetooth;

    .line 132
    const/4 v0, 0x0

    sput-boolean v0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->isStateRunning:Z

    .line 136
    invoke-direct {p0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->getService()V

    .line 137
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 141
    new-instance v0, Landroid/media/MediaScannerConnection;

    invoke-direct {v0, p1, v1}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mMediaScanner:Landroid/media/MediaScannerConnection;

    .line 143
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 54
    sget-boolean v0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->isStateRunning:Z

    return v0
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupFtpNativeDataNative()V
.end method

.method private native closeFtpServerNative()V
.end method

.method private native disableFtpServerNative()V
.end method

.method private native enableDefaultFtpServerNative()V
.end method

.method private native enableFtpServerNative(ILjava/lang/String;Ljava/lang/String;ZB[BB)V
.end method

.method private native ftpServerAccessRspNative(BZLjava/lang/String;)V
.end method

.method private native ftpServerAuthenRspNative(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private getService()V
    .locals 3

    .prologue
    .line 114
    iget-object v1, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mBluetoothService:Landroid/bluetooth/IBluetooth;

    if-nez v1, :cond_1

    .line 115
    const-string v1, "bluetooth"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 116
    .local v0, b:Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 117
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Bluetooth service not available"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 119
    :cond_0
    invoke-static {v0}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mBluetoothService:Landroid/bluetooth/IBluetooth;

    .line 121
    .end local v0           #b:Landroid/os/IBinder;
    :cond_1
    return-void
.end method

.method private native initFtpNativeDataNative()V
.end method

.method private isActionCommand(B)Z
    .locals 1
    .parameter "opCode"

    .prologue
    .line 477
    const/4 v0, 0x7

    if-lt p1, v0, :cond_0

    const/16 v0, 0x9

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isActionCommandSupported(B)Z
    .locals 2
    .parameter "opCode"

    .prologue
    .line 484
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/broadcom/bt/service/ftp/FTPServiceConfig;->SUPPORTED_ACTION_COMMANDS:[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 485
    sget-object v1, Lcom/broadcom/bt/service/ftp/FTPServiceConfig;->SUPPORTED_ACTION_COMMANDS:[B

    aget-byte v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 486
    const/4 v1, 0x1

    .line 489
    :goto_1
    return v1

    .line 484
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 489
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static needAccessRequest()Z
    .locals 4

    .prologue
    .line 103
    :try_start_0
    const-string v1, "true"

    const-string v2, "service.brcm.bt.secure_mode"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 107
    .local v0, t:Ljava/lang/Throwable;
    :goto_0
    return v1

    .line 105
    .end local v0           #t:Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 106
    .restart local v0       #t:Ljava/lang/Throwable;
    const-string v1, "BluetoothFTPService"

    const-string v2, "needAccessRequest()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onFtpServerAccessRequested(Ljava/lang/String;ILjava/lang/String;BLjava/lang/String;)V
    .locals 20
    .parameter "fileName"
    .parameter "fileSize"
    .parameter "remoteDeviceName"
    .parameter "opCode"
    .parameter "remoteAddress"

    .prologue
    .line 494
    const/4 v3, 0x1

    move/from16 v0, p4

    if-ne v0, v3, :cond_0

    .line 496
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v17

    .line 498
    .local v17, root:Ljava/lang/String;
    :try_start_0
    new-instance v18, Landroid/os/StatFs;

    new-instance v3, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 499
    .local v18, stat:Landroid/os/StatFs;
    invoke-virtual/range {v18 .. v18}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual/range {v18 .. v18}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v5, v5

    mul-long v14, v3, v5

    .line 501
    .local v14, freeSpace:J
    move/from16 v0, p2

    int-to-long v3, v0

    cmp-long v3, v3, v14

    if-lez v3, :cond_1

    .line 502
    const-string v3, "BluetoothFTPService"

    const-string v4, "onFtpServerAccessRequested - Not enough free space"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p4

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v3, v2}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->ftpServerAccessRsp(BZLjava/lang/String;)V

    .line 506
    const-string v12, "android.bluetooth.intent.action.AUTHORIZE_REJECTED"

    .line 507
    .local v12, FTP_AUTHORIZE_REJECTED:Ljava/lang/String;
    new-instance v16, Landroid/content/Intent;

    move-object/from16 v0, v16

    invoke-direct {v0, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 508
    .local v16, intent:Landroid/content/Intent;
    const-string v3, "broadcom.android.bluetooth.intent.SERVICE"

    const-string v4, "service_ftp"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 509
    const-string v3, "ERROR_CODE"

    const-string v4, "SDCARD_FULL"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 510
    const-string v3, "FILE_NAME"

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 511
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 537
    .end local v12           #FTP_AUTHORIZE_REJECTED:Ljava/lang/String;
    .end local v14           #freeSpace:J
    .end local v16           #intent:Landroid/content/Intent;
    .end local v17           #root:Ljava/lang/String;
    .end local v18           #stat:Landroid/os/StatFs;
    :goto_0
    return-void

    .line 515
    .restart local v17       #root:Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 516
    .local v13, eee:Ljava/lang/Exception;
    const-string v3, "BluetoothFTPService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error calling statfs() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p4

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v3, v2}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->ftpServerAccessRsp(BZLjava/lang/String;)V

    goto :goto_0

    .line 520
    .end local v13           #eee:Ljava/lang/Exception;
    .end local v17           #root:Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->isActionCommand(B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 521
    const-string v3, "BluetoothFTPService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Checking if action command "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is supported."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->isActionCommandSupported(B)Z

    move-result v3

    if-nez v3, :cond_1

    .line 523
    const-string v3, "BluetoothFTPService"

    const-string v4, "Action command not supported. Denying request..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p4

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v3, v2}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->ftpServerAccessRsp(BZLjava/lang/String;)V

    goto :goto_0

    .line 529
    :cond_1
    invoke-static {}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->needAccessRequest()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const/4 v3, 0x0

    const-string v4, "bluetooth_ftp"

    const/4 v8, -0x1

    move/from16 v0, p2

    int-to-long v10, v0

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    move/from16 v7, p4

    move-object/from16 v9, p1

    invoke-static/range {v3 .. v11}, Lcom/broadcom/bt/service/framework/BluetoothIntent;->createAccessRequest(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;J)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "android.permission.BLUETOOTH"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 535
    :cond_2
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p4

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v3, v2}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->ftpServerAccessRsp(BZLjava/lang/String;)V

    goto/16 :goto_0
.end method

.method private onFtpServerAuthen(Ljava/lang/String;BZ)V
    .locals 0
    .parameter "user_id"
    .parameter "userid_length"
    .parameter "userid_required"

    .prologue
    .line 471
    return-void
.end method

.method private onFtpServerClosed()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 422
    const-string v1, "BluetoothFTPService"

    const-string v2, "onFtpServerClosed() called."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object v1, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mMediaScanner:Landroid/media/MediaScannerConnection;

    invoke-virtual {v1}, Landroid/media/MediaScannerConnection;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 427
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mMediaScanner:Landroid/media/MediaScannerConnection;

    invoke-virtual {v1}, Landroid/media/MediaScannerConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    :cond_0
    :goto_0
    sput-boolean v3, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->isStateRunning:Z

    .line 440
    const/4 v1, 0x0

    invoke-direct {p0, v1, v3}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->sendFTPConnectionStateChange(Ljava/lang/String;Z)V

    .line 444
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.broadcom.bt.app.ftp.action.ON_FTPS_CLOSED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 465
    return-void

    .line 428
    :catch_0
    move-exception v0

    .line 429
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothFTPService"

    const-string v2, "Unable to disconnect from media scanner"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private onFtpServerDelCompleted(Ljava/lang/String;B)V
    .locals 5
    .parameter "filePath"
    .parameter "status"

    .prologue
    .line 624
    const-string v2, "BluetoothFTPService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onFtpServerDelCompleted(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mMediaScanner:Landroid/media/MediaScannerConnection;

    invoke-virtual {v2}, Landroid/media/MediaScannerConnection;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 630
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mMediaScanner:Landroid/media/MediaScannerConnection;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 637
    :cond_0
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.broadcom.bt.app.ftp.action.ON_FTS_DEL_COMPLETE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 638
    .local v0, i:Landroid/content/Intent;
    const-string v2, "FILEPATH"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 639
    const-string v2, "STATUS"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 640
    iget-object v2, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 653
    return-void

    .line 631
    .end local v0           #i:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 632
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "BluetoothFTPService"

    const-string v3, "Unable to invoke MediaScanner.scanFile()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private onFtpServerDisabled()V
    .locals 2

    .prologue
    .line 337
    const-string v0, "BluetoothFTPService"

    const-string v1, "onFtpServerDisabled() called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->onStateChangeEvent(Z)V

    .line 339
    return-void
.end method

.method private onFtpServerEnabled()V
    .locals 2

    .prologue
    .line 332
    const-string v0, "BluetoothFTPService"

    const-string v1, "onFtpServerEnabled() called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->onStateChangeEvent(Z)V

    .line 334
    return-void
.end method

.method private onFtpServerFileTransferInProgress(II)V
    .locals 4
    .parameter "fileSize"
    .parameter "bytesTransferred"

    .prologue
    .line 541
    const-string v1, "BluetoothFTPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transferring file via FTP "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.broadcom.bt.app.ftp.action.ON_FTS_XFR_PROGRESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 546
    .local v0, i:Landroid/content/Intent;
    const-string v1, "TOTAL_BYTES"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 547
    const-string v1, "BYTES_TRANSFERRED"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 548
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 562
    return-void
.end method

.method private onFtpServerGetCompleted(Ljava/lang/String;B)V
    .locals 4
    .parameter "filePath"
    .parameter "status"

    .prologue
    .line 600
    const-string v1, "BluetoothFTPService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFtpServerGetCompleted(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.broadcom.bt.app.ftp.action.ON_FTS_GET_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 605
    .local v0, i:Landroid/content/Intent;
    const-string v1, "FILEPATH"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 606
    const-string v1, "STATUS"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 607
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 620
    return-void
.end method

.method private onFtpServerOpened(Ljava/lang/String;)V
    .locals 8
    .parameter "remoteAddress"

    .prologue
    const/4 v7, 0x1

    .line 367
    const-string v4, "BluetoothFTPService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onFtpServerOpened: remoteAddress = ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    const-string v5, "shared"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 372
    :cond_0
    invoke-virtual {p0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->closeFtpServer()V

    .line 373
    const-string v0, "android.bluetooth.intent.action.AUTHORIZE_REJECTED"

    .line 374
    .local v0, FTP_AUTHORIZE_REJECTED:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 375
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "broadcom.android.bluetooth.intent.SERVICE"

    const-string v5, "service_ftp"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    const-string v4, "ERROR_CODE"

    const-string v5, "NO_SDCARD"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    iget-object v4, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BLUETOOTH"

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 419
    .end local v0           #FTP_AUTHORIZE_REJECTED:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 381
    :cond_1
    sput-boolean v7, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->isStateRunning:Z

    .line 383
    iget-object v4, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mMediaScanner:Landroid/media/MediaScannerConnection;

    invoke-virtual {v4}, Landroid/media/MediaScannerConnection;->isConnected()Z

    move-result v4

    if-nez v4, :cond_2

    .line 385
    :try_start_0
    iget-object v4, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mMediaScanner:Landroid/media/MediaScannerConnection;

    invoke-virtual {v4}, Landroid/media/MediaScannerConnection;->connect()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    :cond_2
    :goto_1
    invoke-direct {p0, p1, v7}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->sendFTPConnectionStateChange(Ljava/lang/String;Z)V

    .line 397
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.broadcom.bt.app.ftp.action.ON_FTS_OPENED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 398
    .local v1, i:Landroid/content/Intent;
    const-string v4, "RMT_DEV_ADDR"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    iget-object v4, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BLUETOOTH"

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 386
    .end local v1           #i:Landroid/content/Intent;
    :catch_0
    move-exception v3

    .line 387
    .local v3, t:Ljava/lang/Throwable;
    const-string v4, "BluetoothFTPService"

    const-string v5, "Unable to connect to media scanner"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private onFtpServerPutCompleted(Ljava/lang/String;B)V
    .locals 5
    .parameter "filePath"
    .parameter "status"

    .prologue
    .line 566
    const-string v2, "BluetoothFTPService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onFtpServerPutCompleted(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mMediaScanner:Landroid/media/MediaScannerConnection;

    invoke-virtual {v2}, Landroid/media/MediaScannerConnection;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 573
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mMediaScanner:Landroid/media/MediaScannerConnection;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    :cond_0
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.broadcom.bt.app.ftp.action.ON_FTPS_PUT_COMPLETE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 581
    .local v0, i:Landroid/content/Intent;
    const-string v2, "FILEPATH"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 582
    const-string v2, "STATUS"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 583
    iget-object v2, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 596
    return-void

    .line 574
    .end local v0           #i:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 575
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "BluetoothFTPService"

    const-string v3, "Unable to invoke MediaScanner.scanFile()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private sendFTPConnectionStateChange(Ljava/lang/String;Z)V
    .locals 6
    .parameter "remoteAddress"
    .parameter "bOpened"

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    .line 345
    invoke-direct {p0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->getService()V

    .line 348
    if-eqz p1, :cond_0

    .line 349
    iget-object v4, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    iput-object v4, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 353
    :cond_0
    if-eqz p2, :cond_2

    move v2, v3

    .line 354
    .local v2, state:I
    :goto_0
    if-eqz p2, :cond_3

    .line 356
    .local v1, prevState:I
    :goto_1
    iget-object v3, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mBluetoothService:Landroid/bluetooth/IBluetooth;

    if-eqz v3, :cond_1

    .line 358
    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mBluetoothService:Landroid/bluetooth/IBluetooth;

    iget-object v4, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v5, 0x7

    invoke-interface {v3, v4, v5, v2, v1}, Landroid/bluetooth/IBluetooth;->sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    :cond_1
    :goto_2
    return-void

    .end local v1           #prevState:I
    .end local v2           #state:I
    :cond_2
    move v2, v1

    .line 353
    goto :goto_0

    .restart local v2       #state:I
    :cond_3
    move v1, v3

    .line 354
    goto :goto_1

    .line 359
    .restart local v1       #prevState:I
    :catch_0
    move-exception v0

    .line 360
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "BluetoothFTPService"

    const-string v4, "RemoteException in sendConnectionStateChange"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method public declared-synchronized closeFtpServer()V
    .locals 4

    .prologue
    .line 253
    monitor-enter p0

    const/4 v2, 0x0

    :try_start_0
    sput-boolean v2, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->isStateRunning:Z

    .line 256
    iget-object v2, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mMediaScanner:Landroid/media/MediaScannerConnection;

    invoke-virtual {v2}, Landroid/media/MediaScannerConnection;->isConnected()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 258
    :try_start_1
    iget-object v2, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mMediaScanner:Landroid/media/MediaScannerConnection;

    invoke-virtual {v2}, Landroid/media/MediaScannerConnection;->disconnect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 265
    :cond_0
    :goto_0
    :try_start_2
    invoke-direct {p0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->closeFtpServerNative()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 269
    :goto_1
    monitor-exit p0

    return-void

    .line 259
    :catch_0
    move-exception v1

    .line 260
    .local v1, t:Ljava/lang/Throwable;
    :try_start_3
    const-string v2, "BluetoothFTPService"

    const-string v3, "Unable to disconnect from media scanner"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 253
    .end local v1           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 266
    :catch_1
    move-exception v0

    .line 267
    .local v0, e:Ljava/lang/Exception;
    :try_start_4
    const-string v2, "BluetoothFTPService"

    const-string v3, "closeFtpServerNative failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->finish()V

    .line 246
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 247
    return-void
.end method

.method public declared-synchronized finish()V
    .locals 3

    .prologue
    .line 234
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsFinish:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 236
    :try_start_1
    invoke-direct {p0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->cleanupFtpNativeDataNative()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 240
    :goto_0
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsFinish:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 242
    :cond_0
    monitor-exit p0

    return-void

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, t:Ljava/lang/Throwable;
    :try_start_3
    const-string v1, "BluetoothFTPService"

    const-string v2, "Unable to cleanup ftp service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 234
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized ftpServerAccessRsp(BZLjava/lang/String;)V
    .locals 3
    .parameter "op_code"
    .parameter "access"
    .parameter "filename"

    .prologue
    .line 300
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->ftpServerAccessRspNative(BZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :goto_0
    monitor-exit p0

    return-void

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "BluetoothFTPService"

    const-string v2, "ftpServerAccessRspNative failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 300
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized ftpServerAuthenRsp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "password"
    .parameter "userId"

    .prologue
    .line 278
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->ftpServerAuthenRspNative(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :goto_0
    monitor-exit p0

    return-void

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "BluetoothFTPService"

    const-string v2, "ftpServerAuthRspNative failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 278
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    const-string v0, "bluetooth_ftp"

    return-object v0
.end method

.method public declared-synchronized init()V
    .locals 1

    .prologue
    .line 159
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->initFtpNativeDataNative()V

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsFinish:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    monitor-exit p0

    return-void

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public registerCallback(Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 307
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 310
    :cond_0
    return-void
.end method

.method public declared-synchronized start()V
    .locals 5

    .prologue
    .line 174
    monitor-enter p0

    :try_start_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.MEDIA_EJECT"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 175
    .local v1, iFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    const-string v3, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    const-string v3, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    const-string v3, "broadcom.android.bluetooth.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    const-string v3, "file"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 180
    const-string v3, "*"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v3, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_0

    .line 183
    :try_start_1
    iget-object v3, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 188
    :cond_0
    :goto_0
    :try_start_2
    new-instance v3, Lcom/broadcom/bt/service/ftp/BluetoothFTPService$UnmountBroadcastReceiver;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService$UnmountBroadcastReceiver;-><init>(Lcom/broadcom/bt/service/ftp/BluetoothFTPService;Lcom/broadcom/bt/service/ftp/BluetoothFTPService$1;)V

    iput-object v3, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 189
    iget-object v3, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 190
    invoke-direct {p0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->enableDefaultFtpServerNative()V

    .line 191
    const/4 v3, 0x1

    sput-boolean v3, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->isStateRunning:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 195
    .end local v1           #iFilter:Landroid/content/IntentFilter;
    :goto_1
    monitor-exit p0

    return-void

    .line 184
    .restart local v1       #iFilter:Landroid/content/IntentFilter;
    :catch_0
    move-exception v2

    .line 185
    .local v2, t:Ljava/lang/Throwable;
    :try_start_3
    const-string v3, "BluetoothFTPService"

    const-string v4, "Unable to unregister unmount broadcast receiver"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 192
    .end local v1           #iFilter:Landroid/content/IntentFilter;
    .end local v2           #t:Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 193
    .local v0, e:Ljava/lang/Exception;
    :try_start_4
    const-string v3, "BluetoothFTPService"

    const-string v4, "enableDefaultFtpServerNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 174
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized stop()V
    .locals 4

    .prologue
    .line 201
    monitor-enter p0

    const/4 v2, 0x0

    :try_start_0
    sput-boolean v2, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->isStateRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    :try_start_1
    invoke-direct {p0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->disableFtpServerNative()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 211
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mMediaScanner:Landroid/media/MediaScannerConnection;

    invoke-virtual {v2}, Landroid/media/MediaScannerConnection;->isConnected()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    :try_start_3
    iget-object v2, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mMediaScanner:Landroid/media/MediaScannerConnection;

    invoke-virtual {v2}, Landroid/media/MediaScannerConnection;->disconnect()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 219
    :cond_0
    :goto_1
    :try_start_4
    iget-object v2, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_1

    .line 221
    :try_start_5
    iget-object v2, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 222
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    .line 228
    :cond_1
    :goto_2
    monitor-exit p0

    return-void

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, e:Ljava/lang/Exception;
    :try_start_6
    const-string v2, "BluetoothFTPService"

    const-string v3, "disableFtpServerNative failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 201
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 214
    :catch_1
    move-exception v1

    .line 215
    .local v1, t:Ljava/lang/Throwable;
    :try_start_7
    const-string v2, "BluetoothFTPService"

    const-string v3, "Unable to disconnect from media scanner"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 223
    .end local v1           #t:Ljava/lang/Throwable;
    :catch_2
    move-exception v1

    .line 224
    .restart local v1       #t:Ljava/lang/Throwable;
    const-string v2, "BluetoothFTPService"

    const-string v3, "Unable to unregister unmount broadcast receiver"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2
.end method

.method public unregisterCallback(Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 313
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 316
    :cond_0
    return-void
.end method
