.class Lcom/broadcom/bt/util/mime4j/message/Header$1;
.super Lcom/broadcom/bt/util/mime4j/AbstractContentHandler;
.source "Header.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/broadcom/bt/util/mime4j/message/Header;-><init>(Ljava/io/InputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/util/mime4j/message/Header;

.field final synthetic val$parser:Lcom/broadcom/bt/util/mime4j/MimeStreamParser;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/util/mime4j/message/Header;Lcom/broadcom/bt/util/mime4j/MimeStreamParser;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/broadcom/bt/util/mime4j/message/Header$1;->this$0:Lcom/broadcom/bt/util/mime4j/message/Header;

    iput-object p2, p0, Lcom/broadcom/bt/util/mime4j/message/Header$1;->val$parser:Lcom/broadcom/bt/util/mime4j/MimeStreamParser;

    invoke-direct {p0}, Lcom/broadcom/bt/util/mime4j/AbstractContentHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public endHeader()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/message/Header$1;->val$parser:Lcom/broadcom/bt/util/mime4j/MimeStreamParser;

    invoke-virtual {v0}, Lcom/broadcom/bt/util/mime4j/MimeStreamParser;->stop()V

    .line 83
    return-void
.end method

.method public field(Ljava/lang/String;)V
    .locals 2
    .parameter "fieldData"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/message/Header$1;->this$0:Lcom/broadcom/bt/util/mime4j/message/Header;

    invoke-static {p1}, Lcom/broadcom/bt/util/mime4j/field/Field;->parse(Ljava/lang/String;)Lcom/broadcom/bt/util/mime4j/field/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/util/mime4j/message/Header;->addField(Lcom/broadcom/bt/util/mime4j/field/Field;)V

    .line 86
    return-void
.end method
