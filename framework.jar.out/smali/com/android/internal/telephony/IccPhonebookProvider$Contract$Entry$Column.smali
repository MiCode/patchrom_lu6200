.class public interface abstract Lcom/android/internal/telephony/IccPhonebookProvider$Contract$Entry$Column;
.super Ljava/lang/Object;
.source "IccPhonebookProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccPhonebookProvider$Contract$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Column"
.end annotation


# static fields
.field public static final ALPHA_TAG:Ljava/lang/String;

.field public static final ANRS:Ljava/lang/String;

.field public static final EMAILS:Ljava/lang/String;

.field public static final GROUP_INDEX:Ljava/lang/String;

.field public static final INDEX:Ljava/lang/String;

.field public static final NUMBER:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 168
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract;->ENTRY_PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract$Entry$Column;->INDEX:Ljava/lang/String;

    .line 169
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract;->ENTRY_PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract$Entry$Column;->ALPHA_TAG:Ljava/lang/String;

    .line 170
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract;->ENTRY_PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract$Entry$Column;->NUMBER:Ljava/lang/String;

    .line 171
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract;->ENTRY_PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract$Entry$Column;->ANRS:Ljava/lang/String;

    .line 172
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract;->ENTRY_PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract$Entry$Column;->EMAILS:Ljava/lang/String;

    .line 173
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract;->ENTRY_PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract$Entry$Column;->GROUP_INDEX:Ljava/lang/String;

    return-void
.end method
