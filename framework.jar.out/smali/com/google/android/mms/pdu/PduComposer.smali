.class public Lcom/google/android/mms/pdu/PduComposer;
.super Ljava/lang/Object;
.source "PduComposer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/mms/pdu/PduComposer$1;,
        Lcom/google/android/mms/pdu/PduComposer$BufferStack;,
        Lcom/google/android/mms/pdu/PduComposer$PositionMarker;,
        Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final END_STRING_FLAG:I = 0x0

.field private static final LENGTH_QUOTE:I = 0x1f

.field private static final LONG_INTEGER_LENGTH_MAX:I = 0x8

.field private static final PDU_COMPOSER_BLOCK_SIZE:I = 0x400

.field private static final PDU_COMPOSE_CONTENT_ERROR:I = 0x1

.field private static final PDU_COMPOSE_FIELD_NOT_SET:I = 0x2

.field private static final PDU_COMPOSE_FIELD_NOT_SUPPORTED:I = 0x3

.field private static final PDU_COMPOSE_SUCCESS:I = 0x0

.field private static final PDU_EMAIL_ADDRESS_TYPE:I = 0x2

.field private static final PDU_IPV4_ADDRESS_TYPE:I = 0x3

.field private static final PDU_IPV6_ADDRESS_TYPE:I = 0x4

.field private static final PDU_PHONE_NUMBER_ADDRESS_TYPE:I = 0x1

.field private static final PDU_UNKNOWN_ADDRESS_TYPE:I = 0x5

.field private static final QUOTED_STRING_FLAG:I = 0x22

.field static final REGEXP_EMAIL_ADDRESS_TYPE:Ljava/lang/String; = "[a-zA-Z| ]*\\<{0,1}[a-zA-Z| ]+@{1}[a-zA-Z| ]+\\.{1}[a-zA-Z| ]+\\>{0,1}"

.field static final REGEXP_IPV4_ADDRESS_TYPE:Ljava/lang/String; = "[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}"

.field static final REGEXP_IPV6_ADDRESS_TYPE:Ljava/lang/String; = "[a-fA-F]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}"

.field static final REGEXP_PHONE_NUMBER_ADDRESS_TYPE:Ljava/lang/String; = "\\+?[0-9|\\.|\\-]+"

.field private static final SHORT_INTEGER_MAX:I = 0x7f

.field static final STRING_IPV4_ADDRESS_TYPE:Ljava/lang/String; = "/TYPE=IPV4"

.field static final STRING_IPV6_ADDRESS_TYPE:Ljava/lang/String; = "/TYPE=IPV6"

.field static final STRING_PHONE_NUMBER_ADDRESS_TYPE:Ljava/lang/String; = "/TYPE=PLMN"

.field private static final TEXT_MAX:I = 0x7f

.field private static mContentTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mMessage:Ljava/io/ByteArrayOutputStream;

.field private mPdu:Lcom/google/android/mms/pdu/GenericPdu;

.field private mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

.field protected mPosition:I

.field private final mResolver:Landroid/content/ContentResolver;

.field private mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 37
    const-class v1, Lcom/google/android/mms/pdu/PduComposer;

    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    sput-boolean v1, Lcom/google/android/mms/pdu/PduComposer;->$assertionsDisabled:Z

    .line 123
    const/4 v1, 0x0

    sput-object v1, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    .line 126
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    .line 129
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 130
    sget-object v1, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    sget-object v2, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 37
    .end local v0           #i:I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 132
    .restart local v0       #i:I
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V
    .locals 3
    .parameter "context"
    .parameter "pdu"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 140
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 98
    iput-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    .line 103
    iput v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 108
    iput-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    .line 118
    iput-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    .line 141
    iput-object p2, p0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    .line 142
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mResolver:Landroid/content/ContentResolver;

    .line 143
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/GenericPdu;->getPduHeaders()Lcom/google/android/mms/pdu/PduHeaders;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    .line 144
    new-instance v0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-direct {v0, p0, v1}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;-><init>(Lcom/google/android/mms/pdu/PduComposer;Lcom/google/android/mms/pdu/PduComposer$1;)V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    .line 145
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 146
    iput v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 147
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/mms/pdu/PduComposer;)Lcom/google/android/mms/pdu/PduComposer$BufferStack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    return-object v0
.end method

