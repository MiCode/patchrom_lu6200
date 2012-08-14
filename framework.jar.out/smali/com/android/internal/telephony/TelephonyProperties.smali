.class public interface abstract Lcom/android/internal/telephony/TelephonyProperties;
.super Ljava/lang/Object;
.source "TelephonyProperties.java"


# static fields
.field public static final CURRENT_ACTIVE_PHONE:Ljava/lang/String; = "gsm.current.phone-type"

.field public static final PROPERTY_AUTH_LOCK_FOR_CDMA:Ljava/lang/String; = "ril.cdma.authlock"

.field public static final PROPERTY_BASEBAND_IMSI:Ljava/lang/String; = "gsm.sim.operator.imsi"

.field public static final PROPERTY_BASEBAND_VERSION:Ljava/lang/String; = "gsm.version.baseband"

.field public static final PROPERTY_BIP_REFRESH_STATUS:Ljava/lang/String; = "persist.radio.refresh_status"

.field public static final PROPERTY_CALL_RING_DELAY:Ljava/lang/String; = "ro.telephony.call_ring.delay"

.field public static final PROPERTY_CAMPED_MCCMNC:Ljava/lang/String; = "persist.radio.camped_mccmnc"

.field public static final PROPERTY_CDMA_1X_REG_STATE:Ljava/lang/String; = "ril.cdma.1xRegState"

.field public static final PROPERTY_CDMA_IPPROTOCOL:Ljava/lang/String; = "persist.telephony.cdma.protocol"

.field public static final PROPERTY_CDMA_MSG_ID:Ljava/lang/String; = "persist.radio.cdma.msgid"

.field public static final PROPERTY_CDMA_ROAMING_IPPROTOCOL:Ljava/lang/String; = "persist.telephony.cdma.rproto"

.field public static final PROPERTY_DATA_NETWORK_TYPE:Ljava/lang/String; = "gsm.network.type"

.field public static final PROPERTY_DISABLE_CALL:Ljava/lang/String; = "ro.telephony.disable-call"

.field public static final PROPERTY_ECM_EXIT_TIMER:Ljava/lang/String; = "ro.cdma.ecmexittimer"

.field public static final PROPERTY_EONS_ENABLED:Ljava/lang/String; = "persist.eons.enabled"

.field public static final PROPERTY_GSM_ENCONDING:Ljava/lang/String; = "persist.radio.sms.forcegsm7"

.field public static final PROPERTY_GSM_MM_REJECT_CAUSE_EMERGENCY_CHECK:Ljava/lang/String; = "gsm.lge.is_emerstate"

.field public static final PROPERTY_GSM_REJECT_CAUSE:Ljava/lang/String; = "ril.gsm.reject_cause"

.field public static final PROPERTY_ICC_OPERATOR_ACTHPLMN:Ljava/lang/String; = "gsm.sim.operator.acthplmn"

.field public static final PROPERTY_ICC_OPERATOR_ALPHA:Ljava/lang/String; = "gsm.sim.operator.alpha"

.field public static final PROPERTY_ICC_OPERATOR_GID:Ljava/lang/String; = "gsm.sim.operator.gid"

.field public static final PROPERTY_ICC_OPERATOR_ISO_COUNTRY:Ljava/lang/String; = "gsm.sim.operator.iso-country"

.field public static final PROPERTY_ICC_OPERATOR_NUMERIC:Ljava/lang/String; = "gsm.sim.operator.numeric"

.field public static final PROPERTY_IDP_STRING:Ljava/lang/String; = "ro.cdma.idpstring"

.field public static final PROPERTY_INECM_MODE:Ljava/lang/String; = "ril.cdma.inecmmode"

.field public static final PROPERTY_LOCK_ORDER_FOR_CDMA:Ljava/lang/String; = "ril.cdma.maintreq"

.field public static final PROPERTY_LTE_ON_CDMA_DEVICE:Ljava/lang/String; = "telephony.lteOnCdmaDevice"

.field public static final PROPERTY_LTE_ON_CDMA_PRODUCT_TYPE:Ljava/lang/String; = "telephony.lteOnCdmaProductType"

.field public static final PROPERTY_MULTI_SIM_ENABLED:Ljava/lang/String; = "persist.dsds.enabled"

.field public static final PROPERTY_OMH_ENABLED:Ljava/lang/String; = "persist.omh.enabled"

.field public static final PROPERTY_OOS_IS_DISCONNECT:Ljava/lang/String; = "persist.telephony.oosisdc"

.field public static final PROPERTY_OPERATOR_ALPHA:Ljava/lang/String; = "gsm.operator.alpha"

.field public static final PROPERTY_OPERATOR_ISMANUAL:Ljava/lang/String; = "operator.ismanual"

.field public static final PROPERTY_OPERATOR_ISO_COUNTRY:Ljava/lang/String; = "gsm.operator.iso-country"

.field public static final PROPERTY_OPERATOR_ISROAMING:Ljava/lang/String; = "gsm.operator.isroaming"

.field public static final PROPERTY_OPERATOR_ISROAMING_PERSIST:Ljava/lang/String; = "persist.radio.isroaming"

.field public static final PROPERTY_OPERATOR_NUMERIC:Ljava/lang/String; = "gsm.operator.numeric"

.field public static final PROPERTY_OTASP_NUM_SCHEMA:Ljava/lang/String; = "ro.cdma.otaspnumschema"

.field public static final PROPERTY_REJECT_CODE_2_REGSTATE_3_5:Ljava/lang/String; = "gsm.rc_2_rs_3_5.exist"

.field public static final PROPERTY_RESET_ON_RADIO_TECH_CHANGE:Ljava/lang/String; = "persist.radio.reset_on_switch"

.field public static final PROPERTY_RIL_IMPL:Ljava/lang/String; = "gsm.version.ril-impl"

.field public static final PROPERTY_RIL_SENDS_MULTIPLE_CALL_RING:Ljava/lang/String; = "ro.telephony.call_ring.multiple"

.field public static final PROPERTY_SERVICE_DOMAIN_VALUE:Ljava/lang/String; = "ril.gsm.service_domain_value"

.field public static final PROPERTY_SIM_STATE:Ljava/lang/String; = "gsm.sim.state"

.field public static final PROPERTY_SIP_REG_STATE:Ljava/lang/String; = "net.sip_reg_state"

.field public static final PROPERTY_SMS_CDMA_FORMAT:Ljava/lang/String; = "persist.radio.sms_cdma_format"

.field public static final PROPERTY_SMS_RECEIVE:Ljava/lang/String; = "telephony.sms.receive"

.field public static final PROPERTY_SMS_RETRY_DELAY:Ljava/lang/String; = "persist.radio.sms_retry_delay"

.field public static final PROPERTY_SMS_SEND:Ljava/lang/String; = "telephony.sms.send"

.field public static final PROPERTY_SVDATA:Ljava/lang/String; = "ro.ril.svlte1x"

.field public static final PROPERTY_TEST_CSIM:Ljava/lang/String; = "persist.radio.test-csim"

.field public static final PROPERTY_WAKE_LOCK_TIMEOUT:Ljava/lang/String; = "ro.ril.wake_lock_timeout"

.field public static final SMS_SYNCHRONOUS_SENDING:Ljava/lang/String; = "persist.radio.sms_sync_sending"
