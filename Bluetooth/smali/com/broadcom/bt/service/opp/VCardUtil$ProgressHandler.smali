.class public interface abstract Lcom/broadcom/bt/service/opp/VCardUtil$ProgressHandler;
.super Ljava/lang/Object;
.source "VCardUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/opp/VCardUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProgressHandler"
.end annotation


# virtual methods
.method public abstract onParseComplete(Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;)V
.end method

.method public abstract onVCardProcessed(Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;ILjava/lang/String;Ljava/lang/Object;ILandroid/net/Uri;)V
.end method
