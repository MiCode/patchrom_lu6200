.class public Lcom/android/internal/telephony/ModemItem;
.super Ljava/lang/Object;
.source "ModemItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ModemItem$BASE;,
        Lcom/android/internal/telephony/ModemItem$W_BASE;,
        Lcom/android/internal/telephony/ModemItem$C_DATA;,
        Lcom/android/internal/telephony/ModemItem$C_DBSCR;,
        Lcom/android/internal/telephony/ModemItem$C_NV;,
        Lcom/android/internal/telephony/ModemItem$C_PH;,
        Lcom/android/internal/telephony/ModemItem$C_SS;,
        Lcom/android/internal/telephony/ModemItem$C_CALL;
    }
.end annotation


# static fields
.field public static final BASE_INFO:I = 0x70000

.field public static final C_CALL_INFO:I = 0x0

.field public static final C_DBGSCR_INFO:I = 0x40000

.field public static final C_DS_INFO:I = 0xb0000

.field public static final C_NV_INFO:I = 0x30000

.field public static final C_PH_INFO:I = 0x20000

.field public static final C_SS_INFO:I = 0x10000

.field public static final C_UNSL_INFO:I = 0x50000

.field public static final W_BASE_INFO:I = 0x60000


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 304
    return-void
.end method
