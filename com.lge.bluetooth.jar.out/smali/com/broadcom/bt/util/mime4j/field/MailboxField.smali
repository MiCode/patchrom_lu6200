.class public Lcom/broadcom/bt/util/mime4j/field/MailboxField;
.super Lcom/broadcom/bt/util/mime4j/field/Field;
.source "MailboxField.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/util/mime4j/field/MailboxField$Parser;
    }
.end annotation


# instance fields
.field private final mailbox:Lcom/broadcom/bt/util/mime4j/field/address/Mailbox;

.field private final parseException:Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/broadcom/bt/util/mime4j/field/address/Mailbox;Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;)V
    .locals 0
    .parameter "name"
    .parameter "body"
    .parameter "raw"
    .parameter "mailbox"
    .parameter "parseException"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/util/mime4j/field/Field;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iput-object p4, p0, Lcom/broadcom/bt/util/mime4j/field/MailboxField;->mailbox:Lcom/broadcom/bt/util/mime4j/field/address/Mailbox;

    .line 55
    iput-object p5, p0, Lcom/broadcom/bt/util/mime4j/field/MailboxField;->parseException:Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;

    .line 56
    return-void
.end method


# virtual methods
.method public getMailbox()Lcom/broadcom/bt/util/mime4j/field/address/Mailbox;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/MailboxField;->mailbox:Lcom/broadcom/bt/util/mime4j/field/address/Mailbox;

    return-object v0
.end method

.method public getParseException()Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/MailboxField;->parseException:Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;

    return-object v0
.end method
