.class public interface abstract Lcom/android/internal/telephony/gsm/RejectCause;
.super Ljava/lang/Object;
.source "RejectCause.java"


# static fields
.field public static final CALL_CANNOT_BE_IDENTIFIED:I = 0x26

.field public static final CONGESTTION:I = 0x16

.field public static final GPRS_SERVICES_AND_NON_GPRS_SERVICES_NOT_ALLOWED:I = 0x8

.field public static final GPRS_SERVICES_NOT_ALLOWED:I = 0x7

.field public static final GPRS_SERVICES_NOT_ALLOWED_IN_THIS_PLMN:I = 0xe

.field public static final GSM_AUTH_UNACCEPTED:I = 0x17

.field public static final IE_NON_EXISTANT:I = 0x63

.field public static final ILLEGAL_ME:I = 0x6

.field public static final ILLEGAL_MS:I = 0x3

.field public static final IMEI_NOT_ACCEPTED:I = 0x5

.field public static final IMPLICITLY_DETACHED:I = 0xa

.field public static final IMSI_UNKNOWN_IN_HLR:I = 0x2

.field public static final IMSI_UNKNOWN_IN_VLR:I = 0x4

.field public static final INVALID_MANDATORY_INFO:I = 0x60

.field public static final LA_NOT_ALLOWED:I = 0xc

.field public static final MAC_FAILURE:I = 0x14

.field public static final MESSAGE_TYPE_NON_EXISTANT:I = 0x61

.field public static final MESSAGE_TYPE_NOT_COMP_PRT_ST:I = 0x62

.field public static final MSC_TEMPORARILY_NOT_REACHABLE:I = 0x10

.field public static final MSG_ETC:I = 0x6f

.field public static final MSG_NOT_COMPATIBLE_PROTOCOL_STATE:I = 0x65

.field public static final MS_IDENTITY_CANNOT_BE_DERIVED_BY_THE_NETWORK:I = 0x9

.field public static final NATIONAL_ROAMING_NOT_ALLOWED:I = 0xd

.field public static final NETWORK_FAILURE:I = 0x11

.field public static final NO_PDP_CONTEXT_ACTIVATED:I = 0x28

.field public static final NO_SUITABLE_CELLS_IN_LA:I = 0xf

.field public static final PLMN_NOT_ALLOWED:I = 0xb

.field public static final REQ_SERV_OPT_NOT_SUBSCRIBED:I = 0x21

.field public static final RESULT_EXCEPTION:I = -0x1

.field public static final RESULT_NEED_PROCESSING:I = 0x0

.field public static final RESULT_NEED_QUERY:I = 0x2

.field public static final RESULT_NEED_WAITING:I = 0x1

.field public static final RETRY_UPON_ENTRY_INTO_A_NEW_CELL_MAX_VALUE:I = 0x3f

.field public static final RETRY_UPON_ENTRY_INTO_A_NEW_CELL_MIN_VALUE:I = 0x30

.field public static final SEMANTICALLY_INCORRECT_MSG:I = 0x5f

.field public static final SERVICE_OPTION_NOT_SUPPORTED:I = 0x20

.field public static final SERVICE_OPT_OUT_OF_ORDER:I = 0x22

.field public static final STATUS_CSPS_FOLLOW_ON_REQ:I = 0x68

.field public static final STATUS_CSSRV_ONLY:I = 0x7

.field public static final STATUS_CS_FOLLOW_ON_REQ:I = 0x65

.field public static final STATUS_ILLEGAL_ME:I = 0x6

.field public static final STATUS_ILLEGAL_MS:I = 0x3

.field public static final STATUS_IMSI_UNKNOWN:I = 0x2

.field public static final STATUS_LU_FAIL:I = 0x8

.field public static final STATUS_LU_PROCEED:I = 0x10

.field public static final STATUS_NOT_OPENED_NUMBER:I = 0x64

.field public static final STATUS_NOT_SET:I = 0x0

.field public static final STATUS_NW_SCANNING:I = 0x9

.field public static final STATUS_NW_SKT_SCANNED:I = 0x67

.field public static final STATUS_PS_FOLLOW_ON_REQ:I = 0x66

.field public static final SYNCH_FAILURE:I = 0x15


# virtual methods
.method public abstract bManualSelectionAvailable()Z
.end method

.method public abstract clearRejectCause(II)Z
.end method

.method public abstract handleServiceStatusResult(Landroid/os/AsyncResult;)I
.end method

.method public abstract initialize()V
.end method
