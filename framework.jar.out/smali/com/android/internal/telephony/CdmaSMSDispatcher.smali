.class final Lcom/android/internal/telephony/CdmaSMSDispatcher;
.super Lcom/android/internal/telephony/SMSDispatcher;
.source "CdmaSMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CdmaSMSDispatcher$MsgSequence;
    }
.end annotation


# static fields
.field public static final ADDRESS:Ljava/lang/String; = "address"

.field private static final APP_DIRECTED_SMS_FORMATTED:I = 0x0

.field private static final APP_DIRECTED_SMS_NORMAL:I = -0x1

.field private static final APP_DIRECTED_SMS_PROCESSED:I = 0x1

.field private static final CBS_SESSION_MAX:I = 0xa

.field public static final COUNT:Ljava/lang/String; = "count"

.field public static final DATE:Ljava/lang/String; = "date"

.field private static final DELIMETER:I = 0x1d

.field private static final DIRECT_SMS_TAG:Ljava/lang/String; = "APP_DIRECT_SMS"

.field private static final EMERGENCY_MSG:I = 0x2be

.field private static final EMERGENCY_MSG_START_SEQ:I = 0x0

.field private static final END_DELIMETER:I = 0x3

.field private static final IMS_MSG:I = 0x7000

.field private static final LGE_SMS_CBS_ENABLED:I = 0x1

.field public static final LMS_MAX_COUNT:I = 0x32

.field public static final LMS_MAX_SEGMENT:I = 0x3

.field public static final LMS_URI:Landroid/net/Uri; = null

.field public static final PDU:Ljava/lang/String; = "pdu"

.field public static final REFERENCE_NUMBER:Ljava/lang/String; = "reference_number"

.field public static final SEQUENCE:Ljava/lang/String; = "sequence"

.field private static final SEQ_EOS:I = 0x1

.field private static final SMS_RECEIVED_TYPE_ACCOUNT_IS_ADDED:Ljava/lang/String; = "VZWSIP"

.field private static final SMS_RECEIVED_TYPE_COMPLETE_SYNC_INBOX:Ljava/lang/String; = "VZWSCI"

.field private static final SMS_RECEIVED_TYPE_NEW_MAIL:Ljava/lang/String; = "VZWNMN"

.field private static final SMS_RECEIVED_TYPE_NOTIFICATION_FOR_CHANGES:Ljava/lang/String; = "VZWUEP"

.field private static final SMS_RECEIVED_TYPE_NOTIFICATION_FOR_DEACTIVATION:Ljava/lang/String; = "VZWRSC"

.field private static final SMS_RECEIVED_TYPE_PIN_NOTIFICATION:Ljava/lang/String; = "VZWPIN"

.field public static final SOURCE_MIN:Ljava/lang/String; = "source_min"

.field private static final TAG:Ljava/lang/String; = "CdmaSMSDispatcher "

.field public static final TID:Ljava/lang/String; = "tid"

.field private static final URL_DELIMETER:I = 0x1d

.field private static msgref:I = 0x0

.field private static final prefixVZW:Ljava/lang/String; = "//VZW"

.field private static sSessionIdLink:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static sSessionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final APPLICATION_PERMISSION:Ljava/lang/String;

.field IMS_AUTHORITY:Ljava/lang/String;

.field IMS_CONTENT_URI:Landroid/net/Uri;

.field public final METADATA_NAME:Ljava/lang/String;

