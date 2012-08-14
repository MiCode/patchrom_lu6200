.class public abstract Lcom/android/internal/telephony/SmsMessageBase;
.super Ljava/lang/Object;
.source "SmsMessageBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;,
        Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;,
        Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SMS"

.field protected static final TP_VPF_ABSOLUTE:I = 0x3

.field protected static final TP_VPF_ENHANCED:I = 0x1

.field protected static final TP_VPF_NONE:I = 0x0

.field protected static final TP_VPF_RELATIVE:I = 0x2

.field protected static timeSmsOnSim:J

.field protected static vp:I


# instance fields
.field protected cbAddress:Lcom/android/internal/telephony/SmsAddress;

.field protected cmas_class:I

.field protected cmas_class_string:Ljava/lang/String;

.field protected cmas_cmae_category_string:Ljava/lang/String;

.field protected cmas_cmae_certainty_string:Ljava/lang/String;

.field protected cmas_cmae_response_string:Ljava/lang/String;

.field protected cmas_cmae_severity_string:Ljava/lang/String;

.field protected cmas_cmae_urgency_string:Ljava/lang/String;

.field protected cmas_expiredata_milli:J

.field protected destinationAddress:Lcom/android/internal/telephony/SmsAddress;

.field protected emailBody:Ljava/lang/String;

.field protected emailFrom:Ljava/lang/String;

.field protected indexOnIcc:I

.field protected isEmail:Z

.field protected isMwi:Z

.field protected isRecordType1Set:Z

.field protected iscmas:Z

.field protected mIsCMASPresMsg:Z

