.class public interface abstract Lcom/android/internal/telephony/IccPhonebookProvider$Contract$InfoSlice$Column;
.super Ljava/lang/Object;
.source "IccPhonebookProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccPhonebookProvider$Contract$InfoSlice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Column"
.end annotation


# static fields
.field public static final ADN_CAPACITY:Ljava/lang/String;

.field public static final ANR_CAPACITY:Ljava/lang/String;

.field public static final ANR_TYPE:Ljava/lang/String;

.field public static final EMAIL_CAPACITY:Ljava/lang/String;

.field public static final EMAIL_TYPE:Ljava/lang/String;

.field public static final RESERVED1:Ljava/lang/String;

.field public static final RESERVED10:Ljava/lang/String;

.field public static final RESERVED11:Ljava/lang/String;

.field public static final RESERVED2:Ljava/lang/String;

.field public static final RESERVED3:Ljava/lang/String;

.field public static final RESERVED4:Ljava/lang/String;

.field public static final RESERVED5:Ljava/lang/String;

.field public static final RESERVED6:Ljava/lang/String;

.field public static final RESERVED7:Ljava/lang/String;

.field public static final RESERVED8:Ljava/lang/String;

.field public static final RESERVED9:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 126
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract;->INFO_PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract$InfoSlice$Column;->ADN_CAPACITY:Ljava/lang/String;

    .line 127
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract;->INFO_PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract$InfoSlice$Column;->ANR_TYPE:Ljava/lang/String;

    .line 128
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract;->INFO_PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract$InfoSlice$Column;->ANR_CAPACITY:Ljava/lang/String;

    .line 129
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract;->INFO_PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract$InfoSlice$Column;->EMAIL_TYPE:Ljava/lang/String;

    .line 130
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract;->INFO_PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract$InfoSlice$Column;->EMAIL_CAPACITY:Ljava/lang/String;

    .line 131
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract;->INFO_PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract$InfoSlice$Column;->RESERVED1:Ljava/lang/String;

    .line 132
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract;->INFO_PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract$InfoSlice$Column;->RESERVED2:Ljava/lang/String;

    .line 133
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract;->INFO_PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract$InfoSlice$Column;->RESERVED3:Ljava/lang/String;

    .line 134
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract;->INFO_PROJECTION:[Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract$InfoSlice$Column;->RESERVED4:Ljava/lang/String;

    .line 135
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract;->INFO_PROJECTION:[Ljava/lang/String;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract$InfoSlice$Column;->RESERVED5:Ljava/lang/String;

    .line 136
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract;->INFO_PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract$InfoSlice$Column;->RESERVED6:Ljava/lang/String;

    .line 137
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract;->INFO_PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xb

    aget-object v0, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract$InfoSlice$Column;->RESERVED7:Ljava/lang/String;

    .line 138
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract;->INFO_PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xc

    aget-object v0, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract$InfoSlice$Column;->RESERVED8:Ljava/lang/String;

    .line 139
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract;->INFO_PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xd

    aget-object v0, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract$InfoSlice$Column;->RESERVED9:Ljava/lang/String;

    .line 140
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract;->INFO_PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xe

    aget-object v0, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract$InfoSlice$Column;->RESERVED10:Ljava/lang/String;

    .line 141
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract;->INFO_PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xf

    aget-object v0, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract$InfoSlice$Column;->RESERVED11:Ljava/lang/String;

    return-void
.end method
