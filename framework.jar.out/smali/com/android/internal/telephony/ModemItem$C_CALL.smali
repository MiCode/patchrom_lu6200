.class public Lcom/android/internal/telephony/ModemItem$C_CALL;
.super Ljava/lang/Object;
.source "ModemItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ModemItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "C_CALL"
.end annotation


# static fields
.field public static final SYS_C_CALL_TEST1:I = 0xc8

.field public static final SYS_C_CALL_TEST2:I = 0xc9

.field public static final SYS_DO_AN_AUTH_FAIL:I = 0x6

.field public static final SYS_IGNORE_PAGING:I = 0x2

.field public static final SYS_IS_CDMA_OTASP_CALL:I = 0x4

.field public static final SYS_LGT_OTA_SSESSION_STATUS:I = 0x5

.field public static final SYS_LGT_VOICECALLINCOMING:I = 0x1

.field public static final SYS_LGT_VOICECALLORIG:I = 0x0

.field public static final SYS_VOICE_ORIG_CALL:I = 0x3

.field public static final SYS_VT_SIP_REG:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
