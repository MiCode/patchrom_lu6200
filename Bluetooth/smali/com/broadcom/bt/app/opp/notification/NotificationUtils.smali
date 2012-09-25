.class public Lcom/broadcom/bt/app/opp/notification/NotificationUtils;
.super Ljava/lang/Object;
.source "NotificationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/app/opp/notification/NotificationUtils$vCardSettingQuery;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 602
    return-void
.end method

.method public static deleteRequestOrHide(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 1
    .parameter "context"
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "delete"

    .prologue
    .line 156
    if-eqz p4, :cond_0

    .line 157
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->deleteRequest(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->setHidden(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method static formatProgressText(JJ)Ljava/lang/String;
    .locals 3
    .parameter "totalBytes"
    .parameter "currentBytes"

    .prologue
    .line 57
    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-gtz v1, :cond_0

    .line 58
    const-string v1, "0%"

    .line 63
    :goto_0
    return-object v1

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 61
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-static {p0, p1, p2, p3}, Lcom/broadcom/bt/app/opp/notification/NotificationUtils;->getTransferPercent(JJ)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method static getDisplayedFileType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "ctx"
    .parameter "fileName"
    .parameter "mimeType"

    .prologue
    .line 83
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/16 v3, 0x2a

    invoke-virtual {p2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-gez v3, :cond_0

    .line 100
    .end local p2
    :goto_0
    return-object p2

    .line 86
    .restart local p2
    :cond_0
    invoke-static {p1}, Lcom/broadcom/bt/app/opp/util/Utils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, fileExt:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 88
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, mType:Ljava/lang/String;
    if-eqz v1, :cond_1

    move-object p2, v1

    .line 91
    goto :goto_0

    .line 94
    .end local v1           #mType:Ljava/lang/String;
    :cond_1
    if-eqz p2, :cond_2

    .line 95
    const/16 v3, 0x2f

    invoke-virtual {p2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 96
    .local v2, sepIndex:I
    if-lez v2, :cond_2

    .line 97
    const/4 v3, 0x0

    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 100
    .end local v2           #sepIndex:I
    :cond_2
    const v3, 0x7f0500f8

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public static getDisplayedFilename(Landroid/content/Context;Lcom/broadcom/bt/app/opp/data/Job;I)Ljava/lang/String;
    .locals 3
    .parameter "ctx"
    .parameter "request"
    .parameter "defaultResourceId"

    .prologue
    .line 119
    iget-object v0, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mHint:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2, p2}, Lcom/broadcom/bt/app/opp/notification/NotificationUtils;->getDisplayedFilename(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayedFilename(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "ctx"
    .parameter "filePathHint"
    .parameter "filePath"
    .parameter "contentUri"
    .parameter "defaultResourceId"

    .prologue
    .line 105
    if-eqz p1, :cond_0

    .line 106
    invoke-static {p1}, Lcom/broadcom/bt/app/opp/util/Utils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    :goto_0
    return-object v0

    .line 108
    :cond_0
    if-eqz p2, :cond_1

    .line 109
    invoke-static {p2}, Lcom/broadcom/bt/app/opp/util/Utils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 112
    :cond_1
    if-lez p4, :cond_2

    .line 113
    invoke-virtual {p0, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/broadcom/bt/app/opp/util/Utils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 115
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method static getFormattedFileSize(Landroid/content/Context;Lcom/broadcom/bt/app/opp/data/Job;)Ljava/lang/String;
    .locals 5
    .parameter "ctx"
    .parameter "request"

    .prologue
    .line 136
    iget-wide v1, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTotalBytes:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 137
    const-string v1, ""

    .line 142
    :goto_0
    return-object v1

    .line 140
    :cond_0
    :try_start_0
    iget-wide v1, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTotalBytes:J

    invoke-static {p0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, e:Ljava/lang/Exception;
    const-string v1, ""

    goto :goto_0
.end method

.method public static getObjectType(Landroid/content/Context;Lcom/broadcom/bt/app/opp/data/Job;)I
    .locals 2
    .parameter "ctx"
    .parameter "request"

    .prologue
    .line 124
    const/4 v0, 0x0

    .line 125
    .local v0, objectType:I
    iget-object v1, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMimetype:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMimetype:Ljava/lang/String;

    invoke-static {v1}, Lcom/broadcom/bt/app/opp/util/Utils;->getObjectTypeFromMimeType(Ljava/lang/String;)I

    move-result v0

    .line 128
    :cond_0
    if-nez v0, :cond_1

    .line 129
    const/4 v1, -0x1

    invoke-static {p0, p1, v1}, Lcom/broadcom/bt/app/opp/notification/NotificationUtils;->getDisplayedFilename(Landroid/content/Context;Lcom/broadcom/bt/app/opp/data/Job;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/broadcom/bt/app/opp/util/Utils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/broadcom/bt/app/opp/util/Utils;->getObjectTypeFromFileExt(Ljava/lang/String;)I

    move-result v0

    .line 132
    :cond_1
    return v0
.end method

.method static getTransferPercent(JJ)I
    .locals 2
    .parameter "totalBytes"
    .parameter "currentBytes"

    .prologue
    .line 67
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    .line 68
    const/4 v0, 0x0

    .line 72
    :goto_0
    return v0

    .line 69
    :cond_0
    cmp-long v0, p0, p2

    if-nez v0, :cond_1

    .line 70
    const/16 v0, 0x64

    goto :goto_0

    .line 72
    :cond_1
    const/high16 v0, 0x42c8

    long-to-float v1, p2

    mul-float/2addr v0, v1

    long-to-float v1, p0

    div-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method private static isNestedSend(Landroid/content/Context;)Z
    .locals 11
    .parameter "ctx"

    .prologue
    const/4 v10, 0x0

    .line 570
    const/4 v8, 0x0

    .line 571
    .local v8, isNested:Z
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v2, "contact_vcard_setting"

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 573
    .local v1, vcardSettingUri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/broadcom/bt/app/opp/notification/NotificationUtils$vCardSettingQuery;->PROJECTION:[Ljava/lang/String;

    const-string v3, "key =? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "contactsMultiVCardType"

    aput-object v5, v4, v10

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 578
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 580
    .local v9, value:Ljava/lang/String;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 582
    const-string v0, "OPP.NotificationUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BTUI] getMultiVCardType() :  value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    :cond_0
    if-eqz v6, :cond_1

    .line 588
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 591
    :cond_1
    const-string v0, "nested"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 592
    const/4 v8, 0x1

    .line 597
    :goto_1
    const-string v0, "OPP.NotificationUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BTUI] isNestedSend = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    return v8

    .line 584
    :catch_0
    move-exception v7

    .line 585
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 587
    if-eqz v6, :cond_1

    goto :goto_0

    .end local v7           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 588
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 587
    :cond_2
    throw v0

    .line 594
    :cond_3
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public static openReceivedFile(Landroid/content/Context;Lcom/broadcom/bt/app/opp/data/Job;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x1000

    .line 164
    iget-object v2, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    .line 165
    iget-object v0, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMimetype:Ljava/lang/String;

    .line 166
    iget-object v1, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Ljava/lang/String;

    .line 168
    if-nez v2, :cond_0

    .line 169
    const-string v0, "OPP.NotificationUtils"

    const-string v1, "ERROR: Para fileName ==null, or mimetype == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :goto_0
    return-void

    .line 173
    :cond_0
    if-nez v0, :cond_2

    .line 175
    invoke-static {v2}, Lcom/broadcom/bt/app/opp/util/Utils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    if-eqz v0, :cond_1

    .line 177
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 179
    :cond_1
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    :cond_2
    if-nez v0, :cond_3

    .line 182
    const-string v0, ""

    .line 185
    :cond_3
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_5

    .line 187
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/bluetooth/opp/BluetoothOppBtErrorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 188
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 189
    const-string v1, "title"

    const v2, 0x7f050037

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 194
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1}, Lcom/broadcom/bt/app/opp/data/Job;->getJobUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2, v5, v5}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->deleteRequest(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 195
    const-string v1, "content"

    const v2, 0x7f050038

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    :goto_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 197
    :cond_4
    const-string v1, "content"

    const v2, 0x7f050106

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 207
    :cond_5
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_7

    .line 208
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 217
    :cond_6
    :goto_2
    invoke-static {p0, v1, v0}, Lcom/broadcom/bt/app/opp/util/Utils;->isRecognizedFileType(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 218
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 221
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 224
    :try_start_0
    const-string v3, "OPP.NotificationUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_VIEW intent sent out: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " / "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 226
    :catch_0
    move-exception v1

    .line 228
    const-string v2, "OPP.NotificationUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no activity for handling ACTION_VIEW intent:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 210
    :cond_7
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 212
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    .line 213
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_2

    .line 231
    :cond_8
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/bluetooth/opp/BluetoothOppBtErrorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 232
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 233
    const-string v1, "title"

    const v2, 0x7f050035

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    const-string v1, "content"

    const v2, 0x7f050036

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public static showToast_ClientResult_Error(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "ctx"
    .parameter "requestType"
    .parameter "mimeType"
    .parameter "filePath"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 389
    invoke-static {p2}, Lcom/broadcom/bt/app/opp/util/Utils;->getObjectTypeFromMimeType(Ljava/lang/String;)I

    move-result v2

    .line 390
    .local v2, objectType:I
    invoke-static {v2}, Lcom/broadcom/bt/app/opp/util/Utils;->getObjectTypeResourceId_Cap(I)I

    move-result v3

    .line 391
    .local v3, resourceId:I
    invoke-static {p3}, Lcom/broadcom/bt/app/opp/util/Utils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 392
    .local v0, fileName:Ljava/lang/String;
    const/4 v1, 0x0

    .line 393
    .local v1, msg:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 409
    :goto_0
    invoke-static {p0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 410
    return-void

    .line 395
    :pswitch_0
    const v4, 0x7f0500ab

    if-ne v3, v4, :cond_0

    .line 396
    const v4, 0x7f05001c

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v0, v5, v7

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 398
    :cond_0
    const v4, 0x7f0500ee

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    aput-object v0, v5, v8

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 401
    goto :goto_0

    .line 403
    :pswitch_1
    const v4, 0x7f0500f0

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 404
    goto :goto_0

    .line 406
    :pswitch_2
    const v4, 0x7f0500be

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 393
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static showToast_ClientResult_Success(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "ctx"
    .parameter "requestType"
    .parameter "mimeType"
    .parameter "filePath"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 417
    invoke-static {p2}, Lcom/broadcom/bt/app/opp/util/Utils;->getObjectTypeFromMimeType(Ljava/lang/String;)I

    move-result v2

    .line 418
    .local v2, objectType:I
    invoke-static {v2}, Lcom/broadcom/bt/app/opp/util/Utils;->getObjectTypeResourceId_Cap(I)I

    move-result v3

    .line 419
    .local v3, resourceId:I
    invoke-static {p3}, Lcom/broadcom/bt/app/opp/util/Utils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, fileName:Ljava/lang/String;
    const/4 v1, 0x0

    .line 421
    .local v1, msg:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 442
    :goto_0
    if-eq v2, v8, :cond_2

    .line 444
    invoke-static {p0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 459
    :cond_0
    :goto_1
    return-void

    .line 423
    :pswitch_0
    const v4, 0x7f0500ab

    if-ne v3, v4, :cond_1

    .line 424
    const v4, 0x7f05001a

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v0, v5, v7

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 426
    :cond_1
    const v4, 0x7f0500ed

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    aput-object v0, v5, v8

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 429
    goto :goto_0

    .line 431
    :pswitch_1
    const v4, 0x7f0500ef

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 432
    goto :goto_0

    .line 434
    :pswitch_2
    const v4, 0x7f0500f3

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 449
    :cond_2
    const-string v4, "ro.build.target_operator"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "DCM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 451
    invoke-static {p0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 452
    :cond_3
    invoke-static {p0}, Lcom/broadcom/bt/app/opp/notification/NotificationUtils;->isNestedSend(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 454
    invoke-static {p0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 421
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static showToast_ExchangingContact(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "ctx"
    .parameter "remoteDeviceName"
    .parameter "remoteDeviceAddress"

    .prologue
    const/4 v2, 0x0

    .line 532
    const v0, 0x7f0500ec

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    .end local p1
    :goto_0
    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 537
    return-void

    .restart local p1
    :cond_0
    move-object p1, p2

    .line 532
    goto :goto_0
.end method

.method public static showToast_Receiving(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 249
    const v0, 0x7f05003b

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 250
    return-void
.end method

.method public static showToast_Receiving(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "ctx"
    .parameter "contentCount"
    .parameter "objectType"
    .parameter "remoteDeviceName"
    .parameter "remoteDeviceAddress"

    .prologue
    const v5, 0x7f0500eb

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 258
    if-ne p1, v3, :cond_1

    .line 259
    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p2}, Lcom/broadcom/bt/app/opp/util/Utils;->getObjectTypeResourceId(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    if-eqz p3, :cond_0

    .end local p3
    :goto_0
    aput-object p3, v0, v3

    invoke-virtual {p0, v5, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 273
    :goto_1
    return-void

    .restart local p3
    :cond_0
    move-object p3, p4

    .line 259
    goto :goto_0

    .line 266
    :cond_1
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {p2}, Lcom/broadcom/bt/app/opp/util/Utils;->getObjectTypeResourceId_Plural(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    if-eqz p3, :cond_2

    .end local p3
    :goto_2
    aput-object p3, v0, v4

    invoke-virtual {p0, v5, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .restart local p3
    :cond_2
    move-object p3, p4

    goto :goto_2
.end method

.method public static showToast_Sending(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "ctx"
    .parameter "contentCount"
    .parameter "objectType"
    .parameter "remoteDeviceName"
    .parameter "remoteDeviceAddress"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 324
    if-ne p1, v4, :cond_1

    .line 325
    const v0, 0x7f0500e7

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p2}, Lcom/broadcom/bt/app/opp/util/Utils;->getObjectTypeResourceId(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    if-eqz p3, :cond_0

    .end local p3
    :goto_0
    aput-object p3, v1, v4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 339
    :goto_1
    return-void

    .restart local p3
    :cond_0
    move-object p3, p4

    .line 325
    goto :goto_0

    .line 332
    :cond_1
    const v0, 0x7f0500e8

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p2}, Lcom/broadcom/bt/app/opp/util/Utils;->getObjectTypeResourceId_Plural(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    if-eqz p3, :cond_2

    .end local p3
    :goto_2
    aput-object p3, v1, v5

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .restart local p3
    :cond_2
    move-object p3, p4

    goto :goto_2
.end method

.method public static showToast_ServerResult_Error(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "ctx"
    .parameter "requestType"
    .parameter "mimeType"
    .parameter "filePath"

    .prologue
    const v6, 0x7f050018

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 466
    invoke-static {p2}, Lcom/broadcom/bt/app/opp/util/Utils;->getObjectTypeFromMimeType(Ljava/lang/String;)I

    move-result v2

    .line 468
    .local v2, objectType:I
    invoke-static {p3}, Lcom/broadcom/bt/app/opp/util/Utils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 469
    .local v0, fileName:Ljava/lang/String;
    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {p0, v6, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 470
    .local v1, msg:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 478
    :goto_0
    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 479
    return-void

    .line 472
    :pswitch_0
    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {p0, v6, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 473
    goto :goto_0

    .line 475
    :pswitch_1
    const v3, 0x7f0500f2

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 470
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static showToast_ServerResult_Success(Landroid/content/Context;II)V
    .locals 5
    .parameter "ctx"
    .parameter "requestType"
    .parameter "completedRequests"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 486
    if-ne p1, v2, :cond_0

    .line 487
    const v1, 0x7f0500f4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 488
    .local v0, msg:Ljava/lang/String;
    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 490
    .end local v0           #msg:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static showToast_ServerResult_Success(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "ctx"
    .parameter "requestType"
    .parameter "mimeType"
    .parameter "filePath"

    .prologue
    const/4 v5, 0x0

    .line 498
    invoke-static {p2}, Lcom/broadcom/bt/app/opp/util/Utils;->getObjectTypeFromMimeType(Ljava/lang/String;)I

    move-result v2

    .line 504
    .local v2, objectType:I
    const-string v3, "/mnt/sdcard"

    const-string v4, ""

    invoke-virtual {p3, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 507
    .local v0, fileName:Ljava/lang/String;
    const/4 v1, 0x0

    .line 508
    .local v1, msg:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 516
    :goto_0
    invoke-static {p0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 517
    return-void

    .line 510
    :pswitch_0
    const v3, 0x7f050017

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 511
    goto :goto_0

    .line 513
    :pswitch_1
    const v3, 0x7f0500f1

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 508
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static showToast_StopReceiving(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "ctx"
    .parameter "remoteDeviceName"
    .parameter "remoteDeviceAddress"

    .prologue
    const/4 v2, 0x0

    .line 300
    const v0, 0x7f05003d

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    .end local p1
    :goto_0
    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 304
    return-void

    .restart local p1
    :cond_0
    move-object p1, p2

    .line 300
    goto :goto_0
.end method

.method public static showToast_StopSending(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "ctx"
    .parameter "contentCount"
    .parameter "objectType"
    .parameter "remoteDeviceName"
    .parameter "remoteDeviceAddress"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 367
    if-ne p1, v4, :cond_1

    .line 368
    const v0, 0x7f0500e9

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p2}, Lcom/broadcom/bt/app/opp/util/Utils;->getObjectTypeResourceId(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    if-eqz p3, :cond_0

    .end local p3
    :goto_0
    aput-object p3, v1, v4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 382
    :goto_1
    return-void

    .restart local p3
    :cond_0
    move-object p3, p4

    .line 368
    goto :goto_0

    .line 375
    :cond_1
    const v0, 0x7f0500ea

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p2}, Lcom/broadcom/bt/app/opp/util/Utils;->getObjectTypeResourceId_Plural(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    if-eqz p3, :cond_2

    .end local p3
    :goto_2
    aput-object p3, v1, v5

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .restart local p3
    :cond_2
    move-object p3, p4

    goto :goto_2
.end method

.method public static showToast_TooManyRequests(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 548
    const v0, 0x7f050107

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 549
    return-void
.end method