.method private appendAddressType(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 4
    .parameter "address"

    .prologue
    .line 471
    const/4 v2, 0x0

    .line 474
    .local v2, temp:Lcom/google/android/mms/pdu/EncodedStringValue;
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduComposer;->checkAddressType(Ljava/lang/String;)I

    move-result v0

    .line 475
    .local v0, addressType:I
    invoke-static {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->copy(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v2

    .line 476
    const/4 v3, 0x1

    if-ne v3, v0, :cond_1

    .line 478
    const-string v3, "/TYPE=PLMN"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->appendTextString([B)V

    :cond_0
    :goto_0
    move-object v3, v2

    .line 490
    .end local v0           #addressType:I
    :goto_1
    return-object v3

    .line 479
    .restart local v0       #addressType:I
    :cond_1
    const/4 v3, 0x3

    if-ne v3, v0, :cond_2

    .line 481
    const-string v3, "/TYPE=IPV4"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->appendTextString([B)V

    goto :goto_0

    .line 486
    .end local v0           #addressType:I
    :catch_0
    move-exception v1

    .line 487
    .local v1, e:Ljava/lang/NullPointerException;
    const/4 v3, 0x0

    goto :goto_1

    .line 482
    .end local v1           #e:Ljava/lang/NullPointerException;
    .restart local v0       #addressType:I
    :cond_2
    const/4 v3, 0x4

    if-ne v3, v0, :cond_0

    .line 484
    const-string v3, "/TYPE=IPV6"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->appendTextString([B)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private appendHeader(I)I
    .locals 30
    .parameter "field"

    .prologue
    .line 497
    packed-switch p1, :pswitch_data_0

    .line 702
    :pswitch_0
    const/16 v28, 0x3

    .line 705
    :goto_0
    return v28

    .line 499
    :pswitch_1
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v27

    .line 502
    .local v27, version:I
    if-nez v27, :cond_1

    .line 503
    const/16 v28, 0x12

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    .line 705
    .end local v27           #version:I
    :cond_0
    :goto_1
    const/16 v28, 0x0

    goto :goto_0

    .line 505
    .restart local v27       #version:I
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    goto :goto_1

    .line 512
    .end local v27           #version:I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v26

    .line 513
    .local v26, textString:[B
    if-nez v26, :cond_2

    .line 514
    const/16 v28, 0x2

    goto :goto_0

    .line 517
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 518
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    goto :goto_1

    .line 524
    .end local v26           #textString:[B
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v5

    .line 526
    .local v5, addr:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v5, :cond_3

    .line 527
    const/16 v28, 0x2

    goto :goto_0

    .line 531
    :cond_3
    const/16 v19, 0x0

    .local v19, i:I
    :goto_2
    array-length v0, v5

    move/from16 v28, v0

    move/from16 v0, v19

    move/from16 v1, v28

    if-ge v0, v1, :cond_0

    .line 532
    aget-object v28, v5, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendAddressType(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v23

    .line 533
    .local v23, temp:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v23, :cond_4

    .line 534
    const/16 v28, 0x1

    goto :goto_0

    .line 537
    :cond_4
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 538
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 531
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 546
    .end local v5           #addr:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v19           #i:I
    .end local v23           #temp:Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_4
    sget-object v28, Lcom/google/android/mms/ContentType;->OPERATOR_CODE:Ljava/lang/String;

    const-string v29, "VZW"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_6

    sget-object v28, Lcom/google/android/mms/ContentType;->COUNTRY_CODE:Ljava/lang/String;

    const-string v29, "US"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_6

    .line 547
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v3

    .line 550
    .local v3, MDN:Ljava/lang/String;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "1"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 552
    .local v4, VZW_MDN:Ljava/lang/String;
    new-instance v11, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v11, v4}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    .line 553
    .local v11, encodedNumbers:Lcom/google/android/mms/pdu/EncodedStringValue;
    const-string v28, "/TYPE=PLMN"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v11, v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->appendTextString([B)V

    .line 554
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 555
    invoke-static {v11}, Lcom/google/android/mms/pdu/EncodedStringValue;->copy(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v17

    .line 562
    .end local v3           #MDN:Ljava/lang/String;
    .end local v4           #VZW_MDN:Ljava/lang/String;
    .end local v11           #encodedNumbers:Lcom/google/android/mms/pdu/EncodedStringValue;
    .local v17, from:Lcom/google/android/mms/pdu/EncodedStringValue;
    :goto_3
    if-eqz v17, :cond_5

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_5

    new-instance v28, Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/String;-><init>([B)V

    const-string/jumbo v29, "insert-address-token"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_7

    .line 567
    :cond_5
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 569
    const/16 v28, 0x81

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    goto/16 :goto_1

    .line 557
    .end local v17           #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_6
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v17

    .restart local v17       #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    goto :goto_3

    .line 571
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v18

    .line 575
    .local v18, fstart:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    const/16 v28, 0x80

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 577
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendAddressType(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v23

    .line 578
    .restart local v23       #temp:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v23, :cond_8

    .line 579
    const/16 v28, 0x1

    goto/16 :goto_0

    .line 582
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 584
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v16

    .line 585
    .local v16, flen:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 586
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    goto/16 :goto_1

    .line 597
    .end local v16           #flen:I
    .end local v17           #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v18           #fstart:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v23           #temp:Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v21

    .line 598
    .local v21, octet:I
    if-nez v21, :cond_9

    .line 599
    const/16 v28, 0x2

    goto/16 :goto_0

    .line 602
    :cond_9
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 603
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_1

    .line 607
    .end local v21           #octet:I
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v6

    .line 608
    .local v6, date:J
    const-wide/16 v28, -0x1

    cmp-long v28, v28, v6

    if-nez v28, :cond_a

    .line 609
    const/16 v28, 0x2

    goto/16 :goto_0

    .line 612
    :cond_a
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 613
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/google/android/mms/pdu/PduComposer;->appendDateValue(J)V

    goto/16 :goto_1

    .line 619
    .end local v6           #date:J
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v8

    .line 620
    .local v8, deliveryTime:J
    const-wide/16 v28, -0x1

    cmp-long v28, v28, v8

    if-nez v28, :cond_b

    .line 621
    const/16 v28, 0x2

    goto/16 :goto_0

    .line 623
    :cond_b
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 630
    const/16 v22, 0x0

    .line 633
    .local v22, size:I
    move-wide/from16 v24, v8

    .line 634
    .local v24, tempTime:J
    :goto_4
    const-wide/16 v28, 0x0

    cmp-long v28, v24, v28

    if-eqz v28, :cond_c

    const/16 v28, 0x8

    move/from16 v0, v22

    move/from16 v1, v28

    if-ge v0, v1, :cond_c

    .line 635
    const/16 v28, 0x8

    ushr-long v24, v24, v28

    .line 634
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    .line 639
    :cond_c
    add-int/lit8 v22, v22, 0x1

    .line 640
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendShortLength(I)V

    .line 641
    const/16 v28, 0x80

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 642
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/google/android/mms/pdu/PduComposer;->appendDateValue(J)V

    goto/16 :goto_1

    .line 647
    .end local v8           #deliveryTime:J
    .end local v22           #size:I
    .end local v24           #tempTime:J
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v10

    .line 649
    .local v10, enString:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v10, :cond_d

    .line 650
    const/16 v28, 0x2

    goto/16 :goto_0

    .line 653
    :cond_d
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 654
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/google/android/mms/pdu/PduComposer;->appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    goto/16 :goto_1

    .line 658
    .end local v10           #enString:Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v20

    .line 659
    .local v20, messageClass:[B
    if-nez v20, :cond_e

    .line 660
    const/16 v28, 0x2

    goto/16 :goto_0

    .line 663
    :cond_e
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 664
    const-string v28, "advertisement"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v28

    if-eqz v28, :cond_f

    .line 666
    const/16 v28, 0x81

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_1

    .line 667
    :cond_f
    const-string v28, "auto"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v28

    if-eqz v28, :cond_10

    .line 669
    const/16 v28, 0x83

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_1

    .line 670
    :cond_10
    const-string/jumbo v28, "personal"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v28

    if-eqz v28, :cond_11

    .line 672
    const/16 v28, 0x80

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_1

    .line 673
    :cond_11
    const-string/jumbo v28, "informational"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v28

    if-eqz v28, :cond_12

    .line 675
    const/16 v28, 0x82

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_1

    .line 677
    :cond_12
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    goto/16 :goto_1

    .line 682
    .end local v20           #messageClass:[B
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v12

    .line 683
    .local v12, expiry:J
    const-wide/16 v28, -0x1

    cmp-long v28, v28, v12

    if-nez v28, :cond_13

    .line 684
    const/16 v28, 0x2

    goto/16 :goto_0

    .line 687
    :cond_13
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v15

    .line 692
    .local v15, expiryStart:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    const/16 v28, 0x81

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 693
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/google/android/mms/pdu/PduComposer;->appendLongInteger(J)V

    .line 695
    invoke-virtual {v15}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v14

    .line 696
    .local v14, expiryLength:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 697
    int-to-long v0, v14

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    goto/16 :goto_1

    .line 497
    nop

    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_a
        :pswitch_4
        :pswitch_9
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_8
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method protected static checkAddressType(Ljava/lang/String;)I
    .locals 2
    .parameter "address"

    .prologue
    const/4 v0, 0x5

    .line 1261
    if-nez p0, :cond_1

    .line 1279
    :cond_0
    :goto_0
    return v0

    .line 1265
    :cond_1
    const-string v1, "[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1267
    const/4 v0, 0x3

    goto :goto_0

    .line 1268
    :cond_2
    const-string v1, "\\+?[0-9|\\.|\\-]+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1270
    const/4 v0, 0x1

    goto :goto_0

    .line 1271
    :cond_3
    const-string v1, "[a-zA-Z| ]*\\<{0,1}[a-zA-Z| ]+@{1}[a-zA-Z| ]+\\.{1}[a-zA-Z| ]+\\>{0,1}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1273
    const/4 v0, 0x2

    goto :goto_0

    .line 1274
    :cond_4
    const-string v1, "[a-fA-F]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1276
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private makeAckInd()I
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 798
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    if-nez v2, :cond_0

    .line 799
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 800
    iput v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 804
    :cond_0
    const/16 v2, 0x8c

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 805
    const/16 v2, 0x85

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 808
    const/16 v2, 0x98

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-eqz v2, :cond_2

    .line 820
    :cond_1
    :goto_0
    return v0

    .line 813
    :cond_2
    const/16 v2, 0x8d

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 818
    const/16 v0, 0x91

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move v0, v1

    .line 820
    goto :goto_0
.end method

.method private makeMessageBody(Z)I
    .locals 32
    .parameter "sendReq"

    .prologue
    .line 919
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 921
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v17

    .line 926
    .local v17, ctStart:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v30, v0

    const/16 v31, 0x84

    invoke-virtual/range {v30 .. v31}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v8

    .line 928
    .local v8, contType:[B
    if-nez v8, :cond_1

    .line 929
    const/16 v30, 0x1

    .line 1120
    :cond_0
    :goto_0
    return v30

    .line 932
    :cond_1
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v8}, Ljava/lang/String;-><init>([B)V

    .line 935
    .local v11, contentType:Ljava/lang/String;
    sget-object v30, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 936
    .local v13, contentTypeIdentifier:Ljava/lang/Integer;
    if-nez v13, :cond_2

    .line 938
    const/16 v30, 0x1

    goto :goto_0

    .line 941
    :cond_2
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v30

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    .line 948
    if-eqz p1, :cond_4

    .line 949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    move-object/from16 v30, v0

    check-cast v30, Lcom/google/android/mms/pdu/SendReq;

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/mms/pdu/SendReq;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v5

    .line 954
    .local v5, body:Lcom/google/android/mms/pdu/PduBody;
    :goto_1
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v30

    if-nez v30, :cond_5

    .line 956
    :cond_3
    const-wide/16 v30, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    .line 957
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 958
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 959
    const/16 v30, 0x0

    goto :goto_0

    .line 951
    .end local v5           #body:Lcom/google/android/mms/pdu/PduBody;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    move-object/from16 v30, v0

    check-cast v30, Lcom/google/android/mms/pdu/RetrieveConf;

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/mms/pdu/RetrieveConf;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v5

    .restart local v5       #body:Lcom/google/android/mms/pdu/PduBody;
    goto :goto_1

    .line 964
    :cond_5
    const/16 v30, 0x0

    :try_start_0
    move/from16 v0, v30

    invoke-virtual {v5, v0}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v24

    .line 966
    .local v24, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v29

    .line 967
    .local v29, start:[B
    if-eqz v29, :cond_6

    .line 968
    const/16 v30, 0x8a

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 969
    const/16 v30, 0x3c

    const/16 v31, 0x0

    aget-byte v31, v29, v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_7

    const/16 v30, 0x3e

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v31, v0

    add-int/lit8 v31, v31, -0x1

    aget-byte v31, v29, v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_7

    .line 970
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 977
    :cond_6
    :goto_2
    const/16 v30, 0x89

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 978
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 984
    .end local v24           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v29           #start:[B
    :goto_3
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v16

    .line 985
    .local v16, ctLength:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 986
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 990
    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v28

    .line 991
    .local v28, partNum:I
    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    .line 992
    const/16 v21, 0x0

    .local v21, i:I
    :goto_4
    move/from16 v0, v21

    move/from16 v1, v28

    if-ge v0, v1, :cond_14

    .line 993
    move/from16 v0, v21

    invoke-virtual {v5, v0}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v24

    .line 994
    .restart local v24       #part:Lcom/google/android/mms/pdu/PduPart;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 995
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v4

    .line 997
    .local v4, attachment:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 998
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v12

    .line 1000
    .local v12, contentTypeBegin:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v25

    .line 1002
    .local v25, partContentType:[B
    if-nez v25, :cond_8

    .line 1004
    const/16 v30, 0x1

    goto/16 :goto_0

    .line 972
    .end local v4           #attachment:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v12           #contentTypeBegin:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v16           #ctLength:I
    .end local v21           #i:I
    .end local v25           #partContentType:[B
    .end local v28           #partNum:I
    .restart local v29       #start:[B
    :cond_7
    :try_start_1
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "<"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    new-instance v31, Ljava/lang/String;

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ">"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 980
    .end local v24           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v29           #start:[B
    :catch_0
    move-exception v19

    .line 981
    .local v19, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto/16 :goto_3

    .line 1008
    .end local v19           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v4       #attachment:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .restart local v12       #contentTypeBegin:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .restart local v16       #ctLength:I
    .restart local v21       #i:I
    .restart local v24       #part:Lcom/google/android/mms/pdu/PduPart;
    .restart local v25       #partContentType:[B
    .restart local v28       #partNum:I
    :cond_8
    sget-object v30, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    new-instance v31, Ljava/lang/String;

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v30 .. v31}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    .line 1010
    .local v26, partContentTypeIdentifier:Ljava/lang/Integer;
    if-nez v26, :cond_9

    .line 1011
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 1020
    :goto_5
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v23

    .line 1022
    .local v23, name:[B
    if-nez v23, :cond_a

    .line 1023
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v23

    .line 1025
    if-nez v23, :cond_a

    .line 1026
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v23

    .line 1028
    if-nez v23, :cond_a

    .line 1032
    const/16 v30, 0x1

    goto/16 :goto_0

    .line 1013
    .end local v23           #name:[B
    :cond_9
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v30

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    goto :goto_5

    .line 1036
    .restart local v23       #name:[B
    :cond_a
    const/16 v30, 0x85

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1037
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 1040
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v7

    .line 1041
    .local v7, charset:I
    if-eqz v7, :cond_b

    .line 1042
    const/16 v30, 0x81

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1043
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    .line 1046
    :cond_b
    invoke-virtual {v12}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v14

    .line 1047
    .local v14, contentTypeLength:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 1048
    int-to-long v0, v14

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 1049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 1052
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v9

    .line 1054
    .local v9, contentId:[B
    if-eqz v9, :cond_c

    .line 1055
    const/16 v30, 0xc0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1056
    const/16 v30, 0x3c

    const/16 v31, 0x0

    aget-byte v31, v9, v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_f

    const/16 v30, 0x3e

    array-length v0, v9

    move/from16 v31, v0

    add-int/lit8 v31, v31, -0x1

    aget-byte v31, v9, v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_f

    .line 1057
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/google/android/mms/pdu/PduComposer;->appendQuotedString([B)V

    .line 1064
    :cond_c
    :goto_6
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v10

    .line 1065
    .local v10, contentLocation:[B
    if-eqz v10, :cond_d

    .line 1066
    const/16 v30, 0x8e

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1067
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 1071
    :cond_d
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v20

    .line 1073
    .local v20, headerLength:I
    const/16 v18, 0x0

    .line 1074
    .local v18, dataLength:I
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v27

    .line 1076
    .local v27, partData:[B
    if-eqz v27, :cond_10

    .line 1077
    const/16 v30, 0x0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/mms/pdu/PduComposer;->arraycopy([BII)V

    .line 1078
    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v18, v0

    .line 1110
    :cond_e
    :goto_7
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v30

    sub-int v30, v30, v20

    move/from16 v0, v18

    move/from16 v1, v30

    if-eq v0, v1, :cond_13

    .line 1111
    new-instance v30, Ljava/lang/RuntimeException;

    const-string v31, "BUG: Length sanity check failed"

    invoke-direct/range {v30 .. v31}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v30

    .line 1059
    .end local v10           #contentLocation:[B
    .end local v18           #dataLength:I
    .end local v20           #headerLength:I
    .end local v27           #partData:[B
    :cond_f
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "<"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    new-instance v31, Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-direct {v0, v9}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ">"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendQuotedString(Ljava/lang/String;)V

    goto :goto_6

    .line 1081
    .restart local v10       #contentLocation:[B
    .restart local v18       #dataLength:I
    .restart local v20       #headerLength:I
    .restart local v27       #partData:[B
    :cond_10
    const/4 v15, 0x0

    .line 1083
    .local v15, cr:Ljava/io/InputStream;
    const/16 v30, 0x400

    :try_start_2
    move/from16 v0, v30

    new-array v6, v0, [B

    .line 1084
    .local v6, buffer:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v30, v0

    invoke-virtual/range {v24 .. v24}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v15

    .line 1085
    const/16 v22, 0x0

    .line 1086
    .local v22, len:I
    :goto_8
    invoke-virtual {v15, v6}, Ljava/io/InputStream;->read([B)I

    move-result v22

    const/16 v30, -0x1

    move/from16 v0, v22

    move/from16 v1, v30

    if-eq v0, v1, :cond_11

    .line 1087
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v22

    invoke-virtual {v0, v6, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1088
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    move/from16 v30, v0

    add-int v30, v30, v22

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_6

    .line 1089
    add-int v18, v18, v22

    goto :goto_8

    .line 1099
    :cond_11
    if-eqz v15, :cond_e

    .line 1101
    :try_start_3
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_7

    .line 1102
    :catch_1
    move-exception v30

    goto/16 :goto_7

    .line 1091
    .end local v6           #buffer:[B
    .end local v22           #len:I
    :catch_2
    move-exception v19

    .line 1092
    .local v19, e:Ljava/io/FileNotFoundException;
    const/16 v30, 0x1

    .line 1099
    if-eqz v15, :cond_0

    .line 1101
    :try_start_4
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 1102
    :catch_3
    move-exception v31

    goto/16 :goto_0

    .line 1093
    .end local v19           #e:Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v19

    .line 1094
    .local v19, e:Ljava/io/IOException;
    const/16 v30, 0x1

    .line 1099
    if-eqz v15, :cond_0

    .line 1101
    :try_start_5
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    .line 1102
    :catch_5
    move-exception v31

    goto/16 :goto_0

    .line 1095
    .end local v19           #e:Ljava/io/IOException;
    :catch_6
    move-exception v19

    .line 1096
    .local v19, e:Ljava/lang/RuntimeException;
    const/16 v30, 0x1

    .line 1099
    if-eqz v15, :cond_0

    .line 1101
    :try_start_6
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    goto/16 :goto_0

    .line 1102
    :catch_7
    move-exception v31

    goto/16 :goto_0

    .line 1099
    .end local v19           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v30

    if-eqz v15, :cond_12

    .line 1101
    :try_start_7
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    .line 1104
    :cond_12
    :goto_9
    throw v30

    .line 1114
    .end local v15           #cr:Ljava/io/InputStream;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 1115
    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    .line 1116
    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    .line 1117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 992
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_4

    .line 1120
    .end local v4           #attachment:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v7           #charset:I
    .end local v9           #contentId:[B
    .end local v10           #contentLocation:[B
    .end local v12           #contentTypeBegin:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v14           #contentTypeLength:I
    .end local v18           #dataLength:I
    .end local v20           #headerLength:I
    .end local v23           #name:[B
    .end local v24           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v25           #partContentType:[B
    .end local v26           #partContentTypeIdentifier:Ljava/lang/Integer;
    .end local v27           #partData:[B
    :cond_14
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 1102
    .restart local v4       #attachment:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .restart local v7       #charset:I
    .restart local v9       #contentId:[B
    .restart local v10       #contentLocation:[B
    .restart local v12       #contentTypeBegin:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .restart local v14       #contentTypeLength:I
    .restart local v15       #cr:Ljava/io/InputStream;
    .restart local v18       #dataLength:I
    .restart local v20       #headerLength:I
    .restart local v23       #name:[B
    .restart local v24       #part:Lcom/google/android/mms/pdu/PduPart;
    .restart local v25       #partContentType:[B
    .restart local v26       #partContentTypeIdentifier:Ljava/lang/Integer;
    .restart local v27       #partData:[B
    :catch_8
    move-exception v31

    goto :goto_9
.end method

.method private makeNotifyResp()I
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 760
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    if-nez v2, :cond_0

    .line 761
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 762
    iput v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 766
    :cond_0
    const/16 v2, 0x8c

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 767
    const/16 v2, 0x83

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 770
    const/16 v2, 0x98

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-eqz v2, :cond_2

    .line 791
    :cond_1
    :goto_0
    return v0

    .line 775
    :cond_2
    const/16 v2, 0x8d

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 780
    const/16 v2, 0x95

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 786
    const/16 v0, 0x91

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 787
    goto :goto_0

    :cond_3
    move v0, v1

    .line 791
    goto :goto_0
.end method

.method private makeReadRecInd()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 712
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    if-nez v2, :cond_0

    .line 713
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 714
    iput v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 718
    :cond_0
    const/16 v2, 0x8c

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 719
    const/16 v2, 0x87

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 722
    const/16 v2, 0x8d

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-eqz v2, :cond_2

    .line 753
    :cond_1
    :goto_0
    return v0

    .line 727
    :cond_2
    const/16 v2, 0x8b

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 732
    const/16 v2, 0x97

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 737
    const/16 v2, 0x89

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 742
    const/16 v2, 0x85

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 745
    const/16 v2, 0x9b

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 753
    goto :goto_0
.end method

.method private makeRetrieveConfPdu()I
    .locals 11

    .prologue
    const/16 v10, 0x8b

    const/16 v9, 0x84

    const/16 v8, 0x96

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1289
    iget-object v6, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    if-nez v6, :cond_0

    .line 1290
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v6, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 1291
    iput v5, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 1295
    :cond_0
    const/16 v6, 0x8c

    invoke-virtual {p0, v6}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1296
    invoke-virtual {p0, v9}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1299
    const/16 v6, 0x98

    invoke-virtual {p0, v6}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1300
    iget-object v6, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v7, 0x98

    invoke-virtual {v6, v7}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v3

    .line 1301
    .local v3, trid:[B
    if-nez v3, :cond_1

    .line 1303
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Transaction-ID is null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1305
    :cond_1
    invoke-virtual {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 1308
    invoke-virtual {p0, v10}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1309
    iget-object v6, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-virtual {v6, v10}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v1

    .line 1310
    .local v1, msgid:[B
    if-nez v1, :cond_2

    .line 1312
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Message-ID is null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1314
    :cond_2
    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 1317
    const/16 v6, 0x8d

    invoke-direct {p0, v6}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v6

    if-eqz v6, :cond_4

    .line 1384
    :cond_3
    :goto_0
    return v4

    .line 1322
    :cond_4
    const/16 v6, 0x85

    invoke-direct {p0, v6}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 1325
    const/16 v6, 0x89

    invoke-direct {p0, v6}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v6

    if-nez v6, :cond_3

    .line 1329
    const/4 v2, 0x0

    .line 1332
    .local v2, recipient:Z
    const/16 v6, 0x97

    invoke-direct {p0, v6}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v6

    if-eq v6, v4, :cond_5

    .line 1333
    const/4 v2, 0x1

    .line 1337
    :cond_5
    const/16 v6, 0x82

    invoke-direct {p0, v6}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v6

    if-eq v6, v4, :cond_6

    .line 1338
    const/4 v2, 0x1

    .line 1342
    :cond_6
    const/16 v6, 0x81

    invoke-direct {p0, v6}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v6

    if-eq v6, v4, :cond_7

    .line 1343
    const/4 v2, 0x1

    .line 1347
    :cond_7
    if-eqz v2, :cond_3

    .line 1353
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-virtual {v4, v8}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    .line 1355
    .local v0, enStr:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v0, :cond_8

    .line 1356
    invoke-virtual {p0, v8}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1357
    invoke-virtual {p0, v5}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 1364
    :goto_1
    const/16 v4, 0x8a

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 1367
    const/16 v4, 0x88

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 1370
    const/16 v4, 0x8f

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 1373
    const/16 v4, 0x86

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 1376
    const/16 v4, 0x90

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 1379
    invoke-virtual {p0, v9}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1382
    invoke-direct {p0, v5}, Lcom/google/android/mms/pdu/PduComposer;->makeMessageBody(Z)I

    move v4, v5

    .line 1384
    goto :goto_0

    .line 1359
    :cond_8
    invoke-direct {p0, v8}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    goto :goto_1
.end method

.method private makeSendReqPdu()I
    .locals 6

    .prologue
    const/16 v5, 0x98

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 827
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    if-nez v4, :cond_0

    .line 828
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 829
    iput v3, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 833
    :cond_0
    const/16 v4, 0x8c

    invoke-virtual {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 834
    const/16 v4, 0x80

    invoke-virtual {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 837
    invoke-virtual {p0, v5}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 839
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-virtual {v4, v5}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v1

    .line 840
    .local v1, trid:[B
    if-nez v1, :cond_1

    .line 842
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Transaction-ID is null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 844
    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 847
    const/16 v4, 0x8d

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-eqz v4, :cond_3

    .line 909
    :cond_2
    :goto_0
    return v2

    .line 852
    :cond_3
    const/16 v4, 0x85

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 855
    const/16 v4, 0x89

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-nez v4, :cond_2

    .line 859
    const/4 v0, 0x0

    .line 862
    .local v0, recipient:Z
    const/16 v4, 0x97

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-eq v4, v2, :cond_4

    .line 863
    const/4 v0, 0x1

    .line 867
    :cond_4
    const/16 v4, 0x82

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-eq v4, v2, :cond_5

    .line 868
    const/4 v0, 0x1

    .line 872
    :cond_5
    const/16 v4, 0x81

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-eq v4, v2, :cond_6

    .line 873
    const/4 v0, 0x1

    .line 877
    :cond_6
    if-eqz v0, :cond_2

    .line 882
    const/16 v4, 0x96

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 886
    const/16 v4, 0x8a

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 889
    const/16 v4, 0x88

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 892
    const/16 v4, 0x8f

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 895
    const/16 v4, 0x86

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 898
    const/16 v4, 0x90

    invoke-direct {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 901
    const/16 v4, 0x84

    invoke-virtual {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 906
    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->makeMessageBody(Z)I

    move v2, v3

    .line 909
    goto :goto_0
.end method


# virtual methods
.method protected append(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 212
    iget v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 213
    return-void
.end method

.method protected appendDateValue(J)V
    .locals 0
    .parameter "date"

    .prologue
    .line 412
    invoke-virtual {p0, p1, p2}, Lcom/google/android/mms/pdu/PduComposer;->appendLongInteger(J)V

    .line 413
    return-void
.end method

.method protected appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 6
    .parameter "enStr"

    .prologue
    .line 340
    sget-boolean v4, Lcom/google/android/mms/pdu/PduComposer;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 342
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v0

    .line 343
    .local v0, charset:I
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v3

    .line 344
    .local v3, textString:[B
    if-nez v3, :cond_1

    .line 363
    :goto_0
    return-void

    .line 353
    :cond_1
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 354
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v2

    .line 356
    .local v2, start:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    .line 357
    invoke-virtual {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 359
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v1

    .line 360
    .local v1, len:I
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 361
    int-to-long v4, v1

    invoke-virtual {p0, v4, v5}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 362
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    goto :goto_0
.end method

.method protected appendLongInteger(J)V
    .locals 9
    .parameter "longInt"

    .prologue
    const/16 v7, 0x8

    .line 273
    move-wide v3, p1

    .line 276
    .local v3, temp:J
    const/4 v2, 0x0

    .local v2, size:I
    :goto_0
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_0

    if-ge v2, v7, :cond_0

    .line 277
    ushr-long/2addr v3, v7

    .line 276
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 281
    :cond_0
    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendShortLength(I)V

    .line 285
    add-int/lit8 v5, v2, -0x1

    mul-int/lit8 v1, v5, 0x8

    .line 287
    .local v1, shift:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 288
    ushr-long v5, p1, v1

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    long-to-int v5, v5

    invoke-virtual {p0, v5}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 289
    add-int/lit8 v1, v1, -0x8

    .line 287
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 291
    :cond_1
    return-void
.end method

.method protected appendOctet(I)V
    .locals 0
    .parameter "number"

    .prologue
    .line 241
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 242
    return-void
.end method

.method protected appendQuotedString(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 467
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendQuotedString([B)V

    .line 468
    return-void
.end method

.method protected appendQuotedString([B)V
    .locals 2
    .parameter "text"

    .prologue
    const/4 v1, 0x0

    .line 450
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 451
    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/mms/pdu/PduComposer;->arraycopy([BII)V

    .line 452
    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 453
    return-void
.end method

.method protected appendShortInteger(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 230
    or-int/lit16 v0, p1, 0x80

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 231
    return-void
.end method

.method protected appendShortLength(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 254
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 255
    return-void
.end method

.method protected appendTextString(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 327
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 328
    return-void
.end method

.method protected appendTextString([B)V
    .locals 3
    .parameter "text"

    .prologue
    const/16 v2, 0x7f

    const/4 v1, 0x0

    .line 306
    aget-byte v0, p1, v1

    and-int/lit16 v0, v0, 0xff

    if-le v0, v2, :cond_0

    .line 307
    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 310
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/mms/pdu/PduComposer;->arraycopy([BII)V

    .line 311
    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 312
    return-void
.end method

.method protected appendUintvarInteger(J)V
    .locals 11
    .parameter "value"

    .prologue
    const-wide/16 v9, 0x7f

    .line 380
    const-wide/16 v1, 0x7f

    .line 382
    .local v1, max:J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v5, 0x5

    if-ge v0, v5, :cond_0

    .line 383
    cmp-long v5, p1, v1

    if-gez v5, :cond_1

    .line 390
    :cond_0
    :goto_1
    if-lez v0, :cond_2

    .line 391
    mul-int/lit8 v5, v0, 0x7

    ushr-long v3, p1, v5

    .line 392
    .local v3, temp:J
    and-long/2addr v3, v9

    .line 394
    const-wide/16 v5, 0x80

    or-long/2addr v5, v3

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    long-to-int v5, v5

    invoke-virtual {p0, v5}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 396
    add-int/lit8 v0, v0, -0x1

    .line 397
    goto :goto_1

    .line 387
    .end local v3           #temp:J
    :cond_1
    const/4 v5, 0x7

    shl-long v5, v1, v5

    or-long v1, v5, v9

    .line 382
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 399
    :cond_2
    and-long v5, p1, v9

    long-to-int v5, v5

    invoke-virtual {p0, v5}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 400
    return-void
.end method

.method protected appendValueLength(J)V
    .locals 2
    .parameter "value"

    .prologue
    .line 429
    const-wide/16 v0, 0x1f

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 430
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendShortLength(I)V

    .line 436
    :goto_0
    return-void

    .line 434
    :cond_0
    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 435
    invoke-virtual {p0, p1, p2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    goto :goto_0
.end method

.method protected arraycopy([BII)V
    .locals 1
    .parameter "buf"
    .parameter "pos"
    .parameter "length"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 204
    iget v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 205
    return-void
.end method

.method public make()[B
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 158
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v0

    .line 161
    .local v0, type:I
    packed-switch v0, :pswitch_data_0

    .line 196
    :cond_0
    :goto_0
    :pswitch_0
    return-object v1

    .line 163
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeSendReqPdu()I

    move-result v2

    if-nez v2, :cond_0

    .line 196
    :cond_1
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    goto :goto_0

    .line 171
    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeRetrieveConfPdu()I

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 178
    :pswitch_3
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeNotifyResp()I

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 183
    :pswitch_4
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeAckInd()I

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 188
    :pswitch_5
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeReadRecInd()I

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 161
    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
