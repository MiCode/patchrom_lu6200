.class public Lcom/broadcom/bt/service/map/MapEventLoop;
.super Lcom/broadcom/bt/service/framework/BaseService;
.source "MapEventLoop.java"

# interfaces
.implements Lcom/broadcom/bt/service/map/MAPConstants;


# static fields
.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field private static final D:Z = true

.field private static final TAG:Ljava/lang/String; = "MAP.MapEventLoop"

.field private static final V:Z = true


# instance fields
.field private isAccessGranted:Z

.field private mInterrupted:Z

.field private mObexNativeData:I

.field private mSvc:Lcom/broadcom/bt/service/map/MapService;

.field private mThread:Ljava/lang/Thread;

.field private m_MapXmsProvider:Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 45
    invoke-static {}, Lcom/broadcom/bt/service/map/MapEventLoop;->Native_classBluetoothMapInit()V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/framework/BaseService;-><init>(Landroid/content/Context;)V

    .line 39
    iput-boolean v1, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->isAccessGranted:Z

    .line 40
    new-instance v0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;

    invoke-direct {v0}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->m_MapXmsProvider:Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;

    .line 55
    iput-boolean v1, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mInterrupted:Z

    .line 66
    const-string v0, "MAP.MapEventLoop"

    const-string v1, "constructor()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/MapEventLoop;->Native_classInitData()V

    .line 70
    new-instance v0, Lcom/broadcom/bt/service/map/MapService;

    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/broadcom/bt/service/map/MapService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    .line 71
    return-void
.end method

.method private native Native_BluetoothMapMSEEventLoop()V
.end method

.method private static native Native_classBluetoothMapInit()V
.end method

.method private native Native_classInitData()V
.end method

.method private native Native_classUninitData()V
.end method

.method static synthetic access$000(Lcom/broadcom/bt/service/map/MapEventLoop;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/broadcom/bt/service/map/MapEventLoop;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/broadcom/bt/service/map/MapEventLoop;)Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->m_MapXmsProvider:Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;

    return-object v0
.end method

