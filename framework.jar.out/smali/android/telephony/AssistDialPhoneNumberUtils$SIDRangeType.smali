.class public Landroid/telephony/AssistDialPhoneNumberUtils$SIDRangeType;
.super Ljava/lang/Object;
.source "AssistDialPhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/AssistDialPhoneNumberUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SIDRangeType"
.end annotation


# instance fields
.field private countryIndex:I

.field private end:I

.field private index:I

.field private start:I


# direct methods
.method constructor <init>(IIII)V
    .locals 0
    .parameter "index"
    .parameter "countryIndex"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1911
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1912
    iput p1, p0, Landroid/telephony/AssistDialPhoneNumberUtils$SIDRangeType;->index:I

    .line 1913
    iput p2, p0, Landroid/telephony/AssistDialPhoneNumberUtils$SIDRangeType;->countryIndex:I

    .line 1914
    iput p3, p0, Landroid/telephony/AssistDialPhoneNumberUtils$SIDRangeType;->start:I

    .line 1915
    iput p4, p0, Landroid/telephony/AssistDialPhoneNumberUtils$SIDRangeType;->end:I

    .line 1916
    return-void
.end method


# virtual methods
.method public getCountryIndex()I
    .locals 1

    .prologue
    .line 1904
    iget v0, p0, Landroid/telephony/AssistDialPhoneNumberUtils$SIDRangeType;->countryIndex:I

    return v0
.end method

.method public getEnd()I
    .locals 1

    .prologue
    .line 1908
    iget v0, p0, Landroid/telephony/AssistDialPhoneNumberUtils$SIDRangeType;->end:I

    return v0
.end method

.method public getStart()I
    .locals 1

    .prologue
    .line 1900
    iget v0, p0, Landroid/telephony/AssistDialPhoneNumberUtils$SIDRangeType;->start:I

    return v0
.end method
