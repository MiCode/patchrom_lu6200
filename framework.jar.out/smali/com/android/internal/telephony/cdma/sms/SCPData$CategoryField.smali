.class public Lcom/android/internal/telephony/cdma/sms/SCPData$CategoryField;
.super Ljava/lang/Object;
.source "SCPData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/sms/SCPData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CategoryField"
.end annotation


# instance fields
.field alertOpt:I

.field category:I

.field language:I

.field maxMsgs:I

.field name:[B

.field nameString:Ljava/lang/String;

.field numFields:I

.field opCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
