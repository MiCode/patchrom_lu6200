.class public Lcom/android/internal/telephony/ModemItem$C_NV;
.super Ljava/lang/Object;
.source "ModemItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ModemItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "C_NV"
.end annotation


# static fields
.field public static final SYS_NV_BD_ADDR_I:I = 0x301bf

.field public static final SYS_NV_BOARDING_MODE_I:I = 0x3c36e

.field public static final SYS_NV_ESN_I:I = 0x30000

.field public static final SYS_NV_FACTORY_INFO_I:I = 0x30072

.field public static final SYS_NV_PRODUCTION_TEST_MODE_I:I = 0x3c364

.field public static final SYS_NV_SERIAL_NUMBER_I:I = 0x3c3d2

.field public static final SYS_NV_WLAN_MAC_ADDRESS_I:I = 0x31246


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 175
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
