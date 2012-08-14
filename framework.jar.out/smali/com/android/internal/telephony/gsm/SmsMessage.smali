.class public Lcom/android/internal/telephony/gsm/SmsMessage;
.super Lcom/android/internal/telephony/SmsMessageBase;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;,
        Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;,
        Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;,
        Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;
    }
.end annotation


# static fields
.field public static final ENCODING_16BIT_DCS:I = 0x8

.field public static final ENCODING_7BIT_DCS:I = 0x0

.field public static final ENCODING_8BIT_DCS:I = 0x84

.field public static final ENCODING_UNKNOWN_DCS:I = -0x1

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field static final PID_1ST_SPECIAL_SMS:I = 0x48

.field static final PID_2ND_SPECIAL_SMS:I = 0x5f

.field static final PID_KT_CALLBACK_URL:I = 0x4e

.field static final PID_KT_FOTA:I = 0x7d

.field static final PID_KT_PORT_ADDRESS:I = 0x53

.field static final PID_LGT_PORT_ADDRESS:I = 0x53

.field public static final PID_LMS:I = 0x4f

.field static final PID_NORMAL_MESSAGE:I = 0x0

.field static final PID_SKT_CALLBACK_URL:I = 0x91

.field static final PID_SKT_PORT_ADDRESS:I = 0xa2

.field static final TP_VPF_ABSOLUTE:I = 0x3

.field static final TP_VPF_ENHANCED:I = 0x1

.field static final TP_VPF_NONE:I = 0x0

.field static final TP_VPF_RELATIVE:I = 0x2

.field private static timeSmsOnSim:J


# instance fields
.field private automaticDeletion:Z

.field private dataCodingScheme:I

.field private dischargeTimeMillis:J

.field private forSubmit:Z

.field private isStatusReportMessage:Z

.field private mVoiceMailCount:I

.field private messageClass:Landroid/telephony/SmsMessage$MessageClass;

.field private mti:I

.field private protocolIdentifier:I

.field private recipientAddress:Lcom/android/internal/telephony/gsm/GsmSmsAddress;

.field private replyPathPresent:Z

.field private status:I

.field validtyPeroidFormat:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 501
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/internal/telephony/gsm/SmsMessage;->timeSmsOnSim:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 119
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsMessageBase;-><init>()V

    .line 163
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyPathPresent:Z

    .line 189
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isStatusReportMessage:Z

    .line 191
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    .line 498
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->validtyPeroidFormat:I

    .line 2188
    return-void
.end method