.field private SIGNATURES:[Landroid/content/pm/Signature;

.field SMS_OVER_IP_NETWORK:Ljava/lang/String;

.field TABLE_NAME:Ljava/lang/String;

.field private final mCheckForDuplicatePortsInOmadmWapPush:Z

.field private mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

.field private mLastAcknowledgedSmsFingerprint:[B

.field private mLastDispatchedSmsFingerprint:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 115
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->msgref:I

    .line 139
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "raw"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->LMS_URI:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;)V
    .locals 3
    .parameter "phone"
    .parameter "storageMonitor"
    .parameter "usageMonitor"
    .parameter "imsSMSDispatcher"

    .prologue
    const/4 v2, 0x1

    .line 180
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V

    .line 119
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mCheckForDuplicatePortsInOmadmWapPush:Z

    .line 132
    const-string/jumbo v0, "lgims_com_vzw_service_sms"

    iput-object v0, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->TABLE_NAME:Ljava/lang/String;

    .line 133
    const-string v0, "com.lge.ims.provider.lgims"

    iput-object v0, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->IMS_AUTHORITY:Ljava/lang/String;

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->IMS_AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->TABLE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->IMS_CONTENT_URI:Landroid/net/Uri;

    .line 135
    const-string/jumbo v0, "sdm_sms_over_ip_network"

    iput-object v0, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->SMS_OVER_IP_NETWORK:Ljava/lang/String;

    .line 1334
    const-string v0, "com.verizon.permissions.appdirectedsms"

    iput-object v0, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->APPLICATION_PERMISSION:Ljava/lang/String;

    .line 1335
    const-string v0, "com.verizon.directedAppSMS"

    iput-object v0, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->METADATA_NAME:Ljava/lang/String;

    .line 181
    iput-object p4, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    .line 182
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewCdmaSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 183
    const-string v0, "CdmaSMSDispatcher "

    const-string v1, "CdmaSMSDispatcher created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "lgu_dispatch"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v2, :cond_0

    .line 186
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->sSessionMap:Ljava/util/HashMap;

    .line 187
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->sSessionIdLink:Ljava/util/LinkedList;

    .line 190
    :cond_0
    return-void
.end method

.method private static checkDuplicatePortOmadmWappush([BI)Z
    .locals 6
    .parameter "origPdu"
    .parameter "index"

    .prologue
    const/4 v4, 0x0

    .line 1380
    add-int/lit8 p1, p1, 0x4

    .line 1381
    array-length v5, p0

    sub-int/2addr v5, p1

    new-array v1, v5, [B

    .line 1382
    .local v1, omaPdu:[B
    array-length v5, v1

    invoke-static {p0, p1, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1384
    new-instance v2, Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-direct {v2, v1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    .line 1385
    .local v2, pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;
    const/4 v3, 0x2

    .line 1388
    .local v3, wspIndex:I
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1403
    :cond_0
    :goto_0
    return v4

    .line 1392
    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v5

    add-int/2addr v3, v5

    .line 1395
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1399
    invoke-virtual {v2}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v0

    .line 1400
    .local v0, mimeType:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v5, "application/vnd.syncml.notification"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1401
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private checkMmsDuplicated(Ljava/lang/String;)Z
    .locals 10
    .parameter "msgId"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1746
    const-string v0, "CdmaSMSDispatcher "

    const-string v5, "checkMmsDuplicated()"

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "/inbox"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1748
    .local v1, uri:Landroid/net/Uri;
    const-string/jumbo v3, "m_id = ?"

    .line 1749
    .local v3, where:Ljava/lang/String;
    new-array v4, v9, [Ljava/lang/String;

    aput-object p1, v4, v8

    .line 1752
    .local v4, whereArgs:[Ljava/lang/String;
    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v8

    .line 1755
    .local v2, projection:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 1757
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1759
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    .line 1772
    if-eqz v6, :cond_0

    .line 1773
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    move v0, v8

    .line 1770
    :goto_0
    return v0

    .line 1762
    :cond_1
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-lez v0, :cond_3

    .line 1772
    if-eqz v6, :cond_2

    .line 1773
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v9

    .line 1763
    goto :goto_0

    .line 1772
    :cond_3
    if-eqz v6, :cond_4

    .line 1773
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v8

    .line 1765
    goto :goto_0

    .line 1767
    :catch_0
    move-exception v7

    .line 1768
    .local v7, e:Landroid/database/SQLException;
    :try_start_2
    invoke-virtual {v7}, Landroid/database/SQLException;->printStackTrace()V

    .line 1769
    const-string v0, "CdmaSMSDispatcher "

    const-string v5, "SQLException occurs"

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1772
    if-eqz v6, :cond_5

    .line 1773
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    move v0, v8

    .line 1770
    goto :goto_0

    .line 1772
    .end local v7           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    .line 1773
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1772
    :cond_6
    throw v0
.end method

.method private clearSession(I)V
    .locals 3
    .parameter "sessionId"

    .prologue
    .line 2403
    invoke-virtual {p0}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->getSessionMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2404
    const-string v0, "CdmaSMSDispatcher "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CBS Cleared Session ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2405
    return-void
.end method

.method private clearSession(Lcom/android/internal/telephony/cdma/SmsMessage;)V
    .locals 3
    .parameter "sms"

    .prologue
    .line 2398
    invoke-virtual {p0}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->getSessionMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getBearerData()Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->sessioinId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2399
    const-string v0, "CdmaSMSDispatcher "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CBS Cleared Session ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getBearerData()Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v2

    iget v2, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->sessioinId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2400
    return-void
.end method

.method private completeOrInsertLms(Lcom/android/internal/telephony/cdma/SmsMessage;Ljava/lang/String;III[B[[BI)I
    .locals 2
    .parameter "sms"
    .parameter "sourceMin"
    .parameter "sessionId"
    .parameter "currentSegment"
    .parameter "totalSegment"
    .parameter "pdu"
    .parameter "pdus"
    .parameter "sameMsgCount"

    .prologue
    .line 2147
    add-int/lit8 v1, p8, 0x1

    if-ne v1, p5, :cond_1

    .line 2149
    add-int/lit8 v1, p4, -0x1

    aput-object p6, p7, v1

    .line 2150
    move v0, p5

    .local v0, loop:I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 2151
    const/4 v1, 0x0

    aput-object v1, p7, v0

    .line 2150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2153
    :cond_0
    invoke-virtual/range {p0 .. p5}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->deleteCompleteLmsMsg(Lcom/android/internal/telephony/cdma/SmsMessage;Ljava/lang/String;III)V

    .line 2154
    const/4 v1, -0x1

    .line 2157
    .end local v0           #loop:I
    :goto_1
    return v1

    .line 2156
    :cond_1
    invoke-virtual/range {p0 .. p6}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->insertLmsMsg(Lcom/android/internal/telephony/cdma/SmsMessage;Ljava/lang/String;III[B)V

    .line 2157
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private static decode_Base64([B)[B
    .locals 2
    .parameter "data"

    .prologue
    .line 515
    const/16 v1, 0xdc

    new-array v0, v1, [B

    .line 516
    .local v0, b64:[B
    invoke-static {p0}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v0

    .line 517
    return-object v0
.end method

.method private dispatchSCPT(Lcom/android/internal/telephony/cdma/SmsMessage;)V
    .locals 11
    .parameter "sms"

    .prologue
    .line 428
    const-string v8, "CdmaSMSDispatcher "

    const-string v9, "[dispatchSCPT]"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    new-instance v3, Landroid/content/Intent;

    const-string v8, "action.Intent.SCPT_RECEIVED_ACTION"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 431
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getBearData()Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v0

    .line 432
    .local v0, bearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    iget-object v6, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->mSCPData:Lcom/android/internal/telephony/cdma/sms/SCPData;

    .line 433
    .local v6, scpd:Lcom/android/internal/telephony/cdma/sms/SCPData;
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v7

    .line 434
    .local v7, srcAddr:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/sms/SCPData;->getPrograms()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 436
    .local v4, numProgs:I
    const-string v8, "CdmaSMSDispatcher "

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "dispatching numProgs : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    new-array v5, v4, [I

    .line 438
    .local v5, opCodes:[I
    new-array v1, v4, [I

    .line 440
    .local v1, categories:[I
    const/4 v2, 0x0

    .local v2, ind:I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 441
    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/cdma/sms/SCPData;->getOpCode(I)I

    move-result v8

    aput v8, v5, v2

    .line 442
    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/cdma/sms/SCPData;->getCategory(I)I

    move-result v8

    aput v8, v1, v2

    .line 440
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 445
    :cond_0
    const-string/jumbo v8, "isSCPT"

    const/4 v9, 0x1

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 448
    const-string/jumbo v8, "opCodes"

    invoke-virtual {v3, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 449
    const-string v8, "categories"

    invoke-virtual {v3, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 450
    const-string/jumbo v8, "scpt_origAddr"

    invoke-virtual {v3, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 452
    const-string v8, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v3, v8}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 453
    return-void
.end method

.method private getMmsMsgId(Lcom/android/internal/telephony/cdma/SmsMessage;)Ljava/lang/String;
    .locals 9
    .parameter "sms"

    .prologue
    const/4 v6, 0x0

    .line 1722
    const-string v5, "CdmaSMSDispatcher "

    const-string v7, "getMmsMsgId()"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    const/4 v3, -0x1

    .line 1725
    .local v3, markPos:I
    const/4 v1, 0x0

    .line 1726
    .local v1, found:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v4

    .line 1727
    .local v4, userData:[B
    const/4 v2, 0x0

    .local v2, loop:I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_2

    .line 1728
    const/16 v5, 0x4d

    aget-byte v7, v4, v2

    if-ne v5, v7, :cond_0

    const/16 v5, 0x3a

    add-int/lit8 v7, v2, 0x1

    aget-byte v7, v4, v7

    if-ne v5, v7, :cond_0

    .line 1729
    const/4 v1, 0x1

    .line 1730
    add-int/lit8 v3, v2, 0x2

    .line 1732
    :cond_0
    const/4 v5, 0x1

    if-ne v5, v1, :cond_1

    const/16 v5, 0x20

    aget-byte v7, v4, v2

    if-ne v5, v7, :cond_1

    .line 1734
    :try_start_0
    new-instance v5, Ljava/lang/String;

    sub-int v7, v2, v3

    const-string/jumbo v8, "ksc5601"

    invoke-direct {v5, v4, v3, v7, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1742
    :goto_1
    return-object v5

    .line 1736
    :catch_0
    move-exception v0

    .line 1737
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v5, v6

    .line 1738
    goto :goto_1

    .line 1727
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move-object v5, v6

    .line 1742
    goto :goto_1
.end method

.method private getPreferredNetworkMode()I
    .locals 5

    .prologue
    .line 1020
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v0

    .line 1021
    .local v0, mSubscription:I
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "preferred_network_mode"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1029
    .end local v0           #mSubscription:I
    .local v1, nwMode:I
    :goto_0
    return v1

    .line 1025
    .end local v1           #nwMode:I
    :catch_0
    move-exception v2

    .line 1026
    .local v2, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "CdmaSMSDispatcher "

    const-string v4, "getPreferredNetworkMode: Could not find PREFERRED_NETWORK_MODE!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    sget v1, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    .restart local v1       #nwMode:I
    goto :goto_0
.end method

.method private getSMSoverIPNetworksIndication()Z
    .locals 4

    .prologue
    .line 1109
    invoke-static {}, Lcom/android/internal/telephony/SMS3GPPsmsoveripnetwork;->getSmsoveripnetwork()Z

    move-result v0

    .line 1111
    .local v0, sms_over_ip_network_indication:Z
    const-string v1, "SMS.IMS.NV"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SMS.IMS.NV] sms_over_ip_network_indication=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    return v0
.end method

.method private getSignaturesFromPermissionPkg(Landroid/content/pm/PackageManager;Ljava/lang/String;)V
    .locals 9
    .parameter "pm"
    .parameter "pkgName"

    .prologue
    .line 1342
    :try_start_0
    const-string v6, "com.verizon.permissions.appdirectedsms"

    const/16 v7, 0x40

    invoke-virtual {p1, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1349
    .local v4, permissionPkgInfo:Landroid/content/pm/PackageInfo;
    if-eqz v4, :cond_0

    .line 1350
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    iput-object v6, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->SIGNATURES:[Landroid/content/pm/Signature;

    .line 1352
    iget-object v6, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->SIGNATURES:[Landroid/content/pm/Signature;

    if-nez v6, :cond_1

    .line 1353
    const-string v6, "CdmaSMSDispatcher "

    const-string v7, "Can\'t find permission package signatures"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    .end local v4           #permissionPkgInfo:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return-void

    .line 1344
    :catch_0
    move-exception v1

    .line 1345
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "CdmaSMSDispatcher "

    const-string v7, "Can\'t find permission package: com.verizon.permissions.appdirectedsms"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1359
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4       #permissionPkgInfo:Landroid/content/pm/PackageInfo;
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->SIGNATURES:[Landroid/content/pm/Signature;

    .local v0, arr$:[Landroid/content/pm/Signature;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 1360
    .local v5, signature:Landroid/content/pm/Signature;
    const-string v6, "CdmaSMSDispatcher "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "signaturePermission : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private handleCdmaStatusReport(Lcom/android/internal/telephony/cdma/SmsMessage;)V
    .locals 7
    .parameter "sms"

    .prologue
    .line 223
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 224
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 225
    .local v4, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget v5, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    iget v6, p1, Lcom/android/internal/telephony/SmsMessageBase;->messageRef:I

    if-ne v5, v6, :cond_1

    .line 227
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 228
    iget-object v3, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .line 229
    .local v3, intent:Landroid/app/PendingIntent;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 230
    .local v1, fillIn:Landroid/content/Intent;
    const-string/jumbo v5, "pdu"

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPdu()[B

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 231
    const-string v5, "format"

    const-string v6, "3gpp2"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v6, -0x1

    invoke-virtual {v3, v5, v6, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    .end local v1           #fillIn:Landroid/content/Intent;
    .end local v3           #intent:Landroid/app/PendingIntent;
    .end local v4           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_0
    :goto_1
    return-void

    .line 223
    .restart local v4       #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 234
    .restart local v1       #fillIn:Landroid/content/Intent;
    .restart local v3       #intent:Landroid/app/PendingIntent;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method private isEos(Lcom/android/internal/telephony/cdma/SmsMessage;)Z
    .locals 7
    .parameter "sms"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2420
    invoke-virtual {p0}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->getSessionMap()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getBearerData()Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v6

    iget v6, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->sessioinId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/TreeMap;

    move-object v2, v3

    check-cast v2, Ljava/util/TreeMap;

    .line 2422
    .local v2, tSeqMap:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    if-nez v2, :cond_0

    move v3, v4

    .line 2430
    :goto_0
    return v3

    .line 2425
    :cond_0
    invoke-virtual {v2}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2426
    .local v1, nkey:Ljava/lang/Integer;
    invoke-virtual {v2, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/CdmaSMSDispatcher$MsgSequence;

    iget v3, v3, Lcom/android/internal/telephony/CdmaSMSDispatcher$MsgSequence;->mEos:I

    if-ne v3, v5, :cond_1

    move v3, v5

    .line 2427
    goto :goto_0

    .end local v1           #nkey:Ljava/lang/Integer;
    :cond_2
    move v3, v4

    .line 2430
    goto :goto_0
.end method

.method private isLTEOnlyMode()Z
    .locals 10

    .prologue
    .line 1033
    const/4 v1, 0x0

    .line 1035
    .local v1, bIsLTEOnlyMode:Z
    const/4 v0, 0x1

    .line 1036
    .local v0, bIs1xService:Z
    const/4 v3, 0x0

    .line 1037
    .local v3, bIsVoiceDataInService:Z
    const/4 v2, 0x0

    .line 1068
    .local v2, bIsRadioTechLTE:Z
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    .line 1069
    .local v5, serviceState:I
    if-eqz v5, :cond_0

    .line 1070
    const/4 v0, 0x0

    .line 1072
    :cond_0
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getDataState()I

    move-result v6

    .line 1073
    .local v6, voiceDataServiceState:I
    if-nez v6, :cond_1

    .line 1074
    const/4 v3, 0x1

    .line 1078
    :cond_1
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v4

    .line 1079
    .local v4, radioTechnology:I
    const/16 v7, 0xe

    if-ne v7, v4, :cond_2

    .line 1080
    const/4 v2, 0x1

    .line 1083
    :cond_2
    const-string v7, "CdmaSMSDispatcher "

    const-string/jumbo v8, "isLTEOnlyMode() - START"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    const-string v7, "CdmaSMSDispatcher "

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isLTEOnlyMode() - 1xServiceState=["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    const-string v7, "CdmaSMSDispatcher "

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isLTEOnlyMode() - voiceDataServiceState=["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    const-string v7, "CdmaSMSDispatcher "

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isLTEOnlyMode() - radioTechnology=["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    const-string v7, "CdmaSMSDispatcher "

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isLTEOnlyMode() - bIs1xService is in service=["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    const-string v7, "CdmaSMSDispatcher "

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isLTEOnlyMode() - bIsVoiceDataInservice is in service=["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    const-string v7, "CdmaSMSDispatcher "

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isLTEOnlyMode() - bIsRadioTechLTE is RADIO_TECHNOLOGY_LTE=["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    if-nez v0, :cond_3

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    .line 1093
    const/4 v1, 0x1

    .line 1096
    :cond_3
    const-string v7, "CdmaSMSDispatcher "

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isLTEOnlyMode() -bIsLTEOnlyMode =["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    const-string v7, "CdmaSMSDispatcher "

    const-string/jumbo v8, "isLTEOnlyMode() - END"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    return v1
.end method

.method private isMsgEnd(Lcom/android/internal/telephony/cdma/SmsMessage;)Z
    .locals 2
    .parameter "sms"

    .prologue
    const/4 v0, 0x1

    .line 2409
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getBearerData()Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->sessioinId:I

    if-nez v1, :cond_1

    .line 2414
    :cond_0
    :goto_0
    return v0

    .line 2411
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->isEos(Lcom/android/internal/telephony/cdma/SmsMessage;)Z

    move-result v1

    if-ne v1, v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->isSeqFull(Lcom/android/internal/telephony/cdma/SmsMessage;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 2414
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSeqFull(Lcom/android/internal/telephony/cdma/SmsMessage;)Z
    .locals 8
    .parameter "sms"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2435
    invoke-virtual {p0}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->getSessionMap()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getBearerData()Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v7

    iget v7, v7, Lcom/android/internal/telephony/cdma/sms/BearerData;->sessioinId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/TreeMap;

    move-object v3, v4

    check-cast v3, Ljava/util/TreeMap;

    .line 2437
    .local v3, tSeqMap:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    if-nez v3, :cond_0

    move v4, v5

    .line 2450
    :goto_0
    return v4

    .line 2439
    :cond_0
    const/4 v0, 0x0

    .line 2440
    .local v0, count:I
    invoke-virtual {v3}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 2441
    .local v2, nkey:Ljava/lang/Integer;
    invoke-virtual {v3, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/CdmaSMSDispatcher$MsgSequence;

    iget v4, v4, Lcom/android/internal/telephony/CdmaSMSDispatcher$MsgSequence;->mEos:I

    if-ne v4, v6, :cond_2

    .line 2442
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v6

    .line 2443
    goto :goto_0

    :cond_1
    move v4, v5

    .line 2445
    goto :goto_0

    .line 2448
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v2           #nkey:Ljava/lang/Integer;
    :cond_3
    move v4, v5

    .line 2450
    goto :goto_0
.end method

.method private makeCompleteText(Lcom/android/internal/telephony/cdma/SmsMessage;[[B)V
    .locals 5
    .parameter "sms"
    .parameter "pdus"

    .prologue
    .line 2359
    invoke-virtual {p0}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->getSessionMap()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getBearerData()Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v4

    iget v4, v4, Lcom/android/internal/telephony/cdma/sms/BearerData;->sessioinId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/TreeMap;

    move-object v2, v3

    check-cast v2, Ljava/util/TreeMap;

    .line 2361
    .local v2, tSeqMap:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    if-nez v2, :cond_1

    .line 2371
    :cond_0
    :goto_0
    return-void

    .line 2364
    :cond_1
    invoke-virtual {v2}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2365
    .local v1, nKey:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/CdmaSMSDispatcher$MsgSequence;

    iget-object v3, v3, Lcom/android/internal/telephony/CdmaSMSDispatcher$MsgSequence;->mPdu:[B

    aput-object v3, p2, v4

    .line 2366
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getBearerData()Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v3

    iget v3, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->sessioinId:I

    if-eqz v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/CdmaSMSDispatcher$MsgSequence;

    iget v3, v3, Lcom/android/internal/telephony/CdmaSMSDispatcher$MsgSequence;->mEos:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    goto :goto_0
.end method

.method protected static mmsTestBedGetMsgId([B)[B
    .locals 10
    .parameter "pdu"

    .prologue
    const/4 v9, 0x0

    .line 488
    array-length v7, p0

    add-int/lit8 v7, v7, -0x4

    new-array v2, v7, [B

    .line 489
    .local v2, mms_userdata:[B
    array-length v7, v2

    new-array v5, v7, [B

    .line 490
    .local v5, new_userdata:[B
    const/16 v7, 0x14

    new-array v3, v7, [C

    .line 493
    .local v3, msgid:[C
    const/4 v7, 0x5

    array-length v8, p0

    add-int/lit8 v8, v8, -0x5

    invoke-static {p0, v7, v2, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 494
    array-length v1, v2

    .line 496
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 497
    aget-byte v7, v2, v0

    const/16 v8, 0x2f

    if-eq v7, v8, :cond_0

    .line 498
    aget-byte v7, v2, v0

    int-to-char v7, v7

    aput-char v7, v3, v0

    .line 496
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 500
    :cond_0
    aput-char v9, v3, v0

    .line 503
    invoke-static {v3, v9, v0}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v6

    .line 504
    .local v6, tmp:Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lcom/android/internal/telephony/CdmaSMSDispatcher;->msgref:I

    .line 506
    array-length v7, v5

    sub-int v4, v7, v0

    .line 507
    .local v4, new_len:I
    add-int/lit8 v7, v0, 0x1

    add-int/lit8 v8, v4, -0x1

    invoke-static {v2, v7, v5, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 511
    .end local v4           #new_len:I
    .end local v6           #tmp:Ljava/lang/String;
    :cond_1
    invoke-static {v5}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->decode_Base64([B)[B

    move-result-object v7

    return-object v7
.end method

.method private mmsTestBedPushCheck([B)Z
    .locals 4
    .parameter "user_data"

    .prologue
    const/4 v2, 0x0

    .line 480
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    .line 482
    .local v1, pData:Ljava/lang/String;
    const-string v3, "//LG/"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 484
    .local v0, index:I
    if-nez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private parseImsMsg([B)I
    .locals 8
    .parameter "userData"

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 2374
    const-string v2, "CdmaSMSDispatcher "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CBS IMS_MSG userData[0]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, p1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2375
    new-instance v1, Landroid/content/Intent;

    const-string v2, " "

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2376
    .local v1, intent:Landroid/content/Intent;
    aget-byte v2, p1, v5

    const/16 v3, 0x30

    if-ne v2, v3, :cond_1

    .line 2377
    const-string/jumbo v2, "order"

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2378
    const-string v2, "com.lge.ims.enable"

    const-string/jumbo v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2379
    const-string v2, "CdmaSMSDispatcher "

    const-string v3, "CBS 0x30 "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2386
    :cond_0
    :goto_0
    :try_start_0
    const-string v2, "contentfield"

    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x1

    array-length v5, p1

    add-int/lit8 v5, v5, -0x1

    const-string v6, "KSC5601"

    invoke-direct {v3, p1, v4, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2387
    const-string v2, "CdmaSMSDispatcher "

    const-string v3, "CBS try "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2392
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2393
    const-string v2, "CdmaSMSDispatcher "

    const-string v3, "CBS     context.sendBroadcast "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2394
    return v7

    .line 2380
    :cond_1
    aget-byte v2, p1, v5

    const/16 v3, 0x31

    if-ne v2, v3, :cond_0

    .line 2381
    const-string/jumbo v2, "order"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2382
    const-string v2, "com.lge.ims.enable"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2383
    const-string v2, "CdmaSMSDispatcher "

    const-string v3, "CBS 0x31 "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2388
    :catch_0
    move-exception v0

    .line 2389
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 2390
    const-string v2, "CdmaSMSDispatcher "

    const-string v3, "CBS Exception "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private preHandleMessage(Lcom/android/internal/telephony/cdma/SmsMessage;)Z
    .locals 2
    .parameter "sms"

    .prologue
    .line 1712
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTeleService()I

    move-result v0

    const v1, 0xc258

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTeleService()I

    move-result v0

    const v1, 0xc280

    if-ne v0, v1, :cond_1

    .line 1715
    :cond_0
    const/4 v0, 0x1

    .line 1717
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static resultToCause(I)I
    .locals 1
    .parameter "rc"

    .prologue
    .line 999
    packed-switch p0, :pswitch_data_0

    .line 1010
    :pswitch_0
    const/16 v0, 0x60

    :goto_0
    return v0

    .line 1003
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1005
    :pswitch_2
    const/16 v0, 0x23

    goto :goto_0

    .line 1007
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 999
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private verifyApplicationRegistration(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .parameter "context"
    .parameter "pkgName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1255
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 1257
    .local v10, pm:Landroid/content/pm/PackageManager;
    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v10, v0, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 1259
    .local v2, appInfo:Landroid/content/pm/ApplicationInfo;
    const-string v14, "APP_DIRECT_SMS"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "appInfo = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "pkgName = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    const/4 v14, 0x0

    :try_start_0
    move-object/from16 v0, p2

    invoke-virtual {v10, v0, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1268
    iget-object v14, v2, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-nez v14, :cond_0

    .line 1269
    const-string v14, "APP_DIRECT_SMS"

    const-string v15, "appInfo.metaData == null"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    const/4 v3, 0x0

    .line 1330
    :goto_0
    return-object v3

    .line 1262
    :catch_0
    move-exception v5

    .line 1263
    .local v5, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v14, "APP_DIRECT_SMS"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getApplicationInfo - NameNotFoundException "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    const/4 v3, 0x0

    goto :goto_0

    .line 1273
    .end local v5           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    iget-object v14, v2, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v15, "com.verizon.directedAppSMS"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1274
    .local v3, applicationPrefix:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 1276
    const-string v14, "APP_DIRECT_SMS"

    const-string v15, "applicationPrefix is Empty"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    const/4 v3, 0x0

    goto :goto_0

    .line 1280
    :cond_1
    const-string v14, "APP_DIRECT_SMS"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "applicationPrefix: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v10, v1}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->getSignaturesFromPermissionPkg(Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    .line 1287
    :try_start_1
    iget-object v14, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/16 v15, 0x40

    invoke-virtual {v10, v14, v15}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    .line 1293
    .local v9, pkgInfo:Landroid/content/pm/PackageInfo;
    if-nez v9, :cond_2

    .line 1294
    const/4 v3, 0x0

    goto :goto_0

    .line 1289
    .end local v9           #pkgInfo:Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v5

    .line 1290
    .restart local v5       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v14, "APP_DIRECT_SMS"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Can\'t find applicaiton: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    const/4 v3, 0x0

    goto :goto_0

    .line 1299
    .end local v5           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v9       #pkgInfo:Landroid/content/pm/PackageInfo;
    :cond_2
    iget v14, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_4

    .line 1300
    const-string v14, "APP_DIRECT_SMS"

    const-string/jumbo v15, "system app"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    :cond_3
    const-string v14, "APP_DIRECT_SMS"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Found applications "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1303
    :cond_4
    const-string v14, "APP_DIRECT_SMS"

    const-string v15, "Non-system app"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    iget-object v13, v9, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 1307
    .local v13, signatures:[Landroid/content/pm/Signature;
    if-nez v13, :cond_5

    .line 1308
    const-string v14, "APP_DIRECT_SMS"

    const-string v15, "Can\'t find signatures"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1311
    :cond_5
    const/4 v12, 0x0

    .line 1312
    .local v12, signatureMatch:Z
    move-object v4, v13

    .local v4, arr$:[Landroid/content/pm/Signature;
    array-length v8, v4

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_1
    if-ge v7, v8, :cond_8

    aget-object v11, v4, v7

    .line 1313
    .local v11, signature:Landroid/content/pm/Signature;
    const-string v14, "APP_DIRECT_SMS"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "signature : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v11}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->SIGNATURES:[Landroid/content/pm/Signature;

    array-length v14, v14

    if-ge v6, v14, :cond_6

    .line 1315
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->SIGNATURES:[Landroid/content/pm/Signature;

    aget-object v14, v14, v6

    invoke-virtual {v14, v11}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 1316
    const/4 v12, 0x1

    .line 1317
    const-string v14, "APP_DIRECT_SMS"

    const-string/jumbo v15, "signature Match"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1314
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1323
    .end local v6           #i:I
    .end local v11           #signature:Landroid/content/pm/Signature;
    :cond_8
    if-nez v12, :cond_3

    .line 1324
    const-string v14, "APP_DIRECT_SMS"

    const-string/jumbo v15, "not signature Match"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    const/4 v3, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method protected SendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 8
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "cbAddress"

    .prologue
    .line 671
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v1, "cdma_priority_indicator"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 672
    sget v0, Lcom/android/internal/telephony/SMSDispatcher;->mSubmitPriority:I

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->setSmsPriority(I)V

    .line 675
    :cond_0
    if-eqz p5, :cond_1

    const/4 v3, 0x1

    :goto_0
    const/4 v4, 0x0

    move-object v0, p2

    move-object v1, p1

    move-object v2, p3

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;Ljava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v4

    .local v4, pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p6

    .line 678
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v6

    .line 679
    .local v6, map:Ljava/util/HashMap;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v6, p4, p5, v0}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v7

    .line 681
    .local v7, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 682
    return-void

    .line 675
    .end local v4           #pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v6           #map:Ljava/util/HashMap;
    .end local v7           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 4
    .parameter "success"
    .parameter "result"
    .parameter "response"

    .prologue
    .line 984
    const-string/jumbo v2, "ril.cdma.inecmmode"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 985
    .local v1, inEcm:Ljava/lang/String;
    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 996
    :goto_0
    return-void

    .line 989
    :cond_0
    invoke-static {p2}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->resultToCause(I)I

    move-result v0

    .line 990
    .local v0, causeCode:I
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, v0, p3}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V

    .line 992
    if-nez v0, :cond_1

    .line 993
    iget-object v2, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mLastDispatchedSmsFingerprint:[B

    iput-object v2, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mLastAcknowledgedSmsFingerprint:[B

    .line 995
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mLastDispatchedSmsFingerprint:[B

    goto :goto_0
.end method

.method protected calculateLGLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .locals 2
    .parameter "messageBody"
    .parameter "use7bitOnly"

    .prologue
    .line 779
    const-string v0, "CdmaSMSDispatcher "

    const-string v1, "Error! Not implemented for CDMA."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    const/4 v0, 0x0

    return-object v0
.end method

.method protected calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .locals 1
    .parameter "messageBody"
    .parameter "use7bitOnly"

    .prologue
    .line 771
    invoke-static {p1, p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method public checkCompleteMsg(Lcom/android/internal/telephony/cdma/SmsMessage;Ljava/lang/String;III[B[[B)I
    .locals 30
    .parameter "sms"
    .parameter "sourceMin"
    .parameter "sessionId"
    .parameter "currentSegment"
    .parameter "totalSegment"
    .parameter "pdu"
    .parameter "pdus"

    .prologue
    .line 2032
    const-string v2, "CdmaSMSDispatcher "

    const-string v3, "checkCompleteMsg() "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2033
    const/16 v19, 0x0

    .line 2035
    .local v19, cursor:Landroid/database/Cursor;
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 2036
    .local v29, whereArgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    .line 2038
    .local v28, where:Ljava/lang/StringBuilder;
    const-string/jumbo v2, "source_min = ? "

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2039
    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2043
    const-string v2, " AND reference_number = ?"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2044
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2045
    const-string v2, " AND count = ?"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2046
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2047
    const-string v2, " AND tid = ?"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2048
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTeleService()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2051
    const-string v2, " AND address = ?"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2052
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2057
    const/16 v2, 0x8

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "source_min"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "reference_number"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "count"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "sequence"

    aput-object v3, v4, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "pdu"

    aput-object v3, v4, v2

    const/4 v2, 0x6

    const-string v3, "address"

    aput-object v3, v4, v2

    const/4 v2, 0x7

    const-string v3, "date"

    aput-object v3, v4, v2

    .line 2075
    .local v4, projection:[Ljava/lang/String;
    :try_start_0
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 2076
    .local v25, rowIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/16 v21, 0x0

    .line 2077
    .local v21, expiredMsgCount:I
    const/4 v13, 0x0

    .line 2079
    .local v13, sameMsgCount:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/internal/telephony/CdmaSMSDispatcher;->LMS_URI:Landroid/net/Uri;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    const-string v7, "date"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 2085
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v13

    .line 2086
    const-string v2, "CdmaSMSDispatcher "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkCompleteMsg(), sameMsgCount = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2087
    if-gtz v13, :cond_1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    .line 2088
    invoke-direct/range {v5 .. v13}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->completeOrInsertLms(Lcom/android/internal/telephony/cdma/SmsMessage;Ljava/lang/String;III[B[[BI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2138
    if-eqz v19, :cond_0

    .line 2139
    .end local v13           #sameMsgCount:I
    .end local v21           #expiredMsgCount:I
    .end local v25           #rowIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :goto_0
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 2136
    :cond_0
    return v2

    .line 2092
    .restart local v13       #sameMsgCount:I
    .restart local v21       #expiredMsgCount:I
    .restart local v25       #rowIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_1
    :try_start_1
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2093
    const-string v2, "CdmaSMSDispatcher "

    const-string v3, "checkCompleteMsg(), cursor moveToFirst error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2094
    const/4 v2, 0x1

    .line 2138
    if-eqz v19, :cond_0

    goto :goto_0

    .line 2098
    :cond_2
    const-string v2, "_id"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    .line 2099
    .local v23, rowId:J
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2100
    const-string/jumbo v2, "sequence"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 2101
    .local v16, currSegment:I
    const-string v2, "date"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v5, 0x3e8

    div-long v26, v2, v5

    .line 2102
    .local v26, time:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v5, 0x3e8

    div-long v17, v2, v5

    .line 2104
    .local v17, currentTime:J
    const-string v2, "address"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 2105
    .local v14, callback:Ljava/lang/String;
    const-string/jumbo v2, "pdu"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v15

    .line 2108
    .local v15, currPdu:[B
    add-int/lit8 v2, v16, -0x1

    aput-object v15, p7, v2

    .line 2110
    const-string v2, "CdmaSMSDispatcher "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkCompleteMsg(), rowId = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v23

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2111
    const-string v2, "CdmaSMSDispatcher "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkCompleteMsg(), time = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v26

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2112
    const-string v2, "CdmaSMSDispatcher "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkCompleteMsg(), currentTime = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v17

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2113
    const-string v2, "CdmaSMSDispatcher "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkCompleteMsg(), text = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2114
    const-string v2, "CdmaSMSDispatcher "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkCompleteMsg(), callback = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2116
    sub-long v2, v17, v26

    const-wide/16 v5, 0x258

    cmp-long v2, v2, v5

    if-lez v2, :cond_3

    .line 2117
    add-int/lit8 v21, v21, 0x1

    .line 2118
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/internal/telephony/CdmaSMSDispatcher;->LMS_URI:Landroid/net/Uri;

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2121
    :cond_3
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2123
    if-lez v21, :cond_5

    .line 2124
    const/16 v22, 0x0

    .local v22, loop:I
    :goto_1
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v22

    if-ge v0, v2, :cond_4

    .line 2125
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/internal/telephony/CdmaSMSDispatcher;->LMS_URI:Landroid/net/Uri;

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v2, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2124
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 2129
    :cond_4
    const/4 v2, 0x1

    .line 2138
    if-eqz v19, :cond_0

    goto/16 :goto_0

    .end local v22           #loop:I
    :cond_5
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    .line 2131
    invoke-direct/range {v5 .. v13}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->completeOrInsertLms(Lcom/android/internal/telephony/cdma/SmsMessage;Ljava/lang/String;III[B[[BI)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    .line 2138
    if-eqz v19, :cond_0

    goto/16 :goto_0

    .line 2134
    .end local v13           #sameMsgCount:I
    .end local v14           #callback:Ljava/lang/String;
    .end local v15           #currPdu:[B
    .end local v16           #currSegment:I
    .end local v17           #currentTime:J
    .end local v21           #expiredMsgCount:I
    .end local v23           #rowId:J
    .end local v25           #rowIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v26           #time:J
    :catch_0
    move-exception v20

    .line 2135
    .local v20, e:Landroid/database/SQLException;
    :try_start_2
    const-string v2, "CdmaSMSDispatcher "

    const-string v3, "checkLmsDuplicated(), SQLException occurs"

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2136
    const/4 v2, 0x1

    .line 2138
    if-eqz v19, :cond_0

    goto/16 :goto_0

    .end local v20           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    if-eqz v19, :cond_6

    .line 2139
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 2138
    :cond_6
    throw v2
.end method

.method public checkDeletedMms(Ljava/lang/String;)Z
    .locals 8
    .parameter "msgId"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1778
    const-string v6, "CdmaSMSDispatcher "

    const-string v7, "checkDeletedMms()"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    const-string/jumbo v2, "mms_id = ?"

    .line 1781
    .local v2, where:Ljava/lang/String;
    new-array v3, v5, [Ljava/lang/String;

    aput-object p1, v3, v4

    .line 1784
    .local v3, whereArgs:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 1790
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_1

    .line 1803
    if-eqz v0, :cond_0

    .line 1804
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1801
    :cond_0
    :goto_1
    return v4

    .line 1793
    :cond_1
    if-eqz v0, :cond_4

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    if-lez v6, :cond_4

    .line 1803
    if-eqz v0, :cond_2

    .line 1804
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    move v4, v5

    .line 1794
    goto :goto_1

    .line 1798
    :catch_0
    move-exception v1

    .line 1799
    .local v1, e:Landroid/database/SQLException;
    :try_start_2
    invoke-virtual {v1}, Landroid/database/SQLException;->printStackTrace()V

    .line 1800
    const-string v5, "CdmaSMSDispatcher "

    const-string v6, "SQLException occurs"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1803
    if-eqz v0, :cond_0

    goto :goto_0

    .end local v1           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_3

    .line 1804
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1803
    :cond_3
    throw v4

    :cond_4
    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public checkLmsDuplicated(Lcom/android/internal/telephony/cdma/SmsMessage;Ljava/lang/String;III[B)Z
    .locals 22
    .parameter "sms"
    .parameter "sourceMin"
    .parameter "sessionId"
    .parameter "totalSegment"
    .parameter "currentSegment"
    .parameter "pdu"

    .prologue
    .line 1837
    const-string v2, "CdmaSMSDispatcher "

    const-string v3, "checkLmsDuplicated()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1838
    invoke-static/range {p6 .. p6}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v16

    .line 1839
    .local v16, pduStr:Ljava/lang/String;
    const-string v2, "CdmaSMSDispatcher "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pduStr = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    const/4 v11, 0x0

    .line 1841
    .local v11, cursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 1842
    .local v8, bRet:Z
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 1843
    .local v21, whereArgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 1845
    .local v20, where:Ljava/lang/StringBuilder;
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1846
    const-string/jumbo v2, "source_min = ? "

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1847
    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1851
    :goto_0
    const-string v2, " AND reference_number = ?"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1852
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1853
    const-string v2, " AND count = ?"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1854
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1855
    const-string v2, " AND sequence = ?"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1856
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1865
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1866
    const-string v2, " AND address = ?"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1867
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1871
    :goto_1
    const-string v2, " AND tid = ?"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1872
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTeleService()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1874
    const-string v2, "CdmaSMSDispatcher "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "where = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", whereArgs.toString() = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "pdu"

    aput-object v3, v4, v2

    .line 1882
    .local v4, projection:[Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/internal/telephony/CdmaSMSDispatcher;->LMS_URI:Landroid/net/Uri;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1888
    if-eqz v11, :cond_2

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 1889
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1890
    const/4 v12, 0x0

    .line 1892
    .local v12, different:Z
    :cond_0
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1893
    .local v9, body:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v10

    .line 1894
    .local v10, body_cursor:[B
    invoke-static {v10}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v17

    .line 1896
    .local v17, sm:Lcom/android/internal/telephony/cdma/SmsMessage;
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v18

    .line 1897
    .local v18, ud:[B
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v19

    .line 1899
    .local v19, ud_curr:[B
    move-object/from16 v0, v18

    array-length v15, v0

    .line 1900
    .local v15, len:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_2
    if-ge v14, v15, :cond_1

    .line 1901
    aget-byte v2, v19, v14

    aget-byte v3, v18, v14

    if-eq v2, v3, :cond_6

    .line 1902
    const/4 v12, 0x1

    .line 1903
    invoke-interface {v11}, Landroid/database/Cursor;->moveToLast()Z

    .line 1908
    :cond_1
    const-string v2, "CdmaSMSDispatcher "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pduStr_cursor = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1909
    const-string v2, "CdmaSMSDispatcher "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "userdata1 = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v19 .. v19}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1910
    const-string v2, "CdmaSMSDispatcher "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "userdata2 = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v18 .. v18}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1911
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1913
    if-eqz v12, :cond_7

    .line 1914
    const-string v2, "CdmaSMSDispatcher "

    const-string/jumbo v3, "pduStr not equals pduStr_cursor"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1915
    const/4 v8, 0x0

    .line 1925
    .end local v9           #body:Ljava/lang/String;
    .end local v10           #body_cursor:[B
    .end local v12           #different:Z
    .end local v14           #i:I
    .end local v15           #len:I
    .end local v17           #sm:Lcom/android/internal/telephony/cdma/SmsMessage;
    .end local v18           #ud:[B
    .end local v19           #ud_curr:[B
    :cond_2
    :goto_3
    if-eqz v11, :cond_3

    .line 1926
    :goto_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1929
    :cond_3
    return v8

    .line 1849
    .end local v4           #projection:[Ljava/lang/String;
    :cond_4
    const-string/jumbo v2, "source_min is null"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1869
    :cond_5
    const-string v2, " AND address is null"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1900
    .restart local v4       #projection:[Ljava/lang/String;
    .restart local v9       #body:Ljava/lang/String;
    .restart local v10       #body_cursor:[B
    .restart local v12       #different:Z
    .restart local v14       #i:I
    .restart local v15       #len:I
    .restart local v17       #sm:Lcom/android/internal/telephony/cdma/SmsMessage;
    .restart local v18       #ud:[B
    .restart local v19       #ud_curr:[B
    :cond_6
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2

    .line 1917
    :cond_7
    :try_start_1
    const-string v2, "CdmaSMSDispatcher "

    const-string/jumbo v3, "pduStr equals pduStr_cursor "

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1918
    const/4 v8, 0x1

    goto :goto_3

    .line 1921
    .end local v9           #body:Ljava/lang/String;
    .end local v10           #body_cursor:[B
    .end local v12           #different:Z
    .end local v14           #i:I
    .end local v15           #len:I
    .end local v17           #sm:Lcom/android/internal/telephony/cdma/SmsMessage;
    .end local v18           #ud:[B
    .end local v19           #ud_curr:[B
    :catch_0
    move-exception v13

    .line 1922
    .local v13, e:Landroid/database/SQLException;
    :try_start_2
    const-string v2, "CdmaSMSDispatcher "

    const-string v3, "checkLmsDuplicated(), SQLException occurs"

    invoke-static {v2, v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1923
    const/4 v8, 0x1

    .line 1925
    if-eqz v11, :cond_3

    goto :goto_4

    .end local v13           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    if-eqz v11, :cond_8

    .line 1926
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1925
    :cond_8
    throw v2
.end method

.method public checkValidLmsMessage(I)Z
    .locals 1
    .parameter "teleService"

    .prologue
    .line 1815
    const v0, 0xf6fe

    if-eq v0, p1, :cond_0

    const v0, 0xc256

    if-eq v0, p1, :cond_0

    const v0, 0xc264

    if-eq v0, p1, :cond_0

    const v0, 0xc266

    if-eq v0, p1, :cond_0

    const v0, 0xc268

    if-eq v0, p1, :cond_0

    const v0, 0xc006

    if-eq v0, p1, :cond_0

    const v0, 0xc00b

    if-ne v0, p1, :cond_1

    .line 1822
    :cond_0
    const/4 v0, 0x1

    .line 1824
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deleteAllExpiredMsg(Lcom/android/internal/telephony/cdma/SmsMessage;Ljava/lang/String;III)V
    .locals 14
    .parameter "sms"
    .parameter "sourceMin"
    .parameter "sessionId"
    .parameter "currentSegment"
    .parameter "totalSegment"

    .prologue
    .line 1976
    const-string v0, "CdmaSMSDispatcher "

    const-string v1, "deleteExpiredMsg() "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1978
    const/4 v8, 0x0

    .line 1980
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "date"

    aput-object v1, v2, v0

    .line 1990
    .local v2, projection:[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/internal/telephony/CdmaSMSDispatcher;->LMS_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "date"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1996
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1997
    const-string v0, "CdmaSMSDispatcher "

    const-string v1, "deleteExpiredMsg(), cursor moveToFirst error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2019
    if-eqz v8, :cond_0

    .line 2020
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2023
    :cond_0
    return-void

    .line 2001
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v3, 0x3e8

    div-long v6, v0, v3

    .line 2004
    .local v6, currentTime:J
    :cond_2
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 2005
    .local v10, rowId:J
    const-string v0, "date"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v3, 0x3e8

    div-long v12, v0, v3

    .line 2007
    .local v12, time:J
    const-string v0, "CdmaSMSDispatcher "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteExpiredMsg(), rowId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2008
    const-string v0, "CdmaSMSDispatcher "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteExpiredMsg(), time = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    const-string v0, "CdmaSMSDispatcher "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteExpiredMsg(), currentTime = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2011
    sub-long v0, v6, v12

    const-wide/16 v3, 0x258

    cmp-long v0, v0, v3

    if-lez v0, :cond_3

    .line 2012
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/internal/telephony/CdmaSMSDispatcher;->LMS_URI:Landroid/net/Uri;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2015
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-nez v0, :cond_2

    .line 2019
    if-eqz v8, :cond_0

    goto/16 :goto_0

    .line 2016
    .end local v6           #currentTime:J
    .end local v10           #rowId:J
    .end local v12           #time:J
    :catch_0
    move-exception v9

    .line 2017
    .local v9, e:Landroid/database/SQLException;
    :try_start_2
    const-string v0, "CdmaSMSDispatcher "

    const-string v1, "deleteExpiredMsg(), SQLException occurs"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2019
    if-eqz v8, :cond_0

    goto/16 :goto_0

    .end local v9           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_4

    .line 2020
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2019
    :cond_4
    throw v0
.end method

.method public deleteCompleteLmsMsg(Lcom/android/internal/telephony/cdma/SmsMessage;Ljava/lang/String;III)V
    .locals 12
    .parameter "sms"
    .parameter "sourceMin"
    .parameter "sessionId"
    .parameter "currentSegment"
    .parameter "totalSegment"

    .prologue
    .line 2221
    const-string v0, "CdmaSMSDispatcher "

    const-string v1, "deleteCompleteLmsMsg() "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2222
    const/4 v6, 0x0

    .line 2225
    .local v6, cursor:Landroid/database/Cursor;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2226
    .local v11, whereArgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 2228
    .local v10, where:Ljava/lang/StringBuilder;
    const-string/jumbo v0, "source_min = ? "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2229
    invoke-virtual {v11, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2233
    const-string v0, " AND reference_number = ?"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2234
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2235
    const-string v0, " AND count = ?"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2236
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2237
    const-string v0, " AND tid = ?"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2238
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTeleService()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2241
    const-string v0, " AND address = ?"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2242
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2247
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 2252
    .local v2, projection:[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/internal/telephony/CdmaSMSDispatcher;->LMS_URI:Landroid/net/Uri;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const-string v5, "date"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2258
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2259
    const-string v0, "CdmaSMSDispatcher "

    const-string v1, "deleteCompleteLmsMsg(), cursor moveToFirst error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2273
    if-eqz v6, :cond_0

    .line 2274
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2277
    :cond_0
    return-void

    .line 2264
    :cond_1
    :try_start_1
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 2265
    .local v8, rowId:J
    const-string v0, "CdmaSMSDispatcher "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteCompleteLmsMsg(), rowId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2266
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/internal/telephony/CdmaSMSDispatcher;->LMS_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, v8, v9}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2268
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-nez v0, :cond_1

    .line 2273
    if-eqz v6, :cond_0

    goto :goto_0

    .line 2269
    .end local v8           #rowId:J
    :catch_0
    move-exception v7

    .line 2270
    .local v7, e:Landroid/database/SQLException;
    :try_start_2
    const-string v0, "CdmaSMSDispatcher "

    const-string v1, "SQLException occurs"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2273
    if-eqz v6, :cond_0

    goto :goto_0

    .end local v7           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 2274
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2273
    :cond_2
    throw v0
.end method

.method protected dispatchBroadcastCmasPdus([[B)V
    .locals 4
    .parameter "pdus"

    .prologue
    .line 458
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.LGE_CMAS_CDMA_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 459
    .local v0, broadcastIntent:Landroid/content/Intent;
    const-string/jumbo v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 460
    const-string v1, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 461
    const-string v1, "CdmaSMSDispatcher "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dispatching "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " SMS CMAS pdus"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 463
    return-void
.end method

.method protected dispatchBroadcastPdus([[BZ)V
    .locals 4
    .parameter "pdus"
    .parameter "isEmergencyMessage"

    .prologue
    .line 467
    if-eqz p2, :cond_0

    .line 468
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.EMERGENCY_CDMA_MESSAGE_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 469
    .local v0, broadcastIntent:Landroid/content/Intent;
    const-string/jumbo v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 470
    const-string v1, "CdmaSMSDispatcher "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dispatching "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " emergency SMS CB pdus"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    const-string v1, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 476
    .end local v0           #broadcastIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 474
    :cond_0
    const-string v1, "CdmaSMSDispatcher "

    const-string v2, "CDMA non emergency messages: not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 12
    .parameter "smsb"

    .prologue
    .line 244
    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "lgu_dispatch"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    .line 245
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->dispatchMessageLgu(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v9

    .line 422
    :goto_0
    return v9

    .line 250
    :cond_0
    if-nez p1, :cond_1

    .line 251
    const-string v9, "CdmaSMSDispatcher "

    const-string v10, "dispatchMessage: message is null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const/4 v9, 0x2

    goto :goto_0

    .line 255
    :cond_1
    const-string/jumbo v9, "ril.cdma.inecmmode"

    const-string v10, "false"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 256
    .local v3, inEcm:Ljava/lang/String;
    const-string/jumbo v9, "true"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 257
    const/4 v9, -0x1

    goto :goto_0

    .line 260
    :cond_2
    iget-boolean v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsReceiveDisabled:Z

    if-eqz v9, :cond_3

    .line 262
    const-string v9, "CdmaSMSDispatcher "

    const-string v10, "Received short message on device which doesn\'t support receiving SMS. Ignored."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const/4 v9, 0x1

    goto :goto_0

    :cond_3
    move-object v5, p1

    .line 268
    check-cast v5, Lcom/android/internal/telephony/cdma/SmsMessage;

    .line 269
    .local v5, sms:Lcom/android/internal/telephony/cdma/SmsMessage;
    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getIncomingSmsFingerprint()[B

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mLastDispatchedSmsFingerprint:[B

    .line 270
    iget-object v9, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mLastAcknowledgedSmsFingerprint:[B

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mLastDispatchedSmsFingerprint:[B

    iget-object v10, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mLastAcknowledgedSmsFingerprint:[B

    invoke-static {v9, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 272
    const/4 v9, 0x1

    goto :goto_0

    .line 275
    :cond_4
    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSms()V

    .line 276
    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTeleService()I

    move-result v7

    .line 277
    .local v7, teleService:I
    const-string v9, "CdmaSMSDispatcher "

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dispatchMessage() - teleService: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const/4 v2, 0x0

    .line 281
    .local v2, handled:Z
    const/16 v9, 0x1006

    if-eq v9, v7, :cond_5

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->hasSCPTData()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 284
    :cond_5
    const-string v9, "CdmaSMSDispatcher "

    const-string v10, "[SMS.MT.CDMA] teleService == TELESERVICE_SCPT"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->dispatchSCPT(Lcom/android/internal/telephony/cdma/SmsMessage;)V

    .line 287
    const/4 v9, 0x1

    goto :goto_0

    .line 292
    :cond_6
    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v10, "cdma_kr_testbed_mms_receive"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 293
    const/16 v9, 0x1002

    if-ne v9, v7, :cond_7

    .line 294
    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mmsTestBedPushCheck([B)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_7

    .line 295
    const/16 v7, 0x1004

    .line 296
    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mmsTestBedGetMsgId([B)[B

    move-result-object v9

    sget v10, Lcom/android/internal/telephony/CdmaSMSDispatcher;->msgref:I

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v9, v10, v11}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->processCdmaWapPduKRTestBed([BILjava/lang/String;)I

    move-result v9

    goto/16 :goto_0

    .line 305
    :cond_7
    const/16 v9, 0x1003

    if-eq v9, v7, :cond_8

    const/high16 v9, 0x4

    if-ne v9, v7, :cond_d

    .line 307
    :cond_8
    const-string v9, "CdmaSMSDispatcher "

    const-string v10, "[SMS_VOICEMAIL] dispatchMessage() - teleService: VMN or MWI"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNumOfVoicemails()I

    move-result v8

    .line 310
    .local v8, voicemailCount:I
    const-string v9, "CdmaSMSDispatcher "

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[SMS_VOICEMAIL] Voicemail count="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v10, "cdma_sms_cdg2"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 313
    if-gez v8, :cond_c

    .line 314
    const/4 v8, -0x1

    .line 323
    :cond_9
    :goto_1
    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 325
    .local v6, sp:Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 327
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 329
    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v10, "cdma_urgent_vmwi"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 330
    const-string v9, "CdmaSMSDispatcher "

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[SMS_VOICEMAIL] urgent voicemail sms.isMwiUrgentMessage=("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->isMwiUrgentMessage()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->isMwiUrgentMessage()Z

    move-result v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->updateMessageWaitingIndicatorPriority(Z)V

    .line 334
    :cond_a
    const-string v9, "CdmaSMSDispatcher "

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[SMS_VOICEMAIL] voicemail number=("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNumOfVoicemails()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNumOfVoicemails()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->updateMessageWaitingIndicator(I)V

    .line 337
    const/4 v2, 0x1

    .line 351
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v6           #sp:Landroid/content/SharedPreferences;
    .end local v8           #voicemailCount:I
    :cond_b
    :goto_2
    if-eqz v2, :cond_10

    .line 352
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 315
    .restart local v8       #voicemailCount:I
    :cond_c
    const/16 v9, 0x63

    if-le v8, v9, :cond_9

    .line 318
    const/16 v8, 0x63

    goto :goto_1

    .line 338
    .end local v8           #voicemailCount:I
    :cond_d
    const/16 v9, 0x1002

    if-eq v9, v7, :cond_e

    const/16 v9, 0x1005

    if-ne v9, v7, :cond_f

    :cond_e
    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->isStatusReportMessage()Z

    move-result v9

    if-eqz v9, :cond_f

    .line 341
    const-string v9, "CdmaSMSDispatcher "

    const-string v10, "dispatchMessage() - teleService: WMT or WEMT"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->handleCdmaStatusReport(Lcom/android/internal/telephony/cdma/SmsMessage;)V

    .line 343
    const/4 v2, 0x1

    goto :goto_2

    .line 344
    :cond_f
    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v9

    if-nez v9, :cond_b

    .line 346
    const-string v9, "CdmaSMSDispatcher "

    const-string v10, "Received SMS without user data"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const/4 v2, 0x1

    goto :goto_2

    .line 355
    :cond_10
    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {v9}, Lcom/android/internal/telephony/SmsStorageMonitor;->isStorageAvailable()Z

    move-result v9

    if-nez v9, :cond_11

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v9

    sget-object v10, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    if-eq v9, v10, :cond_11

    .line 360
    const/4 v9, 0x3

    goto/16 :goto_0

    .line 363
    :cond_11
    const/16 v9, 0x1004

    if-ne v9, v7, :cond_12

    .line 364
    const-string v9, "CdmaSMSDispatcher "

    const-string v10, "dispatchMessage() - teleService: WAP"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v9

    iget v10, v5, Lcom/android/internal/telephony/SmsMessageBase;->messageRef:I

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v9, v10, v11}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->processCdmaWapPdu([BILjava/lang/String;)I

    move-result v9

    goto/16 :goto_0

    .line 372
    :cond_12
    const/16 v9, 0x1002

    if-eq v9, v7, :cond_13

    const/16 v9, 0x1005

    if-eq v9, v7, :cond_13

    const/4 v9, 0x1

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageType()I

    move-result v10

    if-eq v9, v10, :cond_13

    .line 375
    const/4 v9, 0x4

    goto/16 :goto_0

    .line 379
    :cond_13
    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v10, "app_directed_sms"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 381
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->parseDirectedSMS(Lcom/android/internal/telephony/cdma/SmsMessage;)I

    move-result v0

    .line 382
    .local v0, directedSmsStatus:I
    const/4 v9, 0x1

    if-ne v9, v0, :cond_14

    .line 383
    const-string v9, "APP_DIRECT_SMS"

    const-string v10, "[SMS.MT.CDMA] [dispatchMessage] return parseDirectedSMS = true"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 386
    :cond_14
    if-nez v0, :cond_15

    .line 387
    const-string v9, "APP_DIRECT_SMS"

    const-string v10, "[SMS.MT.CDMA] Discard!! there is no application for Application Directed SMS"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 392
    :cond_15
    const-string v9, "APP_DIRECT_SMS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[SMS.MT.CDMA] directedSmsStatus = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    .end local v0           #directedSmsStatus:I
    :cond_16
    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "vzw_snc_email_sms"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 400
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->isSncMessage(Lcom/android/internal/telephony/cdma/SmsMessage;)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 401
    const-string v9, "CdmaSMSDispatcher "

    const-string v10, "[SNC] AFW return isSncMessage = true"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 408
    :cond_17
    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageType()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_18

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getServiceCategory()I

    move-result v9

    const/16 v10, 0x1000

    if-lt v9, v10, :cond_18

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getServiceCategory()I

    move-result v9

    const/16 v10, 0x1004

    if-gt v9, v10, :cond_18

    .line 412
    const/4 v9, 0x1

    new-array v4, v9, [[B

    .line 413
    .local v4, pdus:[[B
    const/4 v9, 0x0

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPdu()[B

    move-result-object v10

    aput-object v10, v4, v9

    .line 418
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->dispatchBroadcastCmasPdus([[B)V

    .line 420
    const/4 v9, -0x1

    goto/16 :goto_0

    .line 422
    .end local v4           #pdus:[[B
    :cond_18
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->dispatchNormalMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v9

    goto/16 :goto_0
.end method

.method protected dispatchMessageLgu(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 20
    .parameter "smsb"

    .prologue
    .line 1497
    if-nez p1, :cond_1

    .line 1498
    const-string v17, "CdmaSMSDispatcher "

    const-string v18, "dispatchMessage: message is null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    const/4 v13, 0x2

    .line 1698
    :cond_0
    :goto_0
    return v13

    .line 1502
    :cond_1
    const-string/jumbo v17, "ril.cdma.inecmmode"

    const-string v18, "false"

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1503
    .local v6, inEcm:Ljava/lang/String;
    const-string/jumbo v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 1504
    const/4 v13, -0x1

    goto :goto_0

    .line 1507
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsReceiveDisabled:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 1509
    const-string v17, "CdmaSMSDispatcher "

    const-string v18, "Received short message on device which doesn\'t support receiving SMS. Ignored."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    const/4 v13, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v14, p1

    .line 1515
    check-cast v14, Lcom/android/internal/telephony/cdma/SmsMessage;

    .line 1516
    .local v14, sms:Lcom/android/internal/telephony/cdma/SmsMessage;
    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->getIncomingSmsFingerprint()[B

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mLastDispatchedSmsFingerprint:[B

    .line 1517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mLastAcknowledgedSmsFingerprint:[B

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mLastDispatchedSmsFingerprint:[B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mLastAcknowledgedSmsFingerprint:[B

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 1519
    const/4 v13, 0x1

    goto :goto_0

    .line 1522
    :cond_4
    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSms()V

    .line 1523
    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTeleService()I

    move-result v15

    .line 1524
    .local v15, teleService:I
    const/4 v5, 0x0

    .line 1526
    .local v5, handled:Z
    const/16 v17, 0x1003

    move/from16 v0, v17

    if-eq v0, v15, :cond_5

    const/high16 v17, 0x4

    move/from16 v0, v17

    if-ne v0, v15, :cond_7

    .line 1529
    :cond_5
    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNumOfVoicemails()I

    move-result v16

    .line 1530
    .local v16, voicemailCount:I
    const-string v17, "CdmaSMSDispatcher "

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Voicemail count="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    if-nez v16, :cond_6

    .line 1541
    const/4 v5, 0x1

    .line 1563
    .end local v16           #voicemailCount:I
    :cond_6
    :goto_1
    if-eqz v5, :cond_9

    .line 1564
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 1544
    :cond_7
    const/16 v17, 0x1005

    move/from16 v0, v17

    if-ne v0, v15, :cond_8

    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->isStatusReportMessage()Z

    move-result v17

    if-eqz v17, :cond_8

    .line 1550
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->handleCdmaStatusReport(Lcom/android/internal/telephony/cdma/SmsMessage;)V

    .line 1551
    const/4 v5, 0x1

    goto :goto_1

    .line 1552
    :cond_8
    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v17

    if-nez v17, :cond_6

    const/16 v17, 0x1002

    move/from16 v0, v17

    if-ne v15, v0, :cond_6

    .line 1560
    const/4 v5, 0x1

    goto :goto_1

    .line 1567
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/SmsStorageMonitor;->isStorageAvailable()Z

    move-result v17

    if-nez v17, :cond_b

    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v17

    sget-object v18, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_b

    .line 1574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string/jumbo v18, "sms_full_exception_case"

    invoke-static/range {v17 .. v18}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 1575
    invoke-static {v15}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->isMessageProcessTid(I)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 1576
    const/4 v13, 0x3

    goto/16 :goto_0

    .line 1582
    :cond_a
    const/4 v13, 0x3

    goto/16 :goto_0

    .line 1587
    :cond_b
    const/16 v17, 0x1004

    move/from16 v0, v17

    if-ne v0, v15, :cond_c

    .line 1588
    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v17

    iget v0, v14, Lcom/android/internal/telephony/SmsMessageBase;->messageRef:I

    move/from16 v18, v0

    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->processCdmaWapPdu([BILjava/lang/String;)I

    move-result v13

    goto/16 :goto_0

    .line 1604
    :cond_c
    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageType()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->getServiceCategory()I

    move-result v17

    const/16 v18, 0x1000

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_d

    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->getServiceCategory()I

    move-result v17

    const/16 v18, 0x1004

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_d

    .line 1608
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v11, v0, [[B

    .line 1609
    .local v11, pdus:[[B
    const/16 v17, 0x0

    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPdu()[B

    move-result-object v18

    aput-object v18, v11, v17

    .line 1610
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v11, v1}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->dispatchBroadcastPdus([[BZ)V

    .line 1611
    const/4 v13, -0x1

    goto/16 :goto_0

    .line 1615
    .end local v11           #pdus:[[B
    :cond_d
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v11, v0, [[B

    .line 1616
    .restart local v11       #pdus:[[B
    const/16 v17, 0x0

    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPdu()[B

    move-result-object v18

    aput-object v18, v11, v17

    .line 1620
    const v17, 0xc015

    move/from16 v0, v17

    if-ne v0, v15, :cond_10

    .line 1621
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->getMmsMsgId(Lcom/android/internal/telephony/cdma/SmsMessage;)Ljava/lang/String;

    move-result-object v9

    .line 1622
    .local v9, msgId:Ljava/lang/String;
    const-string v17, "CdmaSMSDispatcher "

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "msgId = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    const/16 v17, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->checkMmsDuplicated(Ljava/lang/String;)Z

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    .line 1626
    const-string v17, "CdmaSMSDispatcher "

    const-string v18, "checkMmsDuplicated() handled"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 1630
    :cond_e
    const/16 v17, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->checkDeletedMms(Ljava/lang/String;)Z

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_f

    .line 1631
    const-string v17, "CdmaSMSDispatcher "

    const-string v18, "checkDeletedMms() handled"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 1634
    :cond_f
    new-instance v7, Landroid/content/Intent;

    const-string v17, "android.provider.Telephony.LMSPUSH_RECEIVED"

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1635
    .local v7, intent:Landroid/content/Intent;
    const-string v17, "application/vnd.wap.mms-message"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1636
    const-string v17, "data"

    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1637
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v7}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->dispatchPdus([[BLandroid/content/Intent;)V

    .line 1638
    const-string v17, "CdmaSMSDispatcher "

    const-string v18, "dispatchPdus() handled"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    const/4 v13, -0x1

    goto/16 :goto_0

    .line 1642
    .end local v7           #intent:Landroid/content/Intent;
    .end local v9           #msgId:Ljava/lang/String;
    :cond_10
    const/16 v17, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->checkValidLmsMessage(I)Z

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_14

    .line 1643
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v11, v0, [[B

    .line 1644
    const/16 v17, 0x0

    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPdu()[B

    move-result-object v18

    aput-object v18, v11, v17

    .line 1645
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v11}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->processLmsMessage(Lcom/android/internal/telephony/cdma/SmsMessage;[[B)I

    move-result v13

    .line 1646
    .local v13, ret:I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v13, v0, :cond_0

    .line 1651
    const/4 v4, 0x0

    .line 1652
    .local v4, count:I
    const/4 v8, 0x0

    .line 1653
    .local v8, loop:I
    const/4 v8, 0x0

    :goto_2
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ge v8, v0, :cond_11

    .line 1654
    aget-object v17, v11, v8

    if-nez v17, :cond_12

    .line 1658
    :cond_11
    move v4, v8

    .line 1659
    new-array v10, v4, [[B

    .line 1660
    .local v10, newPuds:[[B
    const/4 v8, 0x0

    :goto_3
    if-ge v8, v4, :cond_13

    .line 1661
    aget-object v17, v11, v8

    aput-object v17, v10, v8

    .line 1660
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1653
    .end local v10           #newPuds:[[B
    :cond_12
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1663
    .restart local v10       #newPuds:[[B
    :cond_13
    new-array v11, v4, [[B

    .line 1664
    const/4 v8, 0x0

    :goto_4
    if-ge v8, v4, :cond_18

    .line 1665
    aget-object v17, v10, v8

    aput-object v17, v11, v8

    .line 1664
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 1667
    .end local v4           #count:I
    .end local v8           #loop:I
    .end local v10           #newPuds:[[B
    .end local v13           #ret:I
    :cond_14
    const/high16 v17, 0x5

    move/from16 v0, v17

    if-ne v0, v15, :cond_18

    .line 1668
    const/16 v17, 0xa

    move/from16 v0, v17

    new-array v11, v0, [[B

    .line 1669
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v11}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->processCbsMessage(Lcom/android/internal/telephony/cdma/SmsMessage;[[B)I

    move-result v13

    .line 1670
    .restart local v13       #ret:I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v13, v0, :cond_0

    .line 1675
    const/4 v4, 0x0

    .line 1676
    .restart local v4       #count:I
    const/4 v8, 0x0

    .line 1677
    .restart local v8       #loop:I
    const/4 v8, 0x0

    :goto_5
    const/16 v17, 0xa

    move/from16 v0, v17

    if-ge v8, v0, :cond_15

    .line 1678
    aget-object v17, v11, v8

    if-nez v17, :cond_16

    .line 1682
    :cond_15
    move v4, v8

    .line 1683
    new-array v10, v4, [[B

    .line 1684
    .restart local v10       #newPuds:[[B
    const/4 v8, 0x0

    :goto_6
    if-ge v8, v4, :cond_17

    .line 1685
    aget-object v17, v11, v8

    aput-object v17, v10, v8

    .line 1684
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 1677
    .end local v10           #newPuds:[[B
    :cond_16
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 1687
    .restart local v10       #newPuds:[[B
    :cond_17
    new-array v11, v4, [[B

    .line 1688
    const/4 v8, 0x0

    :goto_7
    if-ge v8, v4, :cond_18

    .line 1689
    aget-object v17, v10, v8

    aput-object v17, v11, v8

    .line 1688
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 1694
    .end local v4           #count:I
    .end local v8           #loop:I
    .end local v10           #newPuds:[[B
    .end local v13           #ret:I
    :cond_18
    const-string v17, "CdmaSmsLgtMessage"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2, v14, v11}, Lcom/android/internal/telephony/SmsKrMessageManager;->getOperatorMessage(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher;Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;[[B)Lcom/android/internal/telephony/SmsOperatorBasicMessage;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/SmsOperatorBasicMessage;->dispatch(Lcom/android/internal/telephony/SMSDispatcher;)I

    move-result v12

    .line 1695
    .local v12, result:I
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v12, v0, :cond_19

    .line 1696
    const/4 v13, -0x1

    goto/16 :goto_0

    .line 1698
    :cond_19
    const/4 v13, 0x1

    goto/16 :goto_0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewCdmaSms(Landroid/os/Handler;)V

    .line 195
    invoke-super {p0}, Lcom/android/internal/telephony/SMSDispatcher;->dispose()V

    .line 196
    return-void
.end method

.method protected enableAutoDCDisconnect(I)V
    .locals 2
    .parameter "timeOut"

    .prologue
    .line 1490
    const-string v0, "CdmaSMSDispatcher "

    const-string v1, "enableAutoDCDisconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->enableAutoDCDisconnect(I)V

    .line 1492
    return-void
.end method

.method protected getEncoding()I
    .locals 1

    .prologue
    .line 570
    const/4 v0, 0x2

    return v0
.end method

.method protected getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    const-string v0, "3gpp2"

    return-object v0
.end method

.method public getSessionIdLink()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2284
    sget-object v0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->sSessionIdLink:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getSessionMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2280
    sget-object v0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->sSessionMap:Ljava/util/HashMap;

    return-object v0
.end method

.method protected getUiccCardApplication()Lcom/android/internal/telephony/UiccCardApplication;
    .locals 5

    .prologue
    .line 1407
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/SubscriptionManager;

    move-result-object v0

    .line 1408
    .local v0, subMgr:Lcom/android/internal/telephony/SubscriptionManager;
    if-nez v0, :cond_0

    .line 1409
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    sget-object v3, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP2:Lcom/android/internal/telephony/UiccManager$AppFamily;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/UiccManager;->getUiccCardApplication(Lcom/android/internal/telephony/UiccManager$AppFamily;)Lcom/android/internal/telephony/UiccCardApplication;

    move-result-object v2

    .line 1417
    :goto_0
    return-object v2

    .line 1411
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/SubscriptionManager;->getCurrentSubscription(I)Lcom/android/internal/telephony/Subscription;

    move-result-object v1

    .line 1412
    .local v1, subscriptionData:Lcom/android/internal/telephony/Subscription;
    if-eqz v1, :cond_1

    .line 1413
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    iget v3, v1, Lcom/android/internal/telephony/Subscription;->slotId:I

    sget-object v4, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP2:Lcom/android/internal/telephony/UiccManager$AppFamily;

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/UiccManager;->getUiccCardApplication(ILcom/android/internal/telephony/UiccManager$AppFamily;)Lcom/android/internal/telephony/UiccCardApplication;

    move-result-object v2

    goto :goto_0

    .line 1417
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected handleGetIccSmsDone(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter "ar"

    .prologue
    .line 219
    const-string v0, "CdmaSMSDispatcher "

    const-string/jumbo v1, "handleGetIccSmsDone function is not applicable for CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    return-void
.end method

.method protected handleSmsOnIcc(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter "ar"

    .prologue
    .line 210
    const-string v0, "CdmaSMSDispatcher "

    const-string/jumbo v1, "handleSmsOnIcc function is not applicable for CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return-void
.end method

.method public insertLmsMsg(Lcom/android/internal/telephony/cdma/SmsMessage;Ljava/lang/String;III[B)V
    .locals 12
    .parameter "sms"
    .parameter "sourceMin"
    .parameter "sessionId"
    .parameter "currentSegment"
    .parameter "totalSegment"
    .parameter "pdu"

    .prologue
    .line 2165
    const-string v0, "CdmaSMSDispatcher "

    const-string/jumbo v1, "insertLmsMsg() "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2167
    const/4 v6, 0x0

    .line 2169
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 2174
    .local v2, projection:[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/internal/telephony/CdmaSMSDispatcher;->LMS_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2177
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/16 v1, 0x32

    if-lt v0, v1, :cond_6

    .line 2179
    const/4 v0, 0x1

    new-array v8, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v8, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2182
    .end local v2           #projection:[Ljava/lang/String;
    .local v8, projection:[Ljava/lang/String;
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2183
    const-string v0, "CdmaSMSDispatcher "

    const-string v1, "cursor moveToLast error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2198
    if-eqz v6, :cond_0

    .line 2199
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v2, v8

    .line 2216
    .end local v8           #projection:[Ljava/lang/String;
    .restart local v2       #projection:[Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 2187
    .end local v2           #projection:[Ljava/lang/String;
    .restart local v8       #projection:[Ljava/lang/String;
    :cond_2
    :try_start_2
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 2188
    .local v9, rowId:J
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/internal/telephony/CdmaSMSDispatcher;->LMS_URI:Landroid/net/Uri;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_5

    .line 2190
    const-string v0, "CdmaSMSDispatcher "

    const-string/jumbo v1, "oldest lms delete fail"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2198
    if-eqz v6, :cond_3

    .line 2199
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v2, v8

    .line 2191
    .end local v8           #projection:[Ljava/lang/String;
    .restart local v2       #projection:[Ljava/lang/String;
    goto :goto_0

    .line 2194
    .end local v9           #rowId:J
    :catch_0
    move-exception v7

    .line 2195
    .local v7, e:Landroid/database/SQLException;
    :goto_1
    :try_start_3
    const-string v0, "CdmaSMSDispatcher "

    const-string v1, "SQLException occurs"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2198
    if-eqz v6, :cond_1

    .line 2199
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2198
    .end local v7           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v6, :cond_4

    .line 2199
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2198
    :cond_4
    throw v0

    .end local v2           #projection:[Ljava/lang/String;
    .restart local v8       #projection:[Ljava/lang/String;
    .restart local v9       #rowId:J
    :cond_5
    move-object v2, v8

    .end local v8           #projection:[Ljava/lang/String;
    .end local v9           #rowId:J
    .restart local v2       #projection:[Ljava/lang/String;
    :cond_6
    if-eqz v6, :cond_7

    .line 2199
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2203
    :cond_7
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 2204
    .local v11, value:Landroid/content/ContentValues;
    const-string/jumbo v0, "source_min"

    invoke-virtual {v11, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2205
    const-string/jumbo v0, "reference_number"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2206
    const-string v0, "count"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2207
    const-string/jumbo v0, "sequence"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2208
    const-string/jumbo v0, "pdu"

    invoke-static/range {p6 .. p6}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2209
    const-string v0, "address"

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2210
    const-string v0, "date"

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTimestampMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2211
    const-string/jumbo v0, "tid"

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTeleService()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2212
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/internal/telephony/CdmaSMSDispatcher;->LMS_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2213
    const-string v0, "CdmaSMSDispatcher "

    const-string/jumbo v1, "lms insert fail"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2198
    .end local v2           #projection:[Ljava/lang/String;
    .end local v11           #value:Landroid/content/ContentValues;
    .restart local v8       #projection:[Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object v2, v8

    .end local v8           #projection:[Ljava/lang/String;
    .restart local v2       #projection:[Ljava/lang/String;
    goto :goto_2

    .line 2194
    .end local v2           #projection:[Ljava/lang/String;
    .restart local v8       #projection:[Ljava/lang/String;
    :catch_1
    move-exception v7

    move-object v2, v8

    .end local v8           #projection:[Ljava/lang/String;
    .restart local v2       #projection:[Ljava/lang/String;
    goto/16 :goto_1
.end method

.method protected isSncMessage(Lcom/android/internal/telephony/cdma/SmsMessage;)Z
    .locals 5
    .parameter "sms"

    .prologue
    const/4 v3, 0x0

    .line 2469
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    .line 2470
    .local v0, bodyMessage:Ljava/lang/String;
    if-nez v0, :cond_1

    move v1, v3

    .line 2507
    :cond_0
    :goto_0
    return v1

    .line 2473
    :cond_1
    const/4 v1, 0x0

    .line 2475
    .local v1, isSncSms:Z
    const-string v4, "VZWPIN"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2476
    const/4 v1, 0x1

    .line 2501
    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    .line 2502
    const/4 v4, 0x1

    new-array v2, v4, [[B

    .line 2503
    .local v2, pdus:[[B
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPdu()[B

    move-result-object v4

    aput-object v4, v2, v3

    .line 2504
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->dispatchSncSms([[B)V

    goto :goto_0

    .line 2479
    .end local v2           #pdus:[[B
    :cond_3
    const-string v4, "VZWNMN"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2480
    const/4 v1, 0x1

    goto :goto_1

    .line 2483
    :cond_4
    const-string v4, "VZWUEP"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2484
    const/4 v1, 0x1

    goto :goto_1

    .line 2487
    :cond_5
    const-string v4, "VZWRSC"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2488
    const/4 v1, 0x1

    goto :goto_1

    .line 2492
    :cond_6
    const-string v4, "VZWSIP"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2493
    const/4 v1, 0x1

    goto :goto_1

    .line 2497
    :cond_7
    const-string v4, "VZWSCI"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2498
    const/4 v1, 0x1

    goto :goto_1
.end method

.method protected parseDirectedSMS(Lcom/android/internal/telephony/cdma/SmsMessage;)I
    .locals 24
    .parameter "sms"

    .prologue
    .line 1175
    const/16 v16, 0x0

    .line 1176
    .local v16, processStatus:I
    const-string v21, "APP_DIRECT_SMS"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "parseDirectedSMS / sms.getMessageBody() = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1185
    .local v6, applications:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v21

    const-string v22, "//VZW"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_0

    .line 1186
    const/16 v16, -0x1

    move/from16 v17, v16

    .line 1248
    .end local v16           #processStatus:I
    .local v17, processStatus:I
    :goto_0
    return v17

    .line 1188
    .end local v17           #processStatus:I
    .restart local v16       #processStatus:I
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v3

    .line 1189
    .local v3, appDirectedSMS:Ljava/lang/String;
    const-string v21, "APP_DIRECT_SMS"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "appDirectedSMS : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v21

    const/16 v22, 0xe

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_1

    const/16 v21, 0x0

    const/16 v22, 0xd

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    const-string v22, "//VZWLBSROVER"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 1193
    const/16 v16, -0x1

    move/from16 v17, v16

    .end local v16           #processStatus:I
    .restart local v17       #processStatus:I
    goto :goto_0

    .line 1197
    .end local v17           #processStatus:I
    .restart local v16       #processStatus:I
    :cond_1
    const-string v21, "//VZW"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 1200
    .local v20, tempSMS:Ljava/lang/String;
    const-string v21, ":"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    .line 1201
    const/16 v16, -0x1

    move/from16 v17, v16

    .end local v16           #processStatus:I
    .restart local v17       #processStatus:I
    goto :goto_0

    .line 1204
    .end local v17           #processStatus:I
    .restart local v16       #processStatus:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 1206
    .local v15, pkgManager:Landroid/content/pm/PackageManager;
    new-instance v12, Landroid/content/Intent;

    const-string v21, "android.intent.action.MAIN"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1207
    .local v12, intent:Landroid/content/Intent;
    const-string v21, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1209
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v15, v12, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 1210
    .local v7, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/16 v18, 0x0

    .line 1212
    .local v18, resolveInfo:Landroid/content/pm/ResolveInfo;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 1214
    .local v11, info:Landroid/content/pm/ResolveInfo;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->verifyApplicationRegistration(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1215
    .local v5, applicationPrefix:Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 1216
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1217
    .end local v5           #applicationPrefix:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 1218
    .local v9, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v21, "APP_DIRECT_SMS"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "PackageManager.NameNotFoundException"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1223
    .end local v9           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v11           #info:Landroid/content/pm/ResolveInfo;
    :cond_4
    const-string v21, "APP_DIRECT_SMS"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "applications : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "  applications.size() = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-lez v21, :cond_5

    .line 1226
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    .line 1227
    .local v19, sDirectedSMSApp:[Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1234
    const/16 v21, 0x0

    const-string v22, ":"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v22

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1235
    .restart local v5       #applicationPrefix:Ljava/lang/String;
    const-string v21, "APP_DIRECT_SMS"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "applicationPrefix : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    move-object/from16 v8, v19

    .local v8, arr$:[Ljava/lang/String;
    array-length v13, v8

    .local v13, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_2
    if-ge v10, v13, :cond_7

    aget-object v4, v8, v10

    .line 1238
    .local v4, appList:Ljava/lang/String;
    const-string v21, "APP_DIRECT_SMS"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "appList ==>  "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 1240
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v21, v21, 0x1

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v22

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 1241
    .local v14, parameters:Ljava/lang/String;
    const-string v21, "APP_DIRECT_SMS"

    const-string v22, "dispatchDirectedSms!!"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->dispatchDirectedSms(Ljava/lang/String;)V

    .line 1244
    const/16 v16, 0x1

    move/from16 v17, v16

    .end local v16           #processStatus:I
    .restart local v17       #processStatus:I
    goto/16 :goto_0

    .line 1230
    .end local v4           #appList:Ljava/lang/String;
    .end local v5           #applicationPrefix:Ljava/lang/String;
    .end local v8           #arr$:[Ljava/lang/String;
    .end local v13           #len$:I
    .end local v14           #parameters:Ljava/lang/String;
    .end local v17           #processStatus:I
    .end local v19           #sDirectedSMSApp:[Ljava/lang/String;
    .local v10, i$:Ljava/util/Iterator;
    .restart local v16       #processStatus:I
    :cond_5
    const/16 v16, 0x0

    move/from16 v17, v16

    .end local v16           #processStatus:I
    .restart local v17       #processStatus:I
    goto/16 :goto_0

    .line 1237
    .end local v17           #processStatus:I
    .restart local v4       #appList:Ljava/lang/String;
    .restart local v5       #applicationPrefix:Ljava/lang/String;
    .restart local v8       #arr$:[Ljava/lang/String;
    .local v10, i$:I
    .restart local v13       #len$:I
    .restart local v16       #processStatus:I
    .restart local v19       #sDirectedSMSApp:[Ljava/lang/String;
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .end local v4           #appList:Ljava/lang/String;
    :cond_7
    move/from16 v17, v16

    .line 1248
    .end local v16           #processStatus:I
    .restart local v17       #processStatus:I
    goto/16 :goto_0
.end method

.method public processCbsMessage(Lcom/android/internal/telephony/cdma/SmsMessage;[[B)I
    .locals 12
    .parameter "sms"
    .parameter "pdus"

    .prologue
    const/4 v9, 0x1

    .line 2288
    const-string v8, "CdmaSMSDispatcher "

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CBS parse star = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSmsEnvelope()Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    move-result-object v11

    iget v11, v11, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2289
    const/4 v4, 0x0

    .line 2290
    .local v4, pdu:[B
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v7

    .line 2293
    .local v7, userData:[B
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPdu()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 2298
    :goto_0
    const/16 v8, 0x2be

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSmsEnvelope()Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    move-result-object v10

    iget v10, v10, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    if-ne v8, v10, :cond_1

    .line 2299
    const-string v8, "CdmaSMSDispatcher "

    const-string v10, "CBS EMERGENCY_MSG "

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2304
    :cond_0
    if-nez v4, :cond_2

    move v8, v9

    .line 2353
    :goto_1
    return v8

    .line 2294
    :catch_0
    move-exception v1

    .line 2295
    .local v1, e1:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2300
    .end local v1           #e1:Ljava/lang/Exception;
    :cond_1
    const/16 v8, 0x7000

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSmsEnvelope()Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    move-result-object v10

    iget v10, v10, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    if-ne v8, v10, :cond_0

    .line 2301
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->parseImsMsg([B)I

    move-result v8

    goto :goto_1

    .line 2309
    :cond_2
    const/4 v2, 0x0

    .local v2, loop:I
    :goto_2
    array-length v8, v7

    if-ge v2, v8, :cond_3

    .line 2310
    const-string v8, "CdmaSMSDispatcher "

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "userData["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-byte v11, v7, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2309
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2313
    :cond_3
    const-string v8, "CdmaSMSDispatcher "

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CBS session = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getBearerData()Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v11

    iget v11, v11, Lcom/android/internal/telephony/cdma/sms/BearerData;->sessioinId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2314
    const-string v8, "CdmaSMSDispatcher "

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CBS eos = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getBearerData()Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v11

    iget v11, v11, Lcom/android/internal/telephony/cdma/sms/BearerData;->endOfSession:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2315
    const-string v8, "CdmaSMSDispatcher "

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CBS sessionSeq = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getBearerData()Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v11

    iget v11, v11, Lcom/android/internal/telephony/cdma/sms/BearerData;->sessionSeq:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2316
    const-string v8, "CdmaSMSDispatcher "

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CBS Session Map = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->getSessionMap()Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2319
    const/4 v6, 0x0

    .line 2320
    .local v6, tSeqMap:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getBearerData()Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v8

    iget v0, v8, Lcom/android/internal/telephony/cdma/sms/BearerData;->sessioinId:I

    .line 2321
    .local v0, cbsSid:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->getSessionMap()Ljava/util/HashMap;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2323
    invoke-virtual {p0}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->getSessionMap()Ljava/util/HashMap;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/TreeMap;

    move-object v6, v8

    check-cast v6, Ljava/util/TreeMap;

    .line 2335
    :goto_3
    new-instance v3, Lcom/android/internal/telephony/CdmaSMSDispatcher$MsgSequence;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getBearerData()Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v8

    iget v8, v8, Lcom/android/internal/telephony/cdma/sms/BearerData;->endOfSession:I

    invoke-direct {v3, p0, v8, v4}, Lcom/android/internal/telephony/CdmaSMSDispatcher$MsgSequence;-><init>(Lcom/android/internal/telephony/CdmaSMSDispatcher;I[B)V

    .line 2336
    .local v3, msgSeq:Lcom/android/internal/telephony/CdmaSMSDispatcher$MsgSequence;
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getBearerData()Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v8

    iget v8, v8, Lcom/android/internal/telephony/cdma/sms/BearerData;->sessionSeq:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2338
    invoke-virtual {p0}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->getSessionMap()Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getBearerData()Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v10

    iget v10, v10, Lcom/android/internal/telephony/cdma/sms/BearerData;->sessioinId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2342
    const-string v8, "CdmaSMSDispatcher "

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CBS Session Map put ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->getSessionMap()Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2343
    const-string v8, "CdmaSMSDispatcher "

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CBS isEos()= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->isEos(Lcom/android/internal/telephony/cdma/SmsMessage;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", isSeqFull()="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->isSeqFull(Lcom/android/internal/telephony/cdma/SmsMessage;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2346
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->isMsgEnd(Lcom/android/internal/telephony/cdma/SmsMessage;)Z

    move-result v8

    if-nez v8, :cond_6

    move v8, v9

    .line 2347
    goto/16 :goto_1

    .line 2326
    .end local v3           #msgSeq:Lcom/android/internal/telephony/CdmaSMSDispatcher$MsgSequence;
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->getSessionIdLink()Ljava/util/LinkedList;

    move-result-object v5

    .line 2327
    .local v5, sessionLink:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Object;>;"
    :goto_4
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v8

    const/16 v10, 0x9

    if-le v8, v10, :cond_5

    .line 2328
    invoke-virtual {v5}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->clearSession(I)V

    goto :goto_4

    .line 2331
    :cond_5
    new-instance v6, Ljava/util/TreeMap;

    .end local v6           #tSeqMap:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-direct {v6}, Ljava/util/TreeMap;-><init>()V

    .restart local v6       #tSeqMap:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    goto/16 :goto_3

    .line 2350
    .end local v5           #sessionLink:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Object;>;"
    .restart local v3       #msgSeq:Lcom/android/internal/telephony/CdmaSMSDispatcher$MsgSequence;
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->makeCompleteText(Lcom/android/internal/telephony/cdma/SmsMessage;[[B)V

    .line 2352
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->clearSession(Lcom/android/internal/telephony/cdma/SmsMessage;)V

    .line 2353
    const/4 v8, -0x1

    goto/16 :goto_1
.end method

.method protected processCdmaWapPdu([BILjava/lang/String;)I
    .locals 15
    .parameter "pdu"
    .parameter "referenceNumber"
    .parameter "address"

    .prologue
    .line 585
    const/4 v11, 0x0

    .line 587
    .local v11, index:I
    add-int/lit8 v12, v11, 0x1

    .end local v11           #index:I
    .local v12, index:I
    aget-byte v1, p1, v11

    and-int/lit16 v13, v1, 0xff

    .line 588
    .local v13, msgType:I
    if-eqz v13, :cond_0

    .line 589
    const-string v1, "CdmaSMSDispatcher "

    const-string v3, "Received a WAP SMS which is not WDP. Discard."

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    const/4 v1, 0x1

    move v11, v12

    .line 627
    .end local v12           #index:I
    .restart local v11       #index:I
    :goto_0
    return v1

    .line 592
    .end local v11           #index:I
    .restart local v12       #index:I
    :cond_0
    add-int/lit8 v11, v12, 0x1

    .end local v12           #index:I
    .restart local v11       #index:I
    aget-byte v1, p1, v12

    and-int/lit16 v6, v1, 0xff

    .line 593
    .local v6, totalSegments:I
    add-int/lit8 v12, v11, 0x1

    .end local v11           #index:I
    .restart local v12       #index:I
    aget-byte v1, p1, v11

    and-int/lit16 v5, v1, 0xff

    .line 595
    .local v5, segment:I
    if-lt v5, v6, :cond_1

    .line 596
    const-string v1, "CdmaSMSDispatcher "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WDP bad segment #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " expecting 0-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v6, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    const/4 v1, 0x1

    move v11, v12

    .end local v12           #index:I
    .restart local v11       #index:I
    goto :goto_0

    .line 601
    .end local v11           #index:I
    .restart local v12       #index:I
    :cond_1
    const/4 v14, 0x0

    .line 602
    .local v14, sourcePort:I
    const/4 v9, 0x0

    .line 603
    .local v9, destinationPort:I
    if-nez v5, :cond_2

    .line 605
    add-int/lit8 v11, v12, 0x1

    .end local v12           #index:I
    .restart local v11       #index:I
    aget-byte v1, p1, v12

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v14, v1, 0x8

    .line 606
    add-int/lit8 v12, v11, 0x1

    .end local v11           #index:I
    .restart local v12       #index:I
    aget-byte v1, p1, v11

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v14, v1

    .line 607
    add-int/lit8 v11, v12, 0x1

    .end local v12           #index:I
    .restart local v11       #index:I
    aget-byte v1, p1, v12

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v9, v1, 0x8

    .line 608
    add-int/lit8 v12, v11, 0x1

    .end local v11           #index:I
    .restart local v12       #index:I
    aget-byte v1, p1, v11

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v9, v1

    .line 611
    iget-boolean v1, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mCheckForDuplicatePortsInOmadmWapPush:Z

    if-eqz v1, :cond_2

    .line 612
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->checkDuplicatePortOmadmWappush([BI)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 613
    add-int/lit8 v11, v12, 0x4

    .line 619
    .end local v12           #index:I
    .restart local v11       #index:I
    :goto_1
    const-string v1, "CdmaSMSDispatcher "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received WAP PDU. Type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", originator = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", src-port = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dst-port = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", segment# = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    move-object/from16 v0, p1

    array-length v1, v0

    sub-int/2addr v1, v11

    new-array v2, v1, [B

    .line 625
    .local v2, userData:[B
    const/4 v1, 0x0

    move-object/from16 v0, p1

    array-length v3, v0

    sub-int/2addr v3, v11

    move-object/from16 v0, p1

    invoke-static {v0, v11, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 627
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    move-object v1, p0

    move-object/from16 v3, p3

    move/from16 v4, p2

    invoke-virtual/range {v1 .. v10}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->processMessagePart([BLjava/lang/String;IIIJIZ)I

    move-result v1

    goto/16 :goto_0

    .end local v2           #userData:[B
    .end local v11           #index:I
    .restart local v12       #index:I
    :cond_2
    move v11, v12

    .end local v12           #index:I
    .restart local v11       #index:I
    goto :goto_1
.end method

.method protected processCdmaWapPduKRTestBed([BILjava/lang/String;)I
    .locals 16
    .parameter "pdu"
    .parameter "referenceNumber"
    .parameter "address"

    .prologue
    .line 521
    const/4 v12, 0x0

    .line 523
    .local v12, index:I
    add-int/lit8 v13, v12, 0x1

    .end local v12           #index:I
    .local v13, index:I
    aget-byte v1, p1, v12

    and-int/lit16 v14, v1, 0xff

    .line 524
    .local v14, msgType:I
    if-eqz v14, :cond_0

    .line 525
    const-string v1, "CdmaSMSDispatcher "

    const-string v3, "Received a WAP SMS which is not WDP. Discard."

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const/4 v1, 0x1

    move v12, v13

    .line 563
    .end local v13           #index:I
    .restart local v12       #index:I
    :goto_0
    return v1

    .line 528
    .end local v12           #index:I
    .restart local v13       #index:I
    :cond_0
    add-int/lit8 v12, v13, 0x1

    .end local v13           #index:I
    .restart local v12       #index:I
    aget-byte v1, p1, v13

    and-int/lit16 v6, v1, 0xff

    .line 529
    .local v6, totalSegments:I
    add-int/lit8 v13, v12, 0x1

    .end local v12           #index:I
    .restart local v13       #index:I
    aget-byte v1, p1, v12

    and-int/lit16 v5, v1, 0xff

    .line 531
    .local v5, segment:I
    if-lt v5, v6, :cond_1

    .line 532
    const-string v1, "CdmaSMSDispatcher "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WDP bad segment #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " expecting 0-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v6, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    const/4 v1, 0x1

    move v12, v13

    .end local v13           #index:I
    .restart local v12       #index:I
    goto :goto_0

    .line 537
    .end local v12           #index:I
    .restart local v13       #index:I
    :cond_1
    const/4 v15, 0x0

    .line 538
    .local v15, sourcePort:I
    const/4 v9, 0x0

    .line 539
    .local v9, destinationPort:I
    if-nez v5, :cond_2

    .line 541
    add-int/lit8 v12, v13, 0x1

    .end local v13           #index:I
    .restart local v12       #index:I
    aget-byte v1, p1, v13

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v15, v1, 0x8

    .line 542
    add-int/lit8 v13, v12, 0x1

    .end local v12           #index:I
    .restart local v13       #index:I
    aget-byte v1, p1, v12

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v15, v1

    .line 543
    add-int/lit8 v12, v13, 0x1

    .end local v13           #index:I
    .restart local v12       #index:I
    aget-byte v1, p1, v13

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v9, v1, 0x8

    .line 544
    add-int/lit8 v13, v12, 0x1

    .end local v12           #index:I
    .restart local v13       #index:I
    aget-byte v1, p1, v12

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v9, v1

    .line 547
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mCheckForDuplicatePortsInOmadmWapPush:Z

    if-eqz v1, :cond_2

    .line 548
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->checkDuplicatePortOmadmWappush([BI)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 549
    add-int/lit8 v12, v13, 0x4

    .line 555
    .end local v13           #index:I
    .restart local v12       #index:I
    :goto_1
    const-string v1, "CdmaSMSDispatcher "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received WAP PDU. Type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", originator = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", src-port = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dst-port = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", segment# = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    move-object/from16 v0, p1

    array-length v1, v0

    sub-int/2addr v1, v12

    new-array v2, v1, [B

    .line 561
    .local v2, userData:[B
    const/4 v1, 0x0

    move-object/from16 v0, p1

    array-length v3, v0

    sub-int/2addr v3, v12

    move-object/from16 v0, p1

    invoke-static {v0, v12, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 563
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p3

    move/from16 v4, p2

    invoke-virtual/range {v1 .. v11}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->processMessagePartKRTestBed([BLjava/lang/String;IIIJIZLjava/lang/String;)I

    move-result v1

    goto/16 :goto_0

    .end local v2           #userData:[B
    .end local v12           #index:I
    .restart local v13       #index:I
    :cond_2
    move v12, v13

    .end local v13           #index:I
    .restart local v12       #index:I
    goto :goto_1
.end method

.method public processLmsMessage(Lcom/android/internal/telephony/cdma/SmsMessage;[[B)I
    .locals 16
    .parameter "sms"
    .parameter "pdus"

    .prologue
    .line 1936
    const-string v0, "CdmaSMSDispatcher "

    const-string/jumbo v1, "processLmsMessage() "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1938
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPdu()[B

    move-result-object v6

    .line 1939
    .local v6, pdu:[B
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v15

    .line 1940
    .local v15, userData:[B
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    .line 1941
    .local v2, sourceMin:Ljava/lang/String;
    const/4 v0, 0x0

    aget-byte v3, v15, v0

    .line 1942
    .local v3, sessionId:I
    const/4 v0, 0x1

    aget-byte v0, v15, v0

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v4, v0, 0x4

    .line 1943
    .local v4, totalSegment:I
    const/4 v0, 0x1

    aget-byte v0, v15, v0

    and-int/lit8 v5, v0, 0xf

    .line 1945
    .local v5, currentSegment:I
    const-string v0, "CdmaSMSDispatcher "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sourceMin = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1946
    const-string v0, "CdmaSMSDispatcher "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sessionId = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    const-string v0, "CdmaSMSDispatcher "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "totalSegment = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1948
    const-string v0, "CdmaSMSDispatcher "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "currentSegment = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    const-string v0, "CdmaSMSDispatcher "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "tid = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTeleService()I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1952
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getBearerData()Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x3

    if-gt v4, v0, :cond_0

    const/4 v0, 0x3

    if-le v5, v0, :cond_1

    .line 1957
    :cond_0
    const-string v0, "CdmaSMSDispatcher "

    const-string/jumbo v1, "invalid LMS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1958
    const/4 v0, 0x1

    .line 1968
    :goto_0
    return v0

    .line 1960
    :cond_1
    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->checkLmsDuplicated(Lcom/android/internal/telephony/cdma/SmsMessage;Ljava/lang/String;III[B)Z

    move-result v0

    if-ne v7, v0, :cond_2

    .line 1961
    const-string v0, "CdmaSMSDispatcher "

    const-string v1, "LMS ???"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1962
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object v9, v2

    move v10, v3

    move v11, v5

    move v12, v4

    .line 1966
    invoke-virtual/range {v7 .. v12}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->deleteAllExpiredMsg(Lcom/android/internal/telephony/cdma/SmsMessage;Ljava/lang/String;III)V

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object v9, v2

    move v10, v3

    move v11, v5

    move v12, v4

    move-object v13, v6

    move-object/from16 v14, p2

    .line 1968
    invoke-virtual/range {v7 .. v14}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->checkCompleteMsg(Lcom/android/internal/telephony/cdma/SmsMessage;Ljava/lang/String;III[B[[B)I

    move-result v0

    goto :goto_0
.end method

.method protected processOperatorMessage([[BLcom/android/internal/telephony/SmsMessageBase;ZZ)I
    .locals 1
    .parameter "pdus"
    .parameter "smsb"
    .parameter "bportAddrs"
    .parameter "bConcat"

    .prologue
    .line 1484
    const/4 v0, 0x5

    .line 1485
    .local v0, result:I
    return v0
.end method

.method protected sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 8
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "destPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 635
    if-eqz p6, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p2, p1, p3, p4, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v5

    .local v5, pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 638
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;I[BLcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v6

    .line 639
    .local v6, map:Ljava/util/HashMap;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v6, p5, p6, v0}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v7

    .line 641
    .local v7, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 642
    return-void

    .line 635
    .end local v5           #pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v6           #map:Ljava/util/HashMap;
    .end local v7           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected sendEmailoverText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 5
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 738
    if-eqz p5, :cond_0

    const/4 v3, 0x1

    :goto_0
    const/4 v4, 0x0

    invoke-static {p2, p1, p3, v3, v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v1

    .line 741
    .local v1, pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v0

    .line 742
    .local v0, map:Ljava/util/HashMap;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, p4, p5, v3}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v2

    .line 744
    .local v2, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 745
    return-void

    .line 738
    .end local v0           #map:Ljava/util/HashMap;
    .end local v1           #pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v2           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected sendMultipartTextLge(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;III)V
    .locals 0
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter
    .parameter
    .parameter
    .parameter "replyAddr"
    .parameter "confirmRead"
    .parameter "replyOption"
    .parameter "protocolId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/lang/String;",
            "III)V"
        }
    .end annotation

    .prologue
    .line 710
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    return-void
.end method

.method protected sendMultipartTextMoreLge(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;III)V
    .locals 0
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter
    .parameter
    .parameter
    .parameter "replyAddr"
    .parameter "confirmRead"
    .parameter "replyOption"
    .parameter "protocolId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/lang/String;",
            "III)V"
        }
    .end annotation

    .prologue
    .line 723
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    return-void
.end method

.method protected sendNewSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    .locals 7
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "message"
    .parameter "smsHeader"
    .parameter "encoding"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "lastPart"

    .prologue
    const/4 v4, 0x1

    .line 790
    const-string v5, "CdmaSMSDispatcher"

    const-string/jumbo v6, "sendNewSubmitPdu()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 792
    .local v3, uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object p3, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 793
    iput-object p4, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 794
    if-ne p5, v4, :cond_1

    .line 795
    const/16 v5, 0x9

    iput v5, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 799
    :goto_0
    iput-boolean v4, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 802
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v6, "cdma_priority_indicator"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 803
    sget v5, Lcom/android/internal/telephony/SMSDispatcher;->mSubmitPriority:I

    invoke-static {v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->setSmsPriority(I)V

    .line 811
    :cond_0
    if-eqz p7, :cond_2

    if-eqz p8, :cond_2

    :goto_1
    invoke-static {p1, v3, v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;Z)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v1

    .line 814
    .local v1, submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v0

    .line 816
    .local v0, map:Ljava/util/HashMap;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, p6, p7, v4}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v2

    .line 818
    .local v2, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 819
    return-void

    .line 797
    .end local v0           #map:Ljava/util/HashMap;
    .end local v1           #submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v2           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_1
    const/4 v5, 0x4

    iput v5, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_0

    .line 811
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method protected sendNewSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/lang/String;)V
    .locals 11
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "message"
    .parameter "smsHeader"
    .parameter "encoding"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "lastPart"
    .parameter "cbAddress"

    .prologue
    .line 827
    new-instance v10, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v10}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 828
    .local v10, uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object p3, v10, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 829
    iput-object p4, v10, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 830
    const/4 v2, 0x1

    move/from16 v0, p5

    if-ne v0, v2, :cond_1

    .line 831
    const/16 v2, 0x9

    iput v2, v10, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 835
    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, v10, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 838
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v3, "cdma_priority_indicator"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 839
    sget v2, Lcom/android/internal/telephony/SMSDispatcher;->mSubmitPriority:I

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->setSmsPriority(I)V

    .line 847
    :cond_0
    if-eqz p7, :cond_2

    if-eqz p8, :cond_2

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p9

    invoke-static {p1, v10, v2, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;ZLjava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v6

    .local v6, submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v7, p9

    .line 850
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v8

    .line 852
    .local v8, map:Ljava/util/HashMap;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    invoke-virtual {p0, v8, v0, v1, v2}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v9

    .line 854
    .local v9, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 855
    return-void

    .line 833
    .end local v6           #submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v8           #map:Ljava/util/HashMap;
    .end local v9           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_1
    const/4 v2, 0x4

    iput v2, v10, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_0

    .line 847
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected sendNewSubmitPduforEmailoverSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    .locals 6
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "message"
    .parameter "smsHeader"
    .parameter "encoding"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "lastPart"

    .prologue
    const/4 v4, 0x1

    .line 864
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 865
    .local v3, uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object p3, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 866
    iput-object p4, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 867
    if-ne p5, v4, :cond_0

    .line 868
    const/16 v5, 0x9

    iput v5, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 872
    :goto_0
    iput-boolean v4, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 878
    if-eqz p7, :cond_1

    if-eqz p8, :cond_1

    :goto_1
    invoke-static {p1, v3, v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;Z)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v1

    .line 881
    .local v1, submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v0

    .line 883
    .local v0, map:Ljava/util/HashMap;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, p6, p7, v4}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v2

    .line 885
    .local v2, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 886
    return-void

    .line 870
    .end local v0           #map:Ljava/util/HashMap;
    .end local v1           #submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v2           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_0
    const/4 v5, 0x4

    iput v5, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_0

    .line 878
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method protected sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 1
    .parameter "tracker"

    .prologue
    .line 978
    iget-object v0, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ImsSMSDispatcher;->sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 979
    return-void
.end method

.method protected sendSCPTResult(Ljava/lang/String;[I[I)V
    .locals 6
    .parameter "destAddr"
    .parameter "categories"
    .parameter "results"

    .prologue
    const/4 v5, 0x0

    .line 755
    const-string v3, "CdmaSMSDispatcher "

    const-string v4, "[CdmaSMSDispatcher sendSCPTResult]"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    invoke-static {p1, p2, p3}, Lcom/android/internal/telephony/cdma/SmsMessage;->createSCPTResultPdu(Ljava/lang/String;[I[I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v1

    .line 759
    .local v1, pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v0

    .line 760
    .local v0, map:Ljava/util/HashMap;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v5, v5, v3}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v2

    .line 762
    .local v2, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 764
    return-void
.end method

.method protected sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 9
    .parameter "tracker"

    .prologue
    const/4 v8, 0x1

    .line 909
    iget-object v2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 912
    .local v2, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v5, "pdu"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move-object v3, v5

    check-cast v3, [B

    .line 914
    .local v3, pdu:[B
    const/4 v5, 0x2

    invoke-virtual {p0, v5, p1}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 916
    .local v4, reply:Landroid/os/Message;
    const-string v5, "CdmaSMSDispatcher "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sendSms:  isIms()="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->isIms()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mRetryCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mImsRetry="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mMessageRef="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " SS="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    invoke-direct {p0}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->isLTEOnlyMode()Z

    move-result v1

    .line 925
    .local v1, isLTEonlyMode:Z
    const-string v5, "CdmaSMSDispatcher "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sendSms()- isLTEonlyMode = ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "IMS is registered = ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->isIms()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "tracker.mRetryCount=["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "send_sms_1x_not_lte"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 927
    const-string v5, "CdmaSMSDispatcher "

    const-string/jumbo v6, "sendSms()-KEY_VZW_SMS_IMS_ONLY_LTE is Defined!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    if-ne v8, v1, :cond_1

    .line 930
    const/4 v0, 0x1

    .line 932
    .local v0, bSMSoverIPNetworksIndication:Z
    invoke-direct {p0}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->getSMSoverIPNetworksIndication()Z

    move-result v0

    .line 933
    const-string v5, "CdmaSMSDispatcher "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sendSms()- LTE only mode : smsOverIPNetworksIndication=["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    if-ne v8, v0, :cond_0

    .line 937
    const-string v5, "CdmaSMSDispatcher "

    const-string/jumbo v6, "sendSms()-smsOverIPNetworksIndication:true - send sms using SMS over IMS"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    iget v6, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    iget v7, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    invoke-interface {v5, v3, v6, v7, v4}, Lcom/android/internal/telephony/CommandsInterface;->sendImsCdmaSms([BIILandroid/os/Message;)V

    .line 943
    iget v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    .line 973
    .end local v0           #bSMSoverIPNetworksIndication:Z
    :goto_0
    return-void

    .line 946
    .restart local v0       #bSMSoverIPNetworksIndication:Z
    :cond_0
    const-string v5, "CdmaSMSDispatcher "

    const-string/jumbo v6, "sendSms()- smsOverIPNetworksIndication:false - do not send sms using SMS over IMS"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    const-string v5, "CdmaSMSDispatcher "

    const-string/jumbo v6, "sendSms()- send sms using 1x"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->sendCdmaSms([BLandroid/os/Message;)V

    .line 952
    iget v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    goto :goto_0

    .line 956
    .end local v0           #bSMSoverIPNetworksIndication:Z
    :cond_1
    const-string v5, "CdmaSMSDispatcher "

    const-string/jumbo v6, "sendSms()- Not LTE only mode - Send SMS using 1x"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->sendCdmaSms([BLandroid/os/Message;)V

    goto :goto_0

    .line 960
    :cond_2
    const-string v5, "CdmaSMSDispatcher "

    const-string/jumbo v6, "sendSms()-KEY_VZW_SMS_IMS_ONLY_LTE is NOT Defined!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    iget v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    if-nez v5, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->isIms()Z

    move-result v5

    if-nez v5, :cond_3

    .line 962
    const-string v5, "CdmaSMSDispatcher "

    const-string/jumbo v6, "sendSms()-send Cdma SMS"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->sendCdmaSms([BLandroid/os/Message;)V

    goto :goto_0

    .line 965
    :cond_3
    const-string v5, "CdmaSMSDispatcher "

    const-string/jumbo v6, "sendSms()-send IMS Cdma SMS"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    iget v6, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    iget v7, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    invoke-interface {v5, v3, v6, v7, v4}, Lcom/android/internal/telephony/CommandsInterface;->sendImsCdmaSms([BIILandroid/os/Message;)V

    .line 969
    iget v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    goto :goto_0
.end method

.method protected sendSmsMore(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 0
    .parameter "tracker"

    .prologue
    .line 716
    return-void
.end method

.method protected sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 2
    .parameter "tracker"

    .prologue
    .line 890
    const-string v0, "CdmaSMSDispatcher"

    const-string/jumbo v1, "sendSubmitPdu()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    const-string/jumbo v0, "ril.cdma.inecmmode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 892
    const-string v0, "CdmaSMSDispatcher"

    const-string/jumbo v1, "sendSubmitPdu()-PROPERTY_INECM_MODE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 895
    :try_start_0
    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 904
    :cond_0
    :goto_0
    return-void

    .line 903
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    .line 896
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 5
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 648
    const-string v3, "CdmaSMSDispatcher"

    const-string/jumbo v4, "sendText()-Native Send Single SMS"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v4, "cdma_priority_indicator"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 651
    sget v3, Lcom/android/internal/telephony/SMSDispatcher;->mSubmitPriority:I

    invoke-static {v3}, Lcom/android/internal/telephony/cdma/SmsMessage;->setSmsPriority(I)V

    .line 654
    :cond_0
    if-eqz p5, :cond_1

    const/4 v3, 0x1

    :goto_0
    const/4 v4, 0x0

    invoke-static {p2, p1, p3, v3, v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v1

    .line 657
    .local v1, pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v0

    .line 658
    .local v0, map:Ljava/util/HashMap;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, p4, p5, v3}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v2

    .line 660
    .local v2, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 661
    return-void

    .line 654
    .end local v0           #map:Ljava/util/HashMap;
    .end local v1           #pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v2           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected sendTextLge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;III)V
    .locals 10
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "replyAddr"
    .parameter "confirmRead"
    .parameter "replyOption"
    .parameter "protocolId"

    .prologue
    .line 694
    const-string v0, "LGE_MESSAGE"

    const-string v1, " CdmaSMSDispatcher > sendTextLge"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    if-eqz p5, :cond_0

    const/4 v5, 0x1

    :goto_0
    const/4 v6, 0x0

    move-object/from16 v0, p6

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    move/from16 v4, p9

    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v8

    .line 700
    .local v8, pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    if-nez v8, :cond_1

    .line 705
    :goto_1
    return-void

    .line 697
    .end local v8           #pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 701
    .restart local v8       #pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_1
    invoke-virtual {p0, p1, p2, p3, v8}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v7

    .line 702
    .local v7, map:Ljava/util/HashMap;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v7, p4, p5, v0}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v9

    .line 704
    .local v9, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_1
.end method

.method protected sendTextMoreLge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;III)V
    .locals 0
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "replyAddr"
    .parameter "confirmRead"
    .parameter "replyOption"
    .parameter "protocolId"

    .prologue
    .line 728
    return-void
.end method

.method protected updateIccAvailability()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1421
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    if-nez v1, :cond_1

    .line 1443
    :cond_0
    :goto_0
    return-void

    .line 1425
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->getUiccCardApplication()Lcom/android/internal/telephony/UiccCardApplication;

    move-result-object v0

    .line 1426
    .local v0, newUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;
    if-eqz v0, :cond_0

    .line 1428
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eq v1, v0, :cond_0

    .line 1429
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_2

    .line 1430
    const-string v1, "CdmaSMSDispatcher "

    const-string v2, "Removing stale icc objects."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 1432
    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    .line 1434
    :cond_2
    if-eqz v0, :cond_0

    .line 1435
    const-string v1, "CdmaSMSDispatcher "

    const-string v2, "New Uicc application found"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    .line 1437
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 1439
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    const/16 v2, 0xd

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/IccRecords;->registerForNewSms(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method updateMessageWaitingIndicator(I)V
    .locals 1
    .parameter "mwi"

    .prologue
    .line 1456
    if-gez p1, :cond_1

    .line 1457
    const/4 p1, -0x1

    .line 1464
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->setVoiceMessageCount(I)V

    .line 1466
    invoke-virtual {p0}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->storeVoiceMailCount()V

    .line 1467
    return-void

    .line 1458
    :cond_1
    const/16 v0, 0x63

    if-le p1, v0, :cond_0

    .line 1461
    const/16 p1, 0x63

    goto :goto_0
.end method

.method updateMessageWaitingIndicator(Z)V
    .locals 1
    .parameter "mwi"

    .prologue
    .line 1447
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->updateMessageWaitingIndicator(I)V

    .line 1448
    return-void

    .line 1447
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method updateMessageWaitingIndicatorPriority(Z)V
    .locals 5
    .parameter "urgent"

    .prologue
    .line 1471
    const-string v2, "CdmaSMSDispatcher "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateMessageWaitingIndicatorPriority : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/PhoneBase;->setVoiceMessageUrgent(Z)V

    .line 1476
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1477
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1478
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    const-string/jumbo v2, "vm_priority_key"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1479
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1480
    return-void
.end method
