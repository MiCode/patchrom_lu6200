.class public Lcom/broadcom/bt/util/mime4j/field/MailboxListField$Parser;
.super Ljava/lang/Object;
.source "MailboxListField.java"

# interfaces
.implements Lcom/broadcom/bt/util/mime4j/field/FieldParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/util/mime4j/field/MailboxListField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parser"
.end annotation


# static fields
.field private static log:Lcom/broadcom/bt/util/mime4j/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const-class v0, Lcom/broadcom/bt/util/mime4j/field/MailboxListField$Parser;

    invoke-static {v0}, Lcom/broadcom/bt/util/mime4j/LogFactory;->getLog(Ljava/lang/Class;)Lcom/broadcom/bt/util/mime4j/Log;

    move-result-object v0

    sput-object v0, Lcom/broadcom/bt/util/mime4j/field/MailboxListField$Parser;->log:Lcom/broadcom/bt/util/mime4j/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/broadcom/bt/util/mime4j/field/Field;
    .locals 7
    .parameter "name"
    .parameter "body"
    .parameter "raw"

    .prologue
    .line 70
    const/4 v4, 0x0

    .line 71
    .local v4, mailboxList:Lcom/broadcom/bt/util/mime4j/field/address/MailboxList;
    const/4 v5, 0x0

    .line 73
    .local v5, parseException:Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;
    :try_start_0
    invoke-static {p2}, Lcom/broadcom/bt/util/mime4j/field/address/AddressList;->parse(Ljava/lang/String;)Lcom/broadcom/bt/util/mime4j/field/address/AddressList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/broadcom/bt/util/mime4j/field/address/AddressList;->flatten()Lcom/broadcom/bt/util/mime4j/field/address/MailboxList;
    :try_end_0
    .catch Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 81
    :goto_0
    new-instance v0, Lcom/broadcom/bt/util/mime4j/field/MailboxListField;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/broadcom/bt/util/mime4j/field/MailboxListField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/broadcom/bt/util/mime4j/field/address/MailboxList;Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;)V

    return-object v0

    .line 75
    :catch_0
    move-exception v6

    .line 76
    .local v6, e:Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;
    sget-object v0, Lcom/broadcom/bt/util/mime4j/field/MailboxListField$Parser;->log:Lcom/broadcom/bt/util/mime4j/Log;

    invoke-virtual {v0}, Lcom/broadcom/bt/util/mime4j/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    sget-object v0, Lcom/broadcom/bt/util/mime4j/field/MailboxListField$Parser;->log:Lcom/broadcom/bt/util/mime4j/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parsing value \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/util/mime4j/Log;->debug(Ljava/lang/Object;)V

    .line 79
    :cond_0
    move-object v5, v6

    goto :goto_0
.end method
