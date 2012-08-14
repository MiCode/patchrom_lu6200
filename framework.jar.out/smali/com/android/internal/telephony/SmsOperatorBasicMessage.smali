.class public interface abstract Lcom/android/internal/telephony/SmsOperatorBasicMessage;
.super Ljava/lang/Object;
.source "SmsOperatorBasicMessage.java"


# static fields
.field public static final DATA:Ljava/lang/String; = "data"

.field public static final IT_IS_INVALID:I = 0x1

.field public static final IT_IS_NOT_OWN:I = 0x0

.field public static final I_TRATED_IT:I = 0x2

.field public static final MAX_USER_DATA_BYTES_EX:I = 0x50

.field public static final OPERATE_MESSAGE_VALID:Ljava/lang/String; = "valid"

.field public static final PDUS:Ljava/lang/String; = "pdus"

.field public static final REPLY_ADDRESS:Ljava/lang/String; = "reply_address"


# virtual methods
.method public abstract dispatch(Lcom/android/internal/telephony/SMSDispatcher;)I
.end method

.method public abstract getInformation()Landroid/os/Bundle;
.end method

.method public abstract getProcessType()I
.end method

.method public abstract setProcessType(I)V
.end method