.method static synthetic access$300(Lcom/broadcom/bt/service/map/MapEventLoop;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mInterrupted:Z

    return v0
.end method

.method static synthetic access$400(Lcom/broadcom/bt/service/map/MapEventLoop;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/MapEventLoop;->Native_BluetoothMapMSEEventLoop()V

    return-void
.end method

.method static synthetic access$500(Lcom/broadcom/bt/service/map/MapEventLoop;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/MapEventLoop;->Native_classUninitData()V

    return-void
.end method

.method static synthetic access$602(Lcom/broadcom/bt/service/map/MapEventLoop;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mThread:Ljava/lang/Thread;

    return-object p1
.end method


# virtual methods
.method fixPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "sCurrentPath"
    .parameter "sPath"

    .prologue
    .line 767
    move-object v0, p1

    .line 769
    .local v0, s_provider_folder:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 771
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 773
    :cond_0
    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getFolderEntryFromProvider(Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;IIILjava/lang/String;)V
    .locals 14
    .parameter "s"
    .parameter "mse_session_id"
    .parameter "first_item"
    .parameter "ref_data"
    .parameter "s_provider_folder"

    .prologue
    .line 309
    const-string v2, "MAP.MapEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFolderEntryFromProvider"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v1, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    .line 314
    .local v1, mService:Lcom/broadcom/bt/service/map/MapService;
    if-nez v1, :cond_0

    .line 315
    const-string v2, "MAP.MapEventLoop"

    const-string v4, "Service is null...."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    .end local v1           #mService:Lcom/broadcom/bt/service/map/MapService;
    :goto_0
    return-void

    .line 324
    .restart local v1       #mService:Lcom/broadcom/bt/service/map/MapService;
    :cond_0
    const/4 v13, 0x0

    .line 325
    .local v13, status:B
    if-eqz p3, :cond_1

    .line 326
    :try_start_0
    iget-object v2, p1, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    iget-object v1, v2, Lcom/broadcom/bt/service/map/MapProviderContext;->mCallback:Lcom/broadcom/bt/service/map/IMapCallback;

    .end local v1           #mService:Lcom/broadcom/bt/service/map/MapService;
    iget-object v2, p1, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    iget-object v3, v2, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    iget-object v2, p1, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    iget-object v4, v2, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSId:Ljava/lang/String;

    const/16 v6, 0x270f

    const/4 v7, 0x0

    move/from16 v2, p2

    move-object/from16 v5, p5

    invoke-interface/range {v1 .. v7}, Lcom/broadcom/bt/service/map/IMapCallback;->onMCEGetFolderListing(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    move v3, v13

    .end local v13           #status:B
    .local v3, status:B
    goto :goto_0

    .line 330
    .end local v3           #status:B
    .restart local v1       #mService:Lcom/broadcom/bt/service/map/MapService;
    .restart local v13       #status:B
    :cond_1
    iget-object v2, p1, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mFolderInfo:[Lcom/broadcom/bt/service/map/FolderInfo;

    array-length v2, v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move/from16 v0, p4

    if-ne v0, v2, :cond_2

    .line 334
    const/4 v3, 0x2

    .line 335
    .end local v13           #status:B
    .restart local v3       #status:B
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_1
    const-string v6, ""

    const-string v7, ""

    const/4 v8, 0x0

    move/from16 v2, p2

    invoke-virtual/range {v1 .. v8}, Lcom/broadcom/bt/service/map/MapService;->sendFolderListingInfo(IBIILjava/lang/String;Ljava/lang/String;B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 351
    :catch_0
    move-exception v12

    .line 352
    .end local v1           #mService:Lcom/broadcom/bt/service/map/MapService;
    .local v12, e:Landroid/os/RemoteException;
    :goto_1
    const-string v2, "MAP.MapEventLoop"

    invoke-virtual {v12}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 339
    .end local v3           #status:B
    .end local v12           #e:Landroid/os/RemoteException;
    .restart local v1       #mService:Lcom/broadcom/bt/service/map/MapService;
    .restart local v13       #status:B
    :cond_2
    add-int/lit8 p4, p4, 0x1

    .line 341
    :try_start_2
    iget-object v2, p1, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mFolderInfo:[Lcom/broadcom/bt/service/map/FolderInfo;

    add-int/lit8 v4, p4, -0x1

    aget-object v2, v2, v4

    iget-wide v4, v2, Lcom/broadcom/bt/service/map/FolderInfo;->mFolderSizeBytes:J

    long-to-int v8, v4

    iget-object v2, p1, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mFolderInfo:[Lcom/broadcom/bt/service/map/FolderInfo;

    add-int/lit8 v4, p4, -0x1

    aget-object v2, v2, v4

    iget-object v9, v2, Lcom/broadcom/bt/service/map/FolderInfo;->mFolderName:Ljava/lang/String;

    iget-object v2, p1, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mFolderInfo:[Lcom/broadcom/bt/service/map/FolderInfo;

    add-int/lit8 v4, p4, -0x1

    aget-object v2, v2, v4

    iget-object v10, v2, Lcom/broadcom/bt/service/map/FolderInfo;->mCreatedDateTimeMS:Ljava/lang/String;

    iget-object v2, p1, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mFolderInfo:[Lcom/broadcom/bt/service/map/FolderInfo;

    add-int/lit8 v4, p4, -0x1

    aget-object v2, v2, v4

    iget-wide v4, v2, Lcom/broadcom/bt/service/map/FolderInfo;->mMode:J

    long-to-int v2, v4

    int-to-byte v11, v2

    move-object v4, v1

    move/from16 v5, p2

    move v6, v13

    move/from16 v7, p4

    invoke-virtual/range {v4 .. v11}, Lcom/broadcom/bt/service/map/MapService;->sendFolderListingInfo(IBIILjava/lang/String;Ljava/lang/String;B)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move v3, v13

    .end local v13           #status:B
    .restart local v3       #status:B
    goto :goto_0

    .line 351
    .end local v1           #mService:Lcom/broadcom/bt/service/map/MapService;
    .end local v3           #status:B
    .restart local v13       #status:B
    :catch_1
    move-exception v12

    move v3, v13

    .end local v13           #status:B
    .restart local v3       #status:B
    goto :goto_1

    .end local v3           #status:B
    .restart local v1       #mService:Lcom/broadcom/bt/service/map/MapService;
    .restart local v13       #status:B
    :catch_2
    move-exception v12

    move v3, v13

    .end local v13           #status:B
    .restart local v3       #status:B
    goto :goto_1
.end method

.method public getFolderEntryforVirtualRoot(IIILjava/lang/String;)V
    .locals 11
    .parameter "mse_session_id"
    .parameter "first_item"
    .parameter "ref_data"
    .parameter "folder"

    .prologue
    const/4 v2, 0x0

    .line 361
    const-string v1, "MAP.MapEventLoop"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFolderEntryforVirtualRoot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    .line 365
    .local v0, mService:Lcom/broadcom/bt/service/map/MapService;
    if-nez v0, :cond_1

    .line 366
    const-string v1, "MAP.MapEventLoop"

    const-string v2, "Service is null...."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    if-eqz p2, :cond_3

    .line 372
    const-string v1, "root/telecom"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 374
    const-string v5, "msg"

    const-string v6, ""

    move v1, p1

    move v3, v2

    move v4, v2

    move v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/broadcom/bt/service/map/MapService;->sendFolderListingInfo(IBIILjava/lang/String;Ljava/lang/String;B)V

    goto :goto_0

    .line 377
    :cond_2
    const-string v1, "root"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 379
    const-string v5, "telecom"

    const-string v6, ""

    move v1, p1

    move v3, v2

    move v4, v2

    move v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/broadcom/bt/service/map/MapService;->sendFolderListingInfo(IBIILjava/lang/String;Ljava/lang/String;B)V

    goto :goto_0

    .line 389
    :cond_3
    const/4 v5, 0x2

    const-string v8, ""

    const-string v9, ""

    move-object v3, v0

    move v4, p1

    move v6, v2

    move v7, v2

    move v10, v2

    invoke-virtual/range {v3 .. v10}, Lcom/broadcom/bt/service/map/MapService;->sendFolderListingInfo(IBIILjava/lang/String;Ljava/lang/String;B)V

    goto :goto_0
.end method

.method public getMapService()Lcom/broadcom/bt/service/map/MapService;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const-string v0, "bluetooth_map"

    return-object v0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 84
    const-string v0, "MAP.MapEventLoop"

    const-string v1, "init()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void
.end method

.method public declared-synchronized onMCEConnected(IILjava/lang/String;)V
    .locals 6
    .parameter "mse_instance_id"
    .parameter "mse_session_id"
    .parameter "deviceName"

    .prologue
    .line 228
    monitor-enter p0

    :try_start_0
    const-string v3, "MAP.MapEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMCEConnected"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    .line 232
    .local v2, mService:Lcom/broadcom/bt/service/map/MapService;
    if-nez v2, :cond_0

    .line 233
    const-string v3, "MAP.MapEventLoop"

    const-string v4, "Service is null...."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    :goto_0
    monitor-exit p0

    return-void

    .line 237
    :cond_0
    :try_start_1
    invoke-virtual {v2, p1}, Lcom/broadcom/bt/service/map/MapService;->getContext(I)Lcom/broadcom/bt/service/map/MapProviderContext;

    move-result-object v0

    .line 238
    .local v0, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    if-eqz v0, :cond_1

    .line 240
    invoke-virtual {v0, p2, p3}, Lcom/broadcom/bt/service/map/MapProviderContext;->addSession(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 242
    :try_start_2
    iget-object v3, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mCallback:Lcom/broadcom/bt/service/map/IMapCallback;

    iget-object v4, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    iget-object v5, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSId:Ljava/lang/String;

    invoke-interface {v3, v4, v5, p3}, Lcom/broadcom/bt/service/map/IMapCallback;->onMCEConnected(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 243
    :catch_0
    move-exception v1

    .line 244
    .local v1, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v3, "MAP.MapEventLoop"

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 228
    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v2           #mService:Lcom/broadcom/bt/service/map/MapService;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 248
    .restart local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    .restart local v2       #mService:Lcom/broadcom/bt/service/map/MapService;
    :cond_1
    :try_start_4
    const-string v3, "MAP.MapEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMCEConnected - did not find context for"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized onMCEDisconnected(II)V
    .locals 6
    .parameter "mse_instance_id"
    .parameter "mse_session_id"

    .prologue
    .line 256
    monitor-enter p0

    :try_start_0
    const-string v3, "MAP.MapEventLoop"

    const-string v4, "onMCEDisconnected"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    .line 260
    .local v2, mService:Lcom/broadcom/bt/service/map/MapService;
    if-nez v2, :cond_0

    .line 261
    const-string v3, "MAP.MapEventLoop"

    const-string v4, "Service is null...."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    :goto_0
    monitor-exit p0

    return-void

    .line 265
    :cond_0
    :try_start_1
    invoke-virtual {v2, p1}, Lcom/broadcom/bt/service/map/MapService;->getContext(I)Lcom/broadcom/bt/service/map/MapProviderContext;

    move-result-object v0

    .line 268
    .local v0, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    if-eqz v0, :cond_1

    .line 271
    invoke-virtual {v0, p2}, Lcom/broadcom/bt/service/map/MapProviderContext;->removeSession(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    :try_start_2
    iget-object v3, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mCallback:Lcom/broadcom/bt/service/map/IMapCallback;

    iget-object v4, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    iget-object v5, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSId:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lcom/broadcom/bt/service/map/IMapCallback;->onMCEDisconnected(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 274
    :catch_0
    move-exception v1

    .line 275
    .local v1, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v3, "MAP.MapEventLoop"

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 256
    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v2           #mService:Lcom/broadcom/bt/service/map/MapService;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 279
    .restart local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    .restart local v2       #mService:Lcom/broadcom/bt/service/map/MapService;
    :cond_1
    :try_start_4
    const-string v3, "MAP.MapEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMCEDisconnected - did not find context for"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized onMCEGetFolderEntry(IIILjava/lang/String;)V
    .locals 7
    .parameter "mse_session_id"
    .parameter "first_item"
    .parameter "ref_data"
    .parameter "folder"

    .prologue
    .line 397
    monitor-enter p0

    :try_start_0
    const-string v0, "MAP.MapEventLoop"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMCEGetFolderEntry "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v6, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    .line 402
    .local v6, mService:Lcom/broadcom/bt/service/map/MapService;
    if-nez v6, :cond_0

    .line 403
    const-string v0, "MAP.MapEventLoop"

    const-string v2, "Service is null...."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    :goto_0
    monitor-exit p0

    return-void

    .line 407
    :cond_0
    :try_start_1
    invoke-virtual {v6, p1}, Lcom/broadcom/bt/service/map/MapService;->getClientSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;

    move-result-object v1

    .line 408
    .local v1, s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    if-eqz v1, :cond_3

    .line 410
    invoke-virtual {v1, p4}, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->getProviderFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 411
    .local v5, s_provider_folder:Ljava/lang/String;
    const-string v0, "root/telecom"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "root"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 415
    :cond_1
    invoke-virtual {p0, p1, p2, p3, v5}, Lcom/broadcom/bt/service/map/MapEventLoop;->getFolderEntryforVirtualRoot(IIILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 397
    .end local v1           #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    .end local v5           #s_provider_folder:Ljava/lang/String;
    .end local v6           #mService:Lcom/broadcom/bt/service/map/MapService;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .restart local v1       #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    .restart local v5       #s_provider_folder:Ljava/lang/String;
    .restart local v6       #mService:Lcom/broadcom/bt/service/map/MapService;
    :cond_2
    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    .line 420
    :try_start_2
    invoke-virtual/range {v0 .. v5}, Lcom/broadcom/bt/service/map/MapEventLoop;->getFolderEntryFromProvider(Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;IIILjava/lang/String;)V

    goto :goto_0

    .line 425
    .end local v5           #s_provider_folder:Ljava/lang/String;
    :cond_3
    const-string v0, "MAP.MapEventLoop"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMCEGetFolderEntry - did not find session for"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized onMCEGetMsg(IBJB)V
    .locals 16
    .parameter "mse_session_id"
    .parameter "include_attachment"
    .parameter "message_handle"
    .parameter "char_set"

    .prologue
    .line 546
    monitor-enter p0

    :try_start_0
    const-string v3, "MAP.MapEventLoop"

    const-string v4, "onMCEGetMsg"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/broadcom/bt/service/map/MapEventLoop;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    .line 550
    .local v13, mService:Lcom/broadcom/bt/service/map/MapService;
    if-nez v13, :cond_0

    .line 551
    const-string v3, "MAP.MapEventLoop"

    const-string v4, "Service is null...."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 598
    :goto_0
    monitor-exit p0

    return-void

    .line 555
    :cond_0
    :try_start_1
    move/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/broadcom/bt/service/map/MapService;->getClientSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v14

    .line 556
    .local v14, s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    if-eqz v14, :cond_5

    .line 559
    :try_start_2
    iget-object v3, v14, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Lcom/broadcom/bt/service/map/MapProviderContext;->getProviderMsgId(J)Ljava/lang/String;

    move-result-object v9

    .line 560
    .local v9, s_provider_id:Ljava/lang/String;
    if-eqz v9, :cond_1

    const-string v3, ""

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 567
    :cond_1
    const/4 v3, 0x2

    move/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/broadcom/bt/service/map/MapService;->getMsgFailResponse(IJB)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 592
    .end local v9           #s_provider_id:Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 593
    .local v12, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v3, "MAP.MapEventLoop"

    invoke-virtual {v12}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 546
    .end local v12           #e:Landroid/os/RemoteException;
    .end local v13           #mService:Lcom/broadcom/bt/service/map/MapService;
    .end local v14           #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 572
    .restart local v9       #s_provider_id:Ljava/lang/String;
    .restart local v13       #mService:Lcom/broadcom/bt/service/map/MapService;
    .restart local v14       #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :cond_2
    :try_start_4
    iget-object v3, v14, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    invoke-virtual {v3, v9}, Lcom/broadcom/bt/service/map/MapProviderContext;->getMAPMsgIdFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 573
    .local v15, s_virtual_folder:Ljava/lang/String;
    if-eqz v15, :cond_3

    const-string v3, ""

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 580
    :cond_3
    const/4 v3, 0x2

    move/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/broadcom/bt/service/map/MapService;->getMsgFailResponse(IJB)V

    goto :goto_0

    .line 585
    :cond_4
    iget-object v3, v14, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    iget-object v3, v3, Lcom/broadcom/bt/service/map/MapProviderContext;->mCallback:Lcom/broadcom/bt/service/map/IMapCallback;

    iget-object v4, v14, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    iget-object v5, v4, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    iget-object v4, v14, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    iget-object v6, v4, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSId:Ljava/lang/String;

    invoke-virtual {v14, v15}, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->getProviderFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v4, "root"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v15, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    move/from16 v4, p1

    move/from16 v10, p5

    move/from16 v11, p2

    invoke-interface/range {v3 .. v11}, Lcom/broadcom/bt/service/map/IMapCallback;->onMCEGetMsg(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BB)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 596
    .end local v9           #s_provider_id:Ljava/lang/String;
    .end local v15           #s_virtual_folder:Ljava/lang/String;
    :cond_5
    :try_start_5
    const-string v3, "MAP.MapEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMCEGetMsg - did not find session for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized onMCEGetMsgEntry(ILjava/lang/String;BI)V
    .locals 50
    .parameter "session_id"
    .parameter "folder_path"
    .parameter "first_item"
    .parameter "ref_data"

    .prologue
    .line 486
    monitor-enter p0

    :try_start_0
    const-string v3, "MAP.MapEventLoop"

    const-string v5, "onMCEGetMsgEntry"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/map/MapEventLoop;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    .line 490
    .local v2, mService:Lcom/broadcom/bt/service/map/MapService;
    if-nez v2, :cond_0

    .line 491
    const-string v3, "MAP.MapEventLoop"

    const-string v5, "Service is null...."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 541
    :goto_0
    monitor-exit p0

    return-void

    .line 495
    :cond_0
    :try_start_1
    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/broadcom/bt/service/map/MapService;->getClientSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;

    move-result-object v49

    .line 496
    .local v49, s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    if-eqz v49, :cond_8

    .line 497
    const/16 v48, 0x0

    .line 498
    .local v48, msgInfo:Lcom/broadcom/bt/service/map/MessageInfo;
    const/4 v4, 0x0

    .line 499
    .local v4, status:B
    if-eqz p3, :cond_1

    .line 500
    const/16 p4, 0x0

    .line 508
    :cond_1
    move-object/from16 v0, v49

    iget-object v3, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mProviderCurrentPath:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Lcom/broadcom/bt/service/map/MapEventLoop;->fixPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 510
    .local v24, s_virtual_folder:Ljava/lang/String;
    move-object/from16 v0, v49

    iget-object v3, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mMessageInfo:[Lcom/broadcom/bt/service/map/MessageInfo;

    if-eqz v3, :cond_7

    move-object/from16 v0, v49

    iget-object v3, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mMessageInfo:[Lcom/broadcom/bt/service/map/MessageInfo;

    array-length v3, v3

    add-int/lit8 v5, p4, 0x1

    if-lt v3, v5, :cond_7

    .line 511
    move-object/from16 v0, v49

    iget-object v3, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mMessageInfo:[Lcom/broadcom/bt/service/map/MessageInfo;

    aget-object v48, v3, p4

    .line 512
    add-int/lit8 p4, p4, 0x1

    .line 513
    const-string v3, "MAP.MapEventLoop"

    invoke-virtual/range {v48 .. v48}, Lcom/broadcom/bt/service/map/MessageInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    move-object/from16 v0, v48

    iget v6, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mParameterMask:I

    move-object/from16 v0, v48

    iget v7, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgSize:I

    move-object/from16 v0, v48

    iget v8, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mAttachmentSize:I

    move-object/from16 v0, v48

    iget-boolean v3, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mText:Z

    const/4 v5, 0x1

    if-ne v3, v5, :cond_2

    const/4 v9, 0x1

    :goto_1
    move-object/from16 v0, v48

    iget-boolean v3, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsHighPriority:Z

    const/4 v5, 0x1

    if-ne v3, v5, :cond_3

    const/4 v10, 0x1

    :goto_2
    move-object/from16 v0, v48

    iget-boolean v3, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsRead:Z

    const/4 v5, 0x1

    if-ne v3, v5, :cond_4

    const/4 v11, 0x1

    :goto_3
    move-object/from16 v0, v48

    iget-boolean v3, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsSent:Z

    const/4 v5, 0x1

    if-ne v3, v5, :cond_5

    const/4 v12, 0x1

    :goto_4
    move-object/from16 v0, v48

    iget-boolean v3, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsProtected:Z

    const/4 v5, 0x1

    if-ne v3, v5, :cond_6

    const/4 v13, 0x1

    :goto_5
    move-object/from16 v0, v48

    iget-object v14, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgHandle:Ljava/lang/String;

    move-object/from16 v0, v48

    iget-byte v15, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgType:B

    move-object/from16 v0, v48

    iget-byte v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mReceptionStatus:B

    move/from16 v16, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mSubject:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderAddressing:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientRddressing:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mReplyToAddressing:Ljava/lang/String;

    move-object/from16 v23, v0

    move/from16 v3, p1

    move/from16 v5, p4

    invoke-virtual/range {v2 .. v24}, Lcom/broadcom/bt/service/map/MapService;->msgEntryResponse(IBIIIIBBBBBLjava/lang/String;BBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 486
    .end local v2           #mService:Lcom/broadcom/bt/service/map/MapService;
    .end local v4           #status:B
    .end local v24           #s_virtual_folder:Ljava/lang/String;
    .end local v48           #msgInfo:Lcom/broadcom/bt/service/map/MessageInfo;
    .end local v49           #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 514
    .restart local v2       #mService:Lcom/broadcom/bt/service/map/MapService;
    .restart local v4       #status:B
    .restart local v24       #s_virtual_folder:Ljava/lang/String;
    .restart local v48       #msgInfo:Lcom/broadcom/bt/service/map/MessageInfo;
    .restart local v49       #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    :cond_3
    const/4 v10, 0x0

    goto :goto_2

    :cond_4
    const/4 v11, 0x0

    goto :goto_3

    :cond_5
    const/4 v12, 0x0

    goto :goto_4

    :cond_6
    const/4 v13, 0x0

    goto :goto_5

    .line 528
    :cond_7
    const/4 v4, 0x2

    .line 529
    const/4 v3, 0x0

    :try_start_2
    move-object/from16 v0, v49

    iput-object v3, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mMessageInfo:[Lcom/broadcom/bt/service/map/MessageInfo;

    .line 531
    const-string v3, "MAP.MapEventLoop"

    const-string v5, "No more messages"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const-string v37, "0"

    const/16 v38, 0x0

    const/16 v39, 0x0

    const-string v40, ""

    const-string v41, ""

    const-string v42, ""

    const-string v43, ""

    const-string v44, ""

    const-string v45, ""

    const-string v46, ""

    const-string v47, ""

    move-object/from16 v25, v2

    move/from16 v26, p1

    move/from16 v27, v4

    invoke-virtual/range {v25 .. v47}, Lcom/broadcom/bt/service/map/MapService;->msgEntryResponse(IBIIIIBBBBBLjava/lang/String;BBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 539
    .end local v4           #status:B
    .end local v24           #s_virtual_folder:Ljava/lang/String;
    .end local v48           #msgInfo:Lcom/broadcom/bt/service/map/MessageInfo;
    :cond_8
    const-string v3, "MAP.MapEventLoop"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onMCEGetMsgEntry - did not find session for"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized onMCEGetMsgListInfo(ILjava/lang/String;IIIBBLjava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;B)V
    .locals 21
    .parameter "session_id"
    .parameter "folder_path"
    .parameter "parameter_mask"
    .parameter "max_list_cnt"
    .parameter "list_start_offset"
    .parameter "subject_length"
    .parameter "msg_mask"
    .parameter "period_begin"
    .parameter "period_end"
    .parameter "read_status"
    .parameter "recipient"
    .parameter "originator"
    .parameter "pri_status"

    .prologue
    .line 436
    monitor-enter p0

    :try_start_0
    const-string v3, "MAP.MapEventLoop"

    const-string v4, "onMCEGetMsgListInfo"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/map/MapEventLoop;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    .line 440
    .local v2, mService:Lcom/broadcom/bt/service/map/MapService;
    if-nez v2, :cond_0

    .line 441
    const-string v3, "MAP.MapEventLoop"

    const-string v4, "Service is null...."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 480
    :goto_0
    monitor-exit p0

    return-void

    .line 445
    :cond_0
    :try_start_1
    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/broadcom/bt/service/map/MapService;->getClientSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v20

    .line 446
    .local v20, s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    if-eqz v20, :cond_3

    .line 454
    :try_start_2
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mProviderCurrentPath:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Lcom/broadcom/bt/service/map/MapEventLoop;->fixPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 456
    .local v7, s_provider_folder:Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->getProviderFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 457
    const-string v3, "root/telecom"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "root"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 463
    :cond_1
    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const/4 v7, 0x2

    const-string v8, ""

    .end local v7           #s_provider_folder:Ljava/lang/String;
    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v3, p1

    invoke-virtual/range {v2 .. v10}, Lcom/broadcom/bt/service/map/MapService;->msgListingResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;B[Lcom/broadcom/bt/service/map/MessageInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 474
    :catch_0
    move-exception v19

    .line 475
    .local v19, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v3, "MAP.MapEventLoop"

    invoke-virtual/range {v19 .. v19}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 436
    .end local v2           #mService:Lcom/broadcom/bt/service/map/MapService;
    .end local v19           #e:Landroid/os/RemoteException;
    .end local v20           #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 469
    .restart local v2       #mService:Lcom/broadcom/bt/service/map/MapService;
    .restart local v7       #s_provider_folder:Ljava/lang/String;
    .restart local v20       #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :cond_2
    :try_start_4
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    iget-object v3, v3, Lcom/broadcom/bt/service/map/MapProviderContext;->mCallback:Lcom/broadcom/bt/service/map/IMapCallback;

    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    iget-object v4, v4, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    iget-object v5, v5, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSId:Ljava/lang/String;

    move/from16 v6, p1

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    move/from16 v15, p10

    move-object/from16 v16, p11

    move-object/from16 v17, p12

    move/from16 v18, p13

    invoke-interface/range {v3 .. v18}, Lcom/broadcom/bt/service/map/IMapCallback;->onMCEGetMsgListing(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIBBLjava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 478
    .end local v7           #s_provider_folder:Ljava/lang/String;
    :cond_3
    :try_start_5
    const-string v3, "MAP.MapEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMCEGetMsgListInfo - did not find session for"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized onMCENotifyRegister(IB)V
    .locals 7
    .parameter "mse_session_id"
    .parameter "on_off"

    .prologue
    .line 698
    monitor-enter p0

    :try_start_0
    const-string v4, "MAP.MapEventLoop"

    const-string v5, "onMCENotifyRegister"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    iget-object v1, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    .line 702
    .local v1, mService:Lcom/broadcom/bt/service/map/MapService;
    if-nez v1, :cond_0

    .line 703
    const-string v4, "MAP.MapEventLoop"

    const-string v5, "Service is null...."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 722
    :goto_0
    monitor-exit p0

    return-void

    .line 707
    :cond_0
    :try_start_1
    invoke-virtual {v1, p1}, Lcom/broadcom/bt/service/map/MapService;->getClientSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 708
    .local v3, s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    if-eqz v3, :cond_2

    .line 710
    :try_start_2
    const-string v2, "off"

    .line 711
    .local v2, notificationmode:Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 712
    const-string v2, "on"

    .line 714
    :cond_1
    iget-object v4, v3, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    iget-object v4, v4, Lcom/broadcom/bt/service/map/MapProviderContext;->mCallback:Lcom/broadcom/bt/service/map/IMapCallback;

    iget-object v5, v3, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    iget-object v5, v5, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    iget-object v6, v3, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    iget-object v6, v6, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSId:Ljava/lang/String;

    invoke-interface {v4, p1, v5, v6, v2}, Lcom/broadcom/bt/service/map/IMapCallback;->onMCERegisterForNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 716
    .end local v2           #notificationmode:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 717
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v4, "MAP.MapEventLoop"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 698
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #mService:Lcom/broadcom/bt/service/map/MapService;
    .end local v3           #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 720
    .restart local v1       #mService:Lcom/broadcom/bt/service/map/MapService;
    .restart local v3       #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :cond_2
    :try_start_4
    const-string v4, "MAP.MapEventLoop"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onMCENotifyRegister - did not find session for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized onMCEPushMsg(IBBBLjava/lang/String;Ljava/lang/String;)V
    .locals 15
    .parameter "request_id"
    .parameter "msg_transparent"
    .parameter "msg_retry"
    .parameter "msg_charset"
    .parameter "msg_folder"
    .parameter "msg_content_uri"

    .prologue
    .line 604
    monitor-enter p0

    :try_start_0
    const-string v2, "MAP.MapEventLoop"

    const-string v3, "onMCEPushMsg"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    iget-object v1, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    .line 608
    .local v1, mService:Lcom/broadcom/bt/service/map/MapService;
    if-nez v1, :cond_0

    .line 609
    const-string v2, "MAP.MapEventLoop"

    const-string v3, "Service is null...."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 641
    :goto_0
    monitor-exit p0

    return-void

    .line 613
    :cond_0
    :try_start_1
    move/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/broadcom/bt/service/map/MapService;->getClientSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v13

    .line 614
    .local v13, s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    if-eqz v13, :cond_3

    .line 617
    :try_start_2
    iget-object v2, v13, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mProviderCurrentPath:Ljava/lang/String;

    move-object/from16 v0, p5

    invoke-virtual {p0, v2, v0}, Lcom/broadcom/bt/service/map/MapEventLoop;->fixPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 618
    .local v14, s_virtual_folder:Ljava/lang/String;
    invoke-virtual {v13, v14}, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->getProviderFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 619
    .local v9, s_provider_folder:Ljava/lang/String;
    const-string v2, "root/telecom"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "root"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 625
    :cond_1
    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const/4 v6, 0x1

    move/from16 v2, p1

    move-object/from16 v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/broadcom/bt/service/map/MapService;->msgPushResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 635
    .end local v9           #s_provider_folder:Ljava/lang/String;
    .end local v14           #s_virtual_folder:Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 636
    .local v12, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v2, "MAP.MapEventLoop"

    invoke-virtual {v12}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 604
    .end local v1           #mService:Lcom/broadcom/bt/service/map/MapService;
    .end local v12           #e:Landroid/os/RemoteException;
    .end local v13           #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 629
    .restart local v1       #mService:Lcom/broadcom/bt/service/map/MapService;
    .restart local v9       #s_provider_folder:Ljava/lang/String;
    .restart local v13       #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    .restart local v14       #s_virtual_folder:Ljava/lang/String;
    :cond_2
    :try_start_4
    iget-object v2, v13, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    iget-object v2, v2, Lcom/broadcom/bt/service/map/MapProviderContext;->mCallback:Lcom/broadcom/bt/service/map/IMapCallback;

    iget-object v3, v13, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    iget-object v4, v3, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    iget-object v3, v13, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    iget-object v5, v3, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSId:Ljava/lang/String;

    const-string v3, "root"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v14, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    move/from16 v3, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v11, p6

    invoke-interface/range {v2 .. v11}, Lcom/broadcom/bt/service/map/IMapCallback;->onMCEPushMsg(ILjava/lang/String;Ljava/lang/String;BBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 639
    .end local v9           #s_provider_folder:Ljava/lang/String;
    .end local v14           #s_virtual_folder:Ljava/lang/String;
    :cond_3
    :try_start_5
    const-string v2, "MAP.MapEventLoop"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMCEPushMsg - did not find session for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized onMCESetMsgStatus(IJBB)V
    .locals 14
    .parameter "session_id"
    .parameter "msg_handle"
    .parameter "status_type"
    .parameter "status_value"

    .prologue
    .line 646
    monitor-enter p0

    :try_start_0
    const-string v3, "MAP.MapEventLoop"

    const-string v4, "onMCESetMsgStatus"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    .line 650
    .local v2, mService:Lcom/broadcom/bt/service/map/MapService;
    if-nez v2, :cond_0

    .line 651
    const-string v3, "MAP.MapEventLoop"

    const-string v4, "Service is null...."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 693
    .end local v2           #mService:Lcom/broadcom/bt/service/map/MapService;
    :goto_0
    monitor-exit p0

    return-void

    .line 655
    .restart local v2       #mService:Lcom/broadcom/bt/service/map/MapService;
    :cond_0
    :try_start_1
    invoke-virtual {v2, p1}, Lcom/broadcom/bt/service/map/MapService;->getClientSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v11

    .line 656
    .local v11, s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    if-eqz v11, :cond_4

    .line 658
    const/4 v12, 0x0

    .line 660
    .local v12, s_provider_id:Ljava/lang/String;
    :try_start_2
    iget-object v3, v11, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Lcom/broadcom/bt/service/map/MapProviderContext;->getProviderMsgId(J)Ljava/lang/String;

    move-result-object v12

    .line 661
    if-eqz v12, :cond_3

    .line 662
    const/4 v13, 0x0

    .line 663
    .local v13, s_virtual_folder:Ljava/lang/String;
    iget-object v3, v11, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    invoke-virtual {v3, v12}, Lcom/broadcom/bt/service/map/MapProviderContext;->getMAPMsgIdFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 665
    if-nez v13, :cond_1

    .line 666
    const-string v13, ""

    .line 672
    :cond_1
    const/4 v3, 0x2

    move/from16 v0, p4

    if-ne v0, v3, :cond_2

    .line 673
    const-string v3, "MAP.MapEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Delete requested from client for msg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    iget-object v3, v11, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    const/4 v4, 0x1

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1, v4}, Lcom/broadcom/bt/service/map/MapProviderContext;->setMsgIsDeletedFromClient(JZ)V

    .line 677
    :cond_2
    iget-object v3, v11, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    iget-object v2, v3, Lcom/broadcom/bt/service/map/MapProviderContext;->mCallback:Lcom/broadcom/bt/service/map/IMapCallback;

    .end local v2           #mService:Lcom/broadcom/bt/service/map/MapService;
    iget-object v3, v11, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    iget-object v4, v3, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    iget-object v3, v11, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    iget-object v5, v3, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSId:Ljava/lang/String;

    invoke-virtual {v11, v13}, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->getProviderFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v3, v11, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Lcom/broadcom/bt/service/map/MapProviderContext;->getProviderMsgId(J)Ljava/lang/String;

    move-result-object v7

    move v3, p1

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-interface/range {v2 .. v9}, Lcom/broadcom/bt/service/map/IMapCallback;->onMCESetMessageStatus(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BB)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 687
    .end local v13           #s_virtual_folder:Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 688
    .local v10, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v3, "MAP.MapEventLoop"

    invoke-virtual {v10}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 646
    .end local v10           #e:Landroid/os/RemoteException;
    .end local v11           #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    .end local v12           #s_provider_id:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 683
    .restart local v2       #mService:Lcom/broadcom/bt/service/map/MapService;
    .restart local v11       #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    .restart local v12       #s_provider_id:Ljava/lang/String;
    :cond_3
    :try_start_4
    const-string v3, "MAP.MapEventLoop"

    const-string v4, "onMCESetMsgStatus : Cannot get provider id failing.  Oops how did this happen?"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    const/4 v5, 0x0

    const/4 v7, 0x1

    const-string v8, ""

    const-string v9, ""

    move v3, p1

    move-object v4, v12

    move/from16 v6, p4

    invoke-virtual/range {v2 .. v9}, Lcom/broadcom/bt/service/map/MapService;->setMsgStatusResponse(ILjava/lang/String;Ljava/lang/String;BBLjava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 691
    .end local v12           #s_provider_id:Ljava/lang/String;
    :cond_4
    :try_start_5
    const-string v3, "MAP.MapEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMCESetMsgStatus - did not find session for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized onMCEUpdateInbox(I)V
    .locals 6
    .parameter "mse_session_id"

    .prologue
    .line 727
    monitor-enter p0

    :try_start_0
    const-string v3, "MAP.MapEventLoop"

    const-string v4, "onMCEUpdateInbox"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    .line 731
    .local v2, mService:Lcom/broadcom/bt/service/map/MapService;
    if-nez v2, :cond_0

    .line 732
    const-string v3, "MAP.MapEventLoop"

    const-string v4, "Service is null...."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 748
    :goto_0
    monitor-exit p0

    return-void

    .line 736
    :cond_0
    :try_start_1
    invoke-virtual {v2, p1}, Lcom/broadcom/bt/service/map/MapService;->getContextFromSessionId(I)Lcom/broadcom/bt/service/map/MapProviderContext;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 737
    .local v0, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    if-eqz v0, :cond_1

    .line 740
    :try_start_2
    iget-object v3, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mCallback:Lcom/broadcom/bt/service/map/IMapCallback;

    iget-object v4, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    iget-object v5, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSId:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lcom/broadcom/bt/service/map/IMapCallback;->onMCEUpdateInbox(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 741
    :catch_0
    move-exception v1

    .line 742
    .local v1, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v3, "MAP.MapEventLoop"

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 727
    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v2           #mService:Lcom/broadcom/bt/service/map/MapService;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 745
    .restart local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    .restart local v2       #mService:Lcom/broadcom/bt/service/map/MapService;
    :cond_1
    :try_start_4
    const-string v3, "MAP.MapEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMCEUpdateInbox - did not find context for"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized onMSESetFolder(ILjava/lang/String;)V
    .locals 5
    .parameter "mse_session_id"
    .parameter "current_folder"

    .prologue
    .line 286
    monitor-enter p0

    :try_start_0
    const-string v2, "MAP.MapEventLoop"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMSESetFolder "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    .line 290
    .local v0, mService:Lcom/broadcom/bt/service/map/MapService;
    if-nez v0, :cond_0

    .line 291
    const-string v2, "MAP.MapEventLoop"

    const-string v3, "Service is null...."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    :goto_0
    monitor-exit p0

    return-void

    .line 295
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/map/MapService;->getClientSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;

    move-result-object v1

    .line 296
    .local v1, s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    if-eqz v1, :cond_1

    .line 298
    iput-object p2, v1, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mProviderCurrentPath:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 286
    .end local v0           #mService:Lcom/broadcom/bt/service/map/MapService;
    .end local v1           #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 300
    .restart local v0       #mService:Lcom/broadcom/bt/service/map/MapService;
    .restart local v1       #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :cond_1
    :try_start_2
    const-string v2, "MAP.MapEventLoop"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMSESetFolder - did not find session for"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized onMSEStarted(Ljava/lang/String;BII)V
    .locals 7
    .parameter "mse_name"
    .parameter "mse_type"
    .parameter "mse_instance_id"
    .parameter "status_code"

    .prologue
    .line 164
    monitor-enter p0

    :try_start_0
    const-string v4, "MAP.MapEventLoop"

    const-string v5, "onMSEStarted"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    .line 168
    .local v2, mService:Lcom/broadcom/bt/service/map/MapService;
    if-nez v2, :cond_0

    .line 169
    const-string v4, "MAP.MapEventLoop"

    const-string v5, "Service is null...."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    :goto_0
    monitor-exit p0

    return-void

    .line 174
    :cond_0
    :try_start_1
    invoke-virtual {v2, p1, p2}, Lcom/broadcom/bt/service/map/MapService;->getContextByDsName(Ljava/lang/String;B)Lcom/broadcom/bt/service/map/MapProviderContext;

    move-result-object v0

    .line 175
    .local v0, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    if-eqz v0, :cond_2

    .line 176
    const/4 v3, 0x1

    .line 177
    .local v3, mse_status:B
    iput p3, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMseInstanceId:I

    .line 178
    if-nez p4, :cond_1

    .line 179
    const/4 v3, 0x2

    .line 180
    const-string v4, "MAP.MapEventLoop"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mse service started successfully ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDisplayName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    :goto_1
    :try_start_2
    iget-object v4, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mCallback:Lcom/broadcom/bt/service/map/IMapCallback;

    iget-object v5, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    iget-object v6, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSId:Ljava/lang/String;

    invoke-interface {v4, v5, v6, v3}, Lcom/broadcom/bt/service/map/IMapCallback;->onMSEStateChanged(Ljava/lang/String;Ljava/lang/String;B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 189
    :catch_0
    move-exception v1

    .line 190
    .local v1, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v4, "MAP.MapEventLoop"

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 164
    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v2           #mService:Lcom/broadcom/bt/service/map/MapService;
    .end local v3           #mse_status:B
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 184
    .restart local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    .restart local v2       #mService:Lcom/broadcom/bt/service/map/MapService;
    .restart local v3       #mse_status:B
    :cond_1
    :try_start_4
    const-string v4, "MAP.MapEventLoop"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "could not start mse service ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDisplayName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 193
    .end local v3           #mse_status:B
    :cond_2
    const-string v4, "MAP.MapEventLoop"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onMSEStarted - did not find context for"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized onMSEStopped(II)V
    .locals 7
    .parameter "mse_instance_id"
    .parameter "status_code"

    .prologue
    .line 201
    monitor-enter p0

    :try_start_0
    const-string v3, "MAP.MapEventLoop"

    const-string v4, "onMSEStopped"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    .line 205
    .local v2, mService:Lcom/broadcom/bt/service/map/MapService;
    if-nez v2, :cond_1

    .line 206
    const-string v3, "MAP.MapEventLoop"

    const-string v4, "Service is null...."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 210
    :cond_1
    :try_start_1
    invoke-virtual {v2, p1}, Lcom/broadcom/bt/service/map/MapService;->getContext(I)Lcom/broadcom/bt/service/map/MapProviderContext;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 212
    .local v0, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    if-eqz v0, :cond_2

    :try_start_2
    iget-object v3, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mCallback:Lcom/broadcom/bt/service/map/IMapCallback;

    if-eqz v3, :cond_2

    .line 213
    iget-object v3, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mCallback:Lcom/broadcom/bt/service/map/IMapCallback;

    iget-object v4, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    iget-object v5, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSId:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-interface {v3, v4, v5, v6}, Lcom/broadcom/bt/service/map/IMapCallback;->onMSEStateChanged(Ljava/lang/String;Ljava/lang/String;B)V

    .line 216
    :cond_2
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 217
    iget-object v3, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    iget-object v4, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/broadcom/bt/service/map/MapService;->unregisterDSProvider(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 219
    :catch_0
    move-exception v1

    .line 220
    .local v1, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v3, "MAP.MapEventLoop"

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 201
    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v2           #mService:Lcom/broadcom/bt/service/map/MapService;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized onMsgGetInProgress()V
    .locals 2

    .prologue
    .line 753
    monitor-enter p0

    :try_start_0
    const-string v0, "MAP.MapEventLoop"

    const-string v1, "onMsgGetInProgress"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 755
    monitor-exit p0

    return-void

    .line 753
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onMsgPushInProgress()V
    .locals 2

    .prologue
    .line 760
    monitor-enter p0

    :try_start_0
    const-string v0, "MAP.MapEventLoop"

    const-string v1, "onMsgPushInProgress"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 762
    monitor-exit p0

    return-void

    .line 760
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start()V
    .locals 4

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    const-string v0, "MAP.MapEventLoop"

    const-string v1, "start()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mThread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 135
    :goto_0
    monitor-exit p0

    return-void

    .line 97
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/map/MapService;->init()V

    .line 99
    new-instance v0, Lcom/broadcom/bt/service/map/MapEventLoop$1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MAP Event Loop:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/broadcom/bt/service/map/MapEventLoop$1;-><init>(Lcom/broadcom/bt/service/map/MapEventLoop;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mThread:Ljava/lang/Thread;

    .line 130
    const-string v0, "MAP.MapEventLoop"

    const-string v1, "Starting Event Loop thread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mInterrupted:Z

    .line 133
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 134
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/map/MapEventLoop;->onStateChangeEvent(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 3

    .prologue
    .line 141
    monitor-enter p0

    :try_start_0
    const-string v1, "MAP.MapEventLoop"

    const-string v2, "Stop called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v1, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/map/MapService;->finish()V

    .line 146
    iget-object v1, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 147
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mInterrupted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 151
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mThread:Ljava/lang/Thread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 156
    :cond_0
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0, v1}, Lcom/broadcom/bt/service/map/MapEventLoop;->onStateChangeEvent(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 157
    monitor-exit p0

    return-void

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 141
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
