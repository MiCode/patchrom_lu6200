.class public interface abstract Lcom/broadcom/bt/service/opp/VCalUtil$ProgressHandler;
.super Ljava/lang/Object;
.source "VCalUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/opp/VCalUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProgressHandler"
.end annotation


# virtual methods
.method public abstract onParseComplete(Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;)V
.end method

.method public abstract onVCalProcessed(Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;ILjava/lang/String;Ljava/lang/Object;ILandroid/net/Uri;)V
.end method
