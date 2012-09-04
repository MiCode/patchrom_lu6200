.class public abstract Lcom/broadcom/bt/util/mime4j/AbstractContentHandler;
.super Ljava/lang/Object;
.source "AbstractContentHandler.java"

# interfaces
.implements Lcom/broadcom/bt/util/mime4j/ContentHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public body(Lcom/broadcom/bt/util/mime4j/BodyDescriptor;Ljava/io/InputStream;)V
    .locals 0
    .parameter "bd"
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    return-void
.end method

.method public endBodyPart()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public endHeader()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method public endMessage()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public endMultipart()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public epilogue(Ljava/io/InputStream;)V
    .locals 0
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    return-void
.end method

.method public field(Ljava/lang/String;)V
    .locals 0
    .parameter "fieldData"

    .prologue
    .line 99
    return-void
.end method

.method public preamble(Ljava/io/InputStream;)V
    .locals 0
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    return-void
.end method

.method public raw(Ljava/io/InputStream;)V
    .locals 0
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    return-void
.end method

.method public startBodyPart()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public startHeader()V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method public startMessage()V
    .locals 0

    .prologue
    .line 123
    return-void
.end method

.method public startMultipart(Lcom/broadcom/bt/util/mime4j/BodyDescriptor;)V
    .locals 0
    .parameter "bd"

    .prologue
    .line 63
    return-void
.end method
