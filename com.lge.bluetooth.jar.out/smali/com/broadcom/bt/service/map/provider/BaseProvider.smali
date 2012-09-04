.class public abstract Lcom/broadcom/bt/service/map/provider/BaseProvider;
.super Ljava/lang/Object;
.source "BaseProvider.java"

# interfaces
.implements Lcom/broadcom/bt/service/map/IMapEventHandler;
.implements Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/map/provider/BaseProvider$1;,
        Lcom/broadcom/bt/service/map/provider/BaseProvider$EventBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final D:Z = true

.field public static final TAG:Ljava/lang/String; = "MAP.BaseProvider"

.field public static final folderListingStatus_InvalidParentPath:B = 0x1t

.field public static final folderListingStatus_NoFolders:B = 0x2t

.field public static final folderListingStatus_Success:B


# instance fields
.field protected mContentResolver:Landroid/content/ContentResolver;

.field protected mContext:Landroid/content/Context;

.field protected mEventCallbackHandler:Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;

.field protected mIsStarted:Z

.field protected mNotificationsEnabled:Z

.field protected mProviderType:B

.field protected mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

.field protected mReceiver:Lcom/broadcom/bt/service/map/provider/BaseProvider$EventBroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProviderType:B

    .line 117
    return-void
.end method

.method static synthetic access$000(Lcom/broadcom/bt/service/map/provider/BaseProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->onBluetoothEnable()V

    return-void
.end method

.method static synthetic access$100(Lcom/broadcom/bt/service/map/provider/BaseProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->onBluetoothDisable()V

    return-void
.end method

.method protected static getBoolean(Landroid/database/Cursor;IZ)Z
    .locals 4
    .parameter "c"
    .parameter "colId"
    .parameter "defaultValue"

    .prologue
    const/4 v1, 0x1

    .line 518
    :try_start_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v1, v2, :cond_0

    .line 521
    :goto_0
    return v1

    .line 518
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 519
    :catch_0
    move-exception v0

    .line 520
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MAP.BaseProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get boolean value from col "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, p2

    .line 521
    goto :goto_0
.end method

.method protected static getInt(Landroid/database/Cursor;II)I
    .locals 4
    .parameter "c"
    .parameter "colId"
    .parameter "defaultValue"

    .prologue
    .line 500
    :try_start_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 503
    .end local p2
    :goto_0
    return p2

    .line 501
    .restart local p2
    :catch_0
    move-exception v0

    .line 502
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MAP.BaseProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get int value from col "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected static getLong(Landroid/database/Cursor;IJ)J
    .locals 4
    .parameter "c"
    .parameter "colId"
    .parameter "defaultValue"

    .prologue
    .line 509
    :try_start_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    .line 512
    .end local p2
    :goto_0
    return-wide p2

    .line 510
    .restart local p2
    :catch_0
    move-exception v0

    .line 511
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MAP.BaseProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get long value from col "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected static isRootFolder(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 495
    const-string v0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected static isValidMsgStatus(B)Z
    .locals 2
    .parameter "val"

    .prologue
    const/4 v0, 0x1

    .line 459
    if-eq v0, p0, :cond_0

    const/4 v1, 0x2

    if-ne v1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized onBluetoothDisable()V
    .locals 2

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    const-string v0, "MAP.BaseProvider"

    const-string v1, "onBluetoothDisable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    monitor-exit p0

    return-void

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onBluetoothEnable()V
    .locals 2

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    const-string v0, "MAP.BaseProvider"

    const-string v1, "onBluetoothEnable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected static setBMessageHeaderInfo(Lcom/broadcom/bt/util/bmsg/BMessage;BLjava/lang/String;Lcom/broadcom/bt/service/map/MessageInfo;)V
    .locals 7
    .parameter "bMsg"
    .parameter "vCardVersionId"
    .parameter "folderPath"
    .parameter "mInfo"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 543
    if-eqz p0, :cond_0

    if-eqz p1, :cond_1

    if-eq p1, v5, :cond_1

    .line 545
    :cond_0
    const-string v3, "MAP.BaseProvider"

    const-string v4, "Unable to set BMessage Header Info"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :goto_0
    return-void

    .line 550
    :cond_1
    iget-boolean v3, p3, Lcom/broadcom/bt/service/map/MessageInfo;->mIsRead:Z

    invoke-virtual {p0, v3}, Lcom/broadcom/bt/util/bmsg/BMessage;->setReadStatus(Z)V

    .line 551
    invoke-virtual {p0, p2}, Lcom/broadcom/bt/util/bmsg/BMessage;->setFolder(Ljava/lang/String;)V

    .line 552
    invoke-static {p0, p3}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->setBMessageType(Lcom/broadcom/bt/util/bmsg/BMessage;Lcom/broadcom/bt/service/map/MessageInfo;)V

    .line 555
    invoke-virtual {p0}, Lcom/broadcom/bt/util/bmsg/BMessage;->addOriginator()Lcom/broadcom/bt/util/bmsg/BMessageVCard;

    move-result-object v1

    .line 564
    .local v1, bOriginator:Lcom/broadcom/bt/util/bmsg/BMessageVCard;
    invoke-virtual {v1, p1}, Lcom/broadcom/bt/util/bmsg/BMessageVCard;->setVersion(B)V

    .line 565
    iget-object v3, p3, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderName:Ljava/lang/String;

    invoke-virtual {v1, v5, v3, v4}, Lcom/broadcom/bt/util/bmsg/BMessageVCard;->addProperty(BLjava/lang/String;Ljava/lang/String;)Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;

    .line 566
    iget-object v3, p3, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderAddressing:Ljava/lang/String;

    invoke-virtual {v1, v6, v3, v4}, Lcom/broadcom/bt/util/bmsg/BMessageVCard;->addProperty(BLjava/lang/String;Ljava/lang/String;)Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;

    .line 569
    invoke-virtual {p0}, Lcom/broadcom/bt/util/bmsg/BMessage;->addEnvelope()Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;

    move-result-object v0

    .line 572
    .local v0, bEnv:Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;
    invoke-virtual {v0}, Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;->addRecipient()Lcom/broadcom/bt/util/bmsg/BMessageVCard;

    move-result-object v2

    .line 579
    .local v2, bRecipient:Lcom/broadcom/bt/util/bmsg/BMessageVCard;
    invoke-virtual {v2, p1}, Lcom/broadcom/bt/util/bmsg/BMessageVCard;->setVersion(B)V

    .line 580
    iget-object v3, p3, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientName:Ljava/lang/String;

    invoke-virtual {v2, v5, v3, v4}, Lcom/broadcom/bt/util/bmsg/BMessageVCard;->addProperty(BLjava/lang/String;Ljava/lang/String;)Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;

    .line 581
    iget-object v3, p3, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientRddressing:Ljava/lang/String;

    invoke-virtual {v2, v6, v3, v4}, Lcom/broadcom/bt/util/bmsg/BMessageVCard;->addProperty(BLjava/lang/String;Ljava/lang/String;)Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;

    goto :goto_0
.end method

.method protected static setBMessageType(Lcom/broadcom/bt/util/bmsg/BMessage;Lcom/broadcom/bt/service/map/MessageInfo;)V
    .locals 5
    .parameter "bMsg"
    .parameter "mInfo"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 526
    if-eqz p1, :cond_0

    .line 527
    iget-byte v0, p1, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgType:B

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_1

    .line 528
    invoke-virtual {p0, v1}, Lcom/broadcom/bt/util/bmsg/BMessage;->setMessageType(B)V

    .line 539
    :cond_0
    :goto_0
    return-void

    .line 529
    :cond_1
    iget-byte v0, p1, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgType:B

    and-int/lit8 v0, v0, 0x4

    if-eq v0, v3, :cond_2

    .line 530
    invoke-virtual {p0, v3}, Lcom/broadcom/bt/util/bmsg/BMessage;->setMessageType(B)V

    goto :goto_0

    .line 531
    :cond_2
    iget-byte v0, p1, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgType:B

    and-int/lit8 v0, v0, 0x2

    if-eq v0, v2, :cond_3

    .line 532
    invoke-virtual {p0, v2}, Lcom/broadcom/bt/util/bmsg/BMessage;->setMessageType(B)V

    goto :goto_0

    .line 533
    :cond_3
    iget-byte v0, p1, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgType:B

    and-int/lit8 v0, v0, 0x8

    if-eq v0, v4, :cond_4

    .line 534
    invoke-virtual {p0, v4}, Lcom/broadcom/bt/util/bmsg/BMessage;->setMessageType(B)V

    goto :goto_0

    .line 536
    :cond_4
    const-string v0, "MAP.BaseProvider"

    const-string v1, "Unable to set message type"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected static setMsgRecipientNameInfo(Lcom/broadcom/bt/service/map/MessageInfo;Lcom/broadcom/bt/service/map/provider/PersonInfo;)V
    .locals 3
    .parameter "mInfo"
    .parameter "pInfo"

    .prologue
    .line 484
    if-nez p1, :cond_0

    .line 492
    :goto_0
    return-void

    .line 487
    :cond_0
    const-string v0, "MAP.BaseProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMsgRecipientNameInfo - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/broadcom/bt/service/map/provider/PersonInfo;->mFamilyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/broadcom/bt/service/map/provider/PersonInfo;->mGivenName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/broadcom/bt/service/map/provider/PersonInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/broadcom/bt/service/map/provider/PersonInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientName:Ljava/lang/String;

    goto :goto_0
.end method

.method protected static setMsgReplyToNameInfo(Lcom/broadcom/bt/service/map/MessageInfo;Lcom/broadcom/bt/service/map/provider/PersonInfo;)V
    .locals 3
    .parameter "mInfo"
    .parameter "pInfo"

    .prologue
    .line 473
    if-nez p1, :cond_0

    .line 481
    :goto_0
    return-void

    .line 476
    :cond_0
    const-string v0, "MAP.BaseProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMsgReplyToNameInfo - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/broadcom/bt/service/map/provider/PersonInfo;->mFamilyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/broadcom/bt/service/map/provider/PersonInfo;->mGivenName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/broadcom/bt/service/map/provider/PersonInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected static setMsgSenderNameInfo(Lcom/broadcom/bt/service/map/MessageInfo;Lcom/broadcom/bt/service/map/provider/PersonInfo;)V
    .locals 3
    .parameter "mInfo"
    .parameter "pInfo"

    .prologue
    .line 463
    if-nez p1, :cond_0

    .line 470
    :goto_0
    return-void

    .line 466
    :cond_0
    const-string v0, "MAP.BaseProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMsgSenderNameInfo - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/broadcom/bt/service/map/provider/PersonInfo;->mFamilyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/broadcom/bt/service/map/provider/PersonInfo;->mGivenName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/broadcom/bt/service/map/provider/PersonInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/broadcom/bt/service/map/provider/PersonInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderName:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected deleteFile(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 649
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/map/BluetoothMAP;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected abstract disableNotifications(Ljava/lang/String;)Z
.end method

.method protected disconnectDevice(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "bda"
    .parameter "datasourceId"

    .prologue
    .line 107
    const-string v0, "MAP.BaseProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnectDevice() - bda = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", datasource = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getProviderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Lcom/broadcom/bt/service/map/BluetoothMAP;->disconnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    const-string v0, "MAP.BaseProvider"

    const-string v1, "disconnectDevice - nothing to do..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected abstract enableNotifications(Ljava/lang/String;)Z
.end method

.method public finish()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 174
    const-string v1, "MAP.BaseProvider"

    const-string v2, "finish()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->stop()V

    .line 179
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mReceiver:Lcom/broadcom/bt/service/map/provider/BaseProvider$EventBroadcastReceiver;

    if-eqz v1, :cond_0

    .line 181
    const-string v1, "MAP.BaseProvider"

    const-string v2, "Unregistering receiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mReceiver:Lcom/broadcom/bt/service/map/provider/BaseProvider$EventBroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 186
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mReceiver:Lcom/broadcom/bt/service/map/provider/BaseProvider$EventBroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mEventCallbackHandler:Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;

    if-eqz v1, :cond_1

    .line 195
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mEventCallbackHandler:Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;->finish()V

    .line 196
    iput-object v3, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mEventCallbackHandler:Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;

    .line 199
    :cond_1
    return-void

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, e:Ljava/lang/Exception;
    iput-object v3, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mReceiver:Lcom/broadcom/bt/service/map/provider/BaseProvider$EventBroadcastReceiver;

    .line 189
    const-string v1, "MAP.BaseProvider"

    const-string v2, "Maybe - QuickSettings tab tab tab"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected getEventCallbackHandler()Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mEventCallbackHandler:Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;

    if-nez v0, :cond_0

    .line 278
    new-instance v0, Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;

    invoke-direct {v0}, Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mEventCallbackHandler:Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;

    .line 279
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mEventCallbackHandler:Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;->start()V

    .line 280
    :goto_0
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mEventCallbackHandler:Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 282
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 283
    :catch_0
    move-exception v0

    goto :goto_0

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mEventCallbackHandler:Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;

    return-object v0
.end method

.method protected getOwnerInfo()Lcom/broadcom/bt/service/map/provider/PersonInfo;
    .locals 1

    .prologue
    .line 455
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getProviderId()Ljava/lang/String;
.end method

.method protected getString(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "resourceId"
    .parameter "defaultVal"

    .prologue
    .line 619
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    if-gtz p1, :cond_0

    .line 627
    .end local p2
    :goto_0
    return-object p2

    .line 623
    .restart local p2
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    goto :goto_0

    .line 624
    :catch_0
    move-exception v0

    .line 625
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MAP.BaseProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get string resource:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Z)V
    .locals 5
    .parameter "ctx"
    .parameter "startImmediately"

    .prologue
    const/4 v4, 0x0

    .line 154
    const-string v1, "MAP.BaseProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init(): startImmediately= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iput-object p1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    .line 158
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContentResolver:Landroid/content/ContentResolver;

    .line 159
    new-instance v1, Lcom/broadcom/bt/service/map/provider/BaseProvider$EventBroadcastReceiver;

    invoke-direct {v1, p0, v4}, Lcom/broadcom/bt/service/map/provider/BaseProvider$EventBroadcastReceiver;-><init>(Lcom/broadcom/bt/service/map/provider/BaseProvider;Lcom/broadcom/bt/service/map/provider/BaseProvider$1;)V

    iput-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mReceiver:Lcom/broadcom/bt/service/map/provider/BaseProvider$EventBroadcastReceiver;

    .line 161
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getEventCallbackHandler()Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;

    .line 162
    invoke-static {v4}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->addFilter_DSDiscover(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;

    move-result-object v0

    .line 163
    .local v0, ifilter:Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    const-string v1, "com.broadcom.bt.service.map.DISCONNECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mReceiver:Lcom/broadcom/bt/service/map/provider/BaseProvider$EventBroadcastReceiver;

    iget-object v3, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mEventCallbackHandler:Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;

    iget-object v3, v3, Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 167
    if-eqz p2, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->start()V

    .line 170
    :cond_0
    return-void
.end method

.method protected abstract onClientConnected(Ljava/lang/String;)V
.end method

.method protected abstract onClientDisconnected()V
.end method

.method protected declared-synchronized onDSDiscoverEvent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 691
    monitor-enter p0

    :try_start_0
    const-string v0, "MAP.BaseProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDSDiscoverEvent(): mIsStarted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mIsStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    iget-boolean v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mIsStarted:Z

    if-nez v0, :cond_0

    .line 695
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 700
    :goto_0
    monitor-exit p0

    return-void

    .line 698
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->registerDatasources()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 691
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized onDisconnect(Ljava/lang/String;)V
    .locals 0
    .parameter "bda"

    .prologue
    .line 102
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method protected abstract onGetFolderListing(ILjava/lang/String;Ljava/lang/String;II)V
.end method

.method protected abstract onGetMsg(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BB)V
.end method

.method protected abstract onGetMsgListing(Ljava/lang/String;ILjava/lang/String;IIIBBLjava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;B)V
.end method

.method public onMCEConnected(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "deviceName"

    .prologue
    .line 303
    const-string v0, "MAP.BaseProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMCEConnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-virtual {p0, p3}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->onClientConnected(Ljava/lang/String;)V

    .line 306
    return-void
.end method

.method public onMCEDisconnected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "providerId"
    .parameter "datasourceId"

    .prologue
    .line 311
    const-string v0, "MAP.BaseProvider"

    const-string v1, "onMCEDisconnected "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->onClientDisconnected()V

    .line 314
    return-void
.end method

.method public onMCEGetFolderListing(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6
    .parameter "request_id"
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "folderPath"
    .parameter "maxEntries"
    .parameter "offset"

    .prologue
    .line 387
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getProviderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 388
    const-string v0, "MAP.BaseProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to get folder listing. Wrong providerId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    move v1, p1

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    .line 391
    invoke-virtual/range {v0 .. v5}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->onGetFolderListing(ILjava/lang/String;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public onMCEGetMsg(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BB)V
    .locals 8
    .parameter "requestId"
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "folderPath"
    .parameter "virtualFolderPath"
    .parameter "messageId"
    .parameter "charSet"
    .parameter "includeAttachment"

    .prologue
    .line 421
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getProviderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 422
    const-string v0, "MAP.BaseProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to get message. Wrong providerId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    move v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    move/from16 v7, p8

    .line 425
    invoke-virtual/range {v0 .. v7}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->onGetMsg(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BB)V

    goto :goto_0
.end method

.method public onMCEGetMsgListing(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIBBLjava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;B)V
    .locals 16
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "requestId"
    .parameter "folderPath"
    .parameter "parameterMask"
    .parameter "maxListCnt"
    .parameter "listStartOffset"
    .parameter "subjectLength"
    .parameter "msgMask"
    .parameter "periodBegin"
    .parameter "periodEnd"
    .parameter "readStatus"
    .parameter "recipient"
    .parameter "originator"
    .parameter "pri_status"

    .prologue
    .line 398
    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getProviderId()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 399
    const-string v1, "MAP.BaseProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to update get message listing. Wrong providerId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :goto_0
    return-void

    :cond_0
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move/from16 v15, p15

    .line 402
    invoke-virtual/range {v1 .. v15}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->onGetMsgListing(Ljava/lang/String;ILjava/lang/String;IIIBBLjava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;B)V

    goto :goto_0
.end method

.method public onMCEPushMsg(ILjava/lang/String;Ljava/lang/String;BBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "requestId"
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "msgTransparent"
    .parameter "msgRetry"
    .parameter "msgCharset"
    .parameter "folderPath"
    .parameter "virtualFolderPath"
    .parameter "msgContentUri"

    .prologue
    .line 411
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getProviderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 412
    const-string v0, "MAP.BaseProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to push message. Wrong providerId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    move v1, p1

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move-object/from16 v6, p9

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 415
    invoke-virtual/range {v0 .. v8}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->onPushMsg(ILjava/lang/String;BBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onMCERegisterForNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "requestId"
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "notificationMode"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 336
    const/4 v0, 0x0

    .line 338
    .local v0, isSuccess:Z
    const-string v1, "MAP.BaseProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMCERegisterForNotification("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getProviderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 343
    const-string v1, "MAP.BaseProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to enable/disable notifications. Wrong providerId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :goto_0
    return-void

    .line 347
    :cond_0
    const-string v1, "on"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 348
    iget-boolean v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mNotificationsEnabled:Z

    if-eqz v1, :cond_2

    .line 349
    const/4 v0, 0x1

    .line 366
    :cond_1
    :goto_1
    if-ne v0, v4, :cond_7

    .line 368
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    invoke-virtual {v1, p1, p2, p3, v5}, Lcom/broadcom/bt/service/map/BluetoothMAP;->notifyRegistrationResponse(ILjava/lang/String;Ljava/lang/String;B)I

    goto :goto_0

    .line 350
    :cond_2
    invoke-virtual {p0, p3}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->enableNotifications(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 351
    iput-boolean v4, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mNotificationsEnabled:Z

    .line 352
    const/4 v0, 0x1

    goto :goto_1

    .line 354
    :cond_3
    const-string v1, "MAP.BaseProvider"

    const-string v2, "Unable to enable notifications"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 356
    :cond_4
    const-string v1, "off"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 357
    iget-boolean v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mNotificationsEnabled:Z

    if-nez v1, :cond_5

    .line 358
    const/4 v0, 0x1

    goto :goto_1

    .line 359
    :cond_5
    invoke-virtual {p0, p3}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->disableNotifications(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 360
    iput-boolean v5, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mNotificationsEnabled:Z

    .line 361
    const/4 v0, 0x1

    goto :goto_1

    .line 364
    :cond_6
    const-string v1, "MAP.BaseProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to enable/disable notifications: invalid mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 372
    :cond_7
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    invoke-virtual {v1, p1, p2, p3, v4}, Lcom/broadcom/bt/service/map/BluetoothMAP;->notifyRegistrationResponse(ILjava/lang/String;Ljava/lang/String;B)I

    goto :goto_0
.end method

.method public onMCESetMessageStatus(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BB)V
    .locals 6
    .parameter "requestId"
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "folderPath"
    .parameter "messageId"
    .parameter "statusType"
    .parameter "statusValue"

    .prologue
    .line 430
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getProviderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 431
    const-string v0, "MAP.BaseProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMCESetMessageStatus(): Unable to set message status. Wrong providerId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :goto_0
    return-void

    .line 435
    :cond_0
    const/4 v0, 0x1

    if-ne p6, v0, :cond_1

    move-object v0, p0

    move v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p7

    .line 436
    invoke-virtual/range {v0 .. v5}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->onSetMessageReadStatus(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V

    goto :goto_0

    .line 438
    :cond_1
    const/4 v0, 0x2

    if-ne p6, v0, :cond_2

    move-object v0, p0

    move v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p7

    .line 441
    invoke-virtual/range {v0 .. v5}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->onSetMessageDeletedStatus(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V

    goto :goto_0

    .line 447
    :cond_2
    const-string v0, "MAP.BaseProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMCESetMessageStatus(): invalid message status type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onMCEUpdateInbox(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "providerId"
    .parameter "datasourceId"

    .prologue
    .line 378
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getProviderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 379
    const-string v0, "MAP.BaseProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to update inbox. Wrong providerId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :goto_0
    return-void

    .line 382
    :cond_0
    invoke-virtual {p0, p2}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->onUpdateInbox(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onMSEInstanceStarted()V
    .locals 0

    .prologue
    .line 721
    return-void
.end method

.method protected onMSEInstanceStopped()V
    .locals 0

    .prologue
    .line 723
    return-void
.end method

.method public onMSEStateChanged(Ljava/lang/String;Ljava/lang/String;B)V
    .locals 2
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "state"

    .prologue
    const/4 v1, 0x1

    .line 318
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 319
    const-string v0, "MAP.BaseProvider"

    const-string v1, "Unable to start/stop provider: context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    const/4 v0, 0x2

    if-ne p3, v0, :cond_2

    .line 324
    iput-boolean v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mIsStarted:Z

    .line 325
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->onMSEInstanceStarted()V

    goto :goto_0

    .line 326
    :cond_2
    if-ne p3, v1, :cond_0

    .line 327
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->stop()V

    .line 329
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mIsStarted:Z

    .line 330
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->onMSEInstanceStopped()V

    goto :goto_0
.end method

.method public onMsgGetInProgress()V
    .locals 0

    .prologue
    .line 293
    return-void
.end method

.method public onMsgPushInProgress()V
    .locals 0

    .prologue
    .line 298
    return-void
.end method

.method public onProxyAvailable(Ljava/lang/Object;)V
    .locals 3
    .parameter "proxyObject"

    .prologue
    .line 261
    const-string v0, "MAP.BaseProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProxyAvailable. Proxy object = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    check-cast p1, Lcom/broadcom/bt/service/map/BluetoothMAP;

    .end local p1
    iput-object p1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    .line 264
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mIsStarted:Z

    .line 266
    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provider started!: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getProviderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->registerDatasources()V

    .line 269
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->onStarted()V

    .line 270
    return-void
.end method

.method protected abstract onPushMsg(ILjava/lang/String;BBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method protected abstract onSetMessageDeletedStatus(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V
.end method

.method protected abstract onSetMessageReadStatus(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V
.end method

.method protected onStarted()V
    .locals 0

    .prologue
    .line 706
    return-void
.end method

.method protected onStopped()V
    .locals 0

    .prologue
    .line 718
    return-void
.end method

.method protected abstract onUpdateInbox(Ljava/lang/String;)V
.end method

.method protected parseBMessage(Ljava/lang/String;Z)Lcom/broadcom/bt/util/bmsg/BMessage;
    .locals 9
    .parameter "uri"
    .parameter "delete_src_file"

    .prologue
    const/4 v5, 0x0

    .line 585
    const-string v6, "MAP.BaseProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parseBMessage file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "delete src file ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    const/4 v1, 0x0

    .line 588
    .local v1, filePath:Ljava/lang/String;
    if-nez p1, :cond_1

    .line 589
    :try_start_0
    const-string v6, "MAP.BaseProvider"

    const-string v7, "Unable to parse BMessage file. Null file path"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 614
    :cond_0
    :goto_0
    return-object v2

    .line 591
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2f

    if-ne v6, v7, :cond_2

    .line 592
    move-object v1, p1

    .line 600
    :goto_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 601
    .local v0, file:Ljava/io/File;
    const-string v6, "MAP.BaseProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Parsing file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Exists="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    invoke-static {v0}, Lcom/broadcom/bt/util/bmsg/BMessage;->parse(Ljava/io/File;)Lcom/broadcom/bt/util/bmsg/BMessage;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 604
    .local v2, result:Lcom/broadcom/bt/util/bmsg/BMessage;
    if-eqz p2, :cond_0

    .line 606
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->deleteFile(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 607
    :catch_0
    move-exception v3

    .line 608
    .local v3, se:Ljava/lang/SecurityException;
    :try_start_2
    const-string v6, "MAP.BaseProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to delete file se="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 612
    .end local v0           #file:Ljava/io/File;
    .end local v2           #result:Lcom/broadcom/bt/util/bmsg/BMessage;
    .end local v3           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v4

    .line 613
    .local v4, t:Ljava/lang/Throwable;
    const-string v6, "MAP.BaseProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to parse BMessage file t="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 614
    goto :goto_0

    .line 593
    .end local v4           #t:Ljava/lang/Throwable;
    :cond_2
    :try_start_3
    const-string v6, "file://"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 594
    const/4 v6, 0x7

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 596
    :cond_3
    const-string v6, "MAP.BaseProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to parse BMessage file. URI is not a file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-object v2, v5

    .line 597
    goto/16 :goto_0
.end method

.method protected preStart()V
    .locals 0

    .prologue
    .line 684
    return-void
.end method

.method protected preStop()V
    .locals 0

    .prologue
    .line 712
    return-void
.end method

.method protected registerDS(IILjava/lang/String;IZZ[Ljava/lang/String;)Z
    .locals 15
    .parameter "providerType"
    .parameter "providerNameResourceId"
    .parameter "datasourceId"
    .parameter "datasourceNameResourceId"
    .parameter "supportsMessageFilter"
    .parameter "supportsMessageOffsetBrowsing"
    .parameter "folderMappings"

    .prologue
    .line 633
    const/4 v1, 0x0

    move/from16 v0, p2

    invoke-virtual {p0, v0, v1}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 634
    .local v13, providerDisplayName:Ljava/lang/String;
    const/4 v1, 0x0

    move/from16 v0, p4

    invoke-virtual {p0, v0, v1}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 635
    .local v12, dsDisplayName:Ljava/lang/String;
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    if-eqz v1, :cond_0

    if-nez p3, :cond_1

    .line 636
    :cond_0
    const-string v1, "MAP.BaseProvider"

    const-string v2, "Unable to register datasource. Proxy or datasource is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    const/4 v1, 0x0

    .line 645
    :goto_0
    return v1

    .line 640
    :cond_1
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    move/from16 v0, p1

    int-to-byte v4, v0

    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getProviderId()Ljava/lang/String;

    move-result-object v5

    if-nez v13, :cond_2

    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getProviderId()Ljava/lang/String;

    move-result-object v6

    :goto_1
    if-nez v12, :cond_3

    move-object/from16 v8, p3

    :goto_2
    move-object v3, p0

    move-object/from16 v7, p3

    move/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v11, p7

    invoke-virtual/range {v1 .. v11}, Lcom/broadcom/bt/service/map/BluetoothMAP;->init(Landroid/content/Context;Lcom/broadcom/bt/service/map/IMapEventHandler;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;)I

    .line 644
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/map/BluetoothMAP;->registerDSProvider()I

    move-result v14

    .line 645
    .local v14, status:I
    if-nez v14, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    .end local v14           #status:I
    :cond_2
    move-object v6, v13

    .line 640
    goto :goto_1

    :cond_3
    move-object v8, v12

    goto :goto_2

    .line 645
    .restart local v14       #status:I
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected abstract registerDatasources()V
.end method

.method protected declared-synchronized start()V
    .locals 3

    .prologue
    .line 207
    monitor-enter p0

    :try_start_0
    const-string v0, "MAP.BaseProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getProviderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 210
    const-string v0, "MAP.BaseProvider"

    const-string v1, "Unable to start provider. Invalid context specified,"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    :goto_0
    monitor-exit p0

    return-void

    .line 213
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mIsStarted:Z

    if-eqz v0, :cond_1

    .line 214
    const-string v0, "MAP.BaseProvider"

    const-string v1, "Cannot start provider. Already started..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 217
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->preStart()V

    .line 221
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/broadcom/bt/service/map/BluetoothMAP;->getProxy(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z

    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mIsStarted:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected startMSE(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "providerId"
    .parameter "datasourceId"

    .prologue
    const/4 v1, 0x0

    .line 662
    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    if-nez v2, :cond_1

    .line 663
    const-string v2, "MAP.BaseProvider"

    const-string v3, "Unable to start datasource. Proxy  is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :cond_0
    :goto_0
    return v1

    .line 667
    :cond_1
    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    invoke-virtual {v2, p1, p2}, Lcom/broadcom/bt/service/map/BluetoothMAP;->startMSEInstance(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 668
    .local v0, status:I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected abstract startMSEInstance()V
.end method

.method protected declared-synchronized stop()V
    .locals 3

    .prologue
    .line 233
    monitor-enter p0

    :try_start_0
    const-string v0, "MAP.BaseProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getProviderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-boolean v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mIsStarted:Z

    if-nez v0, :cond_0

    .line 236
    const-string v0, "MAP.BaseProvider"

    const-string v1, "Cannot stop provider. Already stopped..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    :goto_0
    monitor-exit p0

    return-void

    .line 240
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->preStop()V

    .line 241
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->unregisterDatasources()V

    .line 243
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/map/BluetoothMAP;->finish()V

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    .line 247
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mIsStarted:Z

    .line 249
    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provider stopped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getProviderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->onStopped()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 233
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected stopMSE(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "providerId"
    .parameter "datasourceId"

    .prologue
    const/4 v1, 0x0

    .line 672
    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    if-nez v2, :cond_1

    .line 673
    const-string v2, "MAP.BaseProvider"

    const-string v3, "Unable to stop datasource. Proxy  is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :cond_0
    :goto_0
    return v1

    .line 677
    :cond_1
    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    invoke-virtual {v2, p1, p2}, Lcom/broadcom/bt/service/map/BluetoothMAP;->stopMSEInstance(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 678
    .local v0, status:I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected abstract stopMSEInstance()V
.end method

.method protected unregisterDS(Ljava/lang/String;)Z
    .locals 4
    .parameter "datasourceId"

    .prologue
    const/4 v1, 0x0

    .line 653
    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    if-eqz v2, :cond_0

    if-nez p1, :cond_2

    .line 654
    :cond_0
    const-string v2, "MAP.BaseProvider"

    const-string v3, "Unable to unregister datasource. Proxy or datasource is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    :cond_1
    :goto_0
    return v1

    .line 657
    :cond_2
    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getProviderId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/broadcom/bt/service/map/BluetoothMAP;->unregisterDSProvider(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 658
    .local v0, status:I
    if-nez v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected abstract unregisterDatasources()V
.end method