.method public static calculateLGLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .locals 9
    .parameter "msgBody"
    .parameter "use7bitOnly"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2564
    new-instance v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    invoke-direct {v4}, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;-><init>()V

    .line 2567
    .local v4, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    const/4 v1, 0x0

    .line 2568
    .local v1, hasTurkishSplChar:I
    const/4 v5, 0x0

    :try_start_0
    const-string/jumbo v8, "turkishEncoding"

    invoke-static {v5, v8}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/GsmAlphabet;->hasTurkishSplChars(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2569
    const/4 v1, 0x1

    .line 2571
    :cond_0
    if-nez p1, :cond_1

    move v5, v6

    :goto_0
    const/4 v8, 0x0

    invoke-static {p0, v5, v8, v1}, Lcom/android/internal/telephony/GsmAlphabet;->countLGGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    move-result v3

    .line 2572
    .local v3, septets:I
    iput v3, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 2573
    if-ne v1, v6, :cond_3

    .line 2574
    const/16 v5, 0x9b

    if-le v3, v5, :cond_2

    .line 2575
    div-int/lit16 v5, v3, 0x95

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 2576
    rem-int/lit16 v5, v3, 0x95

    rsub-int v5, v5, 0x95

    iput v5, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 2582
    :goto_1
    const/4 v5, 0x0

    iput v5, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    .line 2583
    const/4 v5, 0x1

    iput v5, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    .line 2600
    :goto_2
    const/4 v5, 0x1

    iput v5, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 2619
    .end local v3           #septets:I
    :goto_3
    return-object v4

    :cond_1
    move v5, v7

    .line 2571
    goto :goto_0

    .line 2579
    .restart local v3       #septets:I
    :cond_2
    const/4 v5, 0x1

    iput v5, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 2580
    rsub-int v5, v3, 0x9b

    iput v5, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2601
    .end local v3           #septets:I
    :catch_0
    move-exception v0

    .line 2602
    .local v0, ex:Lcom/android/internal/telephony/EncodeException;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    mul-int/lit8 v2, v5, 0x2

    .line 2603
    .local v2, octets:I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    iput v5, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 2604
    const/16 v5, 0x8c

    if-le v2, v5, :cond_7

    .line 2605
    rem-int/lit16 v5, v2, 0x86

    if-nez v5, :cond_6

    .line 2606
    div-int/lit16 v5, v2, 0x86

    iput v5, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 2607
    iput v7, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 2617
    :goto_4
    const/4 v5, 0x3

    iput v5, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    goto :goto_3

    .line 2585
    .end local v0           #ex:Lcom/android/internal/telephony/EncodeException;
    .end local v2           #octets:I
    .restart local v3       #septets:I
    :cond_3
    const/16 v5, 0xa0

    if-le v3, v5, :cond_5

    .line 2586
    :try_start_1
    rem-int/lit16 v5, v3, 0x99

    if-nez v5, :cond_4

    .line 2587
    div-int/lit16 v5, v3, 0x99

    iput v5, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 2588
    const/4 v5, 0x0

    iput v5, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_2

    .line 2590
    :cond_4
    div-int/lit16 v5, v3, 0x99

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 2591
    rem-int/lit16 v5, v3, 0x99

    rsub-int v5, v5, 0x99

    iput v5, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_2

    .line 2594
    :cond_5
    const/4 v5, 0x1

    iput v5, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 2595
    rsub-int v5, v3, 0xa0

    iput v5, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I
    :try_end_1
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 2609
    .end local v3           #septets:I
    .restart local v0       #ex:Lcom/android/internal/telephony/EncodeException;
    .restart local v2       #octets:I
    :cond_6
    div-int/lit16 v5, v2, 0x86

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 2610
    rem-int/lit16 v5, v2, 0x86

    rsub-int v5, v5, 0x86

    div-int/lit8 v5, v5, 0x2

    iput v5, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_4

    .line 2614
    :cond_7
    iput v6, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 2615
    rsub-int v5, v2, 0x8c

    div-int/lit8 v5, v5, 0x2

    iput v5, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_4
.end method

.method public static calculateLength(Ljava/lang/CharSequence;I)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .locals 12
    .parameter "msgBody"
    .parameter "dataCodingScheme"

    .prologue
    const/16 v11, 0x8c

    const/4 v8, 0x0

    .line 2730
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, p1, v9}, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;-><init>(ILjava/lang/String;)V

    .line 2731
    .local v1, dcs:Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->getEncodingType()I

    move-result v2

    .line 2733
    .local v2, encodingType:I
    new-instance v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    invoke-direct {v6}, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;-><init>()V

    .line 2734
    .local v6, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    packed-switch v2, :pswitch_data_0

    .line 2780
    :try_start_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v9

    mul-int/lit8 v4, v9, 0x2

    .line 2781
    .local v4, octets:I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v9

    iput v9, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 2782
    if-le v4, v11, :cond_2

    .line 2783
    div-int/lit16 v9, v4, 0x86

    add-int/lit8 v9, v9, 0x1

    iput v9, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 2784
    rem-int/lit16 v9, v4, 0x86

    rsub-int v9, v9, 0x86

    div-int/lit8 v9, v9, 0x2

    iput v9, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 2790
    :goto_0
    const/4 v9, 0x3

    iput v9, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    .line 2797
    .end local v4           #octets:I
    .end local v6           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :goto_1
    return-object v6

    .line 2737
    .restart local v6       #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :pswitch_0
    const/4 v9, 0x0

    :try_start_1
    invoke-static {p0, v9}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v9

    iget v5, v9, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 2738
    .local v5, septets:I
    iput v5, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 2739
    const/16 v9, 0xa0

    if-le v5, v9, :cond_0

    .line 2740
    div-int/lit16 v9, v5, 0x99

    add-int/lit8 v9, v9, 0x1

    iput v9, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 2741
    rem-int/lit16 v9, v5, 0x99

    rsub-int v9, v9, 0x99

    iput v9, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 2747
    :goto_2
    const/4 v9, 0x1

    iput v9, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2749
    .end local v5           #septets:I
    :catch_0
    move-exception v3

    .line 2750
    .local v3, ex:Ljava/lang/RuntimeException;
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[calculateLengthEx] encodingType: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v8

    .line 2751
    goto :goto_1

    .line 2744
    .end local v3           #ex:Ljava/lang/RuntimeException;
    .restart local v5       #septets:I
    :cond_0
    const/4 v9, 0x1

    :try_start_2
    iput v9, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 2745
    rsub-int v9, v5, 0xa0

    iput v9, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 2756
    .end local v5           #septets:I
    :pswitch_1
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "euc-kr"

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 2757
    .local v7, textPart:[B
    array-length v0, v7

    .line 2759
    .local v0, byteCount:I
    iput v0, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 2760
    if-le v0, v11, :cond_1

    .line 2761
    div-int/lit16 v9, v0, 0x86

    add-int/lit8 v9, v9, 0x1

    iput v9, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 2762
    rem-int/lit16 v9, v0, 0x86

    rsub-int v9, v9, 0x86

    iput v9, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 2768
    :goto_3
    const/4 v9, 0x2

    iput v9, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 2770
    .end local v0           #byteCount:I
    .end local v7           #textPart:[B
    :catch_1
    move-exception v3

    .line 2771
    .local v3, ex:Ljava/io/UnsupportedEncodingException;
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[calculateLengthEx] encodingType: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v8

    .line 2772
    goto/16 :goto_1

    .line 2765
    .end local v3           #ex:Ljava/io/UnsupportedEncodingException;
    .restart local v0       #byteCount:I
    .restart local v7       #textPart:[B
    :cond_1
    const/4 v9, 0x1

    :try_start_4
    iput v9, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 2766
    rsub-int v9, v0, 0x8c

    iput v9, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 2773
    .end local v0           #byteCount:I
    .end local v7           #textPart:[B
    :catch_2
    move-exception v3

    .line 2774
    .local v3, ex:Ljava/lang/RuntimeException;
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[calculateLengthEx] encodingType: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v8

    .line 2775
    goto/16 :goto_1

    .line 2787
    .end local v3           #ex:Ljava/lang/RuntimeException;
    .restart local v4       #octets:I
    :cond_2
    const/4 v9, 0x1

    :try_start_5
    iput v9, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 2788
    rsub-int v9, v4, 0x8c

    div-int/lit8 v9, v9, 0x2

    iput v9, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    .line 2792
    .end local v4           #octets:I
    :catch_3
    move-exception v3

    .line 2793
    .restart local v3       #ex:Ljava/lang/RuntimeException;
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[calculateLengthEx] encodingType: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v8

    .line 2794
    goto/16 :goto_1

    .line 2734
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .locals 3
    .parameter "msgBody"
    .parameter "use7bitOnly"

    .prologue
    .line 2534
    invoke-static {p0, p1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v1

    .line 2535
    .local v1, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    if-nez v1, :cond_0

    .line 2536
    new-instance v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    .end local v1           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    invoke-direct {v1}, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;-><init>()V

    .line 2537
    .restart local v1       #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    mul-int/lit8 v0, v2, 0x2

    .line 2538
    .local v0, octets:I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iput v2, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 2539
    const/16 v2, 0x8c

    if-le v0, v2, :cond_1

    .line 2540
    add-int/lit16 v2, v0, 0x85

    div-int/lit16 v2, v2, 0x86

    iput v2, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 2542
    iget v2, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    mul-int/lit16 v2, v2, 0x86

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 2548
    :goto_0
    const/4 v2, 0x3

    iput v2, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 2550
    .end local v0           #octets:I
    :cond_0
    return-object v1

    .line 2545
    .restart local v0       #octets:I
    :cond_1
    const/4 v2, 0x1

    iput v2, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 2546
    rsub-int v2, v0, 0x8c

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_0
.end method

.method public static calculateLength(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .locals 12
    .parameter "msgBody"
    .parameter "use7bitOnly"
    .parameter "useUserInterface"

    .prologue
    .line 2638
    const/4 v10, 0x0

    const-string v11, "KREncodingScheme"

    invoke-static {v10, v11}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    .line 2639
    new-instance v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    invoke-direct {v7}, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;-><init>()V

    .line 2641
    .local v7, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    if-nez p1, :cond_0

    const/4 v10, 0x1

    :goto_0
    :try_start_0
    invoke-static {p0, v10}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsEx(Ljava/lang/CharSequence;Z)[I

    move-result-object v5

    .line 2642
    .local v5, params:[I
    const/4 v10, 0x0

    aget v6, v5, v10

    .line 2643
    .local v6, septets:I
    const/4 v10, 0x1

    aget v0, v5, v10

    .line 2644
    .local v0, charindex:I
    invoke-static {}, Lcom/android/internal/telephony/gsm/SmsMessage;->isInsertedDomesticUsim()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2645
    sget v10, Landroid/telephony/SmsMessage;->LIMIT_USER_DATA_SEPTETS:I

    if-le v6, v10, :cond_1

    .line 2646
    new-instance v10, Lcom/android/internal/telephony/EncodeException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2659
    .end local v0           #charindex:I
    .end local v5           #params:[I
    .end local v6           #septets:I
    :catch_0
    move-exception v2

    .line 2660
    .local v2, ex:Lcom/android/internal/telephony/EncodeException;
    invoke-static {}, Lcom/android/internal/telephony/gsm/SmsMessage;->isInsertedDomesticUsim()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 2662
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2664
    .local v3, message:Ljava/lang/String;
    :try_start_1
    const-string v10, "euc-kr"

    invoke-virtual {v3, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v9

    .line 2684
    .local v9, textPart:[B
    array-length v8, v9

    .line 2685
    .local v8, textLen:I
    iput v8, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 2687
    sget v10, Landroid/telephony/SmsMessage;->MAX_USER_DATA_BYTES_EX:I

    if-le v8, v10, :cond_3

    .line 2688
    sget v10, Landroid/telephony/SmsMessage;->MAX_USER_DATA_BYTES_EX:I

    div-int v10, v8, v10

    add-int/lit8 v10, v10, 0x1

    iput v10, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 2689
    sget v10, Landroid/telephony/SmsMessage;->MAX_USER_DATA_BYTES_EX:I

    sget v11, Landroid/telephony/SmsMessage;->MAX_USER_DATA_BYTES_EX:I

    rem-int v11, v8, v11

    sub-int/2addr v10, v11

    iput v10, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 2694
    :goto_1
    const/4 v10, 0x2

    iput v10, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 2715
    .end local v2           #ex:Lcom/android/internal/telephony/EncodeException;
    .end local v3           #message:Ljava/lang/String;
    .end local v7           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .end local v8           #textLen:I
    .end local v9           #textPart:[B
    :goto_2
    return-object v7

    .line 2641
    .restart local v7       #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 2650
    .restart local v0       #charindex:I
    .restart local v5       #params:[I
    .restart local v6       #septets:I
    :cond_1
    :try_start_2
    iput v0, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 2651
    sget v10, Landroid/telephony/SmsMessage;->MAX_USER_DATA_BYTES_EX:I

    if-le v0, v10, :cond_2

    .line 2652
    sget v10, Landroid/telephony/SmsMessage;->MAX_USER_DATA_BYTES_EX:I

    div-int v10, v0, v10

    add-int/lit8 v10, v10, 0x1

    iput v10, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 2653
    sget v10, Landroid/telephony/SmsMessage;->MAX_USER_DATA_BYTES_EX:I

    sget v11, Landroid/telephony/SmsMessage;->MAX_USER_DATA_BYTES_EX:I

    rem-int v11, v0, v11

    sub-int/2addr v10, v11

    iput v10, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 2658
    :goto_3
    const/4 v10, 0x1

    iput v10, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    goto :goto_2

    .line 2655
    :cond_2
    const/4 v10, 0x1

    iput v10, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 2656
    sget v10, Landroid/telephony/SmsMessage;->MAX_USER_DATA_BYTES_EX:I

    sub-int/2addr v10, v0

    iput v10, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I
    :try_end_2
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 2665
    .end local v0           #charindex:I
    .end local v5           #params:[I
    .end local v6           #septets:I
    .restart local v2       #ex:Lcom/android/internal/telephony/EncodeException;
    .restart local v3       #message:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 2667
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    const-string v10, "GSM"

    const-string v11, "Implausible UnsupportedEncodingException "

    invoke-static {v10, v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2669
    const/4 v10, 0x0

    iput v10, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 2670
    const/4 v10, 0x0

    iput v10, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 2671
    const/4 v10, 0x0

    iput v10, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 2672
    const/4 v10, 0x1

    iput v10, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    goto :goto_2

    .line 2674
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v1

    .line 2675
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v10, "GSM"

    const-string v11, "Implausible RuntimeException "

    invoke-static {v10, v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2677
    const/4 v10, 0x0

    iput v10, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 2678
    const/4 v10, 0x0

    iput v10, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 2679
    const/4 v10, 0x0

    iput v10, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 2680
    const/4 v10, 0x1

    iput v10, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    goto :goto_2

    .line 2691
    .end local v1           #e:Ljava/lang/RuntimeException;
    .restart local v8       #textLen:I
    .restart local v9       #textPart:[B
    :cond_3
    const/4 v10, 0x1

    iput v10, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 2692
    sget v10, Landroid/telephony/SmsMessage;->MAX_USER_DATA_BYTES_EX:I

    sub-int/2addr v10, v8

    iput v10, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_1

    .line 2697
    .end local v3           #message:Ljava/lang/String;
    .end local v8           #textLen:I
    .end local v9           #textPart:[B
    :cond_4
    new-instance v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    .end local v7           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    invoke-direct {v7}, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;-><init>()V

    .line 2698
    .restart local v7       #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v10

    mul-int/lit8 v4, v10, 0x2

    .line 2700
    .local v4, octets:I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v10

    mul-int/lit8 v10, v10, 0x2

    iput v10, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 2701
    sget v10, Landroid/telephony/SmsMessage;->MAX_USER_DATA_BYTES_EX:I

    if-le v4, v10, :cond_5

    .line 2702
    sget v10, Landroid/telephony/SmsMessage;->MAX_USER_DATA_BYTES_EX:I

    div-int v10, v4, v10

    add-int/lit8 v10, v10, 0x1

    iput v10, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 2704
    sget v10, Landroid/telephony/SmsMessage;->MAX_USER_DATA_BYTES_EX:I

    sget v11, Landroid/telephony/SmsMessage;->MAX_USER_DATA_BYTES_EX:I

    rem-int v11, v4, v11

    sub-int/2addr v10, v11

    iput v10, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 2710
    :goto_4
    const/4 v10, 0x3

    iput v10, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    goto/16 :goto_2

    .line 2706
    :cond_5
    const/4 v10, 0x1

    iput v10, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 2708
    sget v10, Landroid/telephony/SmsMessage;->MAX_USER_DATA_BYTES_EX:I

    sub-int/2addr v10, v4

    iput v10, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_4

    .line 2715
    .end local v2           #ex:Lcom/android/internal/telephony/EncodeException;
    .end local v4           #octets:I
    .end local v7           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_6
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v7

    goto/16 :goto_2
.end method

.method public static calculateLengthHeaderReplyaddressEx(Ljava/lang/CharSequence;I)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .locals 12
    .parameter "msgBody"
    .parameter "dataCodingScheme"

    .prologue
    const/16 v11, 0x8c

    const/4 v8, 0x0

    .line 2810
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, p1, v9}, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;-><init>(ILjava/lang/String;)V

    .line 2811
    .local v1, dcs:Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->getEncodingType()I

    move-result v2

    .line 2813
    .local v2, encodingType:I
    new-instance v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    invoke-direct {v6}, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;-><init>()V

    .line 2814
    .local v6, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    packed-switch v2, :pswitch_data_0

    .line 2860
    :try_start_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v9

    mul-int/lit8 v4, v9, 0x2

    .line 2861
    .local v4, octets:I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v9

    iput v9, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 2862
    if-le v4, v11, :cond_2

    .line 2863
    div-int/lit8 v9, v4, 0x72

    add-int/lit8 v9, v9, 0x1

    iput v9, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 2864
    rem-int/lit8 v9, v4, 0x72

    rsub-int/lit8 v9, v9, 0x72

    div-int/lit8 v9, v9, 0x2

    iput v9, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 2870
    :goto_0
    const/4 v9, 0x3

    iput v9, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    .line 2877
    .end local v4           #octets:I
    .end local v6           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :goto_1
    return-object v6

    .line 2817
    .restart local v6       #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :pswitch_0
    const/4 v9, 0x0

    :try_start_1
    invoke-static {p0, v9}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v9

    iget v5, v9, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 2818
    .local v5, septets:I
    iput v5, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 2819
    const/16 v9, 0xa0

    if-le v5, v9, :cond_0

    .line 2820
    div-int/lit16 v9, v5, 0x87

    add-int/lit8 v9, v9, 0x1

    iput v9, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 2821
    rem-int/lit16 v9, v5, 0x87

    rsub-int v9, v9, 0x87

    iput v9, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 2827
    :goto_2
    const/4 v9, 0x1

    iput v9, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2829
    .end local v5           #septets:I
    :catch_0
    move-exception v3

    .line 2830
    .local v3, ex:Ljava/lang/RuntimeException;
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[calculateLengthEx] encodingType: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v8

    .line 2831
    goto :goto_1

    .line 2824
    .end local v3           #ex:Ljava/lang/RuntimeException;
    .restart local v5       #septets:I
    :cond_0
    const/4 v9, 0x1

    :try_start_2
    iput v9, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 2825
    rsub-int v9, v5, 0xa0

    iput v9, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 2836
    .end local v5           #septets:I
    :pswitch_1
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "euc-kr"

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 2837
    .local v7, textPart:[B
    array-length v0, v7

    .line 2839
    .local v0, byteCount:I
    iput v0, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 2840
    if-le v0, v11, :cond_1

    .line 2841
    div-int/lit8 v9, v0, 0x72

    add-int/lit8 v9, v9, 0x1

    iput v9, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 2842
    rem-int/lit8 v9, v0, 0x72

    rsub-int/lit8 v9, v9, 0x72

    iput v9, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 2848
    :goto_3
    const/4 v9, 0x2

    iput v9, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 2850
    .end local v0           #byteCount:I
    .end local v7           #textPart:[B
    :catch_1
    move-exception v3

    .line 2851
    .local v3, ex:Ljava/io/UnsupportedEncodingException;
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[calculateLengthEx] encodingType: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v8

    .line 2852
    goto/16 :goto_1

    .line 2845
    .end local v3           #ex:Ljava/io/UnsupportedEncodingException;
    .restart local v0       #byteCount:I
    .restart local v7       #textPart:[B
    :cond_1
    const/4 v9, 0x1

    :try_start_4
    iput v9, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 2846
    rsub-int v9, v0, 0x8c

    iput v9, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 2853
    .end local v0           #byteCount:I
    .end local v7           #textPart:[B
    :catch_2
    move-exception v3

    .line 2854
    .local v3, ex:Ljava/lang/RuntimeException;
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[calculateLengthEx] encodingType: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v8

    .line 2855
    goto/16 :goto_1

    .line 2867
    .end local v3           #ex:Ljava/lang/RuntimeException;
    .restart local v4       #octets:I
    :cond_2
    const/4 v9, 0x1

    :try_start_5
    iput v9, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 2868
    rsub-int v9, v4, 0x8c

    div-int/lit8 v9, v9, 0x2

    iput v9, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    .line 2872
    .end local v4           #octets:I
    :catch_3
    move-exception v3

    .line 2873
    .restart local v3       #ex:Ljava/lang/RuntimeException;
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[calculateLengthEx] encodingType: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v8

    .line 2874
    goto/16 :goto_1

    .line 2814
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static createDataCodingScheme(Landroid/telephony/SmsMessage$MessageClass;ZIIZI)B
    .locals 4
    .parameter "messageclass"
    .parameter "isCompressed"
    .parameter "encodingtype"
    .parameter "msgwatingtype"
    .parameter "msgwaitingactive"
    .parameter "msgwaitingkind"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 1833
    packed-switch p3, :pswitch_data_0

    .line 1905
    :pswitch_0
    if-ne p3, v1, :cond_c

    .line 1906
    const/16 v0, -0x40

    .line 1913
    .local v0, data:B
    :goto_0
    if-ne p4, v1, :cond_e

    .line 1914
    or-int/lit8 v1, v0, 0x8

    int-to-byte v0, v1

    .line 1920
    :goto_1
    int-to-byte v1, p5

    and-int/lit8 v1, v1, 0x3

    or-int/2addr v1, v0

    int-to-byte v0, v1

    .line 1924
    :cond_0
    :goto_2
    const-string v1, "[gsm/SmsMessage]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createDataCodingScheme = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1926
    return v0

    .line 1838
    .end local v0           #data:B
    :pswitch_1
    if-ne p1, v1, :cond_3

    .line 1839
    const/16 v0, 0x20

    .line 1843
    .restart local v0       #data:B
    :goto_3
    const-string v1, "[gsm/SmsMessage]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createDataCodingScheme : data = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for bit 5"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    const-string v1, "[gsm/SmsMessage]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createDataCodingScheme : encodingtype = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    sget-object v1, Landroid/telephony/SmsMessage$MessageClass;->UNKNOWN:Landroid/telephony/SmsMessage$MessageClass;

    if-eq p0, v1, :cond_4

    .line 1848
    or-int/lit8 v1, v0, 0x10

    int-to-byte v0, v1

    .line 1852
    :goto_4
    const-string v1, "[gsm/SmsMessage]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createDataCodingScheme : data = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for bit 4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1855
    if-eqz p2, :cond_1

    .line 1856
    add-int/lit8 v1, p2, -0x1

    shl-int/lit8 v1, v1, 0x2

    or-int/2addr v1, v0

    int-to-byte v0, v1

    .line 1858
    :cond_1
    const-string v1, "[gsm/SmsMessage]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createDataCodingScheme : data = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for bit 3-2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1861
    sget-object v1, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    if-ne p0, v1, :cond_5

    .line 1862
    or-int/lit8 v1, v0, 0x0

    int-to-byte v0, v1

    .line 1870
    :cond_2
    :goto_5
    const-string v1, "[gsm/SmsMessage]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createDataCodingScheme : data = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for bit 1-0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1841
    .end local v0           #data:B
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #data:B
    goto/16 :goto_3

    .line 1850
    :cond_4
    or-int/lit8 v1, v0, 0x0

    int-to-byte v0, v1

    goto :goto_4

    .line 1863
    :cond_5
    sget-object v1, Landroid/telephony/SmsMessage$MessageClass;->CLASS_1:Landroid/telephony/SmsMessage$MessageClass;

    if-ne p0, v1, :cond_6

    .line 1864
    or-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    goto :goto_5

    .line 1865
    :cond_6
    sget-object v1, Landroid/telephony/SmsMessage$MessageClass;->CLASS_2:Landroid/telephony/SmsMessage$MessageClass;

    if-ne p0, v1, :cond_7

    .line 1866
    or-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    goto :goto_5

    .line 1867
    :cond_7
    sget-object v1, Landroid/telephony/SmsMessage$MessageClass;->CLASS_3:Landroid/telephony/SmsMessage$MessageClass;

    if-ne p0, v1, :cond_2

    .line 1868
    or-int/lit8 v1, v0, 0x3

    int-to-byte v0, v1

    goto :goto_5

    .line 1877
    .end local v0           #data:B
    :pswitch_2
    const/16 v0, -0x10

    .line 1880
    .restart local v0       #data:B
    if-ne p2, v2, :cond_8

    .line 1881
    const/16 v1, -0xc

    int-to-byte v0, v1

    .line 1884
    :cond_8
    sget-object v1, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    if-ne p0, v1, :cond_9

    .line 1885
    or-int/lit8 v1, v0, 0x0

    int-to-byte v0, v1

    goto/16 :goto_2

    .line 1886
    :cond_9
    sget-object v1, Landroid/telephony/SmsMessage$MessageClass;->CLASS_1:Landroid/telephony/SmsMessage$MessageClass;

    if-ne p0, v1, :cond_a

    .line 1887
    or-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    goto/16 :goto_2

    .line 1888
    :cond_a
    sget-object v1, Landroid/telephony/SmsMessage$MessageClass;->CLASS_2:Landroid/telephony/SmsMessage$MessageClass;

    if-ne p0, v1, :cond_b

    .line 1889
    or-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    goto/16 :goto_2

    .line 1890
    :cond_b
    sget-object v1, Landroid/telephony/SmsMessage$MessageClass;->CLASS_3:Landroid/telephony/SmsMessage$MessageClass;

    if-ne p0, v1, :cond_0

    .line 1891
    or-int/lit8 v1, v0, 0x3

    int-to-byte v0, v1

    goto/16 :goto_2

    .line 1898
    .end local v0           #data:B
    :pswitch_3
    const/16 v0, -0x7c

    .line 1900
    .restart local v0       #data:B
    goto/16 :goto_2

    .line 1907
    .end local v0           #data:B
    :cond_c
    if-ne p3, v2, :cond_d

    if-ne p2, v1, :cond_d

    .line 1908
    const/16 v0, -0x30

    .restart local v0       #data:B
    goto/16 :goto_0

    .line 1910
    .end local v0           #data:B
    :cond_d
    const/16 v0, -0x20

    .restart local v0       #data:B
    goto/16 :goto_0

    .line 1916
    :cond_e
    or-int/lit8 v1, v0, 0x0

    int-to-byte v0, v1

    goto/16 :goto_1

    .line 1833
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static createFromEfRecord(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 7
    .parameter "index"
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 585
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 587
    .local v1, msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    iput p0, v1, Lcom/android/internal/telephony/SmsMessageBase;->indexOnIcc:I

    .line 592
    const/4 v5, 0x0

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_0

    .line 593
    const-string v5, "GSM"

    const-string v6, "SMS parsing failed: Trying to parse a free record"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v4

    .line 610
    .end local v1           #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    :goto_0
    return-object v1

    .line 597
    .restart local v1       #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    :cond_0
    const/4 v5, 0x0

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0x7

    iput v5, v1, Lcom/android/internal/telephony/SmsMessageBase;->statusOnIcc:I

    .line 600
    array-length v5, p1

    add-int/lit8 v3, v5, -0x1

    .line 604
    .local v3, size:I
    new-array v2, v3, [B

    .line 605
    .local v2, pdu:[B
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {p1, v5, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 606
    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 608
    .end local v1           #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    .end local v2           #pdu:[B
    .end local v3           #size:I
    :catch_0
    move-exception v0

    .line 609
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v5, "GSM"

    const-string v6, "SMS PDU parsing failed: "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v4

    .line 610
    goto :goto_0
.end method

.method public static createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 4
    .parameter "pdu"

    .prologue
    .line 524
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 525
    .local v1, msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    .end local v1           #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    :goto_0
    return-object v1

    .line 527
    :catch_0
    move-exception v0

    .line 528
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v2, "GSM"

    const-string v3, "SMS PDU parsing failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 529
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static encodeEUC_KR(Ljava/lang/String;[B)[B
    .locals 7
    .parameter "message"
    .parameter "header"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1314
    const-string v3, "euc-kr"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 1316
    .local v1, textPart:[B
    if-eqz p1, :cond_0

    .line 1318
    array-length v3, p1

    array-length v4, v1

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    new-array v2, v3, [B

    .line 1320
    .local v2, userData:[B
    array-length v3, p1

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    .line 1321
    array-length v3, p1

    invoke-static {p1, v5, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1322
    array-length v3, p1

    add-int/lit8 v3, v3, 0x1

    array-length v4, v1

    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1327
    :goto_0
    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [B

    .line 1328
    .local v0, ret:[B
    array-length v3, v2

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v5

    .line 1329
    array-length v3, v2

    invoke-static {v2, v5, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1330
    return-object v0

    .line 1325
    .end local v0           #ret:[B
    .end local v2           #userData:[B
    :cond_0
    move-object v2, v1

    .restart local v2       #userData:[B
    goto :goto_0
.end method

.method private static encodeKSC5601(Ljava/lang/String;[B)[B
    .locals 7
    .parameter "message"
    .parameter "header"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1338
    const-string/jumbo v3, "ksc5601"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 1340
    .local v1, textPart:[B
    if-eqz p1, :cond_0

    .line 1342
    array-length v3, p1

    array-length v4, v1

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    new-array v2, v3, [B

    .line 1344
    .local v2, userData:[B
    array-length v3, p1

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    .line 1345
    array-length v3, p1

    invoke-static {p1, v5, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1346
    array-length v3, p1

    add-int/lit8 v3, v3, 0x1

    array-length v4, v1

    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1351
    :goto_0
    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [B

    .line 1352
    .local v0, ret:[B
    array-length v3, v2

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v5

    .line 1353
    array-length v3, v2

    invoke-static {v2, v5, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1354
    return-object v0

    .line 1349
    .end local v0           #ret:[B
    .end local v2           #userData:[B
    :cond_0
    move-object v2, v1

    .restart local v2       #userData:[B
    goto :goto_0
.end method

.method private static encodeUCS2(Ljava/lang/String;[B)[B
    .locals 7
    .parameter "message"
    .parameter "header"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1291
    const-string/jumbo v3, "utf-16be"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 1293
    .local v1, textPart:[B
    if-eqz p1, :cond_0

    .line 1295
    array-length v3, p1

    array-length v4, v1

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    new-array v2, v3, [B

    .line 1297
    .local v2, userData:[B
    array-length v3, p1

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    .line 1298
    array-length v3, p1

    invoke-static {p1, v5, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1299
    array-length v3, p1

    add-int/lit8 v3, v3, 0x1

    array-length v4, v1

    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1304
    :goto_0
    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [B

    .line 1305
    .local v0, ret:[B
    array-length v3, v2

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v5

    .line 1306
    array-length v3, v2

    invoke-static {v2, v5, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1307
    return-object v0

    .line 1302
    .end local v0           #ret:[B
    .end local v2           #userData:[B
    :cond_0
    move-object v2, v1

    .restart local v2       #userData:[B
    goto :goto_0
.end method

.method public static getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ[BI)Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;
    .locals 10
    .parameter "scAddress"
    .parameter "originatorAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "time"
    .parameter "header"
    .parameter "encodingtype"

    .prologue
    .line 1935
    const/4 v0, 0x0

    const-string/jumbo v1, "turkishEncoding"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/android/internal/telephony/GsmAlphabet;->hasTurkishSplChars(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1936
    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-static/range {v0 .. v9}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;

    move-result-object v0

    .line 1939
    :goto_0
    return-object v0

    :cond_0
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-static/range {v0 .. v9}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;
    .locals 13
    .parameter "scAddress"
    .parameter "originatorAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "time"
    .parameter "header"
    .parameter "encodingtype"
    .parameter "languageTable"
    .parameter "languageShiftTable"

    .prologue
    .line 1960
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 1961
    :cond_0
    const/4 v6, 0x0

    .line 2089
    :goto_0
    return-object v6

    .line 1964
    :cond_1
    new-instance v6, Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;

    invoke-direct {v6}, Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;-><init>()V

    .line 1967
    .local v6, ret:Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;
    if-eqz p6, :cond_2

    const/16 v10, 0x40

    :goto_1
    or-int/lit8 v10, v10, 0x0

    int-to-byte v5, v10

    .line 1969
    .local v5, mtiByte:B
    move/from16 v0, p3

    invoke-static {p0, p1, v5, v0, v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDeliverPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v3

    .line 1972
    .local v3, bo:Ljava/io/ByteArrayOutputStream;
    const/4 v10, 0x1

    move/from16 v0, p7

    if-ne v0, v10, :cond_8

    .line 1976
    :try_start_0
    move-object/from16 v0, p6

    move/from16 v1, p8

    move/from16 v2, p9

    invoke-static {p2, v0, v1, v2}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v9

    .line 1979
    .local v9, userData:[B
    const/4 v10, 0x0

    aget-byte v10, v9, v10

    and-int/lit16 v10, v10, 0xff

    const/16 v11, 0xa0

    if-le v10, v11, :cond_3

    .line 1981
    const/4 v6, 0x0

    goto :goto_0

    .line 1967
    .end local v3           #bo:Ljava/io/ByteArrayOutputStream;
    .end local v5           #mtiByte:B
    .end local v9           #userData:[B
    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    .line 1986
    .restart local v3       #bo:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #mtiByte:B
    .restart local v9       #userData:[B
    :cond_3
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1990
    const/4 v10, 0x0

    const-string v11, "dcm_copytosim_localtimezone"

    invoke-static {v10, v11}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1992
    move-wide/from16 v0, p4

    invoke-static {v0, v1, v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDeliverPduSCTS_TimeZone(JLjava/io/ByteArrayOutputStream;)V

    .line 1998
    :goto_2
    const/4 v10, 0x0

    array-length v11, v9

    invoke-virtual {v3, v9, v10, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2088
    :goto_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    iput-object v10, v6, Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;->encodedMessage:[B

    goto :goto_0

    .line 1996
    :cond_4
    :try_start_1
    move-wide/from16 v0, p4

    invoke-static {v0, v1, v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDeliverPduSCTS(JLjava/io/ByteArrayOutputStream;)Ljava/io/ByteArrayOutputStream;
    :try_end_1
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1999
    .end local v9           #userData:[B
    :catch_0
    move-exception v4

    .line 2005
    .local v4, ex:Lcom/android/internal/telephony/EncodeException;
    :try_start_2
    const-string/jumbo v10, "utf-16be"

    invoke-virtual {p2, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v7

    .line 2011
    .local v7, textPart:[B
    if-eqz p6, :cond_5

    .line 2012
    move-object/from16 v0, p6

    array-length v10, v0

    array-length v11, v7

    add-int/2addr v10, v11

    new-array v9, v10, [B

    .line 2013
    .restart local v9       #userData:[B
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p6

    array-length v12, v0

    move-object/from16 v0, p6

    invoke-static {v0, v10, v9, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2014
    const/4 v10, 0x0

    move-object/from16 v0, p6

    array-length v11, v0

    array-length v12, v7

    invoke-static {v7, v10, v9, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2019
    :goto_4
    array-length v10, v9

    const/16 v11, 0x8c

    if-le v10, v11, :cond_6

    .line 2021
    const/4 v6, 0x0

    goto :goto_0

    .line 2006
    .end local v7           #textPart:[B
    .end local v9           #userData:[B
    :catch_1
    move-exception v8

    .line 2007
    .local v8, uex:Ljava/io/UnsupportedEncodingException;
    const-string v10, "[gsm/SmsMessage]"

    const-string v11, "Implausible UnsupportedEncodingException "

    invoke-static {v10, v11, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2008
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 2016
    .end local v8           #uex:Ljava/io/UnsupportedEncodingException;
    .restart local v7       #textPart:[B
    :cond_5
    move-object v9, v7

    .restart local v9       #userData:[B
    goto :goto_4

    .line 2025
    :cond_6
    const/16 v10, 0x8

    invoke-virtual {v3, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2028
    move-wide/from16 v0, p4

    invoke-static {v0, v1, v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDeliverPduSCTS(JLjava/io/ByteArrayOutputStream;)Ljava/io/ByteArrayOutputStream;

    .line 2031
    if-eqz p6, :cond_7

    .line 2032
    array-length v10, v9

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v3, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2033
    move-object/from16 v0, p6

    array-length v10, v0

    invoke-virtual {v3, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2037
    :goto_5
    const/4 v10, 0x0

    array-length v11, v9

    invoke-virtual {v3, v9, v10, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_3

    .line 2035
    :cond_7
    array-length v10, v9

    invoke-virtual {v3, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_5

    .line 2045
    .end local v4           #ex:Lcom/android/internal/telephony/EncodeException;
    .end local v7           #textPart:[B
    .end local v9           #userData:[B
    :cond_8
    :try_start_3
    const-string/jumbo v10, "utf-16be"

    invoke-virtual {p2, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v7

    .line 2051
    .restart local v7       #textPart:[B
    if-eqz p6, :cond_9

    .line 2052
    move-object/from16 v0, p6

    array-length v10, v0

    array-length v11, v7

    add-int/2addr v10, v11

    new-array v9, v10, [B

    .line 2053
    .restart local v9       #userData:[B
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p6

    array-length v12, v0

    move-object/from16 v0, p6

    invoke-static {v0, v10, v9, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2054
    const/4 v10, 0x0

    move-object/from16 v0, p6

    array-length v11, v0

    array-length v12, v7

    invoke-static {v7, v10, v9, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2059
    :goto_6
    array-length v10, v9

    const/16 v11, 0x8c

    if-le v10, v11, :cond_a

    .line 2061
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 2046
    .end local v7           #textPart:[B
    .end local v9           #userData:[B
    :catch_2
    move-exception v8

    .line 2047
    .restart local v8       #uex:Ljava/io/UnsupportedEncodingException;
    const-string v10, "[gsm/SmsMessage]"

    const-string v11, "Implausible UnsupportedEncodingException "

    invoke-static {v10, v11, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2048
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 2056
    .end local v8           #uex:Ljava/io/UnsupportedEncodingException;
    .restart local v7       #textPart:[B
    :cond_9
    move-object v9, v7

    .restart local v9       #userData:[B
    goto :goto_6

    .line 2065
    :cond_a
    const/16 v10, 0x8

    invoke-virtual {v3, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2070
    const/4 v10, 0x0

    const-string v11, "dcm_copytosim_localtimezone"

    invoke-static {v10, v11}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 2072
    move-wide/from16 v0, p4

    invoke-static {v0, v1, v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDeliverPduSCTS_TimeZone(JLjava/io/ByteArrayOutputStream;)V

    .line 2079
    :goto_7
    if-eqz p6, :cond_c

    .line 2080
    array-length v10, v9

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v3, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2081
    move-object/from16 v0, p6

    array-length v10, v0

    invoke-virtual {v3, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2086
    :goto_8
    const/4 v10, 0x0

    array-length v11, v9

    invoke-virtual {v3, v9, v10, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto/16 :goto_3

    .line 2076
    :cond_b
    move-wide/from16 v0, p4

    invoke-static {v0, v1, v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDeliverPduSCTS(JLjava/io/ByteArrayOutputStream;)Ljava/io/ByteArrayOutputStream;

    goto :goto_7

    .line 2083
    :cond_c
    array-length v10, v9

    invoke-virtual {v3, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_8
.end method

.method private static getDeliverPduHead(Ljava/lang/String;Ljava/lang/String;BZILcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;)Ljava/io/ByteArrayOutputStream;
    .locals 6
    .parameter "scAddress"
    .parameter "originationAddress"
    .parameter "mtiByte"
    .parameter "statusReportRequested"
    .parameter "protocolId"
    .parameter "ret"

    .prologue
    const/4 v3, 0x0

    .line 1239
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0xb4

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1243
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    if-nez p0, :cond_1

    .line 1244
    const/4 v2, 0x0

    iput-object v2, p5, Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;->encodedScAddress:[B

    .line 1251
    :goto_0
    if-eqz p3, :cond_0

    .line 1253
    or-int/lit8 v2, p2, 0x20

    int-to-byte p2, v2

    .line 1254
    const-string v2, "GSM"

    const-string v4, "SMS status report requested"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    :cond_0
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1260
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->KRsmsnetworkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 1262
    .local v1, daBytes:[B
    if-nez v1, :cond_2

    .line 1263
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1264
    const/16 v2, 0x81

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1276
    :goto_1
    invoke-virtual {v0, p4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1277
    return-object v0

    .line 1246
    .end local v1           #daBytes:[B
    :cond_1
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p5, Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;->encodedScAddress:[B

    goto :goto_0

    .line 1268
    .restart local v1       #daBytes:[B
    :cond_2
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v4, v2, 0x2

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xf0

    const/16 v5, 0xf0

    if-ne v2, v5, :cond_3

    const/4 v2, 0x1

    :goto_2
    sub-int v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1272
    array-length v2, v1

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    :cond_3
    move v2, v3

    .line 1268
    goto :goto_2
.end method

.method private static getDeliverPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;)Ljava/io/ByteArrayOutputStream;
    .locals 10
    .parameter "scAddress"
    .parameter "originatorAddress"
    .parameter "mtiByte"
    .parameter "statusReportRequested"
    .parameter "ret"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2135
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v7, 0xb4

    invoke-direct {v0, v7}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2138
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    if-nez p0, :cond_2

    .line 2139
    const/4 v7, 0x0

    iput-object v7, p4, Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;->encodedScAddress:[B

    .line 2145
    :goto_0
    if-eqz p3, :cond_0

    .line 2147
    or-int/lit8 v7, p2, 0x20

    int-to-byte p2, v7

    .line 2148
    const-string v7, "[gsm/SmsMessage]"

    const-string v8, "SMS status report requested"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    :cond_0
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2153
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v3

    .line 2156
    .local v3, oaBytes:[B
    if-nez v3, :cond_3

    .line 2157
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2161
    const/4 v5, 0x0

    const/4 v7, 0x0

    :try_start_0
    invoke-static {p1, v5, v7}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;II)[B

    move-result-object v2

    .line 2164
    .local v2, gsm7BitPackedAddress:[B
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    new-array v4, v5, [B

    .line 2165
    .local v4, readGsm7BitPackedAddress:[B
    const/4 v5, 0x1

    const/4 v7, 0x0

    array-length v8, v2

    add-int/lit8 v8, v8, -0x1

    invoke-static {v2, v5, v4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2167
    array-length v5, v4

    mul-int/lit8 v5, v5, 0x2

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2168
    const/16 v5, 0xd0

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2169
    const/4 v5, 0x0

    array-length v7, v4

    invoke-virtual {v0, v4, v5, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2185
    .end local v2           #gsm7BitPackedAddress:[B
    .end local v4           #readGsm7BitPackedAddress:[B
    :cond_1
    :goto_1
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2186
    return-object v0

    .line 2141
    .end local v3           #oaBytes:[B
    :cond_2
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v7

    iput-object v7, p4, Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;->encodedScAddress:[B

    goto :goto_0

    .line 2170
    .restart local v3       #oaBytes:[B
    :catch_0
    move-exception v1

    .line 2171
    .local v1, e:Lcom/android/internal/telephony/EncodeException;
    const-string v5, "[gsm/SmsMessage]"

    invoke-virtual {v1}, Lcom/android/internal/telephony/EncodeException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2177
    .end local v1           #e:Lcom/android/internal/telephony/EncodeException;
    :cond_3
    array-length v7, v3

    add-int/lit8 v7, v7, -0x1

    mul-int/lit8 v7, v7, 0x2

    array-length v8, v3

    add-int/lit8 v8, v8, -0x1

    aget-byte v8, v3, v8

    and-int/lit16 v8, v8, 0xf0

    const/16 v9, 0xf0

    if-ne v8, v9, :cond_4

    :goto_2
    sub-int v5, v7, v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2181
    array-length v5, v3

    invoke-virtual {v0, v3, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    :cond_4
    move v5, v6

    .line 2177
    goto :goto_2
.end method

.method private static getDeliverPduSCTS(JLjava/io/ByteArrayOutputStream;)Ljava/io/ByteArrayOutputStream;
    .locals 11
    .parameter "msgtime"
    .parameter "byteoutput"

    .prologue
    .line 2102
    new-instance v5, Landroid/text/format/Time;

    const-string v9, "UTC"

    invoke-direct {v5, v9}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 2103
    .local v5, sctstime:Landroid/text/format/Time;
    invoke-virtual {v5, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 2105
    iget v9, v5, Landroid/text/format/Time;->year:I

    const/16 v10, 0x7d0

    if-lt v9, v10, :cond_0

    iget v9, v5, Landroid/text/format/Time;->year:I

    add-int/lit16 v7, v9, -0x7d0

    .line 2106
    .local v7, year:I
    :goto_0
    iget v9, v5, Landroid/text/format/Time;->month:I

    add-int/lit8 v3, v9, 0x1

    .line 2110
    .local v3, month:I
    invoke-static {v7}, Lcom/android/internal/telephony/IccUtils;->gsmIntTobcdByte(I)B

    move-result v8

    .line 2111
    .local v8, yearByte:B
    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->gsmIntTobcdByte(I)B

    move-result v4

    .line 2112
    .local v4, monthByte:B
    iget v9, v5, Landroid/text/format/Time;->monthDay:I

    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->gsmIntTobcdByte(I)B

    move-result v0

    .line 2113
    .local v0, dayByte:B
    iget v9, v5, Landroid/text/format/Time;->hour:I

    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->gsmIntTobcdByte(I)B

    move-result v1

    .line 2114
    .local v1, hourByte:B
    iget v9, v5, Landroid/text/format/Time;->minute:I

    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->gsmIntTobcdByte(I)B

    move-result v2

    .line 2115
    .local v2, minuteByte:B
    iget v9, v5, Landroid/text/format/Time;->second:I

    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->gsmIntTobcdByte(I)B

    move-result v6

    .line 2119
    .local v6, secondByte:B
    invoke-virtual {p2, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2120
    invoke-virtual {p2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2121
    invoke-virtual {p2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2122
    invoke-virtual {p2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2123
    invoke-virtual {p2, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2124
    invoke-virtual {p2, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2125
    const/4 v9, 0x0

    invoke-virtual {p2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2127
    return-object p2

    .line 2105
    .end local v0           #dayByte:B
    .end local v1           #hourByte:B
    .end local v2           #minuteByte:B
    .end local v3           #month:I
    .end local v4           #monthByte:B
    .end local v6           #secondByte:B
    .end local v7           #year:I
    .end local v8           #yearByte:B
    :cond_0
    iget v9, v5, Landroid/text/format/Time;->year:I

    add-int/lit16 v7, v9, -0x76c

    goto :goto_0
.end method

.method private static getDeliverPduSCTS_TimeZone(JLjava/io/ByteArrayOutputStream;)V
    .locals 6
    .parameter "msgtime"
    .parameter "outStream"

    .prologue
    .line 1205
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 1206
    .local v2, sctstime:Landroid/text/format/Time;
    invoke-virtual {v2, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 1207
    iget-object v4, v2, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 1209
    .local v0, mMyTimeZone:Ljava/util/TimeZone;
    iget v4, v2, Landroid/text/format/Time;->year:I

    const/16 v5, 0x7d0

    if-lt v4, v5, :cond_0

    iget v4, v2, Landroid/text/format/Time;->year:I

    add-int/lit16 v3, v4, -0x7d0

    .line 1210
    .local v3, year:I
    :goto_0
    iget v4, v2, Landroid/text/format/Time;->month:I

    add-int/lit8 v1, v4, 0x1

    .line 1213
    .local v1, month:I
    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->gsmIntTobcdByte(I)B

    move-result v4

    invoke-virtual {p2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1214
    invoke-static {v1}, Lcom/android/internal/telephony/IccUtils;->gsmIntTobcdByte(I)B

    move-result v4

    invoke-virtual {p2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1215
    iget v4, v2, Landroid/text/format/Time;->monthDay:I

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->gsmIntTobcdByte(I)B

    move-result v4

    invoke-virtual {p2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1216
    iget v4, v2, Landroid/text/format/Time;->hour:I

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->gsmIntTobcdByte(I)B

    move-result v4

    invoke-virtual {p2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1217
    iget v4, v2, Landroid/text/format/Time;->minute:I

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->gsmIntTobcdByte(I)B

    move-result v4

    invoke-virtual {p2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1218
    iget v4, v2, Landroid/text/format/Time;->second:I

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->gsmIntTobcdByte(I)B

    move-result v4

    invoke-virtual {p2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1219
    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v4

    const v5, 0x36ee80

    div-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x4

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->gsmIntTobcdByte(I)B

    move-result v4

    invoke-virtual {p2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1220
    return-void

    .line 1209
    .end local v1           #month:I
    .end local v3           #year:I
    :cond_0
    iget v4, v2, Landroid/text/format/Time;->year:I

    add-int/lit16 v3, v4, -0x76c

    goto :goto_0
.end method

.method public static getSCAddressTemp()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 1447
    const-string v0, ""

    .line 1449
    .local v0, mSCAddress:Ljava/lang/String;
    const-string v4, "addSCAddress"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v7, :cond_6

    .line 1451
    :try_start_0
    const-string/jumbo v4, "iusiminfo"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/IUsimInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IUsimInfo;

    move-result-object v1

    .line 1452
    .local v1, mUsimInfo:Lcom/android/internal/telephony/IUsimInfo;
    if-eqz v1, :cond_0

    .line 1453
    invoke-interface {v1}, Lcom/android/internal/telephony/IUsimInfo;->getSCAddressTemp()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1459
    .end local v1           #mUsimInfo:Lcom/android/internal/telephony/IUsimInfo;
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 1460
    const-string v4, "GSM"

    const-string v5, "getSCAddressTemp - scaddr: null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 1490
    .end local v0           #mSCAddress:Ljava/lang/String;
    :goto_1
    return-object v0

    .line 1462
    .restart local v0       #mSCAddress:Ljava/lang/String;
    :cond_1
    const-string v4, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1463
    const-string v4, "addSCAddress"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v7, :cond_4

    .line 1464
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    .line 1465
    .local v2, msisdn:Ljava/lang/String;
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSCAddressTemp - msisdn:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    .line 1468
    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v7, :cond_2

    .line 1470
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+82"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1474
    :goto_2
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSCAddressTemp - mSCAddress:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1473
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "82"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1479
    :cond_3
    const-string v4, "GSM"

    const-string v5, "getSCAddressTemp - msisdn:null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 1480
    goto/16 :goto_1

    .end local v2           #msisdn:Ljava/lang/String;
    :cond_4
    move-object v0, v3

    .line 1483
    goto/16 :goto_1

    .line 1486
    :cond_5
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSCAddressTemp - scaddr:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_6
    move-object v0, v3

    .line 1490
    goto/16 :goto_1

    .line 1455
    :catch_0
    move-exception v4

    goto/16 :goto_0
.end method

.method public static getStaticDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJII[B)Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;
    .locals 15
    .parameter "scAddress"
    .parameter "originatorAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "time"
    .parameter "protocolId"
    .parameter "dataCodingScheme"
    .parameter "header"

    .prologue
    .line 1097
    const-string v2, "GSM"

    const-string v3, "##########################################"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    const-string v2, "GSM"

    const-string v3, "[getStaticDeliverPdu]"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "scAddress: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "originatorAddress: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "message: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "time: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "protocolId: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "header: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    new-instance v9, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;

    move/from16 v0, p7

    move-object/from16 v1, p2

    invoke-direct {v9, v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;-><init>(ILjava/lang/String;)V

    .line 1107
    .local v9, dcs:Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;
    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->getEncodingType()I

    move-result v10

    .line 1108
    .local v10, encoding:I
    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->getDataCodingScheme()I

    move-result v12

    .line 1110
    .local v12, reCalcDataCodingScheme:I
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Dcs: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dataCodingScheme: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "encoding: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "reCalcDataCodingScheme: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    const-string v2, "GSM"

    const-string v3, "##########################################"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    if-eqz p1, :cond_0

    const-string v2, "Unknown"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1120
    :cond_0
    const-string p1, ""

    .line 1123
    :cond_1
    if-nez p2, :cond_2

    .line 1124
    const-string p2, ""

    .line 1127
    :cond_2
    new-instance v7, Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;

    invoke-direct {v7}, Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;-><init>()V

    .line 1130
    .local v7, ret:Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;
    if-eqz p8, :cond_3

    const/16 v2, 0x40

    :goto_0
    or-int/lit8 v2, v2, 0x0

    int-to-byte v4, v2

    .local v4, mtiByte:B
    move-object v2, p0

    move-object/from16 v3, p1

    move/from16 v5, p3

    move/from16 v6, p6

    .line 1132
    invoke-static/range {v2 .. v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDeliverPduHead(Ljava/lang/String;Ljava/lang/String;BZILcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v8

    .line 1137
    .local v8, bo:Ljava/io/ByteArrayOutputStream;
    if-nez v10, :cond_4

    .line 1138
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]: ENCODING_UNKNOWN"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    const/4 v7, 0x0

    .line 1193
    .end local v7           #ret:Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;
    :goto_1
    return-object v7

    .line 1130
    .end local v4           #mtiByte:B
    .end local v8           #bo:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #ret:Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 1142
    .restart local v4       #mtiByte:B
    .restart local v8       #bo:Ljava/io/ByteArrayOutputStream;
    :cond_4
    const/4 v2, 0x1

    if-ne v10, v2, :cond_5

    .line 1143
    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, p2

    move-object/from16 v1, p8

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BZ)[B
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v14

    .line 1164
    .local v14, userData:[B
    :goto_2
    const/4 v2, 0x1

    if-ne v10, v2, :cond_8

    .line 1165
    const/4 v2, 0x0

    aget-byte v2, v14, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xa0

    if-le v2, v3, :cond_7

    .line 1167
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]: Message too long("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x0

    aget-byte v5, v14, v5

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    const/4 v7, 0x0

    goto :goto_1

    .line 1144
    .end local v14           #userData:[B
    :cond_5
    const/4 v2, 0x2

    if-ne v10, v2, :cond_6

    .line 1146
    :try_start_1
    move-object/from16 v0, p2

    move-object/from16 v1, p8

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeEUC_KR(Ljava/lang/String;[B)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v14

    .restart local v14       #userData:[B
    goto :goto_2

    .line 1147
    .end local v14           #userData:[B
    :catch_0
    move-exception v13

    .line 1148
    .local v13, uex:Ljava/io/UnsupportedEncodingException;
    :try_start_2
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1149
    const/4 v7, 0x0

    goto :goto_1

    .line 1153
    .end local v13           #uex:Ljava/io/UnsupportedEncodingException;
    :cond_6
    :try_start_3
    move-object/from16 v0, p2

    move-object/from16 v1, p8

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v14

    .restart local v14       #userData:[B
    goto :goto_2

    .line 1154
    .end local v14           #userData:[B
    :catch_1
    move-exception v13

    .line 1155
    .restart local v13       #uex:Ljava/io/UnsupportedEncodingException;
    :try_start_4
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1156
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 1159
    .end local v13           #uex:Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v11

    .line 1160
    .local v11, ex:Lcom/android/internal/telephony/EncodeException;
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 1170
    .end local v11           #ex:Lcom/android/internal/telephony/EncodeException;
    .restart local v14       #userData:[B
    :cond_7
    invoke-virtual {v8, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1189
    :goto_3
    move-wide/from16 v0, p4

    invoke-static {v0, v1, v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDeliverPduSCTS_TimeZone(JLjava/io/ByteArrayOutputStream;)V

    .line 1191
    const/4 v2, 0x0

    array-length v3, v14

    invoke-virtual {v8, v14, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1192
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, v7, Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;->encodedMessage:[B

    goto/16 :goto_1

    .line 1171
    :cond_8
    const/4 v2, 0x2

    if-ne v10, v2, :cond_a

    .line 1172
    const/4 v2, 0x0

    aget-byte v2, v14, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x8c

    if-le v2, v3, :cond_9

    .line 1174
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]: Message too long("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x0

    aget-byte v5, v14, v5

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 1178
    :cond_9
    invoke-virtual {v8, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_3

    .line 1180
    :cond_a
    const/4 v2, 0x0

    aget-byte v2, v14, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x8c

    if-le v2, v3, :cond_b

    .line 1182
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]: Message too long("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x0

    aget-byte v5, v14, v5

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 1186
    :cond_b
    invoke-virtual {v8, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_3
.end method

.method public static getStaticSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 13
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "header"
    .parameter "dataCodingScheme"
    .parameter "protocolId"

    .prologue
    .line 982
    new-instance v2, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;

    move/from16 v0, p5

    invoke-direct {v2, v0, p2}, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;-><init>(ILjava/lang/String;)V

    .line 983
    .local v2, dcs:Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->getEncodingType()I

    move-result v3

    .line 984
    .local v3, encoding:I
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->getDataCodingScheme()I

    move-result v6

    .line 986
    .local v6, reCalcDataCodingScheme:I
    const-string v10, "GSM"

    const-string v11, "##########################################"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    const-string v10, "GSM"

    const-string v11, "[getStaticSubmitPdu]"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    const-string v10, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[Dcs: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsMessage$Dcs;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    const-string v10, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "scAddress: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    const-string v10, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "destinationAddress: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    const-string v10, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "message: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    const-string v10, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "statusReportRequested: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    const-string v10, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "header: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    const-string v10, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "dataCodingScheme: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p5

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    const-string v10, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "reCalcDataCodingScheme: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    const-string v10, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "encoding: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    const-string v10, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "protocolId: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p6

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    const-string v10, "GSM"

    const-string v11, "##########################################"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    if-nez p1, :cond_0

    .line 1002
    const/4 v7, 0x0

    .line 1088
    :goto_0
    return-object v7

    .line 1006
    :cond_0
    const-string v10, "Unknown"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    .line 1007
    const-string p1, ""

    .line 1011
    :cond_1
    if-nez p2, :cond_2

    .line 1012
    const-string p2, ""

    .line 1015
    :cond_2
    new-instance v7, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v7}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 1017
    .local v7, ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz p4, :cond_3

    const/16 v10, 0x40

    :goto_1
    or-int/lit8 v10, v10, 0x1

    int-to-byte v5, v10

    .line 1018
    .local v5, mtiByte:B
    move/from16 v0, p3

    invoke-static {p0, p1, v5, v0, v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v1

    .line 1023
    .local v1, bo:Ljava/io/ByteArrayOutputStream;
    if-nez v3, :cond_4

    .line 1024
    const-string v10, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]: ENCODING_UNKNOWN"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    const/4 v7, 0x0

    goto :goto_0

    .line 1017
    .end local v1           #bo:Ljava/io/ByteArrayOutputStream;
    .end local v5           #mtiByte:B
    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    .line 1028
    .restart local v1       #bo:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #mtiByte:B
    :cond_4
    const/4 v10, 0x1

    if-ne v3, v10, :cond_5

    .line 1029
    const/4 v10, 0x0

    :try_start_0
    move-object/from16 v0, p4

    invoke-static {p2, v0, v10}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BZ)[B
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v9

    .line 1050
    .local v9, userData:[B
    :goto_2
    const/4 v10, 0x1

    if-ne v3, v10, :cond_8

    .line 1051
    const/4 v10, 0x0

    aget-byte v10, v9, v10

    and-int/lit16 v10, v10, 0xff

    const/16 v11, 0xa0

    if-le v10, v11, :cond_7

    .line 1053
    const-string v10, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]: Message too long("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    aget-byte v12, v9, v12

    and-int/lit16 v12, v12, 0xff

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1030
    .end local v9           #userData:[B
    :cond_5
    const/4 v10, 0x2

    if-ne v3, v10, :cond_6

    .line 1032
    :try_start_1
    move-object/from16 v0, p4

    invoke-static {p2, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeEUC_KR(Ljava/lang/String;[B)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v9

    .restart local v9       #userData:[B
    goto :goto_2

    .line 1033
    .end local v9           #userData:[B
    :catch_0
    move-exception v8

    .line 1034
    .local v8, uex:Ljava/io/UnsupportedEncodingException;
    :try_start_2
    const-string v10, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1035
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1039
    .end local v8           #uex:Ljava/io/UnsupportedEncodingException;
    :cond_6
    :try_start_3
    move-object/from16 v0, p4

    invoke-static {p2, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v9

    .restart local v9       #userData:[B
    goto :goto_2

    .line 1040
    .end local v9           #userData:[B
    :catch_1
    move-exception v8

    .line 1041
    .restart local v8       #uex:Ljava/io/UnsupportedEncodingException;
    :try_start_4
    const-string v10, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1042
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1045
    .end local v8           #uex:Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v4

    .line 1046
    .local v4, ex:Lcom/android/internal/telephony/EncodeException;
    const-string v10, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1064
    .end local v4           #ex:Lcom/android/internal/telephony/EncodeException;
    .restart local v9       #userData:[B
    :cond_7
    invoke-virtual {v1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1086
    :goto_3
    const/4 v10, 0x0

    array-length v11, v9

    invoke-virtual {v1, v9, v10, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1087
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    iput-object v10, v7, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    goto/16 :goto_0

    .line 1065
    :cond_8
    const/4 v10, 0x2

    if-ne v3, v10, :cond_a

    .line 1066
    const/4 v10, 0x0

    aget-byte v10, v9, v10

    and-int/lit16 v10, v10, 0xff

    const/16 v11, 0x8c

    if-le v10, v11, :cond_9

    .line 1068
    const-string v10, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]: Message too long("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    aget-byte v12, v9, v12

    and-int/lit16 v12, v12, 0xff

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1073
    :cond_9
    invoke-virtual {v1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_3

    .line 1075
    :cond_a
    const/4 v10, 0x0

    aget-byte v10, v9, v10

    and-int/lit16 v10, v10, 0xff

    const/16 v11, 0x8c

    if-le v10, v11, :cond_b

    .line 1077
    const-string v10, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]: Message too long("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    aget-byte v12, v9, v12

    and-int/lit16 v12, v12, 0xff

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1082
    :cond_b
    invoke-virtual {v1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_3
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 10
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "destinationPort"
    .parameter "data"
    .parameter "statusReportRequested"

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 1389
    new-instance v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v1}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 1390
    .local v1, portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    iput p2, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 1391
    iput v9, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 1392
    iput-boolean v9, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 1394
    new-instance v3, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v3}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 1395
    .local v3, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    iput-object v1, v3, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 1397
    invoke-static {v3}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v4

    .line 1399
    .local v4, smsHeaderData:[B
    array-length v6, p3

    array-length v7, v4

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    const/16 v7, 0x8c

    if-le v6, v7, :cond_0

    .line 1400
    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SMS data message may only contain "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v4

    rsub-int v8, v8, 0x8c

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bytes"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 1440
    :goto_0
    return-object v2

    .line 1405
    :cond_0
    new-instance v2, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 1406
    .local v2, ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    const/16 v6, 0x41

    invoke-static {p0, p1, v6, p4, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 1413
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1417
    sget v6, Lcom/android/internal/telephony/gsm/SmsMessage;->vp:I

    if-lez v6, :cond_1

    .line 1418
    sget v6, Lcom/android/internal/telephony/gsm/SmsMessage;->vp:I

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1419
    const-string v6, "[gsm/SmsMessage]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[RIAN] vp = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/android/internal/telephony/gsm/SmsMessage;->vp:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    :cond_1
    sget v6, Lcom/android/internal/telephony/gsm/SmsMessage;->vp:I

    if-nez v6, :cond_2

    const-string v6, "dcm_validity_period_value"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1425
    sget v5, Lcom/android/internal/telephony/gsm/SmsMessage;->vp:I

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1430
    :cond_2
    array-length v5, p3

    array-length v6, v4

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1433
    array-length v5, v4

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1434
    array-length v5, v4

    invoke-virtual {v0, v4, v9, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1437
    array-length v5, p3

    invoke-virtual {v0, p3, v9, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1439
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iput-object v5, v2, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 1
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"

    .prologue
    .line 1370
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 8
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "header"

    .prologue
    const/4 v5, 0x0

    .line 638
    const/4 v0, 0x0

    const-string/jumbo v1, "turkishEncoding"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/android/internal/telephony/GsmAlphabet;->hasTurkishSplChars(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, v5

    invoke-static/range {v0 .. v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 642
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, v5

    move v7, v5

    invoke-static/range {v0 .. v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 16
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "header"
    .parameter "encoding"
    .parameter "protocolId"

    .prologue
    .line 811
    if-nez p1, :cond_0

    .line 812
    const/4 v7, 0x0

    .line 974
    :goto_0
    return-object v7

    .line 816
    :cond_0
    const-string v2, "Unknown"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 817
    const-string p1, ""

    .line 821
    :cond_1
    if-nez p2, :cond_2

    .line 822
    const-string p2, ""

    .line 825
    :cond_2
    new-instance v7, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v7}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 827
    .local v7, ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz p4, :cond_8

    const/16 v2, 0x40

    :goto_1
    or-int/lit8 v2, v2, 0x1

    int-to-byte v4, v2

    .local v4, mtiByte:B
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v5, p3

    move/from16 v6, p6

    .line 828
    invoke-static/range {v2 .. v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZILcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v8

    .line 833
    .local v8, bo:Ljava/io/ByteArrayOutputStream;
    if-nez p5, :cond_3

    .line 835
    const/16 p5, 0x1

    .line 839
    :cond_3
    const/4 v2, 0x0

    const-string/jumbo v3, "lgu_gsm_submit_encoding_type"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 840
    invoke-static {}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUsimType()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 841
    const/16 p5, 0x2

    .line 847
    :cond_4
    const/4 v2, 0x1

    move/from16 v0, p5

    if-ne v0, v2, :cond_b

    .line 848
    if-eqz p4, :cond_5

    :try_start_0
    move-object/from16 v0, p4

    array-length v2, v0

    if-nez v2, :cond_9

    :cond_5
    const/4 v12, 0x0

    .line 849
    .local v12, tmpLanguageTable:I
    :goto_2
    if-eqz p4, :cond_6

    move-object/from16 v0, p4

    array-length v2, v0

    if-nez v2, :cond_a

    :cond_6
    const/4 v11, 0x0

    .line 850
    .local v11, tmpLanguageShiftTable:I
    :goto_3
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1, v12, v11}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v15

    .line 854
    .local v15, userData:[B
    const/4 v2, 0x0

    const-string v3, "KREncodingScheme"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 855
    const/4 v2, 0x1

    invoke-static {}, Lcom/android/internal/telephony/gsm/SmsMessage;->isInsertedDomesticUsim()Z

    move-result v3

    if-ne v2, v3, :cond_7

    .line 856
    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v2

    iget v10, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 857
    .local v10, septets:I
    sget v2, Landroid/telephony/SmsMessage;->LIMIT_USER_DATA_SEPTETS:I

    if-le v10, v2, :cond_7

    .line 858
    new-instance v2, Lcom/android/internal/telephony/EncodeException;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 902
    .end local v10           #septets:I
    .end local v11           #tmpLanguageShiftTable:I
    .end local v12           #tmpLanguageTable:I
    .end local v15           #userData:[B
    :catch_0
    move-exception v9

    .line 905
    .local v9, ex:Lcom/android/internal/telephony/EncodeException;
    const/4 v2, 0x0

    const-string v3, "KREncodingScheme"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_f

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/internal/telephony/gsm/SmsMessage;->isInsertedDomesticUsim()Z

    move-result v3

    if-ne v2, v3, :cond_f

    .line 908
    :try_start_1
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeEUC_KR(Ljava/lang/String;[B)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v15

    .line 909
    .restart local v15       #userData:[B
    const/16 p5, 0x2

    .line 936
    .end local v9           #ex:Lcom/android/internal/telephony/EncodeException;
    :cond_7
    :goto_4
    const/4 v2, 0x1

    move/from16 v0, p5

    if-ne v0, v2, :cond_11

    .line 937
    const/4 v2, 0x0

    aget-byte v2, v15, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xa0

    if-le v2, v3, :cond_10

    .line 939
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]: Message too long("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x0

    aget-byte v5, v15, v5

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 827
    .end local v4           #mtiByte:B
    .end local v8           #bo:Ljava/io/ByteArrayOutputStream;
    .end local v15           #userData:[B
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 848
    .restart local v4       #mtiByte:B
    .restart local v8       #bo:Ljava/io/ByteArrayOutputStream;
    :cond_9
    :try_start_2
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v2

    iget v12, v2, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    goto/16 :goto_2

    .line 849
    .restart local v12       #tmpLanguageTable:I
    :cond_a
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v2

    iget v11, v2, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I
    :try_end_2
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    .line 865
    .end local v12           #tmpLanguageTable:I
    :cond_b
    const/4 v2, 0x2

    move/from16 v0, p5

    if-ne v0, v2, :cond_e

    .line 869
    const/4 v2, 0x0

    :try_start_3
    const-string/jumbo v3, "lgu_gsm_submit_encoding_type"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 870
    invoke-static {}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUsimType()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_c

    .line 871
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeKSC5601(Ljava/lang/String;[B)[B

    move-result-object v15

    .restart local v15       #userData:[B
    goto :goto_4

    .line 873
    .end local v15           #userData:[B
    :cond_c
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeEUC_KR(Ljava/lang/String;[B)[B

    move-result-object v15

    .restart local v15       #userData:[B
    goto :goto_4

    .line 876
    .end local v15           #userData:[B
    :cond_d
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeEUC_KR(Ljava/lang/String;[B)[B
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v15

    .restart local v15       #userData:[B
    goto/16 :goto_4

    .line 879
    .end local v15           #userData:[B
    :catch_1
    move-exception v14

    .line 881
    .local v14, uex:Ljava/io/UnsupportedEncodingException;
    :try_start_4
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v15

    .line 882
    .restart local v15       #userData:[B
    const/16 p5, 0x3

    goto/16 :goto_4

    .line 883
    .end local v15           #userData:[B
    :catch_2
    move-exception v13

    .line 884
    .local v13, ucs2_uex:Ljava/io/UnsupportedEncodingException;
    :try_start_5
    const-string v2, "GSM"

    const-string v3, "Implausible UnsupportedEncodingException "

    invoke-static {v2, v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_5 .. :try_end_5} :catch_0

    .line 887
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 894
    .end local v13           #ucs2_uex:Ljava/io/UnsupportedEncodingException;
    .end local v14           #uex:Ljava/io/UnsupportedEncodingException;
    :cond_e
    :try_start_6
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_6 .. :try_end_6} :catch_0

    move-result-object v15

    .restart local v15       #userData:[B
    goto/16 :goto_4

    .line 895
    .end local v15           #userData:[B
    :catch_3
    move-exception v14

    .line 896
    .restart local v14       #uex:Ljava/io/UnsupportedEncodingException;
    :try_start_7
    const-string v2, "GSM"

    const-string v3, "Implausible UnsupportedEncodingException "

    invoke-static {v2, v3, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_7 .. :try_end_7} :catch_0

    .line 899
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 910
    .end local v14           #uex:Ljava/io/UnsupportedEncodingException;
    .restart local v9       #ex:Lcom/android/internal/telephony/EncodeException;
    :catch_4
    move-exception v14

    .line 912
    .restart local v14       #uex:Ljava/io/UnsupportedEncodingException;
    :try_start_8
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_8} :catch_5

    move-result-object v15

    .line 913
    .restart local v15       #userData:[B
    const/16 p5, 0x3

    goto/16 :goto_4

    .line 914
    .end local v15           #userData:[B
    :catch_5
    move-exception v13

    .line 915
    .restart local v13       #ucs2_uex:Ljava/io/UnsupportedEncodingException;
    const-string v2, "GSM"

    const-string v3, "Implausible UnsupportedEncodingException "

    invoke-static {v2, v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 918
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 925
    .end local v13           #ucs2_uex:Ljava/io/UnsupportedEncodingException;
    .end local v14           #uex:Ljava/io/UnsupportedEncodingException;
    :cond_f
    :try_start_9
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_9} :catch_6

    move-result-object v15

    .line 926
    .restart local v15       #userData:[B
    const/16 p5, 0x3

    goto/16 :goto_4

    .line 927
    .end local v15           #userData:[B
    :catch_6
    move-exception v13

    .line 928
    .restart local v13       #ucs2_uex:Ljava/io/UnsupportedEncodingException;
    const-string v2, "GSM"

    const-string v3, "Implausible UnsupportedEncodingException "

    invoke-static {v2, v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 931
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 950
    .end local v9           #ex:Lcom/android/internal/telephony/EncodeException;
    .end local v13           #ucs2_uex:Ljava/io/UnsupportedEncodingException;
    .restart local v15       #userData:[B
    :cond_10
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 972
    :goto_5
    const/4 v2, 0x0

    array-length v3, v15

    invoke-virtual {v8, v15, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 973
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, v7, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    goto/16 :goto_0

    .line 951
    :cond_11
    const/4 v2, 0x2

    move/from16 v0, p5

    if-ne v0, v2, :cond_13

    .line 952
    const/4 v2, 0x0

    aget-byte v2, v15, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x8c

    if-le v2, v3, :cond_12

    .line 954
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]: Message too long("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x0

    aget-byte v5, v15, v5

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 959
    :cond_12
    const/16 v2, 0x84

    invoke-virtual {v8, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_5

    .line 961
    :cond_13
    const/4 v2, 0x0

    aget-byte v2, v15, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x8c

    if-le v2, v3, :cond_14

    .line 963
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]: Message too long("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x0

    aget-byte v5, v15, v5

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 968
    :cond_14
    const/16 v2, 0x8

    invoke-virtual {v8, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_5
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 21
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "header"
    .parameter "encoding"
    .parameter "languageTable"
    .parameter "languageShiftTable"

    .prologue
    .line 666
    const/4 v4, 0x0

    const-string v5, "addProtocolID"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 667
    const/4 v10, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    invoke-static/range {v4 .. v10}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v16

    .line 802
    :goto_0
    return-object v16

    .line 673
    :cond_0
    if-eqz p2, :cond_1

    if-nez p1, :cond_2

    .line 674
    :cond_1
    const/16 v16, 0x0

    goto :goto_0

    .line 676
    :cond_2
    if-nez p5, :cond_5

    .line 681
    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v5, "lgp930"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 682
    const/4 v14, 0x0

    .line 684
    .local v14, isConvertToGsmAlphabet:Z
    const-string/jumbo v4, "persist.radio.sms.forcegsm7"

    const-string v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 685
    .local v12, encodingType:Ljava/lang/String;
    const-string v4, "0"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 687
    move-object/from16 v0, p2

    invoke-static {v0, v14}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLGLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v18

    .line 693
    .end local v12           #encodingType:Ljava/lang/String;
    .end local v14           #isConvertToGsmAlphabet:Z
    .local v18, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :goto_1
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    move/from16 p5, v0

    .line 694
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    move/from16 p6, v0

    .line 695
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    move/from16 p7, v0

    .line 697
    const/4 v4, 0x1

    move/from16 v0, p5

    if-ne v0, v4, :cond_5

    if-nez p6, :cond_3

    if-eqz p7, :cond_5

    .line 698
    :cond_3
    if-eqz p4, :cond_8

    .line 699
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v17

    .line 700
    .local v17, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    move-object/from16 v0, v17

    iget v4, v0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    move/from16 v0, p6

    if-ne v4, v0, :cond_4

    move-object/from16 v0, v17

    iget v4, v0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    move/from16 v0, p7

    if-eq v4, v0, :cond_5

    .line 702
    :cond_4
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Updating language table in SMS header: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    iget v6, v0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p6

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    iget v6, v0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p7

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    move/from16 v0, p6

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 706
    move/from16 v0, p7

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 707
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object p4

    .line 718
    .end local v17           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    .end local v18           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_5
    :goto_2
    const/4 v4, 0x0

    const-string v5, "dcm_validity_period_default_value"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 719
    const/16 v4, 0xa9

    sput v4, Lcom/android/internal/telephony/gsm/SmsMessage;->vp:I

    .line 723
    :cond_6
    new-instance v16, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct/range {v16 .. v16}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 725
    .local v16, ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz p4, :cond_9

    const/16 v4, 0x40

    :goto_3
    or-int/lit8 v4, v4, 0x1

    int-to-byte v15, v4

    .line 726
    .local v15, mtiByte:B
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, v16

    invoke-static {v0, v1, v15, v2, v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v11

    .line 733
    .local v11, bo:Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x1

    move/from16 v0, p5

    if-ne v0, v4, :cond_a

    .line 734
    :try_start_0
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move/from16 v2, p6

    move/from16 v3, p7

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v20

    .line 760
    .local v20, userData:[B
    :goto_4
    const/4 v4, 0x1

    move/from16 v0, p5

    if-ne v0, v4, :cond_e

    .line 761
    const/4 v4, 0x0

    aget-byte v4, v20, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0xa0

    if-le v4, v5, :cond_b

    .line 763
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Message too long ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget-byte v6, v20, v6

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " septets)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 689
    .end local v11           #bo:Ljava/io/ByteArrayOutputStream;
    .end local v15           #mtiByte:B
    .end local v16           #ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v20           #userData:[B
    :cond_7
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v18

    .restart local v18       #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    goto/16 :goto_1

    .line 710
    :cond_8
    new-instance v17, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct/range {v17 .. v17}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 711
    .restart local v17       #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    move/from16 v0, p6

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 712
    move/from16 v0, p7

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 713
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object p4

    goto/16 :goto_2

    .line 725
    .end local v17           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    .end local v18           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .restart local v16       #ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_9
    const/4 v4, 0x0

    goto :goto_3

    .line 738
    .restart local v11       #bo:Ljava/io/ByteArrayOutputStream;
    .restart local v15       #mtiByte:B
    :cond_a
    :try_start_1
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v20

    .restart local v20       #userData:[B
    goto :goto_4

    .line 739
    .end local v20           #userData:[B
    :catch_0
    move-exception v19

    .line 740
    .local v19, uex:Ljava/io/UnsupportedEncodingException;
    :try_start_2
    const-string v4, "GSM"

    const-string v5, "Implausible UnsupportedEncodingException "

    move-object/from16 v0, v19

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 743
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 746
    .end local v19           #uex:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v13

    .line 750
    .local v13, ex:Lcom/android/internal/telephony/EncodeException;
    :try_start_3
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v20

    .line 751
    .restart local v20       #userData:[B
    const/16 p5, 0x3

    goto :goto_4

    .line 752
    .end local v20           #userData:[B
    :catch_2
    move-exception v19

    .line 753
    .restart local v19       #uex:Ljava/io/UnsupportedEncodingException;
    const-string v4, "GSM"

    const-string v5, "Implausible UnsupportedEncodingException "

    move-object/from16 v0, v19

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 756
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 774
    .end local v13           #ex:Lcom/android/internal/telephony/EncodeException;
    .end local v19           #uex:Ljava/io/UnsupportedEncodingException;
    .restart local v20       #userData:[B
    :cond_b
    const/4 v4, 0x0

    invoke-virtual {v11, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 788
    :goto_5
    sget v4, Lcom/android/internal/telephony/gsm/SmsMessage;->vp:I

    if-lez v4, :cond_c

    .line 789
    sget v4, Lcom/android/internal/telephony/gsm/SmsMessage;->vp:I

    invoke-virtual {v11, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 790
    const-string v4, "[gsm/SmsMessage]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[RHS0520] vp = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/internal/telephony/gsm/SmsMessage;->vp:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    :cond_c
    sget v4, Lcom/android/internal/telephony/gsm/SmsMessage;->vp:I

    if-nez v4, :cond_d

    const/4 v4, 0x0

    const-string v5, "dcm_validity_period_value"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 796
    sget v4, Lcom/android/internal/telephony/gsm/SmsMessage;->vp:I

    invoke-virtual {v11, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 800
    :cond_d
    const/4 v4, 0x0

    move-object/from16 v0, v20

    array-length v5, v0

    move-object/from16 v0, v20

    invoke-virtual {v11, v0, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 801
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    move-object/from16 v0, v16

    iput-object v4, v0, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    goto/16 :goto_0

    .line 776
    :cond_e
    const/4 v4, 0x0

    aget-byte v4, v20, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x8c

    if-le v4, v5, :cond_f

    .line 778
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Message too long ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget-byte v6, v20, v6

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bytes)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 783
    :cond_f
    const/16 v4, 0x8

    invoke-virtual {v11, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_5
.end method

.method private static getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZILcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;
    .locals 9
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "mtiByte"
    .parameter "statusReportRequested"
    .parameter "protocolId"
    .parameter "ret"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 1587
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0xb4

    invoke-direct {v0, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1591
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    if-nez p0, :cond_6

    .line 1595
    const-string v5, "addSCAddress"

    invoke-static {v8, v5}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-ne v5, v3, :cond_5

    .line 1597
    invoke-static {}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSCAddressTemp()Ljava/lang/String;

    move-result-object v2

    .line 1599
    .local v2, mSCAddress:Ljava/lang/String;
    if-nez v2, :cond_4

    .line 1600
    iput-object v8, p5, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    .line 1614
    .end local v2           #mSCAddress:Ljava/lang/String;
    :goto_0
    if-eqz p3, :cond_0

    .line 1616
    or-int/lit8 v5, p2, 0x20

    int-to-byte p2, v5

    .line 1620
    :cond_0
    sget v5, Lcom/android/internal/telephony/gsm/SmsMessage;->vp:I

    if-lez v5, :cond_1

    .line 1622
    or-int/lit8 v5, p2, 0x10

    int-to-byte p2, v5

    .line 1624
    :cond_1
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[RIAN] getSubmitPduHead - mtiByte "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    sget v5, Lcom/android/internal/telephony/gsm/SmsMessage;->vp:I

    if-nez v5, :cond_2

    const-string v5, "dcm_validity_period_value"

    invoke-static {v8, v5}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1629
    or-int/lit8 v5, p2, 0x10

    int-to-byte p2, v5

    .line 1633
    :cond_2
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1636
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1640
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 1643
    .local v1, daBytes:[B
    if-eqz v1, :cond_3

    .line 1648
    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    mul-int/lit8 v5, v5, 0x2

    array-length v6, v1

    add-int/lit8 v6, v6, -0x1

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xf0

    const/16 v7, 0xf0

    if-ne v6, v7, :cond_7

    :goto_1
    sub-int v3, v5, v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1652
    array-length v3, v1

    invoke-virtual {v0, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1657
    :cond_3
    invoke-virtual {v0, p4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1658
    return-object v0

    .line 1603
    .end local v1           #daBytes:[B
    .restart local v2       #mSCAddress:Ljava/lang/String;
    :cond_4
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v5

    iput-object v5, p5, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    goto :goto_0

    .line 1607
    .end local v2           #mSCAddress:Ljava/lang/String;
    :cond_5
    iput-object v8, p5, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    goto :goto_0

    .line 1609
    :cond_6
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v5

    iput-object v5, p5, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    goto :goto_0

    .restart local v1       #daBytes:[B
    :cond_7
    move v3, v4

    .line 1648
    goto :goto_1
.end method

.method private static getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;
    .locals 8
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "mtiByte"
    .parameter "statusReportRequested"
    .parameter "ret"

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1510
    const-string v1, "addProtocolID"

    invoke-static {v5, v1}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 1511
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZILcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v6

    .line 1567
    :goto_0
    return-object v6

    .line 1514
    :cond_0
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0xb4

    invoke-direct {v6, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1518
    .local v6, bo:Ljava/io/ByteArrayOutputStream;
    if-nez p0, :cond_4

    .line 1519
    iput-object v5, p4, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    .line 1526
    :goto_1
    if-eqz p3, :cond_1

    .line 1528
    or-int/lit8 v1, p2, 0x20

    int-to-byte p2, v1

    .line 1532
    :cond_1
    sget v1, Lcom/android/internal/telephony/gsm/SmsMessage;->vp:I

    if-lez v1, :cond_2

    .line 1534
    or-int/lit8 v1, p2, 0x10

    int-to-byte p2, v1

    .line 1536
    :cond_2
    const-string v1, "[gsm/SmsMessage]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[RIAN] getSubmitPduHead - mtiByte "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    const-string v1, "[gsm/SmsMessage]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[RIAN] getSubmitPduHead - vp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/internal/telephony/gsm/SmsMessage;->vp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    sget v1, Lcom/android/internal/telephony/gsm/SmsMessage;->vp:I

    if-nez v1, :cond_3

    const-string v1, "dcm_validity_period_value"

    invoke-static {v5, v1}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1542
    or-int/lit8 v1, p2, 0x10

    int-to-byte p2, v1

    .line 1543
    const-string v1, "[gsm/SmsMessage]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[1][Yeonjung.lee] getSubmitPduHead - mtiByte "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    const-string v1, "[gsm/SmsMessage]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[1][Yeonjung.lee] getSubmitPduHead - vp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/internal/telephony/gsm/SmsMessage;->vp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    :cond_3
    invoke-virtual {v6, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1551
    invoke-virtual {v6, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1555
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v7

    .line 1559
    .local v7, daBytes:[B
    array-length v1, v7

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v1, v1, 0x2

    array-length v2, v7

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, v7, v2

    and-int/lit16 v2, v2, 0xf0

    const/16 v3, 0xf0

    if-ne v2, v3, :cond_5

    :goto_2
    sub-int v0, v1, v0

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1563
    array-length v0, v7

    invoke-virtual {v6, v7, v4, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1566
    invoke-virtual {v6, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_0

    .line 1521
    .end local v7           #daBytes:[B
    :cond_4
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p4, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    goto/16 :goto_1

    .restart local v7       #daBytes:[B
    :cond_5
    move v0, v4

    .line 1559
    goto :goto_2
.end method

.method private static getSubmitPduHeadforEmailOverSms(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;
    .locals 7
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "mtiByte"
    .parameter "statusReportRequested"
    .parameter "ret"

    .prologue
    const/4 v4, 0x0

    .line 1669
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0xb4

    invoke-direct {v0, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1673
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    if-nez p0, :cond_3

    .line 1674
    const/4 v3, 0x0

    iput-object v3, p4, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    .line 1681
    :goto_0
    if-eqz p3, :cond_0

    .line 1683
    or-int/lit8 v3, p2, 0x20

    int-to-byte p2, v3

    .line 1689
    :cond_0
    sget v3, Lcom/android/internal/telephony/gsm/SmsMessage;->vp:I

    if-lez v3, :cond_1

    .line 1690
    or-int/lit8 v3, p2, 0x10

    int-to-byte p2, v3

    .line 1694
    :cond_1
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1697
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1701
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 1706
    .local v1, daBytes:[B
    if-eqz v1, :cond_2

    .line 1707
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    mul-int/lit8 v5, v3, 0x2

    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xf0

    const/16 v6, 0xf0

    if-ne v3, v6, :cond_4

    const/4 v3, 0x1

    :goto_1
    sub-int v3, v5, v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1710
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xf0

    int-to-byte v2, v3

    .line 1713
    .local v2, lengthcheck:B
    const/16 v3, -0x80

    aput-byte v3, v1, v4

    .line 1714
    aget-byte v3, v1, v4

    or-int/lit8 v3, v3, 0x20

    int-to-byte v3, v3

    aput-byte v3, v1, v4

    .line 1715
    aget-byte v3, v1, v4

    or-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    aput-byte v3, v1, v4

    .line 1718
    array-length v3, v1

    invoke-virtual {v0, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1722
    .end local v2           #lengthcheck:B
    :cond_2
    const/16 v3, 0x32

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1724
    return-object v0

    .line 1676
    .end local v1           #daBytes:[B
    :cond_3
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p4, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    goto :goto_0

    .restart local v1       #daBytes:[B
    :cond_4
    move v3, v4

    .line 1707
    goto :goto_1
.end method

.method public static getSubmitPduforEmailoverSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BI)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 15
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "header"
    .parameter "encoding"

    .prologue
    .line 1732
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 1733
    :cond_0
    const/4 v12, 0x0

    .line 1824
    :goto_0
    return-object v12

    .line 1736
    :cond_1
    new-instance v12, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v12}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 1738
    .local v12, ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz p4, :cond_3

    const/16 v2, 0x40

    :goto_1
    or-int/lit8 v2, v2, 0x1

    int-to-byte v11, v2

    .line 1740
    .local v11, mtiByte:B
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-static {p0, v0, v11, v1, v12}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHeadforEmailOverSms(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v8

    .line 1750
    .local v8, bo:Ljava/io/ByteArrayOutputStream;
    if-nez p5, :cond_2

    .line 1752
    const/16 p5, 0x1

    .line 1755
    :cond_2
    const/4 v2, 0x1

    move/from16 v0, p5

    if-ne v0, v2, :cond_4

    .line 1756
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v14

    .line 1781
    .local v14, userData:[B
    :goto_2
    const/4 v2, 0x1

    move/from16 v0, p5

    if-ne v0, v2, :cond_5

    .line 1782
    const/4 v2, 0x0

    aget-byte v2, v14, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xa0

    if-le v2, v3, :cond_6

    .line 1784
    const/4 v12, 0x0

    goto :goto_0

    .line 1738
    .end local v8           #bo:Ljava/io/ByteArrayOutputStream;
    .end local v11           #mtiByte:B
    .end local v14           #userData:[B
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 1759
    .restart local v8       #bo:Ljava/io/ByteArrayOutputStream;
    .restart local v11       #mtiByte:B
    :cond_4
    :try_start_1
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v14

    .restart local v14       #userData:[B
    goto :goto_2

    .line 1760
    .end local v14           #userData:[B
    :catch_0
    move-exception v13

    .line 1761
    .local v13, uex:Ljava/io/UnsupportedEncodingException;
    :try_start_2
    const-string v2, "GSM"

    const-string v3, "Implausible UnsupportedEncodingException "

    invoke-static {v2, v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1764
    const/4 v12, 0x0

    goto :goto_0

    .line 1767
    .end local v13           #uex:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v10

    .line 1771
    .local v10, ex:Lcom/android/internal/telephony/EncodeException;
    :try_start_3
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v14

    .line 1772
    .restart local v14       #userData:[B
    const/16 p5, 0x3

    goto :goto_2

    .line 1773
    .end local v14           #userData:[B
    :catch_2
    move-exception v13

    .line 1774
    .restart local v13       #uex:Ljava/io/UnsupportedEncodingException;
    const-string v2, "GSM"

    const-string v3, "Implausible UnsupportedEncodingException "

    invoke-static {v2, v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1777
    const/4 v12, 0x0

    goto :goto_0

    .line 1797
    .end local v10           #ex:Lcom/android/internal/telephony/EncodeException;
    .end local v13           #uex:Ljava/io/UnsupportedEncodingException;
    .restart local v14       #userData:[B
    :cond_5
    const/4 v2, 0x0

    aget-byte v2, v14, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x8c

    if-le v2, v3, :cond_6

    .line 1799
    const/4 v12, 0x0

    goto :goto_0

    .line 1807
    :cond_6
    sget-object v2, Landroid/telephony/SmsMessage$MessageClass;->UNKNOWN:Landroid/telephony/SmsMessage$MessageClass;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x2

    move/from16 v4, p5

    invoke-static/range {v2 .. v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->createDataCodingScheme(Landroid/telephony/SmsMessage$MessageClass;ZIIZI)B

    move-result v9

    .line 1809
    .local v9, dcs:B
    invoke-virtual {v8, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1811
    const-string v2, "[gsm/SmsMessage]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DCS = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1815
    sget v2, Lcom/android/internal/telephony/gsm/SmsMessage;->vp:I

    if-lez v2, :cond_7

    .line 1816
    sget v2, Lcom/android/internal/telephony/gsm/SmsMessage;->vp:I

    invoke-virtual {v8, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1820
    :cond_7
    const/4 v2, 0x0

    array-length v3, v14

    invoke-virtual {v8, v14, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1822
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, v12, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    goto/16 :goto_0
.end method

.method public static getTPLayerLengthForPDU(Ljava/lang/String;)I
    .locals 4
    .parameter "pdu"

    .prologue
    .line 619
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 620
    .local v0, len:I
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 622
    .local v1, smscLen:I
    sub-int v2, v0, v1

    add-int/lit8 v2, v2, -0x1

    return v2
.end method

.method public static getTimeforSMSonSim()J
    .locals 2

    .prologue
    .line 3604
    sget-wide v0, Lcom/android/internal/telephony/gsm/SmsMessage;->timeSmsOnSim:J

    return-wide v0
.end method

.method public static getUsimType()I
    .locals 4

    .prologue
    .line 3768
    const/4 v1, 0x0

    .line 3771
    .local v1, usimType:I
    :try_start_0
    new-instance v2, Lcom/android/internal/telephony/UsimService;

    invoke-direct {v2}, Lcom/android/internal/telephony/UsimService;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/UsimService;->getUsimType()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3775
    :goto_0
    return v1

    .line 3772
    :catch_0
    move-exception v0

    .line 3773
    .local v0, throwable:Ljava/lang/Throwable;
    const-string v2, "GSM"

    const-string v3, "[LGT USIM CHECK!!]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isInsertedDomesticUsim()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3670
    const-string/jumbo v4, "gsm.sim.operator.numeric"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3673
    .local v0, numeric:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 3691
    :cond_0
    :goto_0
    return v2

    .line 3676
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    move v2, v3

    .line 3677
    goto :goto_0

    .line 3680
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x4

    if-le v4, v5, :cond_0

    .line 3682
    const/4 v4, 0x3

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 3687
    .local v1, smcc:Ljava/lang/String;
    const-string v4, "450"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    .line 3688
    goto :goto_0
.end method

.method public static makeSmsHeader(ILjava/lang/String;)[B
    .locals 11
    .parameter "readReplyValue"
    .parameter "replyAddress"

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 3628
    new-instance v3, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v3}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 3630
    .local v3, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    const-string/jumbo v5, "replyAddress"

    invoke-static {v10, v5}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-ne v5, v6, :cond_0

    .line 3631
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 3633
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->KRsmsnetworkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v0

    .line 3634
    .local v0, daBytes:[B
    new-instance v1, Lcom/android/internal/telephony/SmsHeader$ReplyAddress;

    invoke-direct {v1}, Lcom/android/internal/telephony/SmsHeader$ReplyAddress;-><init>()V

    .line 3635
    .local v1, replayaddress:Lcom/android/internal/telephony/SmsHeader$ReplyAddress;
    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader$ReplyAddress;->replyData:[B

    .line 3637
    if-nez v0, :cond_2

    .line 3638
    iput v7, v1, Lcom/android/internal/telephony/SmsHeader$ReplyAddress;->addressLength:I

    .line 3642
    :goto_0
    iput-object v1, v3, Lcom/android/internal/telephony/SmsHeader;->replyAddress:Lcom/android/internal/telephony/SmsHeader$ReplyAddress;

    .line 3648
    .end local v0           #daBytes:[B
    .end local v1           #replayaddress:Lcom/android/internal/telephony/SmsHeader$ReplyAddress;
    :cond_0
    const-string v5, "confirmRead"

    invoke-static {v10, v5}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-ne v5, v6, :cond_1

    .line 3649
    const/4 v5, -0x1

    if-le p0, v5, :cond_1

    .line 3650
    new-instance v2, Lcom/android/internal/telephony/SmsHeader$SmsConfirmRead;

    invoke-direct {v2}, Lcom/android/internal/telephony/SmsHeader$SmsConfirmRead;-><init>()V

    .line 3651
    .local v2, smsConfirmRead:Lcom/android/internal/telephony/SmsHeader$SmsConfirmRead;
    iput v6, v2, Lcom/android/internal/telephony/SmsHeader$SmsConfirmRead;->length:I

    .line 3652
    new-array v5, v6, [B

    iput-object v5, v2, Lcom/android/internal/telephony/SmsHeader$SmsConfirmRead;->confirmRead:[B

    .line 3653
    iget-object v5, v2, Lcom/android/internal/telephony/SmsHeader$SmsConfirmRead;->confirmRead:[B

    int-to-byte v6, p0

    aput-byte v6, v5, v7

    .line 3654
    iput-object v2, v3, Lcom/android/internal/telephony/SmsHeader;->smsConfirmRead:Lcom/android/internal/telephony/SmsHeader$SmsConfirmRead;

    .line 3659
    .end local v2           #smsConfirmRead:Lcom/android/internal/telephony/SmsHeader$SmsConfirmRead;
    :cond_1
    invoke-static {v3}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v4

    .line 3660
    .local v4, smsHeaderData:[B
    return-object v4

    .line 3641
    .end local v4           #smsHeaderData:[B
    .restart local v0       #daBytes:[B
    .restart local v1       #replayaddress:Lcom/android/internal/telephony/SmsHeader$ReplyAddress;
    :cond_2
    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    mul-int/lit8 v8, v5, 0x2

    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xf0

    const/16 v9, 0xf0

    if-ne v5, v9, :cond_3

    move v5, v6

    :goto_1
    sub-int v5, v8, v5

    iput v5, v1, Lcom/android/internal/telephony/SmsHeader$ReplyAddress;->addressLength:I

    goto :goto_0

    :cond_3
    move v5, v7

    goto :goto_1
.end method

.method public static newFromCDS(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 4
    .parameter "line"

    .prologue
    .line 564
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 565
    .local v1, msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-static {p0}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 569
    .end local v1           #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    :goto_0
    return-object v1

    .line 567
    :catch_0
    move-exception v0

    .line 568
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v2, "GSM"

    const-string v3, "CDS SMS PDU parsing failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 569
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static newFromCMT([Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 4
    .parameter "lines"

    .prologue
    .line 552
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 553
    .local v1, msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    const/4 v2, 0x1

    aget-object v2, p0, v2

    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 557
    .end local v1           #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    :goto_0
    return-object v1

    .line 555
    :catch_0
    move-exception v0

    .line 556
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v2, "GSM"

    const-string v3, "SMS PDU parsing failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 557
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private parsePdu([B)V
    .locals 4
    .parameter "pdu"

    .prologue
    .line 3007
    iput-object p1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mPdu:[B

    .line 3011
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;-><init>([B)V

    .line 3013
    .local v1, p:Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->scAddress:Ljava/lang/String;

    .line 3015
    iget-object v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->scAddress:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3023
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    .line 3025
    .local v0, firstByte:I
    and-int/lit8 v2, v0, 0x3

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mti:I

    .line 3026
    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mti:I

    packed-switch v2, :pswitch_data_0

    .line 3046
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unsupported message type"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3032
    :pswitch_0
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsDeliver(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    .line 3048
    :goto_0
    return-void

    .line 3037
    :pswitch_1
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsSubmit(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    goto :goto_0

    .line 3042
    :pswitch_2
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsStatusReport(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    goto :goto_0

    .line 3026
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private parseSmsDeliver(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .locals 6
    .parameter "p"
    .parameter "firstByte"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3100
    and-int/lit16 v1, p2, 0x80

    const/16 v4, 0x80

    if-ne v1, v4, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyPathPresent:Z

    .line 3102
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 3104
    iget-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v1, :cond_0

    .line 3111
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    .line 3115
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    .line 3122
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/telephony/SmsMessageBase;->scTimeMillis:J

    .line 3126
    and-int/lit8 v1, p2, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_2

    move v0, v2

    .line 3128
    .local v0, hasUserDataHeader:Z
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    .line 3129
    return-void

    .end local v0           #hasUserDataHeader:Z
    :cond_1
    move v1, v3

    .line 3100
    goto :goto_0

    :cond_2
    move v0, v3

    .line 3126
    goto :goto_1
.end method

.method private parseSmsStatusReport(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .locals 8
    .parameter "p"
    .parameter "firstByte"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 3057
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isStatusReportMessage:Z

    .line 3060
    and-int/lit8 v3, p2, 0x20

    if-nez v3, :cond_0

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->forSubmit:Z

    .line 3062
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageRef:I

    .line 3064
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->recipientAddress:Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    .line 3066
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/telephony/SmsMessageBase;->scTimeMillis:J

    .line 3068
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dischargeTimeMillis:J

    .line 3070
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->status:I

    .line 3073
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->moreDataPresent()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3075
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    .line 3076
    .local v0, extraParams:I
    move v2, v0

    .line 3077
    .local v2, moreExtraParams:I
    :goto_1
    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_1

    .line 3081
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v2

    goto :goto_1

    .end local v0           #extraParams:I
    .end local v2           #moreExtraParams:I
    :cond_0
    move v3, v5

    .line 3060
    goto :goto_0

    .line 3084
    .restart local v0       #extraParams:I
    .restart local v2       #moreExtraParams:I
    :cond_1
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_2

    .line 3085
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    .line 3088
    :cond_2
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_3

    .line 3089
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    .line 3092
    :cond_3
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_4

    .line 3093
    and-int/lit8 v3, p2, 0x40

    const/16 v6, 0x40

    if-ne v3, v6, :cond_5

    move v1, v4

    .line 3094
    .local v1, hasUserDataHeader:Z
    :goto_2
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    .line 3097
    .end local v0           #extraParams:I
    .end local v1           #hasUserDataHeader:Z
    .end local v2           #moreExtraParams:I
    :cond_4
    return-void

    .restart local v0       #extraParams:I
    .restart local v2       #moreExtraParams:I
    :cond_5
    move v1, v5

    .line 3093
    goto :goto_2
.end method

.method private parseSmsSubmit(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .locals 7
    .parameter "p"
    .parameter "firstByte"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 3165
    and-int/lit16 v2, p2, 0x80

    const/16 v5, 0x80

    if-ne v2, v5, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyPathPresent:Z

    .line 3167
    shr-int/lit8 v2, p2, 0x5

    and-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->statusReportReq:I

    .line 3169
    shr-int/lit8 v2, p2, 0x3

    and-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->vpFormatPresent:I

    .line 3171
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageRef:I

    .line 3172
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->destinationAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 3176
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    .line 3180
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    .line 3183
    const/4 v1, 0x0

    .line 3184
    .local v1, tmp:I
    iget v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->vpFormatPresent:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_2

    .line 3185
    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->countVpoctets(I)I

    move-result v1

    .line 3190
    :cond_0
    :goto_1
    sget-wide v5, Lcom/android/internal/telephony/gsm/SmsMessage;->timeSmsOnSim:J

    iput-wide v5, p0, Lcom/android/internal/telephony/SmsMessageBase;->scTimeMillis:J

    .line 3192
    and-int/lit8 v2, p2, 0x40

    const/16 v5, 0x40

    if-ne v2, v5, :cond_4

    move v0, v3

    .line 3194
    .local v0, hasUserDataHeader:Z
    :goto_2
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    .line 3195
    return-void

    .end local v0           #hasUserDataHeader:Z
    .end local v1           #tmp:I
    :cond_1
    move v2, v4

    .line 3165
    goto :goto_0

    .line 3186
    .restart local v1       #tmp:I
    :cond_2
    iget v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->vpFormatPresent:I

    if-eq v2, v3, :cond_3

    iget v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->vpFormatPresent:I

    const/4 v5, 0x3

    if-ne v2, v5, :cond_0

    .line 3187
    :cond_3
    const/4 v2, 0x7

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->countVpoctets(I)I

    move-result v1

    goto :goto_1

    :cond_4
    move v0, v4

    .line 3192
    goto :goto_2
.end method

.method private parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V
    .locals 16
    .parameter "p"
    .parameter "hasUserDataHeader"

    .prologue
    .line 3206
    const/4 v6, 0x0

    .line 3207
    .local v6, hasMessageClass:Z
    const/4 v12, 0x0

    .line 3209
    .local v12, userDataCompressed:Z
    const/4 v5, 0x0

    .line 3212
    .local v5, encodingType:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v13, v13, 0x80

    if-nez v13, :cond_8

    .line 3214
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v13, v13, 0x40

    if-eqz v13, :cond_3

    const/4 v13, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->automaticDeletion:Z

    .line 3215
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v13, v13, 0x20

    if-eqz v13, :cond_4

    const/4 v12, 0x1

    .line 3216
    :goto_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v13, v13, 0x10

    if-eqz v13, :cond_5

    const/4 v6, 0x1

    .line 3218
    :goto_2
    if-eqz v12, :cond_6

    .line 3219
    const-string v13, "GSM"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "4 - Unsupported SMS data coding scheme (compression) "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v15, v15, 0xff

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3338
    :cond_0
    :goto_3
    const/4 v13, 0x1

    if-ne v5, v13, :cond_17

    const/4 v13, 0x1

    :goto_4
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v0, v1, v13}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->constructUserData(ZZ)I

    move-result v3

    .line 3340
    .local v3, count:I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserData()[B

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/SmsMessageBase;->userData:[B

    .line 3341
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/SmsMessageBase;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 3351
    if-eqz p2, :cond_20

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/SmsMessageBase;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v13, v13, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-eqz v13, :cond_20

    .line 3352
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/SmsMessageBase;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v13, v13, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_20

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;

    .line 3353
    .local v9, msg:Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    iget v13, v9, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgIndType:I

    and-int/lit16 v10, v13, 0xff

    .line 3360
    .local v10, msgInd:I
    if-eqz v10, :cond_1

    const/16 v13, 0x80

    if-ne v10, v13, :cond_1f

    .line 3361
    :cond_1
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/internal/telephony/SmsMessageBase;->isMwi:Z

    .line 3364
    and-int/lit16 v13, v10, 0x80

    if-nez v13, :cond_18

    const/4 v13, 0x1

    :goto_6
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/internal/telephony/SmsMessageBase;->mwiDontStore:Z

    .line 3366
    const/16 v13, 0x80

    if-ne v10, v13, :cond_19

    .line 3368
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/internal/telephony/SmsMessageBase;->mwiDontStore:Z

    .line 3397
    :cond_2
    :goto_7
    iget v13, v9, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgCount:I

    and-int/lit16 v13, v13, 0xff

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    .line 3405
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    if-lez v13, :cond_1e

    .line 3406
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/internal/telephony/SmsMessageBase;->mwiSense:Z

    .line 3410
    :goto_8
    const-string v13, "GSM"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "MWI in TP-UDH for Vmail. Msg Ind = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " Dont store = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/internal/telephony/SmsMessageBase;->mwiDontStore:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " Vmail count = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 3214
    .end local v3           #count:I
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v9           #msg:Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    .end local v10           #msgInd:I
    :cond_3
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 3215
    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 3216
    :cond_5
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 3222
    :cond_6
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    shr-int/lit8 v13, v13, 0x2

    and-int/lit8 v13, v13, 0x3

    packed-switch v13, :pswitch_data_0

    goto/16 :goto_3

    .line 3224
    :pswitch_0
    const/4 v5, 0x1

    .line 3225
    goto/16 :goto_3

    .line 3228
    :pswitch_1
    const/4 v5, 0x3

    .line 3229
    goto/16 :goto_3

    .line 3234
    :pswitch_2
    const/4 v13, 0x0

    const-string v14, "KREncodingScheme"

    invoke-static {v13, v14}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_7

    .line 3235
    const/4 v5, 0x2

    .line 3236
    goto/16 :goto_3

    .line 3240
    :cond_7
    :pswitch_3
    const-string v13, "GSM"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "1 - Unsupported SMS data coding scheme "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v15, v15, 0xff

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3242
    const/4 v5, 0x2

    goto/16 :goto_3

    .line 3246
    :cond_8
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v13, v13, 0xf0

    const/16 v14, 0xf0

    if-ne v13, v14, :cond_a

    .line 3247
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->automaticDeletion:Z

    .line 3248
    const/4 v6, 0x1

    .line 3249
    const/4 v12, 0x0

    .line 3251
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v13, v13, 0x4

    if-nez v13, :cond_9

    .line 3253
    const/4 v5, 0x1

    goto/16 :goto_3

    .line 3256
    :cond_9
    const/4 v5, 0x2

    goto/16 :goto_3

    .line 3258
    :cond_a
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v13, v13, 0xf0

    const/16 v14, 0xc0

    if-eq v13, v14, :cond_b

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v13, v13, 0xf0

    const/16 v14, 0xd0

    if-eq v13, v14, :cond_b

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v13, v13, 0xf0

    const/16 v14, 0xe0

    if-ne v13, v14, :cond_11

    .line 3267
    :cond_b
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v13, v13, 0xf0

    const/16 v14, 0xe0

    if-ne v13, v14, :cond_c

    .line 3268
    const/4 v5, 0x3

    .line 3273
    :goto_9
    const/4 v12, 0x0

    .line 3274
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v13, v13, 0x8

    const/16 v14, 0x8

    if-ne v13, v14, :cond_d

    const/4 v2, 0x1

    .line 3278
    .local v2, active:Z
    :goto_a
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v13, v13, 0x3

    if-nez v13, :cond_10

    .line 3279
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/internal/telephony/SmsMessageBase;->isMwi:Z

    .line 3280
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/SmsMessageBase;->mwiSense:Z

    .line 3281
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v13, v13, 0xf0

    const/16 v14, 0xc0

    if-ne v13, v14, :cond_e

    const/4 v13, 0x1

    :goto_b
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/internal/telephony/SmsMessageBase;->mwiDontStore:Z

    .line 3284
    const/4 v13, 0x1

    if-ne v2, v13, :cond_f

    .line 3285
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    .line 3290
    :goto_c
    const-string v13, "GSM"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "MWI in DCS for Vmail. DCS = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v15, v15, 0xff

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " Dont store = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/internal/telephony/SmsMessageBase;->mwiDontStore:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " vmail count = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 3270
    .end local v2           #active:Z
    :cond_c
    const/4 v5, 0x1

    goto :goto_9

    .line 3274
    :cond_d
    const/4 v2, 0x0

    goto :goto_a

    .line 3281
    .restart local v2       #active:Z
    :cond_e
    const/4 v13, 0x0

    goto :goto_b

    .line 3287
    :cond_f
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    goto :goto_c

    .line 3295
    :cond_10
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/internal/telephony/SmsMessageBase;->isMwi:Z

    .line 3296
    const-string v13, "GSM"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "MWI in DCS for fax/email/other: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v15, v15, 0xff

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 3299
    .end local v2           #active:Z
    :cond_11
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v13, v13, 0xc0

    const/16 v14, 0x80

    if-ne v13, v14, :cond_16

    .line 3302
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    const/16 v14, 0x84

    if-ne v13, v14, :cond_13

    .line 3304
    const/4 v5, 0x4

    .line 3311
    :goto_d
    const/4 v13, 0x0

    const-string v14, "KREncodingScheme"

    invoke-static {v13, v14}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_0

    .line 3312
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->automaticDeletion:Z

    .line 3313
    const/4 v6, 0x0

    .line 3314
    const/4 v12, 0x0

    .line 3315
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v4, v13, 0xf0

    .line 3316
    .local v4, dataCodingScheme_byte:I
    const/16 v13, 0x80

    if-eq v4, v13, :cond_12

    const/16 v13, 0x90

    if-ne v4, v13, :cond_14

    .line 3317
    :cond_12
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    shr-int/lit8 v13, v13, 0x2

    and-int/lit8 v13, v13, 0x3

    packed-switch v13, :pswitch_data_1

    goto/16 :goto_3

    .line 3321
    :pswitch_4
    const/4 v5, 0x1

    .line 3322
    goto/16 :goto_3

    .line 3306
    .end local v4           #dataCodingScheme_byte:I
    :cond_13
    const-string v13, "GSM"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "5 - Unsupported SMS data coding scheme "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v15, v15, 0xff

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 3324
    .restart local v4       #dataCodingScheme_byte:I
    :pswitch_5
    const/4 v5, 0x2

    goto/16 :goto_3

    .line 3327
    :cond_14
    const/16 v13, 0xa0

    if-eq v4, v13, :cond_15

    const/16 v13, 0xb0

    if-ne v4, v13, :cond_0

    .line 3328
    :cond_15
    const/4 v5, 0x1

    goto/16 :goto_3

    .line 3333
    .end local v4           #dataCodingScheme_byte:I
    :cond_16
    const-string v13, "GSM"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "3 - Unsupported SMS data coding scheme "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v15, v15, 0xff

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 3338
    :cond_17
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 3364
    .restart local v3       #count:I
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v9       #msg:Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    .restart local v10       #msgInd:I
    :cond_18
    const/4 v13, 0x0

    goto/16 :goto_6

    .line 3370
    :cond_19
    const/4 v13, 0x0

    const-string v14, "KRVMSType"

    invoke-static {v13, v14}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1b

    .line 3371
    if-nez v10, :cond_2

    .line 3372
    const-string/jumbo v13, "gsm.sim.operator.numeric"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3374
    .local v8, mccmnc:Ljava/lang/String;
    const-string v13, "45008"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1a

    const-string v13, "45002"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1a

    const-string v13, "45005"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 3375
    :cond_1a
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/internal/telephony/SmsMessageBase;->mwiDontStore:Z

    goto/16 :goto_7

    .line 3379
    .end local v8           #mccmnc:Ljava/lang/String;
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/telephony/SmsMessageBase;->mwiDontStore:Z

    if-nez v13, :cond_2

    .line 3387
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v13, v13, 0xf0

    const/16 v14, 0xd0

    if-eq v13, v14, :cond_1c

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v13, v13, 0xf0

    const/16 v14, 0xe0

    if-ne v13, v14, :cond_1d

    :cond_1c
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v13, v13, 0x3

    if-eqz v13, :cond_2

    .line 3393
    :cond_1d
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/internal/telephony/SmsMessageBase;->mwiDontStore:Z

    goto/16 :goto_7

    .line 3408
    :cond_1e
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/internal/telephony/SmsMessageBase;->mwiSense:Z

    goto/16 :goto_8

    .line 3420
    :cond_1f
    const-string v13, "GSM"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "TP_UDH fax/email/extended msg/multisubscriber profile. Msg Ind = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 3428
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v9           #msg:Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    .end local v10           #msgInd:I
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->isCphsMwiMessage()Z

    move-result v13

    if-eqz v13, :cond_22

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/telephony/SmsMessageBase;->isMwi:Z

    if-nez v13, :cond_22

    .line 3429
    const-string v13, "[gsm/SmsMessage]"

    const-string v14, "CphsMwiMessage without UDHI"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3431
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->isCphsMwiMessage()Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/internal/telephony/SmsMessageBase;->isMwi:Z

    .line 3433
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v13, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_26

    .line 3434
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/internal/telephony/SmsMessageBase;->mwiSense:Z

    .line 3438
    :cond_21
    :goto_e
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    .line 3440
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwiDontStore()Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/internal/telephony/SmsMessageBase;->mwiDontStore:Z

    .line 3443
    :cond_22
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/internal/telephony/SmsMessageBase;->mwiDontStore:Z

    if-nez v13, :cond_23

    if-nez v3, :cond_23

    .line 3444
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/internal/telephony/SmsMessageBase;->mwiDontStore:Z

    .line 3445
    const-string v13, "[gsm/SmsMessage]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SMS Class 0 count = 0 mwiDontStore = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/internal/telephony/SmsMessageBase;->mwiDontStore:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3448
    :cond_23
    packed-switch v5, :pswitch_data_2

    .line 3488
    :goto_f
    const/4 v13, 0x0

    const-string v14, "dcm_service_type_ota_dm"

    invoke-static {v13, v14}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_24

    .line 3489
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getProtocolIdentifier()I

    move-result v11

    .line 3490
    .local v11, protocolIdentifier:I
    const/16 v13, 0x7d

    if-ne v11, v13, :cond_24

    .line 3491
    const-string v13, ""

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    .line 3498
    .end local v11           #protocolIdentifier:I
    :cond_24
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    if-eqz v13, :cond_25

    .line 3499
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseMessageBody()V

    .line 3502
    :cond_25
    const/4 v13, 0x0

    const-string v14, "doNotUse_Class2"

    invoke-static {v13, v14}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2c

    .line 3503
    if-nez v6, :cond_2b

    .line 3504
    sget-object v13, Landroid/telephony/SmsMessage$MessageClass;->UNKNOWN:Landroid/telephony/SmsMessage$MessageClass;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    .line 3532
    :goto_10
    return-void

    .line 3435
    :cond_26
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v13, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageClear()Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_21

    .line 3436
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/internal/telephony/SmsMessageBase;->mwiSense:Z

    goto :goto_e

    .line 3453
    :pswitch_6
    const/4 v13, 0x0

    const-string v14, "KREncodingScheme"

    invoke-static {v13, v14}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_27

    .line 3454
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataKSC5601(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    goto :goto_f

    .line 3459
    :cond_27
    const/4 v13, 0x0

    const-string/jumbo v14, "handle8bit"

    invoke-static {v13, v14}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_28

    .line 3460
    const-string v13, "GSM"

    const-string v14, "ENCODING_8BIT : messageBody is other binary data format"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3461
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataGSM8Bit(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    goto :goto_f

    .line 3464
    :cond_28
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    goto :goto_f

    .line 3474
    :pswitch_7
    if-eqz p2, :cond_29

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/SmsMessageBase;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget v13, v13, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    move v14, v13

    :goto_11
    if-eqz p2, :cond_2a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/SmsMessageBase;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget v13, v13, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    :goto_12
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v14, v13}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataGSM7Bit(III)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    goto/16 :goto_f

    :cond_29
    const/4 v13, 0x0

    move v14, v13

    goto :goto_11

    :cond_2a
    const/4 v13, 0x0

    goto :goto_12

    .line 3480
    :pswitch_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataUCS2(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    goto/16 :goto_f

    .line 3484
    :pswitch_9
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataKSC5601(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    goto/16 :goto_f

    .line 3506
    :cond_2b
    sget-object v13, Landroid/telephony/SmsMessage$MessageClass;->CLASS_1:Landroid/telephony/SmsMessage$MessageClass;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto/16 :goto_10

    .line 3511
    :cond_2c
    if-nez v6, :cond_2d

    .line 3512
    sget-object v13, Landroid/telephony/SmsMessage$MessageClass;->UNKNOWN:Landroid/telephony/SmsMessage$MessageClass;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto/16 :goto_10

    .line 3514
    :cond_2d
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v13, v13, 0x3

    packed-switch v13, :pswitch_data_3

    goto/16 :goto_10

    .line 3516
    :pswitch_a
    sget-object v13, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto/16 :goto_10

    .line 3519
    :pswitch_b
    sget-object v13, Landroid/telephony/SmsMessage$MessageClass;->CLASS_1:Landroid/telephony/SmsMessage$MessageClass;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto/16 :goto_10

    .line 3522
    :pswitch_c
    sget-object v13, Landroid/telephony/SmsMessage$MessageClass;->CLASS_2:Landroid/telephony/SmsMessage$MessageClass;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto/16 :goto_10

    .line 3525
    :pswitch_d
    sget-object v13, Landroid/telephony/SmsMessage$MessageClass;->CLASS_3:Landroid/telephony/SmsMessage$MessageClass;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto/16 :goto_10

    .line 3222
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 3317
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_4
    .end packed-switch

    .line 3448
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 3514
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public static setTimeforSMSonSIM(J)V
    .locals 0
    .parameter "timemillisec"

    .prologue
    .line 3583
    sput-wide p0, Lcom/android/internal/telephony/gsm/SmsMessage;->timeSmsOnSim:J

    .line 3584
    return-void
.end method

.method public static setTimeforSMSonUSIM(J)V
    .locals 0
    .parameter "timemillisec"

    .prologue
    .line 3593
    sput-wide p0, Lcom/android/internal/telephony/gsm/SmsMessage;->timeSmsOnSim:J

    .line 3594
    return-void
.end method


# virtual methods
.method public getConfirmReadInfo()Landroid/os/Bundle;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 3154
    const-string v3, "GsmSmsKTConfirmRead"

    move-object v1, v2

    check-cast v1, [[B

    invoke-static {v3, v2, v2, p0, v1}, Lcom/android/internal/telephony/SmsKrMessageManager;->getOperatorMessage(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher;Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;[[B)Lcom/android/internal/telephony/SmsOperatorBasicMessage;

    move-result-object v0

    .line 3155
    .local v0, confirmReadMessage:Lcom/android/internal/telephony/SmsOperatorBasicMessage;
    if-nez v0, :cond_0

    .line 3159
    :goto_0
    return-object v2

    :cond_0
    invoke-interface {v0}, Lcom/android/internal/telephony/SmsOperatorBasicMessage;->getInformation()Landroid/os/Bundle;

    move-result-object v2

    goto :goto_0
.end method

.method public getDataCodingScheme()I
    .locals 1

    .prologue
    .line 2895
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    return v0
.end method

.method public getMessageClass()Landroid/telephony/SmsMessage$MessageClass;
    .locals 1

    .prologue
    .line 3539
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    return-object v0
.end method

.method public getNumOfVoicemails()I
    .locals 2

    .prologue
    .line 3551
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->isMwi:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->isCphsMwiMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3552
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3554
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    .line 3558
    :goto_0
    const-string v0, "GSM"

    const-string v1, "CPHS voice mail message"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3560
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    return v0

    .line 3556
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    goto :goto_0
.end method

.method public getOriginalAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3758
    invoke-super {p0}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    .line 3759
    .local v0, originatingAddress:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 3760
    const-string v0, ""

    .line 3762
    .end local v0           #originatingAddress:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getOriginatingAddress()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3730
    const-string/jumbo v1, "kr_address_spec"

    invoke-static {v3, v1}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3731
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mti:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 3732
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getreplyAddress()Ljava/lang/String;

    move-result-object v0

    .line 3733
    .local v0, uiAddress:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 3748
    .end local v0           #uiAddress:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 3738
    :cond_0
    const-string/jumbo v1, "lgu_address_spec"

    invoke-static {v3, v1}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3739
    invoke-static {}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUsimType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 3740
    const-string v0, ""

    goto :goto_0

    .line 3742
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getOriginalAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3745
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getOriginalAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3748
    :cond_3
    invoke-super {p0}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getProtocolIdentifier()I
    .locals 1

    .prologue
    .line 2884
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    return v0
.end method

.method public getSmsDisplayMode()I
    .locals 1

    .prologue
    .line 3617
    const/4 v0, -0x1

    return v0
.end method

.method public getSpecialMessageInfo()Landroid/os/Bundle;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 3137
    const-string v4, "GsmSmsKRSpecialMessage"

    move-object v2, v3

    check-cast v2, [[B

    invoke-static {v4, v3, v3, p0, v2}, Lcom/android/internal/telephony/SmsKrMessageManager;->getOperatorMessage(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher;Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;[[B)Lcom/android/internal/telephony/SmsOperatorBasicMessage;

    move-result-object v1

    .line 3138
    .local v1, specialMessage:Lcom/android/internal/telephony/SmsOperatorBasicMessage;
    if-nez v1, :cond_0

    .line 3143
    :goto_0
    return-object v3

    .line 3142
    :cond_0
    invoke-interface {v1}, Lcom/android/internal/telephony/SmsOperatorBasicMessage;->getInformation()Landroid/os/Bundle;

    move-result-object v0

    .local v0, info:Landroid/os/Bundle;
    move-object v3, v0

    .line 3143
    goto :goto_0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 2983
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->status:I

    return v0
.end method

.method public getreplyAddress()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 3701
    const-string v5, "GsmSmsKTReplyAddress"

    move-object v3, v4

    check-cast v3, [[B

    invoke-static {v5, v4, v4, p0, v3}, Lcom/android/internal/telephony/SmsKrMessageManager;->getOperatorMessage(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher;Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;[[B)Lcom/android/internal/telephony/SmsOperatorBasicMessage;

    move-result-object v1

    .line 3702
    .local v1, replyAddress:Lcom/android/internal/telephony/SmsOperatorBasicMessage;
    if-nez v1, :cond_1

    .line 3718
    :cond_0
    :goto_0
    return-object v4

    .line 3706
    :cond_1
    invoke-interface {v1}, Lcom/android/internal/telephony/SmsOperatorBasicMessage;->getInformation()Landroid/os/Bundle;

    move-result-object v0

    .line 3707
    .local v0, info:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 3711
    const-string/jumbo v3, "valid"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 3712
    const-string/jumbo v3, "reply_address"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3713
    .local v2, tmpReplyAddress:Ljava/lang/String;
    if-nez v2, :cond_2

    .line 3714
    const-string v4, ""

    goto :goto_0

    :cond_2
    move-object v4, v2

    .line 3716
    goto :goto_0

    .line 3718
    .end local v2           #tmpReplyAddress:Ljava/lang/String;
    :cond_3
    const-string v4, ""

    goto :goto_0
.end method

.method public isCphsMwiMessage()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2911
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-nez v0, :cond_0

    .line 2913
    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageClear()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public isMWIClearMessage()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2920
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->isMwi:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mwiSense:Z

    if-nez v0, :cond_0

    .line 2924
    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageClear()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isMWISetMessage()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2931
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->isMwi:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mwiSense:Z

    if-eqz v0, :cond_0

    .line 2935
    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isMwiDontStore()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2942
    iget-boolean v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->isMwi:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->mwiDontStore:Z

    if-eqz v2, :cond_1

    .line 2965
    :cond_0
    :goto_0
    return v0

    .line 2947
    :cond_1
    const/4 v2, 0x0

    const-string v3, "ALS"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2948
    iget-boolean v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->isMwi:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->mwiDontStore:Z

    if-nez v2, :cond_3

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v2, v2, 0xf0

    const/16 v3, 0xd0

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v2, v2, 0xf0

    const/16 v3, 0xe0

    if-ne v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 2950
    goto :goto_0

    .line 2955
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->isCphsMwiMessage()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2959
    const-string v1, " "

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_4
    move v0, v1

    .line 2965
    goto :goto_0
.end method

.method public isMwiUrgentMessage()Z
    .locals 2

    .prologue
    .line 2975
    const-string v0, "GSM"

    const-string/jumbo v1, "isMwiUrgentMessage: is not supported in GSM mode."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2976
    const/4 v0, 0x0

    return v0
.end method

.method public isReplace()Z
    .locals 2

    .prologue
    .line 2901
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    and-int/lit16 v0, v0, 0xc0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    and-int/lit8 v0, v0, 0x3f

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    and-int/lit8 v0, v0, 0x3f

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReplyPathPresent()Z
    .locals 1

    .prologue
    .line 2995
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyPathPresent:Z

    return v0
.end method

.method public isStatusReportMessage()Z
    .locals 1

    .prologue
    .line 2989
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isStatusReportMessage:Z

    return v0
.end method

.method public isTypeZero()Z
    .locals 2

    .prologue
    .line 538
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUsimDataDownload()Z
    .locals 2

    .prologue
    .line 3570
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    sget-object v1, Landroid/telephony/SmsMessage$MessageClass;->CLASS_2:Landroid/telephony/SmsMessage$MessageClass;

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    const/16 v1, 0x7c

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
