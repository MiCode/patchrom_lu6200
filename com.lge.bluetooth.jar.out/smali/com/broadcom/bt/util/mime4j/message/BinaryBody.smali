.class public interface abstract Lcom/broadcom/bt/util/mime4j/message/BinaryBody;
.super Ljava/lang/Object;
.source "BinaryBody.java"

# interfaces
.implements Lcom/broadcom/bt/util/mime4j/message/Body;


# virtual methods
.method public abstract getInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
