.class public final Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
.super Ljava/lang/Object;
.source "SmsEnvelope.java"


# static fields
.field public static final EMERGENCY_MESSAGE_ID_END:I = 0x1004

.field public static final EMERGENCY_MESSAGE_ID_START:I = 0x1000

.field public static final MESSAGE_TYPE_ACKNOWLEDGE:I = 0x2

.field public static final MESSAGE_TYPE_BROADCAST:I = 0x1

.field public static final MESSAGE_TYPE_POINT_TO_POINT:I = 0x0

.field public static final SMS_BEARER_DATA_MAX:I = 0xff

.field public static final TELESERVICE_ALWAYS_ON:I = 0xc250

.field public static final TELESERVICE_BROADCAST:I = 0x50000

.field public static final TELESERVICE_BUSINESS_EMAIL_NOTI:I = 0xc280

.field public static final TELESERVICE_CBS:I = 0xc000

.field public static final TELESERVICE_DUALNUMBER:I = 0xc029

.field public static final TELESERVICE_EMAIL_NOTI:I = 0xc258

.field public static final TELESERVICE_EPG:I = 0xc221

.field public static final TELESERVICE_FOTA_PROVISION:I = 0xc277

.field public static final TELESERVICE_IOND:I = 0xc001

.field public static final TELESERVICE_LMS:I = 0xf6fe

.field public static final TELESERVICE_MMS_P2P:I = 0xc015

.field public static final TELESERVICE_MWI:I = 0x40000

.field public static final TELESERVICE_NOT_SET:I = 0x0

.field public static final TELESERVICE_OZPUSH_LMS:I = 0xc00b

.field public static final TELESERVICE_OZPUSH_SMS:I = 0xc00a

.field public static final TELESERVICE_PLR:I = 0x80fb

.field public static final TELESERVICE_PUSH_LMS:I = 0xc256

.field public static final TELESERVICE_PUSH_SMS:I = 0xc257

.field public static final TELESERVICE_SCPT:I = 0x1006

.field public static final TELESERVICE_TDMB_CTRL:I = 0xc220

.field public static final TELESERVICE_UCCPUSH_LMS:I = 0xc006

.field public static final TELESERVICE_UCCPUSH_SMS:I = 0xc005

.field public static final TELESERVICE_VMN:I = 0x1003

.field public static final TELESERVICE_WAP:I = 0x1004

.field public static final TELESERVICE_WAPPUSH:I = 0xc010

.field public static final TELESERVICE_WAPPUSH_CP:I = 0xc00f

.field public static final TELESERVICE_WAPPUSH_EX_CP:I = 0xc00e

.field public static final TELESERVICE_WEBPUSH_LMS:I = 0xc264

.field public static final TELESERVICE_WEBPUSH_LMSCP:I = 0xc268

.field public static final TELESERVICE_WEBPUSH_LMSLGT:I = 0xc266

.field public static final TELESERVICE_WEBPUSH_SMS:I = 0xc263

.field public static final TELESERVICE_WEBPUSH_SMSCP:I = 0xc267

.field public static final TELESERVICE_WEBPUSH_SMSLGT:I = 0xc265

.field public static final TELESERVICE_WEMT:I = 0x1005

.field public static final TELESERVICE_WMT:I = 0x1002

.field public static final TELESERVICE_WPT:I = 0x1001


# instance fields
.field public bearerData:[B

.field public bearerReply:I

.field public causeCode:B

.field public destAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

.field public errorClass:B

.field public messageType:I

.field public origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

.field public origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

.field public replySeqNo:B

.field public serviceCategory:I

.field public teleService:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 181
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 183
    return-void
.end method

.method public static isMessageProcessTid(I)Z
    .locals 1
    .parameter "tid"

    .prologue
    .line 195
    sparse-switch p0, :sswitch_data_0

    .line 218
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 216
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 195
    nop

    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1002 -> :sswitch_0
        0x1003 -> :sswitch_0
        0xc005 -> :sswitch_0
        0xc006 -> :sswitch_0
        0xc00a -> :sswitch_0
        0xc00b -> :sswitch_0
        0xc00e -> :sswitch_0
        0xc00f -> :sswitch_0
        0xc010 -> :sswitch_0
        0xc015 -> :sswitch_0
        0xc029 -> :sswitch_0
        0xc263 -> :sswitch_0
        0xc264 -> :sswitch_0
        0xc265 -> :sswitch_0
        0xc266 -> :sswitch_0
        0xc267 -> :sswitch_0
        0xc268 -> :sswitch_0
        0xf6fe -> :sswitch_0
        0x50000 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public isCmas()Z
    .locals 2

    .prologue
    .line 186
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    const/16 v1, 0x1000

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    const/16 v1, 0x1004

    if-gt v0, v1, :cond_0

    .line 188
    const/4 v0, 0x1

    .line 190
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
