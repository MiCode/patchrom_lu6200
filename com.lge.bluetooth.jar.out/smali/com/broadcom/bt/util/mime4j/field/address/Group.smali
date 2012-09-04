.class public Lcom/broadcom/bt/util/mime4j/field/address/Group;
.super Lcom/broadcom/bt/util/mime4j/field/address/Address;
.source "Group.java"


# instance fields
.field private mailboxList:Lcom/broadcom/bt/util/mime4j/field/address/MailboxList;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/broadcom/bt/util/mime4j/field/address/MailboxList;)V
    .locals 0
    .parameter "name"
    .parameter "mailboxes"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/broadcom/bt/util/mime4j/field/address/Address;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/broadcom/bt/util/mime4j/field/address/Group;->name:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/broadcom/bt/util/mime4j/field/address/Group;->mailboxList:Lcom/broadcom/bt/util/mime4j/field/address/MailboxList;

    .line 57
    return-void
.end method


# virtual methods
.method protected doAddMailboxesTo(Ljava/util/ArrayList;)V
    .locals 2
    .parameter "results"

    .prologue
    .line 87
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/Group;->mailboxList:Lcom/broadcom/bt/util/mime4j/field/address/MailboxList;

    invoke-virtual {v1}, Lcom/broadcom/bt/util/mime4j/field/address/MailboxList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/Group;->mailboxList:Lcom/broadcom/bt/util/mime4j/field/address/MailboxList;

    invoke-virtual {v1, v0}, Lcom/broadcom/bt/util/mime4j/field/address/MailboxList;->get(I)Lcom/broadcom/bt/util/mime4j/field/address/Mailbox;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_0
    return-void
.end method

.method public getMailboxes()Lcom/broadcom/bt/util/mime4j/field/address/MailboxList;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/Group;->mailboxList:Lcom/broadcom/bt/util/mime4j/field/address/MailboxList;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/Group;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 75
    .local v0, buf:Ljava/lang/StringBuffer;
    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/Group;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/Group;->mailboxList:Lcom/broadcom/bt/util/mime4j/field/address/MailboxList;

    invoke-virtual {v2}, Lcom/broadcom/bt/util/mime4j/field/address/MailboxList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 78
    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/Group;->mailboxList:Lcom/broadcom/bt/util/mime4j/field/address/MailboxList;

    invoke-virtual {v2, v1}, Lcom/broadcom/bt/util/mime4j/field/address/MailboxList;->get(I)Lcom/broadcom/bt/util/mime4j/field/address/Mailbox;

    move-result-object v2

    invoke-virtual {v2}, Lcom/broadcom/bt/util/mime4j/field/address/Mailbox;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/Group;->mailboxList:Lcom/broadcom/bt/util/mime4j/field/address/MailboxList;

    invoke-virtual {v3}, Lcom/broadcom/bt/util/mime4j/field/address/MailboxList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 80
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    :cond_1
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
