.class public Lcom/broadcom/bt/service/map/provider/ProviderHelper;
.super Ljava/lang/Object;
.source "ProviderHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MAP.ProviderHelper"


# instance fields
.field mProvider:Lcom/broadcom/bt/service/map/provider/BaseProvider;

.field mProviderId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/broadcom/bt/service/map/provider/BaseProvider;)V
    .locals 1
    .parameter "provider"

    .prologue
    .line 77
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProvider:Lcom/broadcom/bt/service/map/provider/BaseProvider;

    .line 80
    invoke-virtual {p1}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getProviderId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProviderId:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public static addFilter_DSDiscover(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .locals 1
    .parameter "filter"

    .prologue
    .line 66
    if-nez p0, :cond_0

    .line 67
    new-instance p0, Landroid/content/IntentFilter;

    .end local p0
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 69
    .restart local p0
    :cond_0
    const-string v0, "com.broadcom.bt.service.map.DS_DISCOVER"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    return-object p0
.end method

.method public static createIntent_DSDiscover()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.broadcom.bt.service.map.DS_DISCOVER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private getMSETime()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 88
    const-string v2, ""

    .line 93
    .local v2, sMSEDateTime:Ljava/lang/String;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 94
    .local v0, d:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMddHHmmss"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 96
    .local v1, formatter:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "T"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xe

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 99
    const-string v3, "MAP.ProviderHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSEDateTime :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-object v2
.end method

.method private getProxy()Lcom/broadcom/bt/service/map/BluetoothMAP;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProvider:Lcom/broadcom/bt/service/map/provider/BaseProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProvider:Lcom/broadcom/bt/service/map/provider/BaseProvider;

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private paramsValid(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "messageId"

    .prologue
    .line 411
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 412
    :cond_0
    const-string v0, "MAP.ProviderHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid param!. requestId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "datasourceId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p2, :cond_1

    const-string p2, "(null)"

    .end local p2
    :cond_1
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p3, :cond_2

    const-string p3, "(null)"

    .end local p3
    :cond_2
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const/4 v0, 0x0

    .line 417
    :goto_0
    return v0

    .restart local p2
    .restart local p3
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private sendNotification(Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;B)Z
    .locals 8
    .parameter "datasourceId"
    .parameter "notificationType"
    .parameter "messageId"
    .parameter "folderPath"
    .parameter "oldFolderPath"
    .parameter "msg_type"

    .prologue
    const/4 v1, 0x0

    .line 285
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->getProxy()Lcom/broadcom/bt/service/map/BluetoothMAP;

    move-result-object v0

    .line 287
    .local v0, mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;
    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 288
    :cond_0
    const-string v2, "MAP.ProviderHelper"

    const-string v3, "Unable to send notification. Proxy or datasource is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :goto_0
    return v1

    .line 291
    :cond_1
    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProvider:Lcom/broadcom/bt/service/map/provider/BaseProvider;

    iget-boolean v2, v2, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mNotificationsEnabled:Z

    if-nez v2, :cond_2

    .line 292
    const-string v2, "MAP.ProviderHelper"

    const-string v3, "Unable to send notification. Notification is not enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 295
    :cond_2
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProviderId:Ljava/lang/String;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/broadcom/bt/service/map/BluetoothMAP;->notifyClient(Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;B)I

    .line 298
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public findMessageBody(Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;)Lcom/broadcom/bt/util/bmsg/BMessageBody;
    .locals 5
    .parameter "bEnv"

    .prologue
    .line 461
    const/4 v1, 0x1

    .line 462
    .local v1, nestCount:I
    :goto_0
    if-eqz p1, :cond_1

    .line 463
    const-string v2, "MAP.ProviderHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Finding message body in envelope level #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-virtual {p1}, Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;->getBody()Lcom/broadcom/bt/util/bmsg/BMessageBody;

    move-result-object v0

    .line 465
    .local v0, bBody:Lcom/broadcom/bt/util/bmsg/BMessageBody;
    if-eqz v0, :cond_0

    .line 466
    const-string v2, "MAP.ProviderHelper"

    const-string v3, "findMessageBody(): Found body!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    .end local v0           #bBody:Lcom/broadcom/bt/util/bmsg/BMessageBody;
    :goto_1
    return-object v0

    .line 469
    .restart local v0       #bBody:Lcom/broadcom/bt/util/bmsg/BMessageBody;
    :cond_0
    invoke-virtual {p1}, Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;->getChildEnvelope()Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;

    move-result-object p1

    .line 470
    add-int/lit8 v1, v1, 0x1

    .line 471
    goto :goto_0

    .line 472
    .end local v0           #bBody:Lcom/broadcom/bt/util/bmsg/BMessageBody;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public findRecipientProperty(Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;B)Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;
    .locals 6
    .parameter "bEnv"
    .parameter "propId"

    .prologue
    .line 434
    const/4 v2, 0x1

    .line 435
    .local v2, nestCount:I
    :goto_0
    if-eqz p1, :cond_1

    .line 436
    const-string v3, "MAP.ProviderHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Finding recipient in envelope level #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    invoke-virtual {p1}, Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;->getRecipient()Lcom/broadcom/bt/util/bmsg/BMessageVCard;

    move-result-object v1

    .line 438
    .local v1, bRecipient:Lcom/broadcom/bt/util/bmsg/BMessageVCard;
    if-eqz v1, :cond_0

    .line 439
    invoke-virtual {v1, p2}, Lcom/broadcom/bt/util/bmsg/BMessageVCard;->getProperty(B)Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;

    move-result-object v0

    .line 440
    .local v0, bProp:Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;
    if-eqz v0, :cond_0

    .line 441
    const-string v3, "MAP.ProviderHelper"

    const-string v4, "findRecipientProperty(): Found property!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    .end local v0           #bProp:Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;
    .end local v1           #bRecipient:Lcom/broadcom/bt/util/bmsg/BMessageVCard;
    :goto_1
    return-object v0

    .line 445
    .restart local v1       #bRecipient:Lcom/broadcom/bt/util/bmsg/BMessageVCard;
    :cond_0
    invoke-virtual {p1}, Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;->getChildEnvelope()Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;

    move-result-object p1

    .line 446
    add-int/lit8 v2, v2, 0x1

    .line 447
    goto :goto_0

    .line 448
    .end local v1           #bRecipient:Lcom/broadcom/bt/util/bmsg/BMessageVCard;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public processEvent_MessageDeleted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZB)V
    .locals 7
    .parameter "datasourceId"
    .parameter "messageId"
    .parameter "folderPath"
    .parameter "sendNotification"
    .parameter "msg_type"

    .prologue
    .line 352
    if-eqz p4, :cond_0

    const/4 v2, 0x7

    :goto_0
    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification(Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;B)Z

    .line 360
    return-void

    .line 352
    :cond_0
    const/16 v2, 0x7d

    goto :goto_0
.end method

.method public returnMessage(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "messageId"
    .parameter "msgCharset"
    .parameter "msgUri"

    .prologue
    .line 380
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->paramsValid(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 381
    const-string v1, "MAP.ProviderHelper"

    const-string v2, "returnMessage(): invalid params. ignoring request."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :goto_0
    return-void

    .line 384
    :cond_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->getProxy()Lcom/broadcom/bt/service/map/BluetoothMAP;

    move-result-object v0

    .line 385
    .local v0, mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;
    if-nez v0, :cond_1

    .line 386
    const-string v1, "MAP.ProviderHelper"

    const-string v2, "Proxy is not available...Ignoring request..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_1
    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProviderId:Ljava/lang/String;

    const/4 v5, 0x0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/service/map/BluetoothMAP;->getMsgResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)I

    goto :goto_0
.end method

.method public returnNoMessage(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "messageId"

    .prologue
    .line 364
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->paramsValid(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 365
    const-string v1, "MAP.ProviderHelper"

    const-string v2, "returnNoMessage(): invalid params. ignoring request."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :goto_0
    return-void

    .line 369
    :cond_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->getProxy()Lcom/broadcom/bt/service/map/BluetoothMAP;

    move-result-object v0

    .line 370
    .local v0, mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;
    if-nez v0, :cond_1

    .line 371
    const-string v1, "MAP.ProviderHelper"

    const-string v2, "Proxy is not available...Ignoring request..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_1
    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProviderId:Ljava/lang/String;

    const/4 v5, 0x2

    const/4 v6, 0x0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/service/map/BluetoothMAP;->getMsgResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)I

    goto :goto_0
.end method

.method public sendFolderInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B[Lcom/broadcom/bt/service/map/FolderInfo;)Z
    .locals 9
    .parameter "requestId"
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "folderPath"
    .parameter "status"
    .parameter "folderInfo"

    .prologue
    const/4 v8, 0x0

    .line 255
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->getProxy()Lcom/broadcom/bt/service/map/BluetoothMAP;

    move-result-object v0

    .line 257
    .local v0, mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;
    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 258
    :cond_0
    const-string v1, "MAP.ProviderHelper"

    const-string v2, "Unable to send FolderInfo. Proxy or datasource is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v8

    .line 265
    :goto_0
    return v1

    :cond_1
    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    .line 262
    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/service/map/BluetoothMAP;->folderListingResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B[Lcom/broadcom/bt/service/map/FolderInfo;)I

    move-result v7

    .line 265
    .local v7, ret:I
    if-nez v7, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v8

    goto :goto_0
.end method

.method public sendFolderListingError_NoFolders(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "folderPath"

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->getProxy()Lcom/broadcom/bt/service/map/BluetoothMAP;

    move-result-object v0

    .line 198
    .local v0, mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;
    if-nez v0, :cond_0

    .line 199
    const-string v1, "MAP.ProviderHelper"

    const-string v2, "Proxy is not available...Ignoring request..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_0
    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProviderId:Ljava/lang/String;

    const/4 v5, 0x2

    const/4 v6, 0x0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/service/map/BluetoothMAP;->folderListingResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B[Lcom/broadcom/bt/service/map/FolderInfo;)I

    .line 204
    return-void
.end method

.method public sendFolderListings(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "folderPath"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/broadcom/bt/service/map/FolderInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 215
    .local p4, folderInfos:Ljava/util/List;,"Ljava/util/List<Lcom/broadcom/bt/service/map/FolderInfo;>;"
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    new-array v6, v1, [Lcom/broadcom/bt/service/map/FolderInfo;

    .line 216
    .local v6, fldInfoArray:[Lcom/broadcom/bt/service/map/FolderInfo;
    invoke-interface {p4, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 218
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->getProxy()Lcom/broadcom/bt/service/map/BluetoothMAP;

    move-result-object v0

    .line 219
    .local v0, mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;
    if-nez v0, :cond_0

    .line 220
    const-string v1, "MAP.ProviderHelper"

    const-string v2, "Proxy is not available...Ignoring request..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_0
    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProviderId:Ljava/lang/String;

    const/4 v5, 0x0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/service/map/BluetoothMAP;->folderListingResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B[Lcom/broadcom/bt/service/map/FolderInfo;)I

    .line 225
    return-void
.end method

.method public sendFolderListings(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 10
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "folderPath"
    .parameter "folderNames"

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->getProxy()Lcom/broadcom/bt/service/map/BluetoothMAP;

    move-result-object v0

    .line 230
    .local v0, mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;
    if-nez v0, :cond_0

    .line 231
    const-string v1, "MAP.ProviderHelper"

    const-string v2, "Proxy is not available...Ignoring request..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_0
    if-eqz p4, :cond_1

    array-length v1, p4

    if-nez v1, :cond_2

    .line 235
    :cond_1
    const-string v1, "MAP.ProviderHelper"

    const-string v2, "No folders specified"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :goto_0
    return-void

    .line 239
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    array-length v1, p4

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 241
    .local v7, folderInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/broadcom/bt/service/map/FolderInfo;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    array-length v1, p4

    if-ge v8, v1, :cond_3

    .line 242
    new-instance v9, Lcom/broadcom/bt/service/map/FolderInfo;

    invoke-direct {v9}, Lcom/broadcom/bt/service/map/FolderInfo;-><init>()V

    .line 243
    .local v9, info:Lcom/broadcom/bt/service/map/FolderInfo;
    aget-object v1, p4, v8

    iput-object v1, v9, Lcom/broadcom/bt/service/map/FolderInfo;->mFolderName:Ljava/lang/String;

    .line 244
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 246
    .end local v9           #info:Lcom/broadcom/bt/service/map/FolderInfo;
    :cond_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v6, v1, [Lcom/broadcom/bt/service/map/FolderInfo;

    .line 247
    .local v6, fldInfoArray:[Lcom/broadcom/bt/service/map/FolderInfo;
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 249
    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProviderId:Ljava/lang/String;

    const/4 v5, 0x0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/service/map/BluetoothMAP;->folderListingResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B[Lcom/broadcom/bt/service/map/FolderInfo;)I

    goto :goto_0
.end method

.method public sendMesageListingError_NoMsgs(ILjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "folderPath"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->getProxy()Lcom/broadcom/bt/service/map/BluetoothMAP;

    move-result-object v0

    .line 119
    .local v0, mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;
    if-nez v0, :cond_0

    .line 120
    const-string v1, "MAP.ProviderHelper"

    const-string v2, "Proxy is not available...Ignoring request..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->getMSETime()Ljava/lang/String;

    move-result-object v6

    .line 124
    .local v6, mseTime:Ljava/lang/String;
    const/4 v7, 0x0

    .line 125
    .local v7, newMsg:B
    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProviderId:Ljava/lang/String;

    const/4 v5, 0x2

    const/4 v8, 0x0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v8}, Lcom/broadcom/bt/service/map/BluetoothMAP;->msgListingResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;B[Lcom/broadcom/bt/service/map/MessageInfo;)I

    .line 127
    return-void
.end method

.method public sendMessageListings(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 10
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "folderPath"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/broadcom/bt/service/map/MessageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p4, msgInfos:Ljava/util/List;,"Ljava/util/List<Lcom/broadcom/bt/service/map/MessageInfo;>;"
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->getProxy()Lcom/broadcom/bt/service/map/BluetoothMAP;

    move-result-object v0

    .line 133
    .local v0, mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;
    if-nez v0, :cond_0

    .line 134
    const-string v1, "MAP.ProviderHelper"

    const-string v2, "Proxy is not available...Ignoring request..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->getMSETime()Ljava/lang/String;

    move-result-object v6

    .line 138
    .local v6, mseTime:Ljava/lang/String;
    const/4 v7, 0x0

    .line 139
    .local v7, newMsg:B
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    new-array v8, v1, [Lcom/broadcom/bt/service/map/MessageInfo;

    .line 140
    .local v8, msgInfoArray:[Lcom/broadcom/bt/service/map/MessageInfo;
    invoke-interface {p4, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 141
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v9, v1, :cond_1

    .line 144
    invoke-interface {p4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/service/map/MessageInfo;

    iget-boolean v1, v1, Lcom/broadcom/bt/service/map/MessageInfo;->mIsRead:Z

    if-nez v1, :cond_2

    .line 145
    const/4 v7, 0x1

    .line 149
    :cond_1
    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProviderId:Ljava/lang/String;

    const/4 v5, 0x0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v8}, Lcom/broadcom/bt/service/map/BluetoothMAP;->msgListingResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;B[Lcom/broadcom/bt/service/map/MessageInfo;)I

    .line 151
    return-void

    .line 141
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method

.method public sendMsg(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)Z
    .locals 9
    .parameter "requestId"
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "messageId"
    .parameter "status"
    .parameter "msgFilePath"

    .prologue
    const/4 v8, 0x0

    .line 183
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->getProxy()Lcom/broadcom/bt/service/map/BluetoothMAP;

    move-result-object v0

    .line 185
    .local v0, mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;
    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 186
    :cond_0
    const-string v1, "MAP.ProviderHelper"

    const-string v2, "Unable to send sendMsg. Proxy or datasource is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v8

    .line 191
    :goto_0
    return v1

    :cond_1
    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    .line 189
    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/service/map/BluetoothMAP;->getMsgResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)I

    move-result v7

    .line 191
    .local v7, ret:I
    if-nez v7, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v8

    goto :goto_0
.end method

.method public sendMsgListInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;B[Lcom/broadcom/bt/service/map/MessageInfo;)Z
    .locals 10
    .parameter "requestId"
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "parentPath"
    .parameter "status"
    .parameter "mseTime"
    .parameter "newMsg"
    .parameter "msgInfo"

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->getProxy()Lcom/broadcom/bt/service/map/BluetoothMAP;

    move-result-object v0

    .line 158
    .local v0, mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;
    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 159
    :cond_0
    const-string v1, "MAP.ProviderHelper"

    const-string v2, "Unable to send MsgListInfo. Proxy or datasource is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const/4 v1, 0x0

    .line 164
    :goto_0
    return v1

    :cond_1
    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 162
    invoke-virtual/range {v0 .. v8}, Lcom/broadcom/bt/service/map/BluetoothMAP;->msgListingResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;B[Lcom/broadcom/bt/service/map/MessageInfo;)I

    move-result v9

    .line 164
    .local v9, ret:I
    if-nez v9, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendMsgStatusResponse(ILjava/lang/String;Ljava/lang/String;BBLjava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "requestId"
    .parameter "providerId"
    .parameter "dataSourceId"
    .parameter "status_type"
    .parameter "status"
    .parameter "messageId"
    .parameter "folderPath"

    .prologue
    .line 270
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->getProxy()Lcom/broadcom/bt/service/map/BluetoothMAP;

    move-result-object v0

    .line 272
    .local v0, mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;
    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 273
    :cond_0
    const-string v1, "MAP.ProviderHelper"

    const-string v2, "Unable to send FolderInfo. Proxy or datasource is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const/4 v1, 0x0

    .line 279
    :goto_0
    return v1

    :cond_1
    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 276
    invoke-virtual/range {v0 .. v7}, Lcom/broadcom/bt/service/map/BluetoothMAP;->setMsgStatusResponse(ILjava/lang/String;Ljava/lang/String;BBLjava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 279
    .local v8, ret:I
    if-nez v8, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendNotification_DeliveryFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V
    .locals 7
    .parameter "datasourceId"
    .parameter "messageId"
    .parameter "folderPath"
    .parameter "msg_type"

    .prologue
    .line 326
    const/4 v2, 0x3

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification(Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;B)Z

    .line 328
    return-void
.end method

.method public sendNotification_DeliverySuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V
    .locals 7
    .parameter "datasourceId"
    .parameter "messageId"
    .parameter "folderPath"
    .parameter "msg_type"

    .prologue
    .line 320
    const/4 v2, 0x1

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification(Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;B)Z

    .line 322
    return-void
.end method

.method public sendNotification_MessageDelivered(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V
    .locals 7
    .parameter "datasourceId"
    .parameter "messageId"
    .parameter "folderPath"
    .parameter "msg_type"

    .prologue
    .line 332
    const/4 v2, 0x1

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification(Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;B)Z

    .line 334
    return-void
.end method

.method public sendNotification_MessageShift(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V
    .locals 7
    .parameter "datasourceId"
    .parameter "messageId"
    .parameter "folderPath"
    .parameter "oldFolderPath"
    .parameter "msg_type"

    .prologue
    .line 338
    const/16 v2, 0x8

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification(Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;B)Z

    .line 340
    return-void
.end method

.method public sendNotification_NewMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V
    .locals 7
    .parameter "datasourceId"
    .parameter "messageId"
    .parameter "folderPath"
    .parameter "msg_type"

    .prologue
    .line 302
    const/4 v2, 0x0

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification(Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;B)Z

    .line 304
    return-void
.end method

.method public sendNotification_SendingFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V
    .locals 7
    .parameter "datasourceId"
    .parameter "messageId"
    .parameter "folderPath"
    .parameter "msg_type"

    .prologue
    .line 314
    const/4 v2, 0x4

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification(Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;B)Z

    .line 316
    return-void
.end method

.method public sendNotification_SendingSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V
    .locals 7
    .parameter "datasourceId"
    .parameter "messageId"
    .parameter "folderPath"
    .parameter "msg_type"

    .prologue
    .line 308
    const/4 v2, 0x2

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification(Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;B)Z

    .line 310
    return-void
.end method

.method public sendPushResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)Z
    .locals 9
    .parameter "requestId"
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "messageId"
    .parameter "status"
    .parameter "msg_folder"

    .prologue
    const/4 v8, 0x0

    .line 170
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->getProxy()Lcom/broadcom/bt/service/map/BluetoothMAP;

    move-result-object v0

    .line 172
    .local v0, mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;
    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 173
    :cond_0
    const-string v1, "MAP.ProviderHelper"

    const-string v2, "Unable to send sendPushResponse. Proxy or datasource is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v8

    .line 177
    :goto_0
    return v1

    :cond_1
    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    .line 176
    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/service/map/BluetoothMAP;->msgPushResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)I

    move-result v7

    .line 177
    .local v7, ret:I
    if-nez v7, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v8

    goto :goto_0
.end method

.method public setMsgPushStatus_Error(ILjava/lang/String;)V
    .locals 7
    .parameter "requestId"
    .parameter "datasourceId"

    .prologue
    .line 402
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->getProxy()Lcom/broadcom/bt/service/map/BluetoothMAP;

    move-result-object v0

    .line 403
    .local v0, mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;
    if-nez v0, :cond_0

    .line 404
    const-string v1, "MAP.ProviderHelper"

    const-string v2, "Proxy is not available...Ignoring request..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_0
    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProviderId:Ljava/lang/String;

    const-string v4, ""

    const/4 v5, 0x1

    const-string v6, ""

    move v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/service/map/BluetoothMAP;->msgPushResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)I

    .line 408
    return-void
.end method

.method public setMsgPushStatus_Success(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "messageId"
    .parameter "folderPath"

    .prologue
    .line 393
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->getProxy()Lcom/broadcom/bt/service/map/BluetoothMAP;

    move-result-object v0

    .line 394
    .local v0, mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;
    if-nez v0, :cond_0

    .line 395
    const-string v1, "MAP.ProviderHelper"

    const-string v2, "Proxy is not available...Ignoring request..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_0
    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProviderId:Ljava/lang/String;

    const/4 v5, 0x0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/service/map/BluetoothMAP;->msgPushResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)I

    .line 399
    return-void
.end method
