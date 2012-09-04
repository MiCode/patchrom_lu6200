.class public Lcom/broadcom/bt/util/mime4j/field/MailboxListField;
.super Lcom/broadcom/bt/util/mime4j/field/Field;
.source "MailboxListField.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/util/mime4j/field/MailboxListField$Parser;
    }
.end annotation


# instance fields
.field private mailboxList:Lcom/broadcom/bt/util/mime4j/field/address/MailboxList;

.field private parseException:Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/broadcom/bt/util/mime4j/field/address/MailboxList;Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;)V
    .locals 0
    .parameter "name"
    .parameter "body"
    .parameter "raw"
    .parameter "mailboxList"
    .parameter "parseException"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/util/mime4j/field/Field;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iput-object p4, p0, Lcom/broadcom/bt/util/mime4j/field/MailboxListField;->mailboxList:Lcom/broadcom/bt/util/mime4j/field/address/MailboxList;

    .line 55
    iput-object p5, p0, Lcom/broadcom/bt/util/mime4j/field/MailboxListField;->parseException:Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;

    .line 56
    return-void
.end method


# virtual methods
.method public getMailboxList()Lcom/broadcom/bt/util/mime4j/field/address/MailboxList;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/MailboxListField;->mailboxList:Lcom/broadcom/bt/util/mime4j/field/address/MailboxList;

    return-object v0
.end method

.method public getParseException()Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/MailboxListField;->parseException:Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;

    return-object v0
.end method
