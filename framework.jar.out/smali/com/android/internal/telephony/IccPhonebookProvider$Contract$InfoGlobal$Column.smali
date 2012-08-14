.class public interface abstract Lcom/android/internal/telephony/IccPhonebookProvider$Contract$InfoGlobal$Column;
.super Ljava/lang/Object;
.source "IccPhonebookProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccPhonebookProvider$Contract$InfoGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Column"
.end annotation


# static fields
.field public static final ADN_MAX_LENGTH:Ljava/lang/String;

.field public static final ADN_TAG_ENCODING:Ljava/lang/String;

.field public static final ADN_TAG_MAX_BYTE_LENGTH:Ljava/lang/String;

.field public static final ANR_MAX_LENGTH:Ljava/lang/String;

.field public static final EMAIL_ENCODING:Ljava/lang/String;

.field public static final EMAIL_MAX_BYTE_LENGTH:Ljava/lang/String;

.field public static final EXT1_FREE_COUNT:Ljava/lang/String;

.field public static final EXT1_MAX_LENGTH:Ljava/lang/String;

.field public static final FEATURES:Ljava/lang/String;

.field public static final GROUP_CAPACITY:Ljava/lang/String;

.field public static final GROUP_NAME_ENCODING:Ljava/lang/String;

.field public static final GROUP_NAME_MAX_BYTE_LENGTH:Ljava/lang/String;

.field public static final MAX_ASSIGNABLE_ANR_COUNT:Ljava/lang/String;

.field public static final MAX_ASSIGNABLE_EMAIL_COUNT:Ljava/lang/String;

.field public static final MAX_ASSIGNABLE_GROUP_COUNT:Ljava/lang/String;

.field public static final SLICE_COUNT:Ljava/lang/String;

.field public static final SLOT_COUNT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0xf

    .line 85
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract;->INFO_PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract$InfoGlobal$Column;->SLICE_COUNT:Ljava/lang/String;

    .line 86
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract;->INFO_PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract$InfoGlobal$Column;->ADN_TAG_ENCODING:Ljava/lang/String;

    .line 87
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract;->INFO_PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract$InfoGlobal$Column;->ADN_TAG_MAX_BYTE_LENGTH:Ljava/lang/String;

    .line 88
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract;->INFO_PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract$InfoGlobal$Column;->ADN_MAX_LENGTH:Ljava/lang/String;

    .line 89
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract;->INFO_PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract$InfoGlobal$Column;->ANR_MAX_LENGTH:Ljava/lang/String;

    .line 90
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract;->INFO_PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract$InfoGlobal$Column;->EMAIL_ENCODING:Ljava/lang/String;

    .line 91
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract;->INFO_PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract$InfoGlobal$Column;->EMAIL_MAX_BYTE_LENGTH:Ljava/lang/String;

    .line 92
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract;->INFO_PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract$InfoGlobal$Column;->EXT1_FREE_COUNT:Ljava/lang/String;

    .line 93
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract;->INFO_PROJECTION:[Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract$InfoGlobal$Column;->EXT1_MAX_LENGTH:Ljava/lang/String;

    .line 94
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract;->INFO_PROJECTION:[Ljava/lang/String;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract$InfoGlobal$Column;->GROUP_CAPACITY:Ljava/lang/String;

    .line 95
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract;->INFO_PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract$InfoGlobal$Column;->GROUP_NAME_ENCODING:Ljava/lang/String;

    .line 96
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract;->INFO_PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xb

    aget-object v0, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract$InfoGlobal$Column;->GROUP_NAME_MAX_BYTE_LENGTH:Ljava/lang/String;

    .line 97
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract;->INFO_PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xc

    aget-object v0, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract$InfoGlobal$Column;->MAX_ASSIGNABLE_ANR_COUNT:Ljava/lang/String;

    .line 98
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract;->INFO_PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xd

    aget-object v0, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract$InfoGlobal$Column;->MAX_ASSIGNABLE_EMAIL_COUNT:Ljava/lang/String;

    .line 99
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract;->INFO_PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xe

    aget-object v0, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract$InfoGlobal$Column;->MAX_ASSIGNABLE_GROUP_COUNT:Ljava/lang/String;

    .line 100
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract;->INFO_PROJECTION:[Ljava/lang/String;

    aget-object v0, v0, v2

    sput-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract$InfoGlobal$Column;->FEATURES:Ljava/lang/String;

    .line 101
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract;->INFO_PROJECTION:[Ljava/lang/String;

    aget-object v0, v0, v2

    sput-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract$InfoGlobal$Column;->SLOT_COUNT:Ljava/lang/String;

    return-void
.end method
