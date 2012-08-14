.class public interface abstract Lcom/android/internal/telephony/IccPhonebookProvider$Contract$Group$Column;
.super Ljava/lang/Object;
.source "IccPhonebookProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccPhonebookProvider$Contract$Group;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Column"
.end annotation


# static fields
.field public static final INDEX:Ljava/lang/String;

.field public static final NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 190
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract;->GROUP_PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract$Group$Column;->INDEX:Ljava/lang/String;

    .line 191
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract;->GROUP_PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract$Group$Column;->NAME:Ljava/lang/String;

    return-void
.end method
