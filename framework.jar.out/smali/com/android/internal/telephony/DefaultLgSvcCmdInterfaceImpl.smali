.class public Lcom/android/internal/telephony/DefaultLgSvcCmdInterfaceImpl;
.super Ljava/lang/Object;
.source "DefaultLgSvcCmdInterfaceImpl.java"

# interfaces
.implements Lcom/android/internal/telephony/LgSvcCmdInterface;


# static fields
.field public static final CMD_SMS_3GPP_SMSFORMAT:I = 0x3f6

.field public static final CMD_SMS_3GPP_SMSWRITEUICC:I = 0x3f7


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCommandValue(I)Ljava/lang/String;
    .locals 1
    .parameter "itemID"

    .prologue
    .line 26
    const-string v0, "Default value"

    return-object v0
.end method
