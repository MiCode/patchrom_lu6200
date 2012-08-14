.class public interface abstract Lcom/android/internal/telephony/IccPhonebookProvider$Contract;
.super Ljava/lang/Object;
.source "IccPhonebookProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccPhonebookProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Contract"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IccPhonebookProvider$Contract$Group;,
        Lcom/android/internal/telephony/IccPhonebookProvider$Contract$Entry;,
        Lcom/android/internal/telephony/IccPhonebookProvider$Contract$InfoSlice;,
        Lcom/android/internal/telephony/IccPhonebookProvider$Contract$InfoGlobal;
    }
.end annotation


# static fields
.field public static final ANR_SEPARATOR:Ljava/lang/String; = "~"

.field public static final AUTHORITY:Ljava/lang/String; = "icc-phonebook"

.field public static final EMAIL_SEPARATOR:Ljava/lang/String; = "~"

.field public static final ENTRY_PROJECTION:[Ljava/lang/String; = null

.field public static final FEATURE_DEFAULT:I = 0x0

.field public static final FEATURE_EMPTY:I = 0x0

.field public static final FEATURE_MASK_RESERVE_RESERVE_FIRST_FREE_SIM_INDEX:I = 0x100

.field public static final FEATURE_MASK_SLOT_COUNT:I = 0xff

.field public static final GROUP_PROJECTION:[Ljava/lang/String; = null

.field public static final INFO_PROJECTION:[Ljava/lang/String; = null

.field public static final VALUE_ANR_TYPE_1:I = 0x1

.field public static final VALUE_ANR_TYPE_2:I = 0x2

.field public static final VALUE_ANR_TYPE_3:I = 0x3

.field public static final VALUE_ANR_TYPE_UNKNOWN:I = 0x0

.field public static final VALUE_EMAIL_TYPE_1:I = 0x1

.field public static final VALUE_EMAIL_TYPE_2:I = 0x2

.field public static final VALUE_EMAIL_TYPE_3:I = 0x3

.field public static final VALUE_EMAIL_TYPE_UNKNOWN:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 77
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "info1"

    aput-object v1, v0, v3

    const-string/jumbo v1, "info2"

    aput-object v1, v0, v4

    const-string/jumbo v1, "info"

    aput-object v1, v0, v5

    const-string/jumbo v1, "info4"

    aput-object v1, v0, v6

    const-string/jumbo v1, "info5"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "info6"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "info7"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "info8"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "info9"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "info10"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "info11"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "info12"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "info13"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "info14"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "info15"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "info16"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract;->INFO_PROJECTION:[Ljava/lang/String;

    .line 163
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "index"

    aput-object v1, v0, v3

    const-string/jumbo v1, "tag"

    aput-object v1, v0, v4

    const-string/jumbo v1, "number"

    aput-object v1, v0, v5

    const-string v1, "anrs"

    aput-object v1, v0, v6

    const-string v1, "emails"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "groupIndex"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract;->ENTRY_PROJECTION:[Ljava/lang/String;

    .line 185
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "index"

    aput-object v1, v0, v3

    const-string/jumbo v1, "name"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract;->GROUP_PROJECTION:[Ljava/lang/String;

    return-void
.end method
