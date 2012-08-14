.class final Lcom/android/internal/telephony/GsmSMSDispatcher;
.super Lcom/android/internal/telephony/SMSDispatcher;
.source "GsmSMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/GsmSMSDispatcher$SmsCbConcatInfo;
    }
.end annotation


# static fields
.field public static final ADDRESS:Ljava/lang/String; = "address"

.field public static final COUNT:Ljava/lang/String; = "count"

.field public static final DATE:Ljava/lang/String; = "date"

.field private static final EVENT_NEW_BROADCAST_SMS:I = 0x65

.field private static final EVENT_NEW_SMS_STATUS_REPORT:I = 0x64

.field private static final EVENT_WRITE_SMS_COMPLETE:I = 0x66

.field public static final LMS_MAX_COUNT:I = 0x32

.field public static final LMS_MAX_SEGMENT:I = 0x3

.field public static final LMS_URI:Landroid/net/Uri; = null

.field public static final PDU:Ljava/lang/String; = "pdu"

.field public static final REFERENCE_NUMBER:Ljava/lang/String; = "reference_number"

.field public static final SEQUENCE:Ljava/lang/String; = "sequence"

.field public static final SOURCE_MIN:Ljava/lang/String; = "source_min"

.field private static final TAG:Ljava/lang/String; = "GSM"

.field public static final TID:Ljava/lang/String; = "tid"


# instance fields
.field private final mDataDownloadHandler:Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

.field private mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

.field private final mSmsCbPageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/GsmSMSDispatcher$SmsCbConcatInfo;",
            "[[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 106
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "raw"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/GsmSMSDispatcher;->LMS_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;)V
    .locals 3
    .parameter "phone"
    .parameter "storageMonitor"
    .parameter "usageMonitor"
    .parameter "imsSMSDispatcher"

    .prologue
    const/4 v2, 0x0

    .line 121
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V

    .line 1203
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/GsmSMSDispatcher;->mSmsCbPageMap:Ljava/util/HashMap;

    .line 122
    iput-object p4, p0, Lcom/android/internal/telephony/GsmSMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    .line 123
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;-><init>(Lcom/android/internal/telephony/CommandsInterface;)V

    iput-object v0, p0, Lcom/android/internal/telephony/GsmSMSDispatcher;->mDataDownloadHandler:Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

    .line 125
    iput-object p1, p0, Lcom/android/internal/telephony/GsmSMSDispatcher;->mGsmPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 127
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewGsmSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 133
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x64

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnSmsStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 134
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x65

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewGsmBroadcastSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 135
    const-string v0, "GSM"

    const-string v1, "GsmSMSDispatcher created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return-void
.end method

