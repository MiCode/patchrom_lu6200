.class public Lcom/android/internal/telephony/WapPushOverSms;
.super Ljava/lang/Object;
.source "WapPushOverSms.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "WAP PUSH"


# instance fields
.field private final BIND_RETRY_INTERVAL:I

.field private final WAKE_LOCK_TIMEOUT:I

.field private final mContext:Landroid/content/Context;

.field private mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

.field private mWapConn:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

.field private pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SMSDispatcher;)V
    .locals 2
    .parameter "phone"
    .parameter "smsDispatcher"

    .prologue
    .line 127
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->WAKE_LOCK_TIMEOUT:I

    .line 58
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->BIND_RETRY_INTERVAL:I

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapConn:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    .line 128
    iput-object p2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 129
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    .line 130
    new-instance v0, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;-><init>(Lcom/android/internal/telephony/WapPushOverSms;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapConn:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    .line 131
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapConn:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;->bindWapPushManager()V

    .line 132
    return-void
.end method


# virtual methods
.method public dispatchWapPdu([B)I
    .locals 1
    .parameter "pdu"

    .prologue
    const/4 v0, 0x0

    .line 355
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([BLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public dispatchWapPdu([BLjava/lang/String;Ljava/lang/String;)I
    .locals 36
    .parameter "pdu"
    .parameter "serviceCenter"
    .parameter "originating"

    .prologue
    .line 146
    const/16 v27, 0x0

    .line 150
    .local v27, thisIsSpam:Z
    const/4 v13, 0x0

    .line 151
    .local v13, index:I
    add-int/lit8 v14, v13, 0x1

    .end local v13           #index:I
    .local v14, index:I
    aget-byte v32, p1, v13

    move/from16 v0, v32

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    .line 152
    .local v28, transactionId:I
    add-int/lit8 v13, v14, 0x1

    .end local v14           #index:I
    .restart local v13       #index:I
    aget-byte v32, p1, v14

    move/from16 v0, v32

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    .line 153
    .local v21, pduType:I
    const/4 v11, 0x0

    .line 155
    .local v11, headerLength:I
    const/16 v32, 0x6

    move/from16 v0, v21

    move/from16 v1, v32

    if-eq v0, v1, :cond_0

    const/16 v32, 0x7

    move/from16 v0, v21

    move/from16 v1, v32

    if-eq v0, v1, :cond_0

    .line 158
    const/16 v32, 0x1

    .line 350
    :goto_0
    return v32

    .line 161
    :cond_0
    new-instance v32, Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v32

    if-nez v32, :cond_1

    .line 171
    const/16 v32, 0x2

    goto :goto_0

    .line 173
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v32

    move-wide/from16 v0, v32

    long-to-int v11, v0

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v32

    add-int/lit8 v13, v32, 0x2

    .line 176
    move v12, v13

    .line 190
    .local v12, headerStartIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v32

    if-nez v32, :cond_2

    .line 192
    const/16 v32, 0x2

    goto :goto_0

    .line 195
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v18

    .line 196
    .local v18, mimeType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v4

    .line 197
    .local v4, binaryContentType:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v32

    add-int v13, v13, v32

    .line 199
    new-array v10, v11, [B

    .line 200
    .local v10, header:[B
    const/16 v32, 0x0

    array-length v0, v10

    move/from16 v33, v0

    move-object/from16 v0, p1

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-static {v0, v12, v10, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 204
    if-eqz v18, :cond_6

    const-string v32, "application/vnd.wap.coc"

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_6

    .line 205
    move-object/from16 v17, p1

    .line 218
    .local v17, intentData:[B
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v32, v0

    add-int v33, v13, v11

    add-int/lit8 v33, v33, -0x1

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v0, v13, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->seekXWapApplicationId(II)Z

    move-result v32

    if-eqz v32, :cond_d

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v32

    move-wide/from16 v0, v32

    long-to-int v13, v0

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeXWapApplicationId(I)Z

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v29

    .line 222
    .local v29, wapAppId:Ljava/lang/String;
    if-nez v29, :cond_3

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v32

    move-wide/from16 v0, v32

    long-to-int v0, v0

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    .line 226
    :cond_3
    if-nez v18, :cond_7

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    .line 231
    .local v6, contentType:Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    const-string v33, "KRWapPushWithSpam"

    invoke-static/range {v32 .. v33}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_4

    .line 232
    add-int v7, v12, v11

    .line 235
    .local v7, dataIndex:I
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v32, v0

    sub-int v32, v32, v7

    move/from16 v0, v32

    new-array v0, v0, [B

    move-object/from16 v25, v0

    .line 236
    .local v25, spamcheckdata:[B
    const/16 v32, 0x0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v33, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-static {v0, v7, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 237
    new-instance v20, Lcom/google/android/mms/pdu/PduParser;

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/PduParser;-><init>([B)V

    .line 239
    .local v20, parser:Lcom/google/android/mms/pdu/PduParser;
    if-eqz v20, :cond_4

    .line 240
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v30

    .line 241
    .local v30, wapPdu:Lcom/google/android/mms/pdu/GenericPdu;
    if-eqz v30, :cond_4

    .line 242
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v32

    const/16 v33, 0x82

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_4

    move-object/from16 v19, v30

    .line 243
    check-cast v19, Lcom/google/android/mms/pdu/NotificationInd;

    .line 245
    .local v19, nInd:Lcom/google/android/mms/pdu/NotificationInd;
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/mms/pdu/NotificationInd;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v9

    .line 246
    .local v9, encodedSubject:Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/mms/pdu/NotificationInd;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v8

    .line 248
    .local v8, encodedFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v34, v0

    if-nez v9, :cond_8

    const/16 v32, 0x0

    move-object/from16 v33, v32

    :goto_3
    if-nez v8, :cond_9

    const/16 v32, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    move-object/from16 v2, v32

    move-object/from16 v3, v35

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/SmsKrMessageManager;->getOperatorSpamMessage(Lcom/android/internal/telephony/SMSDispatcher;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/android/internal/telephony/SmsOperatorBasicMessage;

    move-result-object v26

    .line 255
    .local v26, spamrMessage:Lcom/android/internal/telephony/SmsOperatorBasicMessage;
    invoke-interface/range {v26 .. v26}, Lcom/android/internal/telephony/SmsOperatorBasicMessage;->getInformation()Landroid/os/Bundle;

    move-result-object v15

    .line 256
    .local v15, info:Landroid/os/Bundle;
    if-eqz v15, :cond_4

    .line 257
    const-string/jumbo v32, "spam_result"

    const/16 v33, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v15, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v27

    .line 266
    .end local v7           #dataIndex:I
    .end local v8           #encodedFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v9           #encodedSubject:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v15           #info:Landroid/os/Bundle;
    .end local v19           #nInd:Lcom/google/android/mms/pdu/NotificationInd;
    .end local v20           #parser:Lcom/google/android/mms/pdu/PduParser;
    .end local v25           #spamcheckdata:[B
    .end local v26           #spamrMessage:Lcom/android/internal/telephony/SmsOperatorBasicMessage;
    .end local v30           #wapPdu:Lcom/google/android/mms/pdu/GenericPdu;
    :cond_4
    const/16 v24, 0x1

    .line 267
    .local v24, processFurther:Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mWapConn:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;->getWapPushManager()Lcom/android/internal/telephony/IWapPushManager;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v31

    .line 269
    .local v31, wapPushMan:Lcom/android/internal/telephony/IWapPushManager;
    if-nez v31, :cond_a

    .line 289
    :cond_5
    :goto_5
    if-nez v24, :cond_b

    .line 290
    const/16 v32, 0x1

    goto/16 :goto_0

    .line 207
    .end local v6           #contentType:Ljava/lang/String;
    .end local v17           #intentData:[B
    .end local v24           #processFurther:Z
    .end local v29           #wapAppId:Ljava/lang/String;
    .end local v31           #wapPushMan:Lcom/android/internal/telephony/IWapPushManager;
    :cond_6
    add-int v7, v12, v11

    .line 208
    .restart local v7       #dataIndex:I
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v32, v0

    sub-int v32, v32, v7

    move/from16 v0, v32

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 209
    .restart local v17       #intentData:[B
    const/16 v32, 0x0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v33, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-static {v0, v7, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_1

    .end local v7           #dataIndex:I
    .restart local v29       #wapAppId:Ljava/lang/String;
    :cond_7
    move-object/from16 v6, v18

    .line 226
    goto/16 :goto_2

    .line 248
    .restart local v6       #contentType:Ljava/lang/String;
    .restart local v7       #dataIndex:I
    .restart local v8       #encodedFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v9       #encodedSubject:Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v19       #nInd:Lcom/google/android/mms/pdu/NotificationInd;
    .restart local v20       #parser:Lcom/google/android/mms/pdu/PduParser;
    .restart local v25       #spamcheckdata:[B
    .restart local v30       #wapPdu:Lcom/google/android/mms/pdu/GenericPdu;
    :cond_8
    invoke-virtual {v9}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v33, v32

    goto :goto_3

    :cond_9
    invoke-virtual {v8}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v32

    goto :goto_4

    .line 272
    .end local v7           #dataIndex:I
    .end local v8           #encodedFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v9           #encodedSubject:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v19           #nInd:Lcom/google/android/mms/pdu/NotificationInd;
    .end local v20           #parser:Lcom/google/android/mms/pdu/PduParser;
    .end local v25           #spamcheckdata:[B
    .end local v30           #wapPdu:Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v24       #processFurther:Z
    .restart local v31       #wapPushMan:Lcom/android/internal/telephony/IWapPushManager;
    :cond_a
    :try_start_1
    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 273
    .local v16, intent:Landroid/content/Intent;
    const-string/jumbo v32, "transactionId"

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 274
    const-string/jumbo v32, "pduType"

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 275
    const-string/jumbo v32, "header"

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 276
    const-string v32, "data"

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 277
    const-string v32, "contentTypeParameters"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v33

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 279
    const-string/jumbo v32, "subscription"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v33, v0

    invoke-interface/range {v33 .. v33}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v33

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 282
    move-object/from16 v0, v31

    move-object/from16 v1, v29

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v6, v2}, Lcom/android/internal/telephony/IWapPushManager;->processMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v23

    .line 284
    .local v23, procRet:I
    and-int/lit8 v32, v23, 0x1

    if-lez v32, :cond_5

    const v32, 0x8000

    and-int v32, v32, v23

    if-nez v32, :cond_5

    .line 286
    const/16 v24, 0x0

    goto/16 :goto_5

    .line 292
    .end local v16           #intent:Landroid/content/Intent;
    .end local v23           #procRet:I
    .end local v31           #wapPushMan:Lcom/android/internal/telephony/IWapPushManager;
    :catch_0
    move-exception v32

    .line 296
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    const-string v33, "dcm_push_check_security"

    invoke-static/range {v32 .. v33}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_d

    .line 297
    const-string v32, "9"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_c

    const-string v32, "application/vnd.wap.emn+wbxml"

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_d

    .line 298
    :cond_c
    const-string v32, "WAP PUSH"

    const-string/jumbo v33, "not mopera U mail push"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const/16 v32, 0x1

    goto/16 :goto_0

    .line 306
    .end local v6           #contentType:Ljava/lang/String;
    .end local v24           #processFurther:Z
    .end local v29           #wapAppId:Ljava/lang/String;
    :cond_d
    if-nez v18, :cond_e

    .line 308
    const/16 v32, 0x2

    goto/16 :goto_0

    .line 313
    :cond_e
    const-string v32, "application/vnd.wap.mms-message"

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_12

    .line 314
    const-string v22, "android.permission.RECEIVE_MMS"

    .line 321
    .local v22, permission:Ljava/lang/String;
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    const-string v33, "KRWapPushWithSpam"

    invoke-static/range {v32 .. v33}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_13

    const/16 v32, 0x1

    move/from16 v0, v27

    move/from16 v1, v32

    if-ne v0, v1, :cond_13

    .line 323
    new-instance v16, Landroid/content/Intent;

    const-string v32, "android.provider.Telephony.WAP_PUSH_SPAM_RECEIVED"

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 327
    .restart local v16       #intent:Landroid/content/Intent;
    :goto_7
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    const-string/jumbo v32, "transactionId"

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 329
    const-string/jumbo v32, "pduType"

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 330
    const-string/jumbo v32, "header"

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 331
    const-string v32, "data"

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 332
    const-string v32, "contentTypeParameters"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v33

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 333
    const-string/jumbo v32, "subscription"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v33, v0

    invoke-interface/range {v33 .. v33}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v33

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 334
    sget-boolean v32, Lcom/lge/config/ConfigBuildFlags;->CAPP_WAPSERVICE:Z

    if-eqz v32, :cond_10

    .line 336
    const-string v32, "application/vnd.wap.sic"

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_f

    const-string v32, "application/vnd.wap.slc"

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_10

    .line 338
    :cond_f
    const-string/jumbo v32, "smscAdd"

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    const-string/jumbo v32, "originAdd"

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    :cond_10
    const-string v32, "application/vnd.syncml.notification"

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_11

    .line 344
    const-string/jumbo v32, "pdu"

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 348
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 350
    const/16 v32, -0x1

    goto/16 :goto_0

    .line 316
    .end local v16           #intent:Landroid/content/Intent;
    .end local v22           #permission:Ljava/lang/String;
    :cond_12
    const-string v22, "android.permission.RECEIVE_WAP_PUSH"

    .restart local v22       #permission:Ljava/lang/String;
    goto/16 :goto_6

    .line 326
    :cond_13
    new-instance v16, Landroid/content/Intent;

    const-string v32, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v16       #intent:Landroid/content/Intent;
    goto/16 :goto_7
.end method
