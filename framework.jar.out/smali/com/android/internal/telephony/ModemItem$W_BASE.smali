.class public Lcom/android/internal/telephony/ModemItem$W_BASE;
.super Ljava/lang/Object;
.source "ModemItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ModemItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "W_BASE"
.end annotation


# static fields
.field public static final LGE_MODEM_INFO_119ECC_CATEGORY:I = 0x6000f

.field public static final LGE_MODEM_INFO_ATTACH:I = 0x60021

.field public static final LGE_MODEM_INFO_AT_SERVICE:I = 0x60023

.field public static final LGE_MODEM_INFO_AutoCallAnswer:I = 0x60015

.field public static final LGE_MODEM_INFO_BOOT_COMPLETED:I = 0x60032

.field public static final LGE_MODEM_INFO_CAMPED_MCC:I = 0x60012

.field public static final LGE_MODEM_INFO_CIPHERING_MODE:I = 0x60008

.field public static final LGE_MODEM_INFO_CS_PROTECTION:I = 0x60024

.field public static final LGE_MODEM_INFO_DETACH:I = 0x60020

.field public static final LGE_MODEM_INFO_DISCONNECT_CAUSE:I = 0x60025

.field public static final LGE_MODEM_INFO_FACTORY_MODE:I = 0x60018

.field public static final LGE_MODEM_INFO_FACTORY_RESET_CONTORL:I = 0x60026

.field public static final LGE_MODEM_INFO_FAKE_MODE:I = 0x60019

.field public static final LGE_MODEM_INFO_FAKE_ROAMING:I = 0x60030

.field public static final LGE_MODEM_INFO_GCF_TEST_MODE:I = 0x60002

.field public static final LGE_MODEM_INFO_GO_TO_OFFLINE:I = 0x60033

.field public static final LGE_MODEM_INFO_HSDPA_CATEGORY:I = 0x60003

.field public static final LGE_MODEM_INFO_HSUPA_CATEGORY:I = 0x60004

.field public static final LGE_MODEM_INFO_IMEI:I = 0x60001

.field public static final LGE_MODEM_INFO_INIT:I = 0x60000

.field public static final LGE_MODEM_INFO_INTEGRITY_MODE:I = 0x60007

.field public static final LGE_MODEM_INFO_ISR_SETTING:I = 0x60027

.field public static final LGE_MODEM_INFO_KT_OTA_MODE:I = 0x6002a

.field public static final LGE_MODEM_INFO_MEMORY_PEEK:I = 0x6001a

.field public static final LGE_MODEM_INFO_MEMORY_POKE:I = 0x6001b

.field public static final LGE_MODEM_INFO_NET_SEL_AUTO:I = 0x60031

.field public static final LGE_MODEM_INFO_OPRT_MODE:I = 0x60022

.field public static final LGE_MODEM_INFO_OTA_LOG:I = 0x6000c

.field public static final LGE_MODEM_INFO_OTA_OPEN_MODE:I = 0x60011

.field public static final LGE_MODEM_INFO_RAT_BAND:I = 0x60009

.field public static final LGE_MODEM_INFO_REJECT:I = 0x60017

.field public static final LGE_MODEM_INFO_RRC_VERSION:I = 0x6000a

.field public static final LGE_MODEM_INFO_SERIAL_NUMBER:I = 0x6000e

.field public static final LGE_MODEM_INFO_SERVICE_DOMAIN:I = 0x6000b

.field public static final LGE_MODEM_INFO_SERVICE_STATUS:I = 0x6001c

.field public static final LGE_MODEM_INFO_SET_COPS:I = 0x60016

.field public static final LGE_MODEM_INFO_SKT_USIM_DOWNLOAD:I = 0x60010

.field public static final LGE_MODEM_INFO_SMS_MO_DOMAIN:I = 0x60013

.field public static final LGE_MODEM_INFO_SMS_MO_DOMAIN_ROAMING:I = 0x6001f

.field public static final LGE_MODEM_INFO_START_DAY:I = 0x6000d

.field public static final LGE_MODEM_INFO_STORED_CELL_INIT:I = 0x6001d

.field public static final LGE_MODEM_INFO_SYS_MANUAL_RAT:I = 0x6001e

.field public static final LGE_MODEM_INFO_TX_RX:I = 0x60028

.field public static final LGE_MODEM_INFO_WCDMA_CHANNEL:I = 0x60005

.field public static final LGE_MODEM_INFO_WCDMA_CHANNEL_FIX:I = 0x60014

.field public static final LGE_MODEM_INFO_WCDMA_USER_CHANNEL:I = 0x60006

.field public static final LGE_UNSOL_ACTIVATE_PDP_CONTEXT_SKT:I = 0x68007

.field public static final LGE_UNSOL_CAMPED_MCCMNC:I = 0x68004

.field public static final LGE_UNSOL_DEACTIVATE_PDP_CONTEXT_SKT:I = 0x68006

.field public static final LGE_UNSOL_LOG_TO_ADB:I = 0x68009

.field public static final LGE_UNSOL_NUMBER_PLUS:I = 0x68002

.field public static final LGE_UNSOL_PACKET_PAGING_IND:I = 0x6800a

.field public static final LGE_UNSOL_REJECT_CODE:I = 0x68003

.field public static final LGE_UNSOL_RRC_RELEASE_CAUSE:I = 0x68008

.field public static final LGE_UNSOL_START_DAY_UPDATED:I = 0x68005

.field public static final LGE_UNSOL_VISUAL_COLORRING:I = 0x68000

.field public static final LGE_UNSOL_VISUAL_LETTERING:I = 0x68001


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 232
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
