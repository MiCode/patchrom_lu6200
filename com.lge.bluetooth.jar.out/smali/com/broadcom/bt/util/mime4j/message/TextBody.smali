.class public interface abstract Lcom/broadcom/bt/util/mime4j/message/TextBody;
.super Ljava/lang/Object;
.source "TextBody.java"

# interfaces
.implements Lcom/broadcom/bt/util/mime4j/message/Body;


# virtual methods
.method public abstract getReader()Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
