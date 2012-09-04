.class public Lcom/broadcom/bt/util/mime4j/field/ContentTypeField;
.super Lcom/broadcom/bt/util/mime4j/field/Field;
.source "ContentTypeField.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/util/mime4j/field/ContentTypeField$Parser;
    }
.end annotation


# static fields
.field public static final PARAM_BOUNDARY:Ljava/lang/String; = "boundary"

.field public static final PARAM_CHARSET:Ljava/lang/String; = "charset"

.field public static final TYPE_MESSAGE_RFC822:Ljava/lang/String; = "message/rfc822"

.field public static final TYPE_MULTIPART_DIGEST:Ljava/lang/String; = "multipart/digest"

.field public static final TYPE_MULTIPART_PREFIX:Ljava/lang/String; = "multipart/"

.field public static final TYPE_TEXT_PLAIN:Ljava/lang/String; = "text/plain"


# instance fields
.field private mimeType:Ljava/lang/String;

.field private parameters:Ljava/util/Map;

.field private parseException:Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ParseException;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ParseException;)V
    .locals 1
    .parameter "name"
    .parameter "body"
    .parameter "raw"
    .parameter "mimeType"
    .parameter "parameters"
    .parameter "parseException"

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/util/mime4j/field/Field;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/ContentTypeField;->mimeType:Ljava/lang/String;

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/ContentTypeField;->parameters:Ljava/util/Map;

    .line 94
    iput-object p4, p0, Lcom/broadcom/bt/util/mime4j/field/ContentTypeField;->mimeType:Ljava/lang/String;

    .line 95
    iput-object p5, p0, Lcom/broadcom/bt/util/mime4j/field/ContentTypeField;->parameters:Ljava/util/Map;

    .line 96
    iput-object p6, p0, Lcom/broadcom/bt/util/mime4j/field/ContentTypeField;->parseException:Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ParseException;

    .line 97
    return-void
.end method

.method public static getCharset(Lcom/broadcom/bt/util/mime4j/field/ContentTypeField;)Ljava/lang/String;
    .locals 1
    .parameter "f"

    .prologue
    .line 195
    if-eqz p0, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/broadcom/bt/util/mime4j/field/ContentTypeField;->getCharset()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/broadcom/bt/util/mime4j/field/ContentTypeField;->getCharset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/broadcom/bt/util/mime4j/field/ContentTypeField;->getCharset()Ljava/lang/String;

    move-result-object v0

    .line 200
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "us-ascii"

    goto :goto_0
.end method

.method public static getMimeType(Lcom/broadcom/bt/util/mime4j/field/ContentTypeField;Lcom/broadcom/bt/util/mime4j/field/ContentTypeField;)Ljava/lang/String;
    .locals 1
    .parameter "child"
    .parameter "parent"

    .prologue
    .line 131
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/broadcom/bt/util/mime4j/field/ContentTypeField;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/broadcom/bt/util/mime4j/field/ContentTypeField;->isMultipart()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/broadcom/bt/util/mime4j/field/ContentTypeField;->getBoundary()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 134
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "multipart/digest"

    invoke-virtual {p1, v0}, Lcom/broadcom/bt/util/mime4j/field/ContentTypeField;->isMimeType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    const-string v0, "message/rfc822"

    .line 141
    :goto_0
    return-object v0

    .line 137
    :cond_1
    const-string v0, "text/plain"

    goto :goto_0

    .line 141
    :cond_2
    invoke-virtual {p0}, Lcom/broadcom/bt/util/mime4j/field/ContentTypeField;->getMimeType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getBoundary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    const-string v0, "boundary"

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/util/mime4j/field/ContentTypeField;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    const-string v0, "charset"

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/util/mime4j/field/ContentTypeField;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/ContentTypeField;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/ContentTypeField;->parameters:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/ContentTypeField;->parameters:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getParameters()Ljava/util/Map;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/ContentTypeField;->parameters:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/ContentTypeField;->parameters:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    goto :goto_0
.end method

.method public getParseException()Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ParseException;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/ContentTypeField;->parseException:Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/ParseException;

    return-object v0
.end method

.method public isMimeType(Ljava/lang/String;)Z
    .locals 1
    .parameter "mimeType"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/ContentTypeField;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isMultipart()Z
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/ContentTypeField;->mimeType:Ljava/lang/String;

    const-string v1, "multipart/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