.method private completeOrInsertLms(Lcom/android/internal/telephony/gsm/SmsMessage;Ljava/lang/String;III[B[[BI)I
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
    .line 1877
    add-int/lit8 v1, p8, 0x1

    if-ne v1, p5, :cond_1

    .line 1879
    add-int/lit8 v1, p4, -0x1

    aput-object p6, p7, v1

    .line 1880
    move v0, p5

    .local v0, loop:I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 1881
    const/4 v1, 0x0

    aput-object v1, p7, v0

    .line 1880
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1883
    :cond_0
    invoke-virtual/range {p0 .. p5}, Lcom/android/internal/telephony/GsmSMSDispatcher;->deleteCompleteLmsMsg(Lcom/android/internal/telephony/gsm/SmsMessage;Ljava/lang/String;III)V

    .line 1884
    const/4 v1, -0x1

    .line 1887
    .end local v0           #loop:I
    :goto_1
    return v1

    .line 1886
    :cond_1
    invoke-virtual/range {p0 .. p6}, Lcom/android/internal/telephony/GsmSMSDispatcher;->insertLmsMsg(Lcom/android/internal/telephony/gsm/SmsMessage;Ljava/lang/String;III[B)V

    .line 1887
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private handleBroadcastSms(Landroid/os/AsyncResult;)V
    .locals 17
    .parameter "ar"

    .prologue
    .line 1212
    :try_start_0
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v15, [B

    move-object v0, v15

    check-cast v0, [B

    move-object v14, v0

    .line 1228
    .local v14, receivedPdu:[B
    new-instance v6, Lcom/android/internal/telephony/gsm/SmsCbHeader;

    invoke-direct {v6, v14}, Lcom/android/internal/telephony/gsm/SmsCbHeader;-><init>([B)V

    .line 1229
    .local v6, header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    const-string/jumbo v15, "gsm.operator.numeric"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1230
    .local v13, plmn:Ljava/lang/String;
    const/4 v11, -0x1

    .line 1231
    .local v11, lac:I
    const/4 v2, -0x1

    .line 1232
    .local v2, cid:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v15}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v3

    .line 1233
    .local v3, cl:Landroid/telephony/CellLocation;
    instance-of v15, v3, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v15, :cond_0

    .line 1234
    move-object v0, v3

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    move-object v1, v0

    .line 1235
    .local v1, cellLocation:Landroid/telephony/gsm/GsmCellLocation;
    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v11

    .line 1236
    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v2

    .line 1240
    .end local v1           #cellLocation:Landroid/telephony/gsm/GsmCellLocation;
    :cond_0
    iget v15, v6, Lcom/android/internal/telephony/gsm/SmsCbHeader;->nrOfPages:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_6

    .line 1242
    new-instance v4, Lcom/android/internal/telephony/GsmSMSDispatcher$SmsCbConcatInfo;

    invoke-direct {v4, v6, v13, v11, v2}, Lcom/android/internal/telephony/GsmSMSDispatcher$SmsCbConcatInfo;-><init>(Lcom/android/internal/telephony/gsm/SmsCbHeader;Ljava/lang/String;II)V

    .line 1245
    .local v4, concatInfo:Lcom/android/internal/telephony/GsmSMSDispatcher$SmsCbConcatInfo;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/GsmSMSDispatcher;->mSmsCbPageMap:Ljava/util/HashMap;

    invoke-virtual {v15, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[B

    .line 1247
    .local v12, pdus:[[B
    if-nez v12, :cond_1

    .line 1250
    iget v15, v6, Lcom/android/internal/telephony/gsm/SmsCbHeader;->nrOfPages:I

    new-array v12, v15, [[B

    .line 1252
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/GsmSMSDispatcher;->mSmsCbPageMap:Ljava/util/HashMap;

    invoke-virtual {v15, v4, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1256
    :cond_1
    iget v15, v6, Lcom/android/internal/telephony/gsm/SmsCbHeader;->pageIndex:I

    add-int/lit8 v15, v15, -0x1

    aput-object v14, v12, v15

    .line 1258
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    array-length v15, v12

    if-ge v7, v15, :cond_4

    .line 1259
    aget-object v15, v12, v7

    if-nez v15, :cond_3

    .line 1292
    .end local v2           #cid:I
    .end local v3           #cl:Landroid/telephony/CellLocation;
    .end local v4           #concatInfo:Lcom/android/internal/telephony/GsmSMSDispatcher$SmsCbConcatInfo;
    .end local v6           #header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .end local v7           #i:I
    .end local v11           #lac:I
    .end local v12           #pdus:[[B
    .end local v13           #plmn:Ljava/lang/String;
    .end local v14           #receivedPdu:[B
    :cond_2
    :goto_1
    return-void

    .line 1258
    .restart local v2       #cid:I
    .restart local v3       #cl:Landroid/telephony/CellLocation;
    .restart local v4       #concatInfo:Lcom/android/internal/telephony/GsmSMSDispatcher$SmsCbConcatInfo;
    .restart local v6       #header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .restart local v7       #i:I
    .restart local v11       #lac:I
    .restart local v12       #pdus:[[B
    .restart local v13       #plmn:Ljava/lang/String;
    .restart local v14       #receivedPdu:[B
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1266
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/GsmSMSDispatcher;->mSmsCbPageMap:Ljava/util/HashMap;

    invoke-virtual {v15, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1273
    .end local v4           #concatInfo:Lcom/android/internal/telephony/GsmSMSDispatcher$SmsCbConcatInfo;
    .end local v7           #i:I
    :goto_2
    iget v15, v6, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageIdentifier:I

    invoke-static {v15}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEmergencyMessage(I)Z

    move-result v9

    .line 1275
    .local v9, isEmergencyMessage:Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v9}, Lcom/android/internal/telephony/GsmSMSDispatcher;->dispatchBroadcastPdus([[BZ)V

    .line 1280
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/GsmSMSDispatcher;->mSmsCbPageMap:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 1282
    .local v10, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/GsmSMSDispatcher$SmsCbConcatInfo;>;"
    :cond_5
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 1283
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/GsmSMSDispatcher$SmsCbConcatInfo;

    .line 1285
    .local v8, info:Lcom/android/internal/telephony/GsmSMSDispatcher$SmsCbConcatInfo;
    invoke-virtual {v8, v13, v11, v2}, Lcom/android/internal/telephony/GsmSMSDispatcher$SmsCbConcatInfo;->matchesLocation(Ljava/lang/String;II)Z

    move-result v15

    if-nez v15, :cond_5

    .line 1286
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1289
    .end local v2           #cid:I
    .end local v3           #cl:Landroid/telephony/CellLocation;
    .end local v6           #header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .end local v8           #info:Lcom/android/internal/telephony/GsmSMSDispatcher$SmsCbConcatInfo;
    .end local v9           #isEmergencyMessage:Z
    .end local v10           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/GsmSMSDispatcher$SmsCbConcatInfo;>;"
    .end local v11           #lac:I
    .end local v12           #pdus:[[B
    .end local v13           #plmn:Ljava/lang/String;
    .end local v14           #receivedPdu:[B
    :catch_0
    move-exception v5

    .line 1290
    .local v5, e:Ljava/lang/RuntimeException;
    const-string v15, "GSM"

    const-string v16, "Error in decoding SMS CB pdu"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1269
    .end local v5           #e:Ljava/lang/RuntimeException;
    .restart local v2       #cid:I
    .restart local v3       #cl:Landroid/telephony/CellLocation;
    .restart local v6       #header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .restart local v11       #lac:I
    .restart local v13       #plmn:Ljava/lang/String;
    .restart local v14       #receivedPdu:[B
    :cond_6
    const/4 v15, 0x1

    :try_start_1
    new-array v12, v15, [[B

    .line 1270
    .restart local v12       #pdus:[[B
    const/4 v15, 0x0

    aput-object v14, v12, v15
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private handleStatusReport(Landroid/os/AsyncResult;)V
    .locals 12
    .parameter "ar"

    .prologue
    const/4 v11, 0x1

    .line 194
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 195
    .local v5, pduString:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->newFromCDS(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v6

    .line 197
    .local v6, sms:Lcom/android/internal/telephony/gsm/SmsMessage;
    if-eqz v6, :cond_2

    .line 198
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->getStatus()I

    move-result v7

    .line 199
    .local v7, tpStatus:I
    iget v4, v6, Lcom/android/internal/telephony/SmsMessageBase;->messageRef:I

    .line 200
    .local v4, messageRef:I
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 201
    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 202
    .local v8, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget v9, v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    if-ne v9, v4, :cond_3

    .line 204
    const/16 v9, 0x40

    if-ge v7, v9, :cond_0

    const/16 v9, 0x20

    if-ge v7, v9, :cond_1

    .line 205
    :cond_0
    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 207
    :cond_1
    iget-object v3, v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .line 208
    .local v3, intent:Landroid/app/PendingIntent;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 209
    .local v1, fillIn:Landroid/content/Intent;
    const-string/jumbo v9, "pdu"

    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 210
    const-string v9, "format"

    const-string v10, "3gpp"

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v10, -0x1

    invoke-virtual {v3, v9, v10, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    .end local v0           #count:I
    .end local v1           #fillIn:Landroid/content/Intent;
    .end local v2           #i:I
    .end local v3           #intent:Landroid/app/PendingIntent;
    .end local v4           #messageRef:I
    .end local v7           #tpStatus:I
    .end local v8           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_2
    :goto_1
    const/4 v9, 0x0

    invoke-virtual {p0, v11, v11, v9}, Lcom/android/internal/telephony/GsmSMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 221
    return-void

    .line 200
    .restart local v0       #count:I
    .restart local v2       #i:I
    .restart local v4       #messageRef:I
    .restart local v7       #tpStatus:I
    .restart local v8       #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 213
    .restart local v1       #fillIn:Landroid/content/Intent;
    .restart local v3       #intent:Landroid/app/PendingIntent;
    :catch_0
    move-exception v9

    goto :goto_1
.end method

.method private replyOptionDestnationNumber(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "number"
    .parameter "replyOption"

    .prologue
    .line 1441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1442
    .local v0, replyOptionDest:Ljava/lang/StringBuilder;
    packed-switch p2, :pswitch_data_0

    .line 1455
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1456
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1444
    :pswitch_0
    const-string v1, "##4323"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1447
    :pswitch_1
    const-string v1, "##4325"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1450
    :pswitch_2
    const-string v1, "##4324"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1442
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static resultToCause(I)I
    .locals 1
    .parameter "rc"

    .prologue
    .line 1072
    packed-switch p0, :pswitch_data_0

    .line 1081
    :pswitch_0
    const/16 v0, 0xff

    :goto_0
    return v0

    .line 1076
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1078
    :pswitch_2
    const/16 v0, 0xd3

    goto :goto_0

    .line 1072
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
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
    .line 623
    if-eqz p5, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p2, p1, p3, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v4

    .local v4, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p6

    .line 626
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/GsmSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v6

    .line 627
    .local v6, map:Ljava/util/HashMap;
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v6, p4, p5, v0}, Lcom/android/internal/telephony/GsmSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v7

    .line 629
    .local v7, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/GsmSMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 630
    return-void

    .line 623
    .end local v4           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v6           #map:Ljava/util/HashMap;
    .end local v7           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 2
    .parameter "success"
    .parameter "result"
    .parameter "response"

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p2}, Lcom/android/internal/telephony/GsmSMSDispatcher;->resultToCause(I)I

    move-result v1

    invoke-interface {v0, p1, v1, p3}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    .line 1069
    return-void
.end method

.method protected calculateLGLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .locals 1
    .parameter "messageBody"
    .parameter "use7bitOnly"

    .prologue
    .line 943
    invoke-static {p1, p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLGLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method protected calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .locals 1
    .parameter "messageBody"
    .parameter "use7bitOnly"

    .prologue
    .line 934
    invoke-static {p1, p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method public checkCompleteMsg(Lcom/android/internal/telephony/gsm/SmsMessage;Ljava/lang/String;III[B[[B)I
    .locals 30
    .parameter "sms"
    .parameter "sourceMin"
    .parameter "sessionId"
    .parameter "currentSegment"
    .parameter "totalSegment"
    .parameter "pdu"
    .parameter "pdus"

    .prologue
    .line 1762
    const-string v2, "GSM"

    const-string v3, "checkCompleteMsg() "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    const/16 v19, 0x0

    .line 1765
    .local v19, cursor:Landroid/database/Cursor;
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 1766
    .local v29, whereArgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    .line 1768
    .local v28, where:Ljava/lang/StringBuilder;
    const-string/jumbo v2, "source_min = ? "

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1769
    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1773
    const-string v2, " AND reference_number = ?"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1774
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1775
    const-string v2, " AND count = ?"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1776
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1777
    const-string v2, " AND tid = ?"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1778
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v2, v2, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1781
    const-string v2, " AND address = ?"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1782
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDisplayOriginatingAddressEx()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1787
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

    .line 1805
    .local v4, projection:[Ljava/lang/String;
    :try_start_0
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 1806
    .local v25, rowIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/16 v21, 0x0

    .line 1807
    .local v21, expiredMsgCount:I
    const/4 v13, 0x0

    .line 1809
    .local v13, sameMsgCount:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/internal/telephony/GsmSMSDispatcher;->LMS_URI:Landroid/net/Uri;

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

    .line 1815
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v13

    .line 1816
    const-string v2, "GSM"

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

    .line 1817
    if-gtz v13, :cond_1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    .line 1818
    invoke-direct/range {v5 .. v13}, Lcom/android/internal/telephony/GsmSMSDispatcher;->completeOrInsertLms(Lcom/android/internal/telephony/gsm/SmsMessage;Ljava/lang/String;III[B[[BI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1868
    if-eqz v19, :cond_0

    .line 1869
    .end local v13           #sameMsgCount:I
    .end local v21           #expiredMsgCount:I
    .end local v25           #rowIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :goto_0
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 1866
    :cond_0
    return v2

    .line 1822
    .restart local v13       #sameMsgCount:I
    .restart local v21       #expiredMsgCount:I
    .restart local v25       #rowIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_1
    :try_start_1
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1823
    const-string v2, "GSM"

    const-string v3, "checkCompleteMsg(), cursor moveToFirst error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    const/4 v2, 0x1

    .line 1868
    if-eqz v19, :cond_0

    goto :goto_0

    .line 1828
    :cond_2
    const-string v2, "_id"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    .line 1829
    .local v23, rowId:J
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1830
    const-string/jumbo v2, "sequence"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 1831
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

    .line 1832
    .local v26, time:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v5, 0x3e8

    div-long v17, v2, v5

    .line 1834
    .local v17, currentTime:J
    const-string v2, "address"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1835
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

    .line 1838
    .local v15, currPdu:[B
    add-int/lit8 v2, v16, -0x1

    aput-object v15, p7, v2

    .line 1840
    const-string v2, "GSM"

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

    .line 1841
    const-string v2, "GSM"

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

    .line 1842
    const-string v2, "GSM"

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

    .line 1843
    const-string v2, "GSM"

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

    .line 1844
    const-string v2, "GSM"

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

    .line 1846
    sub-long v2, v17, v26

    const-wide/16 v5, 0x258

    cmp-long v2, v2, v5

    if-lez v2, :cond_3

    .line 1847
    add-int/lit8 v21, v21, 0x1

    .line 1848
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/internal/telephony/GsmSMSDispatcher;->LMS_URI:Landroid/net/Uri;

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1851
    :cond_3
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1853
    if-lez v21, :cond_5

    .line 1854
    const/16 v22, 0x0

    .local v22, loop:I
    :goto_1
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v22

    if-ge v0, v2, :cond_4

    .line 1855
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/internal/telephony/GsmSMSDispatcher;->LMS_URI:Landroid/net/Uri;

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

    .line 1854
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 1859
    :cond_4
    const/4 v2, 0x1

    .line 1868
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

    .line 1861
    invoke-direct/range {v5 .. v13}, Lcom/android/internal/telephony/GsmSMSDispatcher;->completeOrInsertLms(Lcom/android/internal/telephony/gsm/SmsMessage;Ljava/lang/String;III[B[[BI)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    .line 1868
    if-eqz v19, :cond_0

    goto/16 :goto_0

    .line 1864
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

    .line 1865
    .local v20, e:Landroid/database/SQLException;
    :try_start_2
    const-string v2, "GSM"

    const-string v3, "checkLmsDuplicated(), SQLException occurs"

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1866
    const/4 v2, 0x1

    .line 1868
    if-eqz v19, :cond_0

    goto/16 :goto_0

    .end local v20           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    if-eqz v19, :cond_6

    .line 1869
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 1868
    :cond_6
    throw v2
.end method

.method public checkLmsDuplicated(Lcom/android/internal/telephony/gsm/SmsMessage;Ljava/lang/String;III[B)Z
    .locals 22
    .parameter "sms"
    .parameter "sourceMin"
    .parameter "sessionId"
    .parameter "totalSegment"
    .parameter "currentSegment"
    .parameter "pdu"

    .prologue
    .line 1568
    const-string v2, "GSM"

    const-string v3, "checkLmsDuplicated()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    invoke-static/range {p6 .. p6}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v16

    .line 1570
    .local v16, pduStr:Ljava/lang/String;
    const-string v2, "GSM"

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

    .line 1571
    const/4 v11, 0x0

    .line 1572
    .local v11, cursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 1573
    .local v8, bRet:Z
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 1574
    .local v21, whereArgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 1576
    .local v20, where:Ljava/lang/StringBuilder;
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1577
    const-string/jumbo v2, "source_min = ? "

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1578
    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1582
    :goto_0
    const-string v2, " AND reference_number = ?"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1583
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1584
    const-string v2, " AND count = ?"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1585
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1586
    const-string v2, " AND sequence = ?"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1587
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1596
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDisplayOriginatingAddressEx()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1597
    const-string v2, " AND address = ?"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1598
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDisplayOriginatingAddressEx()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1602
    :goto_1
    const-string v2, " AND tid = ?"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1603
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v2, v2, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1605
    const-string v2, "GSM"

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

    .line 1608
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "pdu"

    aput-object v3, v4, v2

    .line 1613
    .local v4, projection:[Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/internal/telephony/GsmSMSDispatcher;->LMS_URI:Landroid/net/Uri;

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

    .line 1619
    if-eqz v11, :cond_2

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 1620
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1621
    const/4 v12, 0x0

    .line 1623
    .local v12, different:Z
    :cond_0
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1624
    .local v9, body:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v10

    .line 1625
    .local v10, body_cursor:[B
    invoke-static {v10}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v17

    .line 1627
    .local v17, sm:Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserData()[B

    move-result-object v18

    .line 1628
    .local v18, ud:[B
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserData()[B

    move-result-object v19

    .line 1630
    .local v19, ud_curr:[B
    move-object/from16 v0, v18

    array-length v15, v0

    .line 1631
    .local v15, len:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_2
    if-ge v14, v15, :cond_1

    .line 1632
    aget-byte v2, v19, v14

    aget-byte v3, v18, v14

    if-eq v2, v3, :cond_6

    .line 1633
    const/4 v12, 0x1

    .line 1634
    invoke-interface {v11}, Landroid/database/Cursor;->moveToLast()Z

    .line 1639
    :cond_1
    const-string v2, "GSM"

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

    .line 1640
    const-string v2, "GSM"

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

    .line 1641
    const-string v2, "GSM"

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

    .line 1642
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1644
    if-eqz v12, :cond_7

    .line 1645
    const-string v2, "GSM"

    const-string/jumbo v3, "pduStr not equals pduStr_cursor"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1646
    const/4 v8, 0x0

    .line 1656
    .end local v9           #body:Ljava/lang/String;
    .end local v10           #body_cursor:[B
    .end local v12           #different:Z
    .end local v14           #i:I
    .end local v15           #len:I
    .end local v17           #sm:Lcom/android/internal/telephony/gsm/SmsMessage;
    .end local v18           #ud:[B
    .end local v19           #ud_curr:[B
    :cond_2
    :goto_3
    if-eqz v11, :cond_3

    .line 1657
    :goto_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1660
    :cond_3
    return v8

    .line 1580
    .end local v4           #projection:[Ljava/lang/String;
    :cond_4
    const-string/jumbo v2, "source_min is null"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1600
    :cond_5
    const-string v2, " AND address is null"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1631
    .restart local v4       #projection:[Ljava/lang/String;
    .restart local v9       #body:Ljava/lang/String;
    .restart local v10       #body_cursor:[B
    .restart local v12       #different:Z
    .restart local v14       #i:I
    .restart local v15       #len:I
    .restart local v17       #sm:Lcom/android/internal/telephony/gsm/SmsMessage;
    .restart local v18       #ud:[B
    .restart local v19       #ud_curr:[B
    :cond_6
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2

    .line 1648
    :cond_7
    :try_start_1
    const-string v2, "GSM"

    const-string/jumbo v3, "pduStr equals pduStr_cursor "

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1649
    const/4 v8, 0x1

    goto :goto_3

    .line 1652
    .end local v9           #body:Ljava/lang/String;
    .end local v10           #body_cursor:[B
    .end local v12           #different:Z
    .end local v14           #i:I
    .end local v15           #len:I
    .end local v17           #sm:Lcom/android/internal/telephony/gsm/SmsMessage;
    .end local v18           #ud:[B
    .end local v19           #ud_curr:[B
    :catch_0
    move-exception v13

    .line 1653
    .local v13, e:Landroid/database/SQLException;
    :try_start_2
    const-string v2, "GSM"

    const-string v3, "checkLmsDuplicated(), SQLException occurs"

    invoke-static {v2, v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1654
    const/4 v8, 0x1

    .line 1656
    if-eqz v11, :cond_3

    goto :goto_4

    .end local v13           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    if-eqz v11, :cond_8

    .line 1657
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1656
    :cond_8
    throw v2
.end method

.method public checkValidLmsMessage(I)Z
    .locals 1
    .parameter "teleService"

    .prologue
    .line 1547
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

    .line 1554
    :cond_0
    const/4 v0, 0x1

    .line 1556
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deleteAllExpiredMsg(Lcom/android/internal/telephony/gsm/SmsMessage;Ljava/lang/String;III)V
    .locals 14
    .parameter "sms"
    .parameter "sourceMin"
    .parameter "sessionId"
    .parameter "currentSegment"
    .parameter "totalSegment"

    .prologue
    .line 1706
    const-string v0, "GSM"

    const-string v1, "deleteExpiredMsg() "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    const/4 v8, 0x0

    .line 1710
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "date"

    aput-object v1, v2, v0

    .line 1720
    .local v2, projection:[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/internal/telephony/GsmSMSDispatcher;->LMS_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "date"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1726
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1727
    const-string v0, "GSM"

    const-string v1, "deleteExpiredMsg(), cursor moveToFirst error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1749
    if-eqz v8, :cond_0

    .line 1750
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1753
    :cond_0
    return-void

    .line 1731
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v3, 0x3e8

    div-long v6, v0, v3

    .line 1734
    .local v6, currentTime:J
    :cond_2
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1735
    .local v10, rowId:J
    const-string v0, "date"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v3, 0x3e8

    div-long v12, v0, v3

    .line 1737
    .local v12, time:J
    const-string v0, "GSM"

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

    .line 1738
    const-string v0, "GSM"

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

    .line 1739
    const-string v0, "GSM"

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

    .line 1741
    sub-long v0, v6, v12

    const-wide/16 v3, 0x258

    cmp-long v0, v0, v3

    if-lez v0, :cond_3

    .line 1742
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/internal/telephony/GsmSMSDispatcher;->LMS_URI:Landroid/net/Uri;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1745
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-nez v0, :cond_2

    .line 1749
    if-eqz v8, :cond_0

    goto/16 :goto_0

    .line 1746
    .end local v6           #currentTime:J
    .end local v10           #rowId:J
    .end local v12           #time:J
    :catch_0
    move-exception v9

    .line 1747
    .local v9, e:Landroid/database/SQLException;
    :try_start_2
    const-string v0, "GSM"

    const-string v1, "deleteExpiredMsg(), SQLException occurs"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1749
    if-eqz v8, :cond_0

    goto/16 :goto_0

    .end local v9           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_4

    .line 1750
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1749
    :cond_4
    throw v0
.end method

.method public deleteCompleteLmsMsg(Lcom/android/internal/telephony/gsm/SmsMessage;Ljava/lang/String;III)V
    .locals 12
    .parameter "sms"
    .parameter "sourceMin"
    .parameter "sessionId"
    .parameter "currentSegment"
    .parameter "totalSegment"

    .prologue
    .line 1951
    const-string v0, "GSM"

    const-string v1, "deleteCompleteLmsMsg() "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1952
    const/4 v6, 0x0

    .line 1955
    .local v6, cursor:Landroid/database/Cursor;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1956
    .local v11, whereArgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1958
    .local v10, where:Ljava/lang/StringBuilder;
    const-string/jumbo v0, "source_min = ? "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1959
    invoke-virtual {v11, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1963
    const-string v0, " AND reference_number = ?"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1964
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1965
    const-string v0, " AND count = ?"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1966
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1967
    const-string v0, " AND tid = ?"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1968
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1971
    const-string v0, " AND address = ?"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1972
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDisplayOriginatingAddressEx()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1977
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 1982
    .local v2, projection:[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/internal/telephony/GsmSMSDispatcher;->LMS_URI:Landroid/net/Uri;

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

    .line 1988
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1989
    const-string v0, "GSM"

    const-string v1, "deleteCompleteLmsMsg(), cursor moveToFirst error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2003
    if-eqz v6, :cond_0

    .line 2004
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2007
    :cond_0
    return-void

    .line 1994
    :cond_1
    :try_start_1
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1995
    .local v8, rowId:J
    const-string v0, "GSM"

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

    .line 1996
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/internal/telephony/GsmSMSDispatcher;->LMS_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, v8, v9}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1998
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-nez v0, :cond_1

    .line 2003
    if-eqz v6, :cond_0

    goto :goto_0

    .line 1999
    .end local v8           #rowId:J
    :catch_0
    move-exception v7

    .line 2000
    .local v7, e:Landroid/database/SQLException;
    :try_start_2
    const-string v0, "GSM"

    const-string v1, "SQLException occurs"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2003
    if-eqz v6, :cond_0

    goto :goto_0

    .end local v7           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 2004
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2003
    :cond_2
    throw v0
.end method

.method protected dispatchBroadcastPdus([[BZ)V
    .locals 4
    .parameter "pdus"
    .parameter "isEmergencyMessage"

    .prologue
    .line 1295
    if-eqz p2, :cond_0

    .line 1296
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_EMERGENCY_CB_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1297
    .local v0, broadcastIntent:Landroid/content/Intent;
    const-string/jumbo v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1298
    const-string/jumbo v1, "subscription"

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1300
    const-string v1, "GSM"

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

    .line 1301
    const-string v1, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/GsmSMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1310
    :goto_0
    return-void

    .line 1303
    .end local v0           #broadcastIntent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_CB_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1304
    .restart local v0       #broadcastIntent:Landroid/content/Intent;
    const-string/jumbo v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1305
    const-string/jumbo v1, "subscription"

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1307
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dispatching "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " SMS CB pdus"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/GsmSMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 12
    .parameter "smsb"

    .prologue
    const/4 v8, 0x3

    const/4 v11, 0x0

    const/4 v7, 0x1

    .line 228
    if-nez p1, :cond_1

    .line 229
    const-string v7, "GSM"

    const-string v8, "dispatchMessage: message is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/4 v7, 0x2

    .line 371
    :cond_0
    :goto_0
    return v7

    :cond_1
    move-object v3, p1

    .line 233
    check-cast v3, Lcom/android/internal/telephony/gsm/SmsMessage;

    .line 236
    .local v3, sms:Lcom/android/internal/telephony/gsm/SmsMessage;
    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v10, "SKTfindFriends"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eq v9, v7, :cond_2

    .line 238
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->isTypeZero()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 241
    const-string v8, "GSM"

    const-string v9, "Received short message type 0, Don\'t display or store it. Send Ack"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 249
    :cond_2
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->isUsimDataDownload()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 250
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getUsimServiceTable()Lcom/android/internal/telephony/gsm/UsimServiceTable;

    move-result-object v6

    .line 255
    .local v6, ust:Lcom/android/internal/telephony/gsm/UsimServiceTable;
    if-eqz v6, :cond_3

    sget-object v7, Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;->DATA_DL_VIA_SMS_PP:Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 257
    const-string v7, "GSM"

    const-string v8, "Received SMS-PP data download, sending to UICC."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v7, p0, Lcom/android/internal/telephony/GsmSMSDispatcher;->mDataDownloadHandler:Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

    invoke-virtual {v7, v3}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->startDataDownload(Lcom/android/internal/telephony/gsm/SmsMessage;)I

    move-result v7

    goto :goto_0

    .line 260
    :cond_3
    const-string v7, "GSM"

    const-string v9, "DATA_DL_VIA_SMS_PP service not available, storing message to UICC."

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    .line 264
    .local v5, smsc:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getPdu()[B

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x66

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/GsmSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-interface {v7, v8, v5, v9, v10}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 267
    const/4 v7, -0x1

    goto :goto_0

    .line 271
    .end local v5           #smsc:Ljava/lang/String;
    .end local v6           #ust:Lcom/android/internal/telephony/gsm/UsimServiceTable;
    :cond_4
    iget-boolean v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsReceiveDisabled:Z

    if-eqz v9, :cond_5

    .line 273
    const-string v8, "GSM"

    const-string v9, "Received short message on device which doesn\'t support SMS service. Ignored."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 279
    :cond_5
    const/4 v0, 0x0

    .line 280
    .local v0, handled:Z
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMWISetMessage()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 281
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getNumOfVoicemails()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/GsmSMSDispatcher;->updateMessageWaitingIndicator(I)V

    .line 282
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwiDontStore()Z

    move-result v0

    .line 285
    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "mwi_only_notify"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-ne v9, v7, :cond_6

    .line 286
    if-ne v0, v7, :cond_6

    .line 288
    new-array v2, v7, [[B

    .line 289
    .local v2, pdus:[[B
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getPdu()[B

    move-result-object v9

    aput-object v9, v2, v11

    .line 291
    new-instance v1, Landroid/content/Intent;

    const-string v9, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 292
    .local v1, intent:Landroid/content/Intent;
    const-string/jumbo v9, "pdus"

    invoke-virtual {v1, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 294
    const-string v9, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    const-string v9, "encoding"

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmSMSDispatcher;->getEncoding()I

    move-result v10

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 297
    const-string/jumbo v9, "notionly"

    invoke-virtual {v1, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 298
    const-string v9, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v1, v9}, Lcom/android/internal/telephony/GsmSMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 334
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #pdus:[[B
    :cond_6
    :goto_1
    if-nez v0, :cond_0

    .line 338
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {v7}, Lcom/android/internal/telephony/SmsStorageMonitor;->isStorageAvailable()Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v7

    sget-object v9, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    if-eq v7, v9, :cond_7

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v7

    sget-object v9, Landroid/telephony/SmsMessage$MessageClass;->CLASS_2:Landroid/telephony/SmsMessage$MessageClass;

    if-eq v7, v9, :cond_7

    .line 341
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v4

    .line 342
    .local v4, smsHeader2:Lcom/android/internal/telephony/SmsHeader;
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v9, "DCM_MEMFULL_SMSPUSH"

    invoke-static {v7, v9}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    if-eqz v4, :cond_9

    iget-object v7, v4, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v7, :cond_9

    iget-object v7, v4, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v7, v7, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const/16 v9, 0xb84

    if-ne v7, v9, :cond_9

    .line 371
    .end local v4           #smsHeader2:Lcom/android/internal/telephony/SmsHeader;
    :cond_7
    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmSMSDispatcher;->dispatchNormalMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v7

    goto/16 :goto_0

    .line 306
    :cond_8
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMWIClearMessage()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 307
    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/GsmSMSDispatcher;->updateMessageWaitingIndicator(I)V

    .line 308
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwiDontStore()Z

    move-result v0

    .line 311
    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "mwi_only_notify"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-ne v9, v7, :cond_6

    .line 312
    if-ne v0, v7, :cond_6

    .line 314
    new-array v2, v7, [[B

    .line 315
    .restart local v2       #pdus:[[B
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getPdu()[B

    move-result-object v9

    aput-object v9, v2, v11

    .line 317
    new-instance v1, Landroid/content/Intent;

    const-string v9, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 318
    .restart local v1       #intent:Landroid/content/Intent;
    const-string/jumbo v9, "pdus"

    invoke-virtual {v1, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 320
    const-string v9, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    const-string v9, "encoding"

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmSMSDispatcher;->getEncoding()I

    move-result v10

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 323
    const-string/jumbo v9, "notionly"

    invoke-virtual {v1, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 324
    const-string v9, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v1, v9}, Lcom/android/internal/telephony/GsmSMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 352
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #pdus:[[B
    .restart local v4       #smsHeader2:Lcom/android/internal/telephony/SmsHeader;
    :cond_9
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "sms_full_exception_case"

    invoke-static {v7, v9}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 353
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v7

    iget-object v7, v7, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v7, v7, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-static {v7}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->isMessageProcessTid(I)Z

    move-result v7

    if-eqz v7, :cond_7

    move v7, v8

    .line 354
    goto/16 :goto_0

    .line 358
    :cond_a
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {v7}, Lcom/android/internal/telephony/SmsStorageMonitor;->isStorageAvailable()Z

    move-result v7

    if-nez v7, :cond_b

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMWISetMessage()Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v9, "dcm_voicemail_receive_memoryfull"

    invoke-static {v7, v9}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 361
    const-string v7, "GSM"

    const-string v8, "KEY_SMS_DCM_VOICEMAIL_RECEIVE_MEMORYFULL"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_b
    move v7, v8

    .line 365
    goto/16 :goto_0
.end method

.method protected dispatchOperatorMessage(Lcom/android/internal/telephony/gsm/SmsMessage;Ljava/util/ArrayList;)I
    .locals 9
    .parameter "sms"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/SmsMessage;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SmsOperatorBasicMessage;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p2, operatorMessageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/SmsOperatorBasicMessage;>;"
    const/4 v5, 0x2

    const/4 v6, 0x1

    .line 1365
    if-nez p1, :cond_0

    .line 1409
    :goto_0
    return v5

    .line 1369
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/SmsOperatorBasicMessage;

    .line 1370
    .local v2, operatorMessage:Lcom/android/internal/telephony/SmsOperatorBasicMessage;
    invoke-interface {v2}, Lcom/android/internal/telephony/SmsOperatorBasicMessage;->getInformation()Landroid/os/Bundle;

    move-result-object v4

    .line 1371
    .local v4, value:Landroid/os/Bundle;
    if-eqz v4, :cond_1

    .line 1374
    const-string/jumbo v7, "valid"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-ne v7, v6, :cond_3

    .line 1376
    invoke-interface {v2, p0}, Lcom/android/internal/telephony/SmsOperatorBasicMessage;->dispatch(Lcom/android/internal/telephony/SMSDispatcher;)I

    move-result v0

    .line 1377
    .local v0, dispatchResult:I
    if-eqz v0, :cond_1

    .line 1379
    if-ne v0, v5, :cond_2

    .line 1380
    const/4 v5, -0x1

    goto :goto_0

    :cond_2
    move v5, v6

    .line 1382
    goto :goto_0

    .end local v0           #dispatchResult:I
    :cond_3
    move v5, v6

    .line 1385
    goto :goto_0

    .line 1394
    .end local v2           #operatorMessage:Lcom/android/internal/telephony/SmsOperatorBasicMessage;
    .end local v4           #value:Landroid/os/Bundle;
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getProtocolIdentifier()I

    move-result v5

    and-int/lit16 v3, v5, 0xff

    .line 1395
    .local v3, pid_byte:I
    const/16 v5, 0x49

    if-lt v3, v5, :cond_5

    const/16 v5, 0x5d

    if-le v3, v5, :cond_8

    :cond_5
    const/16 v5, 0x60

    if-lt v3, v5, :cond_6

    const/16 v5, 0x7b

    if-le v3, v5, :cond_8

    :cond_6
    const/16 v5, 0x80

    if-lt v3, v5, :cond_7

    const/16 v5, 0xbf

    if-le v3, v5, :cond_8

    :cond_7
    const/16 v5, 0x7d

    if-ne v3, v5, :cond_9

    const-string v5, "KT"

    invoke-static {v5}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperator(Ljava/lang/String;)Z

    move-result v5

    if-ne v5, v6, :cond_9

    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v7, "KTFotaMessage"

    invoke-static {v5, v7}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eq v5, v6, :cond_9

    .line 1405
    :cond_8
    const-string v5, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "message discard : [reserved] "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 1406
    goto :goto_0

    .line 1409
    :cond_9
    const/4 v5, 0x5

    goto :goto_0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewGsmSms(Landroid/os/Handler;)V

    .line 141
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSmsOnSim(Landroid/os/Handler;)V

    .line 142
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSmsStatus(Landroid/os/Handler;)V

    .line 143
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewGsmBroadcastSms(Landroid/os/Handler;)V

    .line 144
    invoke-super {p0}, Lcom/android/internal/telephony/SMSDispatcher;->dispose()V

    .line 145
    return-void
.end method

.method protected getEncoding()I
    .locals 1

    .prologue
    .line 486
    const/4 v0, 0x1

    return v0
.end method

.method protected getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    const-string v0, "3gpp"

    return-object v0
.end method

.method protected getUiccCardApplication()Lcom/android/internal/telephony/UiccCardApplication;
    .locals 5

    .prologue
    .line 1086
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/SubscriptionManager;

    move-result-object v0

    .line 1087
    .local v0, subMgr:Lcom/android/internal/telephony/SubscriptionManager;
    if-nez v0, :cond_0

    .line 1088
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    sget-object v3, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP:Lcom/android/internal/telephony/UiccManager$AppFamily;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/UiccManager;->getUiccCardApplication(Lcom/android/internal/telephony/UiccManager$AppFamily;)Lcom/android/internal/telephony/UiccCardApplication;

    move-result-object v2

    .line 1096
    :goto_0
    return-object v2

    .line 1090
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/SubscriptionManager;->getCurrentSubscription(I)Lcom/android/internal/telephony/Subscription;

    move-result-object v1

    .line 1091
    .local v1, subscriptionData:Lcom/android/internal/telephony/Subscription;
    if-eqz v1, :cond_1

    .line 1092
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    iget v3, v1, Lcom/android/internal/telephony/Subscription;->slotId:I

    sget-object v4, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP:Lcom/android/internal/telephony/UiccManager$AppFamily;

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/UiccManager;->getUiccCardApplication(ILcom/android/internal/telephony/UiccManager$AppFamily;)Lcom/android/internal/telephony/UiccCardApplication;

    move-result-object v2

    goto :goto_0

    .line 1096
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected handleGetIccSmsDone(Landroid/os/AsyncResult;)V
    .locals 8
    .parameter "ar"

    .prologue
    const/4 v7, 0x0

    .line 1340
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_2

    .line 1341
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    .line 1342
    .local v0, ba:[B
    aget-byte v4, v0, v7

    if-eqz v4, :cond_0

    .line 1343
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "status : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-byte v6, v0, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    :cond_0
    aget-byte v4, v0, v7

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 1348
    array-length v2, v0

    .line 1352
    .local v2, n:I
    add-int/lit8 v4, v2, -0x1

    new-array v3, v4, [B

    .line 1353
    .local v3, pdu:[B
    const/4 v4, 0x1

    add-int/lit8 v5, v2, -0x1

    invoke-static {v0, v4, v3, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1354
    invoke-static {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v1

    .line 1355
    .local v1, message:Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/GsmSMSDispatcher;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    .line 1361
    .end local v0           #ba:[B
    .end local v1           #message:Lcom/android/internal/telephony/gsm/SmsMessage;
    .end local v2           #n:I
    .end local v3           #pdu:[B
    :cond_1
    :goto_0
    return-void

    .line 1358
    :cond_2
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error on GET_SMS with exp "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 160
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 182
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleMessage(Landroid/os/Message;)V

    .line 184
    :goto_0
    return-void

    .line 162
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmSMSDispatcher;->handleStatusReport(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 166
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmSMSDispatcher;->handleBroadcastSms(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 170
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 171
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 172
    const-string v1, "GSM"

    const-string v2, "Successfully wrote SMS-PP message to UICC"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x1

    invoke-interface {v1, v2, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    goto :goto_0

    .line 175
    :cond_0
    const-string v1, "GSM"

    const-string v2, "Failed to write SMS-PP message to UICC"

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xff

    invoke-interface {v1, v4, v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    goto :goto_0

    .line 160
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected handleSmsOnIcc(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "ar"

    .prologue
    const/4 v4, 0x0

    .line 1319
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 1321
    .local v0, index:[I
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 1322
    :cond_0
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Error on SMS_ON_SIM with exp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    :goto_0
    return-void

    .line 1325
    :cond_1
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "READ EF_SMS RECORD index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v1

    const/16 v2, 0x6f3c

    aget v3, v0, v4

    const/16 v4, 0xe

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/GsmSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    goto :goto_0
.end method

.method public insertLmsMsg(Lcom/android/internal/telephony/gsm/SmsMessage;Ljava/lang/String;III[B)V
    .locals 12
    .parameter "sms"
    .parameter "sourceMin"
    .parameter "sessionId"
    .parameter "currentSegment"
    .parameter "totalSegment"
    .parameter "pdu"

    .prologue
    .line 1895
    const-string v0, "GSM"

    const-string/jumbo v1, "insertLmsMsg() "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1897
    const/4 v6, 0x0

    .line 1899
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 1904
    .local v2, projection:[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/internal/telephony/GsmSMSDispatcher;->LMS_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1907
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/16 v1, 0x32

    if-lt v0, v1, :cond_6

    .line 1909
    const/4 v0, 0x1

    new-array v8, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v8, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1912
    .end local v2           #projection:[Ljava/lang/String;
    .local v8, projection:[Ljava/lang/String;
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1913
    const-string v0, "GSM"

    const-string v1, "cursor moveToLast error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1928
    if-eqz v6, :cond_0

    .line 1929
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v2, v8

    .line 1946
    .end local v8           #projection:[Ljava/lang/String;
    .restart local v2       #projection:[Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1917
    .end local v2           #projection:[Ljava/lang/String;
    .restart local v8       #projection:[Ljava/lang/String;
    :cond_2
    :try_start_2
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1918
    .local v9, rowId:J
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/internal/telephony/GsmSMSDispatcher;->LMS_URI:Landroid/net/Uri;

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

    .line 1920
    const-string v0, "GSM"

    const-string/jumbo v1, "oldest lms delete fail"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1928
    if-eqz v6, :cond_3

    .line 1929
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v2, v8

    .line 1921
    .end local v8           #projection:[Ljava/lang/String;
    .restart local v2       #projection:[Ljava/lang/String;
    goto :goto_0

    .line 1924
    .end local v9           #rowId:J
    :catch_0
    move-exception v7

    .line 1925
    .local v7, e:Landroid/database/SQLException;
    :goto_1
    :try_start_3
    const-string v0, "GSM"

    const-string v1, "SQLException occurs"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1928
    if-eqz v6, :cond_1

    .line 1929
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1928
    .end local v7           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v6, :cond_4

    .line 1929
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1928
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

    .line 1929
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1933
    :cond_7
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1934
    .local v11, value:Landroid/content/ContentValues;
    const-string/jumbo v0, "source_min"

    invoke-virtual {v11, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1935
    const-string/jumbo v0, "reference_number"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1936
    const-string v0, "count"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1937
    const-string/jumbo v0, "sequence"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1938
    const-string/jumbo v0, "pdu"

    invoke-static/range {p6 .. p6}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1939
    const-string v0, "address"

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDisplayOriginatingAddressEx()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1940
    const-string v0, "date"

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getTimestampMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1941
    const-string/jumbo v0, "tid"

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v1, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1942
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/internal/telephony/GsmSMSDispatcher;->LMS_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1943
    const-string v0, "GSM"

    const-string/jumbo v1, "lms insert fail"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1928
    .end local v2           #projection:[Ljava/lang/String;
    .end local v11           #value:Landroid/content/ContentValues;
    .restart local v8       #projection:[Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object v2, v8

    .end local v8           #projection:[Ljava/lang/String;
    .restart local v2       #projection:[Ljava/lang/String;
    goto :goto_2

    .line 1924
    .end local v2           #projection:[Ljava/lang/String;
    .restart local v8       #projection:[Ljava/lang/String;
    :catch_1
    move-exception v7

    move-object v2, v8

    .end local v8           #projection:[Ljava/lang/String;
    .restart local v2       #projection:[Ljava/lang/String;
    goto/16 :goto_1
.end method

.method public processLmsMessage(Lcom/android/internal/telephony/gsm/SmsMessage;[[B)I
    .locals 16
    .parameter "sms"
    .parameter "pdus"

    .prologue
    .line 1667
    const-string v0, "GSM"

    const-string/jumbo v1, "processLmsMessage() "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getPdu()[B

    move-result-object v6

    .line 1670
    .local v6, pdu:[B
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserData()[B

    move-result-object v15

    .line 1671
    .local v15, userData:[B
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    .line 1672
    .local v2, sourceMin:Ljava/lang/String;
    const/4 v0, 0x0

    aget-byte v3, v15, v0

    .line 1673
    .local v3, sessionId:I
    const/4 v0, 0x1

    aget-byte v0, v15, v0

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v4, v0, 0x4

    .line 1674
    .local v4, totalSegment:I
    const/4 v0, 0x1

    aget-byte v0, v15, v0

    and-int/lit8 v5, v0, 0xf

    .line 1676
    .local v5, currentSegment:I
    const-string v0, "GSM"

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

    .line 1677
    const-string v0, "GSM"

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

    .line 1678
    const-string v0, "GSM"

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

    .line 1679
    const-string v0, "GSM"

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

    .line 1680
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "tid = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v7

    iget-object v7, v7, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v7, v7, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserData()[B

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x3

    if-gt v4, v0, :cond_0

    const/4 v0, 0x3

    if-le v5, v0, :cond_1

    .line 1687
    :cond_0
    const-string v0, "GSM"

    const-string/jumbo v1, "invalid LMS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    const/4 v0, 0x1

    .line 1698
    :goto_0
    return v0

    .line 1690
    :cond_1
    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/GsmSMSDispatcher;->checkLmsDuplicated(Lcom/android/internal/telephony/gsm/SmsMessage;Ljava/lang/String;III[B)Z

    move-result v0

    if-ne v7, v0, :cond_2

    .line 1691
    const-string v0, "GSM"

    const-string v1, "LMS ???"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object v9, v2

    move v10, v3

    move v11, v5

    move v12, v4

    .line 1696
    invoke-virtual/range {v7 .. v12}, Lcom/android/internal/telephony/GsmSMSDispatcher;->deleteAllExpiredMsg(Lcom/android/internal/telephony/gsm/SmsMessage;Ljava/lang/String;III)V

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object v9, v2

    move v10, v3

    move v11, v5

    move v12, v4

    move-object v13, v6

    move-object/from16 v14, p2

    .line 1698
    invoke-virtual/range {v7 .. v14}, Lcom/android/internal/telephony/GsmSMSDispatcher;->checkCompleteMsg(Lcom/android/internal/telephony/gsm/SmsMessage;Ljava/lang/String;III[B[[B)I

    move-result v0

    goto :goto_0
.end method

.method protected processOperatorMessage([[BLcom/android/internal/telephony/SmsMessageBase;ZZ)I
    .locals 9
    .parameter "pdus"
    .parameter "smsb"
    .parameter "bportAddrs"
    .parameter "bConcat"

    .prologue
    .line 377
    const/4 v7, 0x1

    if-eq p4, v7, :cond_0

    if-nez p2, :cond_6

    .line 378
    :cond_0
    const/4 v7, 0x0

    aget-object v7, p1, v7

    invoke-static {v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v6

    .line 385
    .local v6, sms:Lcom/android/internal/telephony/gsm/SmsMessage;
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 386
    .local v3, operatorMessageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/SmsOperatorBasicMessage;>;"
    const/4 v7, 0x1

    if-ne p3, v7, :cond_d

    .line 388
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v8, "KTPortMessage"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 389
    const-string v7, "GsmSmsKTPortMessage"

    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v7, p0, v8, v6, p1}, Lcom/android/internal/telephony/SmsKrMessageManager;->getOperatorMessage(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher;Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;[[B)Lcom/android/internal/telephony/SmsOperatorBasicMessage;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    :cond_1
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v8, "SKTCommonPush"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 394
    const-string v7, "GsmSmsSKTPortMessage"

    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v7, p0, v8, v6, p1}, Lcom/android/internal/telephony/SmsKrMessageManager;->getOperatorMessage(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher;Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;[[B)Lcom/android/internal/telephony/SmsOperatorBasicMessage;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    :cond_2
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v8, "SKTUrlCallback"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    .line 399
    const-string v7, "GsmSmsSKTUrlCallback"

    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v7, p0, v8, v6, p1}, Lcom/android/internal/telephony/SmsKrMessageManager;->getOperatorMessage(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher;Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;[[B)Lcom/android/internal/telephony/SmsOperatorBasicMessage;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    :cond_3
    if-nez p4, :cond_5

    .line 405
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "specialMessage"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    .line 406
    const-string v7, "GsmSmsKRSpecialMessage"

    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v7, p0, v8, v6, p1}, Lcom/android/internal/telephony/SmsKrMessageManager;->getOperatorMessage(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher;Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;[[B)Lcom/android/internal/telephony/SmsOperatorBasicMessage;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    :cond_4
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v8, "KTFotaMessage"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    .line 411
    const-string v7, "GsmSmsKTFotaMessage"

    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v7, p0, v8, v6, p1}, Lcom/android/internal/telephony/SmsKrMessageManager;->getOperatorMessage(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher;Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;[[B)Lcom/android/internal/telephony/SmsOperatorBasicMessage;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    :cond_5
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "lgu_gsm_operator_message"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 417
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v7

    if-eqz v7, :cond_c

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v7

    iget-object v7, v7, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v7, :cond_c

    .line 420
    const/4 v7, 0x1

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v8

    iget-object v8, v8, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v8, v8, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/GsmSMSDispatcher;->checkValidLmsMessage(I)Z

    move-result v8

    if-ne v7, v8, :cond_b

    .line 421
    const/4 v7, 0x3

    new-array p1, v7, [[B

    .line 422
    const/4 v7, 0x0

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->getPdu()[B

    move-result-object v8

    aput-object v8, p1, v7

    .line 423
    invoke-virtual {p0, v6, p1}, Lcom/android/internal/telephony/GsmSMSDispatcher;->processLmsMessage(Lcom/android/internal/telephony/gsm/SmsMessage;[[B)I

    move-result v5

    .line 424
    .local v5, ret:I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_7

    .line 480
    .end local v5           #ret:I
    :goto_1
    return v5

    .end local v3           #operatorMessageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/SmsOperatorBasicMessage;>;"
    .end local v6           #sms:Lcom/android/internal/telephony/gsm/SmsMessage;
    :cond_6
    move-object v6, p2

    .line 380
    check-cast v6, Lcom/android/internal/telephony/gsm/SmsMessage;

    .restart local v6       #sms:Lcom/android/internal/telephony/gsm/SmsMessage;
    goto/16 :goto_0

    .line 429
    .restart local v3       #operatorMessageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/SmsOperatorBasicMessage;>;"
    .restart local v5       #ret:I
    :cond_7
    const/4 v0, 0x0

    .line 430
    .local v0, count:I
    const/4 v1, 0x0

    .line 431
    .local v1, loop:I
    const/4 v1, 0x0

    :goto_2
    const/4 v7, 0x3

    if-ge v1, v7, :cond_8

    .line 432
    aget-object v7, p1, v1

    if-nez v7, :cond_9

    .line 436
    :cond_8
    move v0, v1

    .line 437
    new-array v2, v0, [[B

    .line 438
    .local v2, newPuds:[[B
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_a

    .line 439
    aget-object v7, p1, v1

    aput-object v7, v2, v1

    .line 438
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 431
    .end local v2           #newPuds:[[B
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 441
    .restart local v2       #newPuds:[[B
    :cond_a
    new-array p1, v0, [[B

    .line 442
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_b

    .line 443
    aget-object v7, v2, v1

    aput-object v7, p1, v1

    .line 442
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 446
    .end local v0           #count:I
    .end local v1           #loop:I
    .end local v2           #newPuds:[[B
    .end local v5           #ret:I
    :cond_b
    const-string v7, "GsmSmsLGTPortMessage"

    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v7, p0, v8, v6, p1}, Lcom/android/internal/telephony/SmsKrMessageManager;->getOperatorMessage(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher;Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;[[B)Lcom/android/internal/telephony/SmsOperatorBasicMessage;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    const-string v7, "GsmSmsLgtMessage"

    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v7, p0, v8, v6, p1}, Lcom/android/internal/telephony/SmsKrMessageManager;->getOperatorMessage(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher;Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;[[B)Lcom/android/internal/telephony/SmsOperatorBasicMessage;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    :cond_c
    :goto_5
    const/4 v4, 0x5

    .line 479
    .local v4, result:I
    invoke-virtual {p0, v6, v3}, Lcom/android/internal/telephony/GsmSMSDispatcher;->dispatchOperatorMessage(Lcom/android/internal/telephony/gsm/SmsMessage;Ljava/util/ArrayList;)I

    move-result v4

    move v5, v4

    .line 480
    goto :goto_1

    .line 457
    .end local v4           #result:I
    :cond_d
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v8, "KTUrlCallback"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_e

    .line 458
    const-string v7, "GsmSmsKTUrlCallback"

    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v7, p0, v8, v6, p1}, Lcom/android/internal/telephony/SmsKrMessageManager;->getOperatorMessage(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher;Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;[[B)Lcom/android/internal/telephony/SmsOperatorBasicMessage;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    :cond_e
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "spam"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_f

    .line 463
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {p0, v7, v6, p1}, Lcom/android/internal/telephony/SmsKrMessageManager;->getOperatorSpamMessage(Lcom/android/internal/telephony/SMSDispatcher;Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;[[B)Lcom/android/internal/telephony/SmsOperatorBasicMessage;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    :cond_f
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v8, "LGUspam"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_10

    .line 467
    const-string v7, "GsmSmsKTSpamMessage"

    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v7, p0, v8, v6, p1}, Lcom/android/internal/telephony/SmsKrMessageManager;->getOperatorMessage(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher;Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;[[B)Lcom/android/internal/telephony/SmsOperatorBasicMessage;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    :cond_10
    if-nez p4, :cond_c

    .line 471
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "specialMessage"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_c

    .line 472
    const-string v7, "GsmSmsKRSpecialMessage"

    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v7, p0, v8, v6, p1}, Lcom/android/internal/telephony/SmsKrMessageManager;->getOperatorMessage(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher;Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;[[B)Lcom/android/internal/telephony/SmsOperatorBasicMessage;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5
.end method

.method public readSmsPrefixWzone(Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .parameter "destinationAddress"

    .prologue
    .line 1462
    const/4 v10, 0x0

    .line 1463
    .local v10, smsPreFix:Ljava/lang/String;
    const/4 v11, 0x0

    .line 1464
    .local v11, smsPreFixLine:Ljava/lang/String;
    const/4 v8, 0x0

    .line 1465
    .local v8, low_smsPreFixLine:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1466
    .local v1, bisWzone:Z
    const/4 v6, 0x0

    .line 1467
    .local v6, isWzoneLine:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1468
    .local v7, low_isWzoneLine:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1470
    .local v4, in:Ljava/io/BufferedReader;
    const-string v12, "GSM"

    const-string/jumbo v13, "readSmsPrefixWzone<<<START>>>"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "mounted"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1477
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 1481
    .local v9, mSdPath:Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/InputStreamReader;

    new-instance v13, Ljava/io/FileInputStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/sktelecom/w-zone/smsenv.env"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v12, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 1483
    .end local v4           #in:Ljava/io/BufferedReader;
    .local v5, in:Ljava/io/BufferedReader;
    if-eqz v5, :cond_1

    .line 1484
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1485
    const-string v12, " "

    const-string v13, ""

    invoke-virtual {v6, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 1486
    const-string/jumbo v12, "iswzone:true"

    invoke-virtual {v7, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_0

    .line 1487
    const/4 v1, 0x1

    .line 1488
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_6

    .line 1489
    const-string v12, " "

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 1490
    const-string/jumbo v12, "smsprefix:"

    invoke-virtual {v8, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_5

    .line 1491
    const-string/jumbo v12, "smsprefix:"

    const-string v13, ""

    invoke-virtual {v8, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 1492
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_0

    .line 1493
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_0

    .line 1494
    const-string v10, ""

    .line 1506
    :cond_0
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1515
    :cond_1
    if-eqz v5, :cond_2

    .line 1517
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_2
    :goto_1
    move-object v4, v5

    .line 1525
    .end local v5           #in:Ljava/io/BufferedReader;
    .end local v9           #mSdPath:Ljava/lang/String;
    .restart local v4       #in:Ljava/io/BufferedReader;
    :cond_3
    :goto_2
    if-nez v10, :cond_4

    .line 1526
    const-string v10, ""

    .line 1527
    :cond_4
    const-string v12, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "readSmsPrefixWzone<<<END>>>bisWzone:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " smsPreFix:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    return-object v10

    .line 1497
    .end local v4           #in:Ljava/io/BufferedReader;
    .restart local v5       #in:Ljava/io/BufferedReader;
    .restart local v9       #mSdPath:Ljava/lang/String;
    :cond_5
    const/4 v1, 0x0

    .line 1498
    :try_start_3
    const-string v12, "GSM"

    const-string/jumbo v13, "smspreFix::not contains"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 1508
    :catch_0
    move-exception v2

    move-object v4, v5

    .line 1509
    .end local v5           #in:Ljava/io/BufferedReader;
    .local v2, e:Ljava/io/FileNotFoundException;
    .restart local v4       #in:Ljava/io/BufferedReader;
    :goto_3
    const/4 v1, 0x0

    .line 1510
    :try_start_4
    const-string v12, "GSM"

    const-string/jumbo v13, "smsenv.env::not exist"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1515
    if-eqz v4, :cond_3

    .line 1517
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 1518
    :catch_1
    move-exception v3

    .line 1520
    .end local v2           #e:Ljava/io/FileNotFoundException;
    .local v3, e1:Ljava/io/IOException;
    :goto_4
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 1501
    .end local v3           #e1:Ljava/io/IOException;
    .end local v4           #in:Ljava/io/BufferedReader;
    .restart local v5       #in:Ljava/io/BufferedReader;
    :cond_6
    const/4 v1, 0x0

    .line 1502
    :try_start_6
    const-string v12, "GSM"

    const-string/jumbo v13, "smspreFix::not contains"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    .line 1511
    :catch_2
    move-exception v2

    move-object v4, v5

    .line 1512
    .end local v5           #in:Ljava/io/BufferedReader;
    .local v2, e:Ljava/lang/Exception;
    .restart local v4       #in:Ljava/io/BufferedReader;
    :goto_5
    const/4 v1, 0x0

    .line 1513
    :try_start_7
    const-string v12, "GSM"

    const-string/jumbo v13, "smsenv.env::Exception"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1515
    if-eqz v4, :cond_3

    .line 1517
    :try_start_8
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_2

    .line 1518
    :catch_3
    move-exception v3

    goto :goto_4

    .line 1515
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    :goto_6
    if-eqz v4, :cond_7

    .line 1517
    :try_start_9
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 1515
    :cond_7
    :goto_7
    throw v12

    .line 1518
    :catch_4
    move-exception v3

    .line 1520
    .restart local v3       #e1:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 1518
    .end local v3           #e1:Ljava/io/IOException;
    .end local v4           #in:Ljava/io/BufferedReader;
    .restart local v5       #in:Ljava/io/BufferedReader;
    :catch_5
    move-exception v3

    .line 1520
    .restart local v3       #e1:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1515
    .end local v3           #e1:Ljava/io/IOException;
    :catchall_1
    move-exception v12

    move-object v4, v5

    .end local v5           #in:Ljava/io/BufferedReader;
    .restart local v4       #in:Ljava/io/BufferedReader;
    goto :goto_6

    .line 1511
    :catch_6
    move-exception v2

    goto :goto_5

    .line 1508
    :catch_7
    move-exception v2

    goto :goto_3
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
    const/4 v0, 0x1

    .line 495
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v2, "SKTWzone"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 496
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmSMSDispatcher;->wZoneDestnationNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 499
    :cond_0
    if-eqz p6, :cond_1

    :goto_0
    invoke-static {p2, p1, p3, p4, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v5

    .line 501
    .local v5, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz v5, :cond_2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 502
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/GsmSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;I[BLcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v6

    .line 504
    .local v6, map:Ljava/util/HashMap;
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v6, p5, p6, v0}, Lcom/android/internal/telephony/GsmSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v7

    .line 506
    .local v7, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/GsmSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 511
    .end local v6           #map:Ljava/util/HashMap;
    .end local v7           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :goto_1
    return-void

    .line 499
    .end local v5           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 509
    .restart local v5       #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_2
    const-string v0, "GSM"

    const-string v1, "GsmSMSDispatcher.sendData(): getSubmitPdu() returned null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected sendEmailoverText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 9
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    const/4 v5, 0x0

    .line 919
    const-string v0, "GSM"

    const-string v1, "GsmSMSDispatcher : sendEmailoverText()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    if-eqz p5, :cond_0

    const/4 v3, 0x1

    :goto_0
    const/4 v4, 0x0

    move-object v0, p2

    move-object v1, p1

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduforEmailoverSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BI)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v7

    .line 923
    .local v7, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    invoke-virtual {p0, p1, p2, p3, v7}, Lcom/android/internal/telephony/GsmSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v6

    .line 924
    .local v6, map:Ljava/util/HashMap;
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v6, p4, p5, v0}, Lcom/android/internal/telephony/GsmSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v8

    .line 926
    .local v8, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/GsmSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 927
    return-void

    .end local v6           #map:Ljava/util/HashMap;
    .end local v7           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v8           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_0
    move v3, v5

    .line 920
    goto :goto_0
.end method

.method protected sendMultipartTextLge(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;III)V
    .locals 26
    .parameter "destinationAddress"
    .parameter "scAddress"
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
    .line 676
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string/jumbo v4, "miky"

    const-string v5, " sendMultipartTextLge > gsmdispatcher"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    invoke-static {}, Lcom/android/internal/telephony/GsmSMSDispatcher;->getNextConcatenatedRef()I

    move-result v4

    and-int/lit16 v0, v4, 0xff

    move/from16 v20, v0

    .line 678
    .local v20, refNumber:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 679
    .local v18, msgCount:I
    const/4 v9, 0x0

    .line 681
    .local v9, encoding:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v5, "SKTWzone"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 682
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/GsmSMSDispatcher;->wZoneDestnationNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 685
    :cond_0
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    .line 686
    const/16 v16, 0x0

    .local v16, i:I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    .line 688
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v15

    .line 691
    .local v15, details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    iget v4, v15, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-eq v9, v4, :cond_2

    if-eqz v9, :cond_1

    const/4 v4, 0x1

    if-ne v9, v4, :cond_2

    .line 694
    :cond_1
    iget v9, v15, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 686
    :cond_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 698
    .end local v15           #details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_3
    const/16 v16, 0x0

    :goto_1
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_d

    .line 699
    new-instance v12, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v12}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 700
    .local v12, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v20

    iput v0, v12, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 701
    add-int/lit8 v4, v16, 0x1

    iput v4, v12, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 702
    move/from16 v0, v18

    iput v0, v12, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 709
    const/4 v4, 0x1

    iput-boolean v4, v12, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 710
    new-instance v24, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct/range {v24 .. v24}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 711
    .local v24, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    move-object/from16 v0, v24

    iput-object v12, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 714
    if-nez v16, :cond_6

    .line 717
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "replyAddress"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 719
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 721
    invoke-static/range {p6 .. p6}, Landroid/telephony/PhoneNumberUtils;->KRsmsnetworkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v13

    .line 723
    .local v13, daBytes:[B
    new-instance v21, Lcom/android/internal/telephony/SmsHeader$ReplyAddress;

    invoke-direct/range {v21 .. v21}, Lcom/android/internal/telephony/SmsHeader$ReplyAddress;-><init>()V

    .line 725
    .local v21, replayaddress:Lcom/android/internal/telephony/SmsHeader$ReplyAddress;
    if-eqz v13, :cond_4

    .line 728
    move-object/from16 v0, v21

    iput-object v13, v0, Lcom/android/internal/telephony/SmsHeader$ReplyAddress;->replyData:[B

    .line 729
    array-length v4, v13

    add-int/lit8 v4, v4, -0x1

    mul-int/lit8 v5, v4, 0x2

    array-length v4, v13

    add-int/lit8 v4, v4, -0x1

    aget-byte v4, v13, v4

    and-int/lit16 v4, v4, 0xf0

    const/16 v6, 0xf0

    if-ne v4, v6, :cond_b

    const/4 v4, 0x1

    :goto_2
    sub-int v4, v5, v4

    move-object/from16 v0, v21

    iput v4, v0, Lcom/android/internal/telephony/SmsHeader$ReplyAddress;->addressLength:I

    .line 734
    :cond_4
    move-object/from16 v0, v21

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader;->replyAddress:Lcom/android/internal/telephony/SmsHeader$ReplyAddress;

    .line 741
    .end local v13           #daBytes:[B
    .end local v21           #replayaddress:Lcom/android/internal/telephony/SmsHeader$ReplyAddress;
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v5, "confirmRead"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    .line 742
    const/4 v4, -0x1

    move/from16 v0, p7

    if-le v0, v4, :cond_6

    .line 743
    new-instance v23, Lcom/android/internal/telephony/SmsHeader$SmsConfirmRead;

    invoke-direct/range {v23 .. v23}, Lcom/android/internal/telephony/SmsHeader$SmsConfirmRead;-><init>()V

    .line 744
    .local v23, smsConfirmRead:Lcom/android/internal/telephony/SmsHeader$SmsConfirmRead;
    const/4 v4, 0x1

    move-object/from16 v0, v23

    iput v4, v0, Lcom/android/internal/telephony/SmsHeader$SmsConfirmRead;->length:I

    .line 745
    const/4 v4, 0x1

    new-array v4, v4, [B

    move-object/from16 v0, v23

    iput-object v4, v0, Lcom/android/internal/telephony/SmsHeader$SmsConfirmRead;->confirmRead:[B

    .line 746
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/android/internal/telephony/SmsHeader$SmsConfirmRead;->confirmRead:[B

    const/4 v5, 0x0

    move/from16 v0, p7

    int-to-byte v6, v0

    aput-byte v6, v4, v5

    .line 747
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader;->smsConfirmRead:Lcom/android/internal/telephony/SmsHeader$SmsConfirmRead;

    .line 755
    .end local v23           #smsConfirmRead:Lcom/android/internal/telephony/SmsHeader$SmsConfirmRead;
    :cond_6
    const/16 v22, 0x0

    .line 756
    .local v22, sentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_7

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v16

    if-le v4, v0, :cond_7

    .line 757
    move-object/from16 v0, p4

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    .end local v22           #sentIntent:Landroid/app/PendingIntent;
    check-cast v22, Landroid/app/PendingIntent;

    .line 760
    .restart local v22       #sentIntent:Landroid/app/PendingIntent;
    :cond_7
    const/4 v14, 0x0

    .line 761
    .local v14, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_8

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v16

    if-le v4, v0, :cond_8

    .line 762
    move-object/from16 v0, p5

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v14, Landroid/app/PendingIntent;

    .line 766
    .restart local v14       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_8
    sget v4, Lcom/android/internal/telephony/GsmSMSDispatcher;->vp:I

    if-lez v4, :cond_9

    .line 767
    sget v4, Lcom/android/internal/telephony/GsmSMSDispatcher;->vp:I

    invoke-static {v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->setValidityPeriod(I)V

    .line 771
    :cond_9
    sget v4, Lcom/android/internal/telephony/SMSDispatcher;->vp:I

    if-nez v4, :cond_a

    const/4 v4, 0x0

    const-string v5, "dcm_validity_period_value"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 772
    sget v4, Lcom/android/internal/telephony/SMSDispatcher;->vp:I

    invoke-static {v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->setValidityPeriod(I)V

    .line 776
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p8

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/GsmSMSDispatcher;->replyOptionDestnationNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v14, :cond_c

    const/4 v7, 0x1

    :goto_3
    invoke-static/range {v24 .. v24}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v8

    move-object/from16 v0, v24

    iget v10, v0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    move-object/from16 v0, v24

    iget v11, v0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    move-object/from16 v4, p2

    invoke-static/range {v4 .. v11}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v19

    .line 781
    .local v19, pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/internal/telephony/GsmSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v17

    .line 782
    .local v17, map:Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/GsmSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v14, v4}, Lcom/android/internal/telephony/GsmSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v25

    .line 786
    .local v25, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 698
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .line 729
    .end local v14           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v17           #map:Ljava/util/HashMap;
    .end local v19           #pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v22           #sentIntent:Landroid/app/PendingIntent;
    .end local v25           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .restart local v13       #daBytes:[B
    .restart local v21       #replayaddress:Lcom/android/internal/telephony/SmsHeader$ReplyAddress;
    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 776
    .end local v13           #daBytes:[B
    .end local v21           #replayaddress:Lcom/android/internal/telephony/SmsHeader$ReplyAddress;
    .restart local v14       #deliveryIntent:Landroid/app/PendingIntent;
    .restart local v22       #sentIntent:Landroid/app/PendingIntent;
    :cond_c
    const/4 v7, 0x0

    goto :goto_3

    .line 789
    .end local v12           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v14           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v22           #sentIntent:Landroid/app/PendingIntent;
    .end local v24           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    :cond_d
    return-void
.end method

.method protected sendMultipartTextMoreLge(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;III)V
    .locals 23
    .parameter "destinationAddress"
    .parameter "scAddress"
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
    .line 798
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string/jumbo v3, "miky"

    const-string v4, " sendMultipartTextMoreLge > gsmdispatcher"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    invoke-static {}, Lcom/android/internal/telephony/GsmSMSDispatcher;->getNextConcatenatedRef()I

    move-result v3

    and-int/lit16 v0, v3, 0xff

    move/from16 v18, v0

    .line 800
    .local v18, refNumber:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 801
    .local v16, msgCount:I
    const/4 v8, 0x0

    .line 803
    .local v8, encoding:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v4, "SKTWzone"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 804
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/GsmSMSDispatcher;->wZoneDestnationNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 806
    :cond_0
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    .line 808
    const/4 v15, 0x0

    .local v15, i:I
    :goto_0
    move/from16 v0, v16

    if-ge v15, v0, :cond_3

    .line 810
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v14

    .line 813
    .local v14, details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    iget v3, v14, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-eq v8, v3, :cond_2

    if-eqz v8, :cond_1

    const/4 v3, 0x1

    if-ne v8, v3, :cond_2

    .line 816
    :cond_1
    iget v8, v14, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 808
    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 820
    .end local v14           #details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_3
    const/4 v15, 0x0

    :goto_1
    move/from16 v0, v16

    if-ge v15, v0, :cond_b

    .line 821
    new-instance v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v11}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 822
    .local v11, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v18

    iput v0, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 823
    add-int/lit8 v3, v15, 0x1

    iput v3, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 824
    move/from16 v0, v16

    iput v0, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 831
    const/4 v3, 0x1

    iput-boolean v3, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 832
    new-instance v22, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct/range {v22 .. v22}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 833
    .local v22, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    move-object/from16 v0, v22

    iput-object v11, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 836
    if-nez v15, :cond_6

    .line 839
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "replyAddress"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 841
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 843
    invoke-static/range {p6 .. p6}, Landroid/telephony/PhoneNumberUtils;->KRsmsnetworkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v12

    .line 845
    .local v12, daBytes:[B
    new-instance v19, Lcom/android/internal/telephony/SmsHeader$ReplyAddress;

    invoke-direct/range {v19 .. v19}, Lcom/android/internal/telephony/SmsHeader$ReplyAddress;-><init>()V

    .line 847
    .local v19, replayaddress:Lcom/android/internal/telephony/SmsHeader$ReplyAddress;
    if-eqz v12, :cond_4

    .line 850
    move-object/from16 v0, v19

    iput-object v12, v0, Lcom/android/internal/telephony/SmsHeader$ReplyAddress;->replyData:[B

    .line 851
    array-length v3, v12

    add-int/lit8 v3, v3, -0x1

    mul-int/lit8 v4, v3, 0x2

    array-length v3, v12

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, v12, v3

    and-int/lit16 v3, v3, 0xf0

    const/16 v5, 0xf0

    if-ne v3, v5, :cond_9

    const/4 v3, 0x1

    :goto_2
    sub-int v3, v4, v3

    move-object/from16 v0, v19

    iput v3, v0, Lcom/android/internal/telephony/SmsHeader$ReplyAddress;->addressLength:I

    .line 856
    :cond_4
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader;->replyAddress:Lcom/android/internal/telephony/SmsHeader$ReplyAddress;

    .line 863
    .end local v12           #daBytes:[B
    .end local v19           #replayaddress:Lcom/android/internal/telephony/SmsHeader$ReplyAddress;
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v4, "confirmRead"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 864
    const/4 v3, -0x1

    move/from16 v0, p7

    if-le v0, v3, :cond_6

    .line 865
    new-instance v21, Lcom/android/internal/telephony/SmsHeader$SmsConfirmRead;

    invoke-direct/range {v21 .. v21}, Lcom/android/internal/telephony/SmsHeader$SmsConfirmRead;-><init>()V

    .line 866
    .local v21, smsConfirmRead:Lcom/android/internal/telephony/SmsHeader$SmsConfirmRead;
    const/4 v3, 0x1

    move-object/from16 v0, v21

    iput v3, v0, Lcom/android/internal/telephony/SmsHeader$SmsConfirmRead;->length:I

    .line 867
    const/4 v3, 0x1

    new-array v3, v3, [B

    move-object/from16 v0, v21

    iput-object v3, v0, Lcom/android/internal/telephony/SmsHeader$SmsConfirmRead;->confirmRead:[B

    .line 868
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/telephony/SmsHeader$SmsConfirmRead;->confirmRead:[B

    const/4 v4, 0x0

    move/from16 v0, p7

    int-to-byte v5, v0

    aput-byte v5, v3, v4

    .line 869
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader;->smsConfirmRead:Lcom/android/internal/telephony/SmsHeader$SmsConfirmRead;

    .line 875
    .end local v21           #smsConfirmRead:Lcom/android/internal/telephony/SmsHeader$SmsConfirmRead;
    :cond_6
    const/16 v20, 0x0

    .line 876
    .local v20, sentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_7

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v15, :cond_7

    .line 877
    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    .end local v20           #sentIntent:Landroid/app/PendingIntent;
    check-cast v20, Landroid/app/PendingIntent;

    .line 880
    .restart local v20       #sentIntent:Landroid/app/PendingIntent;
    :cond_7
    const/4 v13, 0x0

    .line 881
    .local v13, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_8

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v15, :cond_8

    .line 882
    move-object/from16 v0, p5

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v13, Landroid/app/PendingIntent;

    .line 885
    .restart local v13       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p8

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/GsmSMSDispatcher;->replyOptionDestnationNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v13, :cond_a

    const/4 v6, 0x1

    :goto_3
    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v7

    move-object/from16 v0, v22

    iget v9, v0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    move-object/from16 v0, v22

    iget v10, v0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    move-object/from16 v3, p2

    invoke-static/range {v3 .. v10}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v17

    .line 889
    .local v17, pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v3, v4, v1, v13}, Lcom/android/internal/telephony/GsmSMSDispatcher;->sendRawPduMore([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 820
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    .line 851
    .end local v13           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v17           #pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v20           #sentIntent:Landroid/app/PendingIntent;
    .restart local v12       #daBytes:[B
    .restart local v19       #replayaddress:Lcom/android/internal/telephony/SmsHeader$ReplyAddress;
    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 885
    .end local v12           #daBytes:[B
    .end local v19           #replayaddress:Lcom/android/internal/telephony/SmsHeader$ReplyAddress;
    .restart local v13       #deliveryIntent:Landroid/app/PendingIntent;
    .restart local v20       #sentIntent:Landroid/app/PendingIntent;
    :cond_a
    const/4 v6, 0x0

    goto :goto_3

    .line 891
    .end local v11           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v13           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v20           #sentIntent:Landroid/app/PendingIntent;
    .end local v22           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    :cond_b
    return-void
.end method

.method protected sendNewSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    .locals 13
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "message"
    .parameter "smsHeader"
    .parameter "encoding"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "lastPart"

    .prologue
    .line 953
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v3, "SKTWzone"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 954
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmSMSDispatcher;->wZoneDestnationNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 957
    :cond_0
    if-eqz p7, :cond_1

    const/4 v5, 0x1

    :goto_0
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v6

    move-object/from16 v0, p4

    iget v8, v0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    move-object/from16 v0, p4

    iget v9, v0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    move-object v2, p2

    move-object v3, p1

    move-object/from16 v4, p3

    move/from16 v7, p5

    invoke-static/range {v2 .. v9}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v11

    .line 960
    .local v11, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz v11, :cond_2

    .line 961
    move-object/from16 v0, p3

    invoke-virtual {p0, p1, p2, v0, v11}, Lcom/android/internal/telephony/GsmSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v10

    .line 963
    .local v10, map:Ljava/util/HashMap;
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    invoke-virtual {p0, v10, v0, v1, v2}, Lcom/android/internal/telephony/GsmSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v12

    .line 965
    .local v12, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/GsmSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 970
    .end local v10           #map:Ljava/util/HashMap;
    .end local v12           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :goto_1
    return-void

    .line 957
    .end local v11           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 968
    .restart local v11       #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_2
    const-string v2, "GSM"

    const-string v3, "GsmSMSDispatcher.sendNewSubmitPdu(): getSubmitPdu() returned null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected sendNewSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/lang/String;)V
    .locals 12
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
    .line 978
    if-eqz p7, :cond_0

    const/4 v5, 0x1

    :goto_0
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v6

    move-object/from16 v0, p4

    iget v8, v0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    move-object/from16 v0, p4

    iget v9, v0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move/from16 v7, p5

    invoke-static/range {v2 .. v9}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v6

    .local v6, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v7, p9

    .line 982
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/GsmSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v10

    .line 984
    .local v10, map:Ljava/util/HashMap;
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    invoke-virtual {p0, v10, v0, v1, v2}, Lcom/android/internal/telephony/GsmSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v11

    .line 986
    .local v11, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/GsmSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 987
    return-void

    .line 978
    .end local v6           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v10           #map:Ljava/util/HashMap;
    .end local v11           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method protected sendNewSubmitPduforEmailoverSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    .locals 11
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "message"
    .parameter "smsHeader"
    .parameter "encoding"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "lastPart"

    .prologue
    .line 996
    if-eqz p7, :cond_0

    const/4 v5, 0x1

    :goto_0
    invoke-static {p4}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v6

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move/from16 v7, p5

    invoke-static/range {v2 .. v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduforEmailoverSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BI)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v9

    .line 1000
    .local v9, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    invoke-virtual {p0, p1, p2, p3, v9}, Lcom/android/internal/telephony/GsmSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v8

    .line 1002
    .local v8, map:Ljava/util/HashMap;
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    invoke-virtual {p0, v8, v0, v1, v2}, Lcom/android/internal/telephony/GsmSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v10

    .line 1004
    .local v10, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/GsmSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 1005
    return-void

    .line 996
    .end local v8           #map:Ljava/util/HashMap;
    .end local v9           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v10           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method protected sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 1
    .parameter "tracker"

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/android/internal/telephony/GsmSMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ImsSMSDispatcher;->sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 1042
    return-void
.end method

.method protected sendSCPTResult(Ljava/lang/String;[I[I)V
    .locals 2
    .parameter "destAddr"
    .parameter "categories"
    .parameter "results"

    .prologue
    .line 1062
    const-string v0, "GSM"

    const-string/jumbo v1, "sendSCPTResult, not implemented for GSM!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    return-void
.end method

.method protected sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 9
    .parameter "tracker"

    .prologue
    .line 1011
    iget-object v6, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 1013
    .local v6, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v0, "smsc"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    move-object v8, v0

    check-cast v8, [B

    .line 1014
    .local v8, smsc:[B
    const-string/jumbo v0, "pdu"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    move-object v7, v0

    check-cast v7, [B

    .line 1016
    .local v7, pdu:[B
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/GsmSMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 1018
    .local v5, reply:Landroid/os/Message;
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendSms:  isIms()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/telephony/GsmSMSDispatcher;->isIms()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mRetryCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mImsRetry="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mMessageRef="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " SS="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    iget v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/GsmSMSDispatcher;->isIms()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1026
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v8}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1036
    :goto_0
    return-void

    .line 1029
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v8}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    iget v3, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    iget v4, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->sendImsGsmSms(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Message;)V

    .line 1034
    iget v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    goto :goto_0
.end method

.method protected sendSmsMore(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 7
    .parameter "tracker"

    .prologue
    .line 1047
    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 1049
    .local v0, map:Ljava/util/HashMap;
    const-string/jumbo v4, "smsc"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    move-object v3, v4

    check-cast v3, [B

    .line 1050
    .local v3, smsc:[B
    const-string/jumbo v4, "pdu"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    move-object v1, v4

    check-cast v1, [B

    .line 1052
    .local v1, pdu:[B
    const-string v4, "GSM"

    const-string/jumbo v5, "sendSmsMore"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    const/4 v4, 0x2

    invoke-virtual {p0, v4, p1}, Lcom/android/internal/telephony/GsmSMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1054
    .local v2, reply:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6, v2}, Lcom/android/internal/telephony/CommandsInterface;->sendSmsMore(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1056
    return-void
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 22
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 518
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v6, "SKTWzone"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 519
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/GsmSMSDispatcher;->wZoneDestnationNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 524
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "replyAddress"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 525
    if-eqz p5, :cond_1

    const/4 v8, 0x1

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/GsmSMSDispatcher;->getLine1Number()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    const/4 v9, 0x0

    :goto_1
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    invoke-static/range {v5 .. v11}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v19

    .line 534
    .local v19, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/GsmSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v18

    .line 535
    .local v18, map:Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/GsmSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/android/internal/telephony/GsmSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v21

    .line 540
    .local v21, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 614
    .end local v18           #map:Ljava/util/HashMap;
    .end local v21           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :goto_2
    return-void

    .line 525
    .end local v19           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    :cond_2
    const/4 v5, -0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/GsmSMSDispatcher;->getLine1Number()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->makeSmsHeader(ILjava/lang/String;)[B

    move-result-object v9

    goto :goto_1

    .line 547
    :cond_3
    const/16 v16, 0x0

    .line 548
    .local v16, hasTurkishSplChar:I
    const/16 v17, 0x0

    .line 549
    .local v17, isConvertToGsmAlphabet:Z
    const/4 v10, 0x0

    .line 550
    .local v10, encoding:I
    const-string/jumbo v5, "persist.radio.sms.forcegsm7"

    const-string v6, "1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 551
    .local v15, encodingType:Ljava/lang/String;
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_b

    .line 552
    const/16 v17, 0x1

    .line 556
    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "turkishEncoding"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 557
    const/16 v16, 0x1

    .line 560
    :cond_4
    new-instance v14, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    invoke-direct {v14}, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;-><init>()V

    .line 561
    .local v14, encodingForParts:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLGLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v13

    .line 562
    .local v13, details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    iget v5, v13, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-eq v10, v5, :cond_6

    if-eqz v10, :cond_5

    const/4 v5, 0x1

    if-ne v10, v5, :cond_6

    .line 565
    :cond_5
    iget v10, v13, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 567
    :cond_6
    const/4 v5, 0x1

    move/from16 v0, v16

    if-ne v0, v5, :cond_7

    .line 568
    move-object v14, v13

    .line 571
    :cond_7
    new-instance v20, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct/range {v20 .. v20}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 572
    .local v20, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    const/4 v5, 0x1

    if-ne v10, v5, :cond_8

    .line 573
    const/4 v5, 0x1

    move/from16 v0, v16

    if-ne v0, v5, :cond_8

    .line 574
    iget v5, v14, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    move-object/from16 v0, v20

    iput v5, v0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 575
    iget v5, v14, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    move-object/from16 v0, v20

    iput v5, v0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 576
    const-string v5, "RIL_GsmSMSDispather"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "smsHeader.languageTable="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v20

    iget v7, v0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " smsHeader.languageShiftTable="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v20

    iget v7, v0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :cond_8
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[sendText] vp = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/internal/telephony/SMSDispatcher;->vp:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    sget v5, Lcom/android/internal/telephony/SMSDispatcher;->vp:I

    if-lez v5, :cond_9

    .line 584
    sget v5, Lcom/android/internal/telephony/SMSDispatcher;->vp:I

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->setValidityPeriod(I)V

    .line 587
    :cond_9
    sget v5, Lcom/android/internal/telephony/SMSDispatcher;->vp:I

    if-nez v5, :cond_a

    const/4 v5, 0x0

    const-string v6, "dcm_validity_period_value"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 588
    sget v5, Lcom/android/internal/telephony/SMSDispatcher;->vp:I

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->setValidityPeriod(I)V

    .line 592
    :cond_a
    new-instance v19, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 593
    .restart local v19       #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    const/4 v5, 0x1

    move/from16 v0, v16

    if-ne v0, v5, :cond_d

    .line 594
    if-eqz p5, :cond_c

    const/4 v8, 0x1

    :goto_4
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v9

    move-object/from16 v0, v20

    iget v11, v0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    move-object/from16 v0, v20

    iget v12, v0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    invoke-static/range {v5 .. v12}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v19

    .line 604
    :goto_5
    if-eqz v19, :cond_f

    .line 605
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/GsmSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v18

    .line 607
    .restart local v18       #map:Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/GsmSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/android/internal/telephony/GsmSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v21

    .line 609
    .restart local v21       #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto/16 :goto_2

    .line 554
    .end local v13           #details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .end local v14           #encodingForParts:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .end local v18           #map:Ljava/util/HashMap;
    .end local v19           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v20           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    .end local v21           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_b
    const/16 v17, 0x0

    goto/16 :goto_3

    .line 594
    .restart local v13       #details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .restart local v14       #encodingForParts:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .restart local v19       #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .restart local v20       #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    :cond_c
    const/4 v8, 0x0

    goto :goto_4

    .line 599
    :cond_d
    if-eqz p5, :cond_e

    const/4 v5, 0x1

    :goto_6
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2, v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v19

    goto :goto_5

    :cond_e
    const/4 v5, 0x0

    goto :goto_6

    .line 612
    :cond_f
    const-string v5, "GSM"

    const-string v6, "GsmSMSDispatcher.sendText(): getSubmitPdu() returned null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method protected sendTextLge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;III)V
    .locals 12
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
    .line 636
    const-string v2, "LGE_MESSAGE"

    const-string v3, " GsmSMSDispatcher > sendTextLge"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v3, "SKTWzone"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 639
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmSMSDispatcher;->wZoneDestnationNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 643
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "replyAddress"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 644
    const-string v2, "LGE_MESSAGE"

    const-string v3, " GsmSMSDispatcher > sendTextLge > ModelConfig.COUNTRY_KR"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    move/from16 v0, p8

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/GsmSMSDispatcher;->replyOptionDestnationNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    if-eqz p5, :cond_1

    const/4 v5, 0x1

    :goto_0
    move/from16 v0, p7

    move-object/from16 v1, p6

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->makeSmsHeader(ILjava/lang/String;)[B

    move-result-object v6

    const/16 v2, 0x4f

    move/from16 v0, p9

    if-ne v0, v2, :cond_2

    const/4 v7, 0x2

    :goto_1
    move-object v2, p2

    move-object v4, p3

    move/from16 v8, p9

    invoke-static/range {v2 .. v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v10

    .line 650
    .local v10, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    invoke-virtual {p0, p1, p2, p3, v10}, Lcom/android/internal/telephony/GsmSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v9

    .line 651
    .local v9, map:Ljava/util/HashMap;
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-virtual {p0, v9, v0, v1, v2}, Lcom/android/internal/telephony/GsmSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v11

    .line 656
    .local v11, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/GsmSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 670
    :goto_2
    return-void

    .line 645
    .end local v9           #map:Ljava/util/HashMap;
    .end local v10           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v11           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 660
    :cond_3
    if-eqz p5, :cond_4

    const/4 v2, 0x1

    :goto_3
    invoke-static {p2, p1, p3, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v10

    .line 663
    .restart local v10       #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    invoke-virtual {p0, p1, p2, p3, v10}, Lcom/android/internal/telephony/GsmSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v9

    .line 664
    .restart local v9       #map:Ljava/util/HashMap;
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-virtual {p0, v9, v0, v1, v2}, Lcom/android/internal/telephony/GsmSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v11

    .line 668
    .restart local v11       #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/GsmSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_2

    .line 660
    .end local v9           #map:Ljava/util/HashMap;
    .end local v10           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v11           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_4
    const/4 v2, 0x0

    goto :goto_3
.end method

.method protected sendTextMoreLge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;III)V
    .locals 9
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
    .line 895
    const-string/jumbo v1, "miky"

    const-string v2, " sendTextMoreLge > gsmdispatcher"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v2, "SKTWzone"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 898
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmSMSDispatcher;->wZoneDestnationNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 901
    :cond_0
    move/from16 v0, p8

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/GsmSMSDispatcher;->replyOptionDestnationNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-eqz p5, :cond_1

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmSMSDispatcher;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    const/4 v5, 0x0

    :goto_1
    const/16 v1, 0x4f

    move/from16 v0, p9

    if-ne v0, v1, :cond_3

    const/4 v6, 0x2

    :goto_2
    move-object v1, p2

    move-object v3, p3

    move/from16 v7, p9

    invoke-static/range {v1 .. v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v8

    .line 908
    .local v8, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    iget-object v1, v8, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    iget-object v2, v8, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    invoke-virtual {p0, v1, v2, p4, p5}, Lcom/android/internal/telephony/GsmSMSDispatcher;->sendRawPduMore([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 910
    return-void

    .line 901
    .end local v8           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    move/from16 v0, p7

    invoke-static {v0, p6}, Lcom/android/internal/telephony/gsm/SmsMessage;->makeSmsHeader(ILjava/lang/String;)[B

    move-result-object v5

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    goto :goto_2
.end method

.method protected updateIccAvailability()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1100
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    if-nez v1, :cond_1

    .line 1124
    :cond_0
    :goto_0
    return-void

    .line 1104
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmSMSDispatcher;->getUiccCardApplication()Lcom/android/internal/telephony/UiccCardApplication;

    move-result-object v0

    .line 1105
    .local v0, newUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;
    if-eqz v0, :cond_0

    .line 1109
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eq v1, v0, :cond_0

    .line 1110
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_2

    .line 1111
    const-string v1, "GSM"

    const-string v2, "Removing stale icc objects."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 1113
    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    .line 1115
    :cond_2
    if-eqz v0, :cond_0

    .line 1116
    const-string v1, "GSM"

    const-string v2, "New Uicc application found"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    .line 1118
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 1120
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    const/16 v2, 0xd

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/IccRecords;->registerForNewSms(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method updateMessageWaitingIndicator(I)V
    .locals 4
    .parameter "mwi"

    .prologue
    const/4 v3, 0x1

    .line 1415
    const/4 v1, 0x0

    const-string v2, "KRVMSType"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v3, :cond_0

    .line 1438
    :goto_0
    return-void

    .line 1422
    :cond_0
    if-gez p1, :cond_2

    .line 1423
    const/4 p1, -0x1

    .line 1430
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/PhoneBase;->setVoiceMessageCount(I)V

    .line 1432
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v1, :cond_3

    .line 1433
    const/16 v1, 0x14

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/GsmSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1434
    .local v0, onComplete:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v1, v3, p1, v0}, Lcom/android/internal/telephony/IccRecords;->setVoiceMessageWaiting(IILandroid/os/Message;)V

    goto :goto_0

    .line 1424
    .end local v0           #onComplete:Landroid/os/Message;
    :cond_2
    const/16 v1, 0xff

    if-le p1, v1, :cond_1

    .line 1427
    const/16 p1, 0xff

    goto :goto_1

    .line 1436
    :cond_3
    const-string v1, "GSM"

    const-string v2, "SIM Records not found, MWI not updated"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public wZoneDestnationNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "number"

    .prologue
    .line 1532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1533
    .local v0, wZoneDest:Ljava/lang/StringBuilder;
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/GsmSMSDispatcher;->readSmsPrefixWzone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1534
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1535
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