.field protected mPdu:[B

.field protected messageBody:Ljava/lang/String;

.field public messageRef:I

.field protected mwiDontStore:Z

.field protected mwiSense:Z

.field protected originatingAddress:Lcom/android/internal/telephony/SmsAddress;

.field protected pseudoSubject:Ljava/lang/String;

.field protected scAddress:Ljava/lang/String;

.field protected scTimeMillis:J

.field protected statusOnIcc:I

.field protected statusReportReq:I

.field protected userData:[B

.field protected userDataHeader:Lcom/android/internal/telephony/SmsHeader;

.field protected vpFormatPresent:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    const/4 v0, -0x1

    sput v0, Lcom/android/internal/telephony/SmsMessageBase;->vp:I

    .line 46
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/internal/telephony/SmsMessageBase;->timeSmsOnSim:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->statusReportReq:I

    .line 70
    iput v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->vpFormatPresent:I

    .line 120
    iput v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->statusOnIcc:I

    .line 125
    iput v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->indexOnIcc:I

    .line 220
    return-void
.end method

.method public static getTimeforSMSonSIM()J
    .locals 2

    .prologue
    .line 341
    sget-wide v0, Lcom/android/internal/telephony/SmsMessageBase;->timeSmsOnSim:J

    return-wide v0
.end method

.method public static setTimeforSMSonSIM(J)V
    .locals 0
    .parameter "timemillisec"

    .prologue
    .line 331
    sput-wide p0, Lcom/android/internal/telephony/SmsMessageBase;->timeSmsOnSim:J

    .line 332
    return-void
.end method

.method public static setValidityPeriod(I)V
    .locals 3
    .parameter "validityperiod"

    .prologue
    .line 502
    sput p0, Lcom/android/internal/telephony/SmsMessageBase;->vp:I

    .line 503
    const-string v0, "[SmsMessageBase]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetValidityPeriod = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/SmsMessageBase;->vp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    return-void
.end method


# virtual methods
.method protected extractEmailAddressFromMessageBody()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v11, -0x1

    const/4 v10, 0x1

    .line 613
    iget-object v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    const-string v8, "( /)|( )"

    invoke-virtual {v7, v8, v13}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 614
    .local v3, parts:[Ljava/lang/String;
    array-length v7, v3

    if-ge v7, v13, :cond_1

    .line 668
    :cond_0
    :goto_0
    return-void

    .line 615
    :cond_1
    aget-object v7, v3, v12

    iput-object v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->emailFrom:Ljava/lang/String;

    .line 616
    aget-object v7, v3, v10

    iput-object v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->emailBody:Ljava/lang/String;

    .line 618
    const/4 v7, 0x0

    const-string/jumbo v8, "vzw_sms_fromvtext"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-ne v7, v10, :cond_5

    .line 620
    iget-object v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    invoke-virtual {v7}, Lcom/android/internal/telephony/SmsAddress;->couldBeEmailGateway()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 621
    iput-boolean v10, p0, Lcom/android/internal/telephony/SmsMessageBase;->isEmail:Z

    .line 632
    :goto_1
    iget-boolean v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->isEmail:Z

    if-eqz v7, :cond_0

    .line 635
    iget-object v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->emailFrom:Ljava/lang/String;

    invoke-static {v7}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->emailFrom:Ljava/lang/String;

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_2

    .line 636
    iget-object v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 637
    .local v0, parenthesis:I
    iget-object v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->emailFrom:Ljava/lang/String;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v11, :cond_2

    if-eq v0, v11, :cond_2

    .line 638
    iget-object v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v7, v12, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->emailFrom:Ljava/lang/String;

    .line 639
    iget-object v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    add-int/lit8 v8, v0, 0x2

    iget-object v9, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->emailBody:Ljava/lang/String;

    .line 645
    .end local v0           #parenthesis:I
    :cond_2
    iget-object v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->emailBody:Ljava/lang/String;

    const-string v8, "( /)|( )"

    invoke-virtual {v7, v8, v13}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 646
    .local v4, parts2:[Ljava/lang/String;
    array-length v7, v4

    if-le v7, v10, :cond_0

    .line 647
    aget-object v6, v4, v12

    .line 648
    .local v6, tempFrom:Ljava/lang/String;
    aget-object v5, v4, v10

    .line 650
    .local v5, tempBody:Ljava/lang/String;
    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 651
    .local v2, parenthesisStart:I
    if-eq v2, v11, :cond_0

    .line 652
    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 654
    .local v1, parenthesisEnd:I
    if-eq v1, v11, :cond_0

    if-le v1, v2, :cond_0

    .line 655
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v6, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 656
    invoke-static {v6}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {v6}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 657
    :cond_3
    iput-object v6, p0, Lcom/android/internal/telephony/SmsMessageBase;->emailFrom:Ljava/lang/String;

    .line 658
    iput-object v5, p0, Lcom/android/internal/telephony/SmsMessageBase;->emailBody:Ljava/lang/String;

    goto/16 :goto_0

    .line 623
    .end local v1           #parenthesisEnd:I
    .end local v2           #parenthesisStart:I
    .end local v4           #parts2:[Ljava/lang/String;
    .end local v5           #tempBody:Ljava/lang/String;
    .end local v6           #tempFrom:Ljava/lang/String;
    :cond_4
    iget-object v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->emailFrom:Ljava/lang/String;

    invoke-static {v7}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->isEmail:Z

    goto/16 :goto_1

    .line 666
    :cond_5
    iget-object v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->emailFrom:Ljava/lang/String;

    invoke-static {v7}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->isEmail:Z

    goto/16 :goto_0
.end method

.method public getCMASClassInt()I
    .locals 1

    .prologue
    .line 685
    iget v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->cmas_class:I

    return v0
.end method

.method public getCMASClassString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->cmas_class_string:Ljava/lang/String;

    return-object v0
.end method

.method public getCMASExpireTimeMilli()J
    .locals 2

    .prologue
    .line 692
    iget-wide v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->cmas_expiredata_milli:J

    return-wide v0
.end method

.method public getCallbackNum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->cbAddress:Lcom/android/internal/telephony/SmsAddress;

    if-nez v0, :cond_0

    .line 477
    const/4 v0, 0x0

    .line 479
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->cbAddress:Lcom/android/internal/telephony/SmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsAddress;->getAddressString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDestinationAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->destinationAddress:Lcom/android/internal/telephony/SmsAddress;

    if-nez v0, :cond_0

    .line 309
    const/4 v0, 0x0

    .line 312
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->destinationAddress:Lcom/android/internal/telephony/SmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsAddress;->getAddressString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDisplayMessageBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 364
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->isEmail:Z

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->emailBody:Ljava/lang/String;

    .line 367
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDisplayMessageBody(Z)Ljava/lang/String;
    .locals 1
    .parameter "notUseEmail"

    .prologue
    .line 377
    if-nez p1, :cond_0

    .line 378
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v0

    .line 380
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDisplayMessageBodyEx()Ljava/lang/String;
    .locals 1

    .prologue
    .line 794
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayOriginatingAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->isEmail:Z

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->emailFrom:Ljava/lang/String;

    .line 283
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDisplayOriginatingAddress(Z)Ljava/lang/String;
    .locals 1
    .parameter "notUseEmail"

    .prologue
    .line 293
    if-nez p1, :cond_0

    .line 294
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    .line 296
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDisplayOriginatingAddressEx()Ljava/lang/String;
    .locals 1

    .prologue
    .line 784
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getE_Record_Type_01_String_Category()Ljava/lang/String;
    .locals 1

    .prologue
    .line 720
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->cmas_cmae_category_string:Ljava/lang/String;

    return-object v0
.end method

.method public getE_Record_Type_01_String_Certainty()Ljava/lang/String;
    .locals 1

    .prologue
    .line 744
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->cmas_cmae_certainty_string:Ljava/lang/String;

    return-object v0
.end method

.method public getE_Record_Type_01_String_Response()Ljava/lang/String;
    .locals 1

    .prologue
    .line 726
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->cmas_cmae_response_string:Ljava/lang/String;

    return-object v0
.end method

.method public getE_Record_Type_01_String_Severity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->cmas_cmae_severity_string:Ljava/lang/String;

    return-object v0
.end method

.method public getE_Record_Type_01_String_Urgency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 738
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->cmas_cmae_urgency_string:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->emailBody:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->emailFrom:Ljava/lang/String;

    return-object v0
.end method

.method public getIndexOnIcc()I
    .locals 1

    .prologue
    .line 563
    iget v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->indexOnIcc:I

    return v0
.end method

.method public getMessageBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getMessageClass()Landroid/telephony/SmsMessage$MessageClass;
.end method

.method public abstract getNumOfVoicemails()I
.end method

.method public getOriginatingAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 257
    iget-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-nez v1, :cond_0

    .line 258
    const/4 v0, 0x0

    .line 270
    :goto_0
    return-object v0

    .line 261
    :cond_0
    const/4 v0, 0x0

    .line 263
    .local v0, originatedAddress:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsMessageBase;->getisCMAS()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->cmas_class_string:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 264
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsMessageBase;->getCMASClassString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 267
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsAddress;->getAddressString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPdu()[B
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mPdu:[B

    return-object v0
.end method

.method public abstract getProtocolIdentifier()I
.end method

.method public getPseudoSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->pseudoSubject:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->pseudoSubject:Ljava/lang/String;

    goto :goto_0
.end method

.method public getServiceCenterAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->scAddress:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getSmsDisplayMode()I
.end method

.method public abstract getStatus()I
.end method

.method public getStatusOnIcc()I
    .locals 1

    .prologue
    .line 554
    iget v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->statusOnIcc:I

    return v0
.end method

.method public getStatusReportReq()I
    .locals 1

    .prologue
    .line 321
    iget v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->statusReportReq:I

    return v0
.end method

.method public getTimestampMillis()J
    .locals 2

    .prologue
    .line 397
    iget-wide v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->scTimeMillis:J

    return-wide v0
.end method

.method public getUserData()[B
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->userData:[B

    return-object v0
.end method

.method public getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    return-object v0
.end method

.method public getisCMAS()Z
    .locals 1

    .prologue
    .line 699
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->iscmas:Z

    return v0
.end method

.method public getisPresidential()Z
    .locals 1

    .prologue
    .line 706
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mIsCMASPresMsg:Z

    return v0
.end method

.method public getisRecordType1Set()Z
    .locals 1

    .prologue
    .line 713
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->isRecordType1Set:Z

    return v0
.end method

.method public abstract isCphsMwiMessage()Z
.end method

.method public isEmail()Z
    .locals 1

    .prologue
    .line 407
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->isEmail:Z

    return v0
.end method

.method public abstract isMWIClearMessage()Z
.end method

.method public abstract isMWISetMessage()Z
.end method

.method public abstract isMwiDontStore()Z
.end method

.method public abstract isMwiUrgentMessage()Z
.end method

.method public abstract isReplace()Z
.end method

.method public abstract isReplyPathPresent()Z
.end method

.method public abstract isStatusReportMessage()Z
.end method

.method protected parseMessageBody()V
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsAddress;->couldBeEmailGateway()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsMessageBase;->extractEmailAddressFromMessageBody()V

    .line 591
    :cond_0
    return-void
.end method

.method public setIndexOnIcc(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 572
    iput p1, p0, Lcom/android/internal/telephony/SmsMessageBase;->indexOnIcc:I

    .line 573
    return-void
.end method

.method public setOriginatingAddress(Ljava/lang/String;)V
    .locals 1
    .parameter "address"

    .prologue
    .line 763
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iput-object p1, v0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    .line 764
    return-void
.end method

.method public setTimestampMillis(J)V
    .locals 0
    .parameter "timeMillis"

    .prologue
    .line 753
    iput-wide p1, p0, Lcom/android/internal/telephony/SmsMessageBase;->scTimeMillis:J

    .line 754
    return-void
.end method
