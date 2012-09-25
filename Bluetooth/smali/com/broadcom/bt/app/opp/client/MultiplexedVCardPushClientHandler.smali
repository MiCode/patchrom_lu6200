.class public Lcom/broadcom/bt/app/opp/client/MultiplexedVCardPushClientHandler;
.super Lcom/broadcom/bt/app/opp/client/PushClientHandler;
.source "MultiplexedVCardPushClientHandler.java"


# instance fields
.field private mContactNumber:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/client/PushClientHandler;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/broadcom/bt/app/opp/client/MultiplexedVCardPushClientHandler;->mContactNumber:I

    return-void
.end method

.method private composeVCard(Lcom/android/vcard/VCardComposer;Ljava/io/FileWriter;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 9
    .parameter "composer"
    .parameter "fos"
    .parameter "contentUri"
    .parameter "projection"
    .parameter "selector"
    .parameter "selectorArgs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/vcard/VCardComposer;->init(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v7, 0x1

    .line 119
    .local v7, hasError:Z
    :goto_0
    if-nez v7, :cond_6

    .line 120
    const/4 v8, 0x0

    .line 121
    .local v8, vcardEntry:Ljava/lang/String;
    :goto_1
    invoke-virtual {p1}, Lcom/android/vcard/VCardComposer;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    move v1, v0

    :goto_2
    if-nez v7, :cond_3

    const/4 v0, 0x1

    :goto_3
    and-int/2addr v0, v1

    if-eqz v0, :cond_5

    .line 122
    invoke-virtual {p1}, Lcom/android/vcard/VCardComposer;->createOneEntry()Ljava/lang/String;

    move-result-object v8

    .line 123
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 124
    :cond_0
    const-string v0, "MultiplexedVCardPushClientHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error creating vcardEntry # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/broadcom/bt/app/opp/client/MultiplexedVCardPushClientHandler;->mContactNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 v7, 0x1

    goto :goto_1

    .line 115
    .end local v7           #hasError:Z
    .end local v8           #vcardEntry:Ljava/lang/String;
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 121
    .restart local v7       #hasError:Z
    .restart local v8       #vcardEntry:Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    .line 127
    :cond_4
    invoke-virtual {p2, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 133
    :cond_5
    invoke-virtual {p1}, Lcom/android/vcard/VCardComposer;->getCount()I

    move-result v0

    iput v0, p0, Lcom/broadcom/bt/app/opp/client/MultiplexedVCardPushClientHandler;->mContactNumber:I

    .line 135
    const-string v0, "MultiplexedVCardPushClientHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Contact count"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mContext:Lcom/broadcom/bt/app/opp/util/BaseService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .end local v8           #vcardEntry:Ljava/lang/String;
    :cond_6
    return v7
.end method

.method private createMultiplexedVCard(Lcom/broadcom/bt/app/opp/contact/IContactGroupSelector;)Z
    .locals 17
    .parameter "groupSelector"

    .prologue
    .line 142
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/broadcom/bt/app/opp/client/MultiplexedVCardPushClientHandler;->mContactNumber:I

    .line 143
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v1, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    invoke-direct {v14, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 144
    .local v14, mVCardFile:Ljava/io/File;
    const/4 v11, 0x0

    .line 145
    .local v11, fos:Ljava/io/FileWriter;
    const/4 v8, 0x0

    .line 146
    .local v8, composer:Lcom/android/vcard/VCardComposer;
    const/4 v13, 0x0

    .line 147
    .local v13, hasError:Z
    const/4 v10, 0x0

    .line 148
    .local v10, err:Ljava/lang/Throwable;
    const/4 v9, 0x0

    .line 150
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v14}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .end local v11           #fos:Ljava/io/FileWriter;
    .local v3, fos:Ljava/io/FileWriter;
    :try_start_1
    new-instance v2, Lcom/android/vcard/VCardComposer;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mContext:Lcom/broadcom/bt/app/opp/util/BaseService;

    const/high16 v4, -0x4000

    const/4 v5, 0x1

    invoke-direct {v2, v1, v4, v5}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;IZ)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 154
    .end local v8           #composer:Lcom/android/vcard/VCardComposer;
    .local v2, composer:Lcom/android/vcard/VCardComposer;
    if-eqz p1, :cond_3

    .line 155
    :try_start_2
    const-string v1, "MultiplexedVCardPushClientHandler"

    const-string v4, "Using contact group selector"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const-string v1, "_id"

    invoke-virtual {v2, v1}, Lcom/android/vcard/VCardComposer;->setContactIdColumnId(Ljava/lang/String;)V

    .line 157
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-interface/range {p1 .. p1}, Lcom/broadcom/bt/app/opp/contact/IContactGroupSelector;->getContactSelector()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/broadcom/bt/app/opp/client/MultiplexedVCardPushClientHandler;->composeVCard(Lcom/android/vcard/VCardComposer;Ljava/io/FileWriter;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    move-result v13

    .line 177
    :goto_0
    if-eqz v2, :cond_0

    .line 178
    invoke-virtual {v2}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 181
    :cond_0
    if-eqz v3, :cond_1

    .line 183
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 188
    :cond_1
    :goto_1
    if-eqz v9, :cond_2

    .line 189
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 191
    :cond_2
    if-eqz v13, :cond_4

    .line 192
    const-string v1, "MultiplexedVCardPushClientHandler"

    const-string v4, "Error creating vcard"

    invoke-static {v1, v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    const/4 v1, 0x0

    .line 195
    :goto_2
    return v1

    .line 160
    :cond_3
    :try_start_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mContentUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 162
    .local v12, groupId:I
    const-string v1, "MultiplexedVCardPushClientHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GroupId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const-string v1, "contact_id"

    invoke-virtual {v2, v1}, Lcom/android/vcard/VCardComposer;->setContactIdColumnId(Ljava/lang/String;)V

    .line 164
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v6, "contact_id"

    aput-object v6, v5, v1

    const-string v6, "mimetype=\'vnd.android.cursor.item/group_membership\' AND data1= ?"

    const/4 v1, 0x1

    new-array v7, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v7, v1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/broadcom/bt/app/opp/client/MultiplexedVCardPushClientHandler;->composeVCard(Lcom/android/vcard/VCardComposer;Ljava/io/FileWriter;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    move-result v13

    goto :goto_0

    .line 172
    .end local v2           #composer:Lcom/android/vcard/VCardComposer;
    .end local v3           #fos:Ljava/io/FileWriter;
    .end local v12           #groupId:I
    .restart local v8       #composer:Lcom/android/vcard/VCardComposer;
    .restart local v11       #fos:Ljava/io/FileWriter;
    :catch_0
    move-exception v15

    move-object v2, v8

    .end local v8           #composer:Lcom/android/vcard/VCardComposer;
    .restart local v2       #composer:Lcom/android/vcard/VCardComposer;
    move-object v3, v11

    .line 173
    .end local v11           #fos:Ljava/io/FileWriter;
    .restart local v3       #fos:Ljava/io/FileWriter;
    .local v15, t:Ljava/lang/Throwable;
    :goto_3
    const/4 v13, 0x1

    .line 174
    move-object v10, v15

    goto :goto_0

    .line 195
    .end local v15           #t:Ljava/lang/Throwable;
    :cond_4
    const/4 v1, 0x1

    goto :goto_2

    .line 184
    :catch_1
    move-exception v1

    goto :goto_1

    .line 172
    .end local v2           #composer:Lcom/android/vcard/VCardComposer;
    .restart local v8       #composer:Lcom/android/vcard/VCardComposer;
    :catch_2
    move-exception v15

    move-object v2, v8

    .end local v8           #composer:Lcom/android/vcard/VCardComposer;
    .restart local v2       #composer:Lcom/android/vcard/VCardComposer;
    goto :goto_3

    :catch_3
    move-exception v15

    goto :goto_3
.end method

.method private getContactsSelector(Landroid/net/Uri;)Lcom/broadcom/bt/app/opp/contact/IContactGroupSelector;
    .locals 4
    .parameter "groupUri"

    .prologue
    .line 100
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "content://com.broadcom.bt.app.opp/groups"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 103
    .local v0, groupId:I
    invoke-static {v0}, Lcom/broadcom/bt/app/opp/contact/ContactGroupSelectorManager;->getGroupSelector(I)Lcom/broadcom/bt/app/opp/contact/IContactGroupSelector;

    move-result-object v1

    .line 105
    .local v1, selector:Lcom/broadcom/bt/app/opp/contact/IContactGroupSelector;
    if-eqz v1, :cond_0

    .line 109
    .end local v0           #groupId:I
    .end local v1           #selector:Lcom/broadcom/bt/app/opp/contact/IContactGroupSelector;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized finish()V
    .locals 2

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mFinishCalled:Z

    if-nez v1, :cond_0

    .line 93
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v1, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 95
    invoke-super {p0}, Lcom/broadcom/bt/app/opp/client/PushClientHandler;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    .end local v0           #f:Ljava/io/File;
    :cond_0
    monitor-exit p0

    return-void

    .line 92
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public init(Lcom/broadcom/bt/app/opp/util/BaseService;Lcom/broadcom/bt/app/opp/data/Job;)V
    .locals 1
    .parameter "svc"
    .parameter "request"

    .prologue
    .line 51
    invoke-super {p0, p1, p2}, Lcom/broadcom/bt/app/opp/client/PushClientHandler;->init(Lcom/broadcom/bt/app/opp/util/BaseService;Lcom/broadcom/bt/app/opp/data/Job;)V

    .line 52
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mContentUri:Landroid/net/Uri;

    .line 53
    return-void
.end method

.method public setupContent()V
    .locals 5

    .prologue
    .line 56
    sget-object v1, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;->STATE_CONTENT_SETUP:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/opp/client/MultiplexedVCardPushClientHandler;->setState(Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;)V

    .line 57
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mContentUri:Landroid/net/Uri;

    if-nez v1, :cond_1

    .line 58
    const-string v1, "MultiplexedVCardPushClientHandler"

    const-string v2, "Invalid group contact URI"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/opp/client/MultiplexedVCardPushClientHandler;->onContentSetupError(Ljava/lang/Throwable;)V

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-virtual {v1, p0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->registerEventHandler(Lcom/broadcom/bt/service/opp/IOppEventHandler;)V

    .line 67
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    const-string v2, "/data/data/com.android.bluetooth/.tmp/tx_vcard.vcf"

    invoke-virtual {v1, v2}, Lcom/broadcom/bt/app/opp/data/Job;->setFile(Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mContentUri:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/broadcom/bt/app/opp/client/MultiplexedVCardPushClientHandler;->getContactsSelector(Landroid/net/Uri;)Lcom/broadcom/bt/app/opp/contact/IContactGroupSelector;

    move-result-object v0

    .line 70
    .local v0, selector:Lcom/broadcom/bt/app/opp/contact/IContactGroupSelector;
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mWatchdog:Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;

    const/16 v2, 0x1388

    new-instance v3, Lcom/broadcom/bt/app/opp/client/MultiplexedVCardPushClientHandler$1;

    invoke-direct {v3, p0}, Lcom/broadcom/bt/app/opp/client/MultiplexedVCardPushClientHandler$1;-><init>(Lcom/broadcom/bt/app/opp/client/MultiplexedVCardPushClientHandler;)V

    sget-object v4, Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;->STATE_CONTENT_SETUP:Lcom/broadcom/bt/app/opp/client/OPPClientService$ClientState;

    invoke-virtual {v1, v2, v3, v4}, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;->startOrRestartWatchdog(ILcom/broadcom/bt/app/opp/util/IWatchdogHandler;Ljava/lang/Object;)V

    .line 85
    invoke-direct {p0, v0}, Lcom/broadcom/bt/app/opp/client/MultiplexedVCardPushClientHandler;->createMultiplexedVCard(Lcom/broadcom/bt/app/opp/contact/IContactGroupSelector;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v1, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    invoke-static {v1}, Lcom/broadcom/bt/app/opp/util/Utils;->setDefaultFilePermission(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/client/MultiplexedVCardPushClientHandler;->onContentSetup()V

    goto :goto_0
.end method
