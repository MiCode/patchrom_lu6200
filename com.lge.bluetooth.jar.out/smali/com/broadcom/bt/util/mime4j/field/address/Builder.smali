.class Lcom/broadcom/bt/util/mime4j/field/address/Builder;
.super Ljava/lang/Object;
.source "Builder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/util/mime4j/field/address/Builder$ChildNodeIterator;
    }
.end annotation


# static fields
.field private static singleton:Lcom/broadcom/bt/util/mime4j/field/address/Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcom/broadcom/bt/util/mime4j/field/address/Builder;

    invoke-direct {v0}, Lcom/broadcom/bt/util/mime4j/field/address/Builder;-><init>()V

    sput-object v0, Lcom/broadcom/bt/util/mime4j/field/address/Builder;->singleton:Lcom/broadcom/bt/util/mime4j/field/address/Builder;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 232
    return-void
.end method

.method private addSpecials(Ljava/lang/StringBuffer;Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;)V
    .locals 1
    .parameter "out"
    .parameter "specialToken"

    .prologue
    .line 226
    if-eqz p2, :cond_0

    .line 227
    iget-object v0, p2, Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;->specialToken:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    invoke-direct {p0, p1, v0}, Lcom/broadcom/bt/util/mime4j/field/address/Builder;->addSpecials(Ljava/lang/StringBuffer;Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;)V

    .line 228
    iget-object v0, p2, Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 230
    :cond_0
    return-void
.end method

.method private buildAddrSpec(Lcom/broadcom/bt/util/mime4j/field/address/DomainList;Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTaddr_spec;)Lcom/broadcom/bt/util/mime4j/field/address/Mailbox;
    .locals 5
    .parameter "route"
    .parameter "node"

    .prologue
    const/4 v4, 0x1

    .line 202
    new-instance v1, Lcom/broadcom/bt/util/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v1, p2}, Lcom/broadcom/bt/util/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleNode;)V

    .line 203
    .local v1, it:Lcom/broadcom/bt/util/mime4j/field/address/Builder$ChildNodeIterator;
    invoke-virtual {v1}, Lcom/broadcom/bt/util/mime4j/field/address/Builder$ChildNodeIterator;->nextNode()Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTlocal_part;

    invoke-direct {p0, v3, v4}, Lcom/broadcom/bt/util/mime4j/field/address/Builder;->buildString(Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleNode;Z)Ljava/lang/String;

    move-result-object v2

    .line 204
    .local v2, localPart:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/broadcom/bt/util/mime4j/field/address/Builder$ChildNodeIterator;->nextNode()Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTdomain;

    invoke-direct {p0, v3, v4}, Lcom/broadcom/bt/util/mime4j/field/address/Builder;->buildString(Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleNode;Z)Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, domain:Ljava/lang/String;
    new-instance v3, Lcom/broadcom/bt/util/mime4j/field/address/Mailbox;

    invoke-direct {v3, p1, v2, v0}, Lcom/broadcom/bt/util/mime4j/field/address/Mailbox;-><init>(Lcom/broadcom/bt/util/mime4j/field/address/DomainList;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method private buildAddrSpec(Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTaddr_spec;)Lcom/broadcom/bt/util/mime4j/field/address/Mailbox;
    .locals 1
    .parameter "node"

    .prologue
    .line 199
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/broadcom/bt/util/mime4j/field/address/Builder;->buildAddrSpec(Lcom/broadcom/bt/util/mime4j/field/address/DomainList;Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTaddr_spec;)Lcom/broadcom/bt/util/mime4j/field/address/Mailbox;

    move-result-object v0

    return-object v0
.end method

.method private buildAddress(Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTaddress;)Lcom/broadcom/bt/util/mime4j/field/address/Address;
    .locals 6
    .parameter "node"

    .prologue
    .line 86
    new-instance v0, Lcom/broadcom/bt/util/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v0, p1}, Lcom/broadcom/bt/util/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleNode;)V

    .line 87
    .local v0, it:Lcom/broadcom/bt/util/mime4j/field/address/Builder$ChildNodeIterator;
    invoke-virtual {v0}, Lcom/broadcom/bt/util/mime4j/field/address/Builder$ChildNodeIterator;->nextNode()Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;

    move-result-object v1

    .line 88
    .local v1, n:Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;
    instance-of v4, v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTaddr_spec;

    if-eqz v4, :cond_0

    .line 89
    check-cast v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTaddr_spec;

    .end local v1           #n:Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;
    invoke-direct {p0, v1}, Lcom/broadcom/bt/util/mime4j/field/address/Builder;->buildAddrSpec(Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTaddr_spec;)Lcom/broadcom/bt/util/mime4j/field/address/Mailbox;

    move-result-object v4

    .line 102
    :goto_0
    return-object v4

    .line 91
    .restart local v1       #n:Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;
    :cond_0
    instance-of v4, v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTangle_addr;

    if-eqz v4, :cond_1

    .line 92
    check-cast v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTangle_addr;

    .end local v1           #n:Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;
    invoke-direct {p0, v1}, Lcom/broadcom/bt/util/mime4j/field/address/Builder;->buildAngleAddr(Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTangle_addr;)Lcom/broadcom/bt/util/mime4j/field/address/Mailbox;

    move-result-object v4

    goto :goto_0

    .line 94
    .restart local v1       #n:Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;
    :cond_1
    instance-of v4, v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTphrase;

    if-eqz v4, :cond_4

    .line 95
    check-cast v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTphrase;

    .end local v1           #n:Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;
    const/4 v4, 0x0

    invoke-direct {p0, v1, v4}, Lcom/broadcom/bt/util/mime4j/field/address/Builder;->buildString(Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleNode;Z)Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, name:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/broadcom/bt/util/mime4j/field/address/Builder$ChildNodeIterator;->nextNode()Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;

    move-result-object v2

    .line 97
    .local v2, n2:Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;
    instance-of v4, v2, Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTgroup_body;

    if-eqz v4, :cond_2

    .line 98
    new-instance v4, Lcom/broadcom/bt/util/mime4j/field/address/Group;

    check-cast v2, Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTgroup_body;

    .end local v2           #n2:Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;
    invoke-direct {p0, v2}, Lcom/broadcom/bt/util/mime4j/field/address/Builder;->buildGroupBody(Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTgroup_body;)Lcom/broadcom/bt/util/mime4j/field/address/MailboxList;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lcom/broadcom/bt/util/mime4j/field/address/Group;-><init>(Ljava/lang/String;Lcom/broadcom/bt/util/mime4j/field/address/MailboxList;)V

    goto :goto_0

    .line 100
    .restart local v2       #n2:Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;
    :cond_2
    instance-of v4, v2, Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTangle_addr;

    if-eqz v4, :cond_3

    .line 101
    invoke-static {v3}, Lcom/broadcom/bt/util/mime4j/decoder/DecoderUtil;->decodeEncodedWords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 102
    new-instance v4, Lcom/broadcom/bt/util/mime4j/field/address/NamedMailbox;

    check-cast v2, Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTangle_addr;

    .end local v2           #n2:Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;
    invoke-direct {p0, v2}, Lcom/broadcom/bt/util/mime4j/field/address/Builder;->buildAngleAddr(Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTangle_addr;)Lcom/broadcom/bt/util/mime4j/field/address/Mailbox;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lcom/broadcom/bt/util/mime4j/field/address/NamedMailbox;-><init>(Ljava/lang/String;Lcom/broadcom/bt/util/mime4j/field/address/Mailbox;)V

    goto :goto_0

    .line 105
    .restart local v2       #n2:Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;
    :cond_3
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4

    .line 109
    .end local v2           #n2:Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;
    .end local v3           #name:Ljava/lang/String;
    .restart local v1       #n:Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;
    :cond_4
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4
.end method

.method private buildAngleAddr(Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTangle_addr;)Lcom/broadcom/bt/util/mime4j/field/address/Mailbox;
    .locals 4
    .parameter "node"

    .prologue
    .line 167
    new-instance v0, Lcom/broadcom/bt/util/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v0, p1}, Lcom/broadcom/bt/util/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleNode;)V

    .line 168
    .local v0, it:Lcom/broadcom/bt/util/mime4j/field/address/Builder$ChildNodeIterator;
    const/4 v2, 0x0

    .line 169
    .local v2, route:Lcom/broadcom/bt/util/mime4j/field/address/DomainList;
    invoke-virtual {v0}, Lcom/broadcom/bt/util/mime4j/field/address/Builder$ChildNodeIterator;->nextNode()Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;

    move-result-object v1

    .line 170
    .local v1, n:Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;
    instance-of v3, v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTroute;

    if-eqz v3, :cond_1

    .line 171
    check-cast v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTroute;

    .end local v1           #n:Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;
    invoke-direct {p0, v1}, Lcom/broadcom/bt/util/mime4j/field/address/Builder;->buildRoute(Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTroute;)Lcom/broadcom/bt/util/mime4j/field/address/DomainList;

    move-result-object v2

    .line 172
    invoke-virtual {v0}, Lcom/broadcom/bt/util/mime4j/field/address/Builder$ChildNodeIterator;->nextNode()Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;

    move-result-object v1

    .line 179
    .restart local v1       #n:Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;
    :cond_0
    instance-of v3, v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTaddr_spec;

    if-eqz v3, :cond_2

    .line 180
    check-cast v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTaddr_spec;

    .end local v1           #n:Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;
    invoke-direct {p0, v2, v1}, Lcom/broadcom/bt/util/mime4j/field/address/Builder;->buildAddrSpec(Lcom/broadcom/bt/util/mime4j/field/address/DomainList;Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTaddr_spec;)Lcom/broadcom/bt/util/mime4j/field/address/Mailbox;

    move-result-object v3

    return-object v3

    .line 174
    .restart local v1       #n:Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;
    :cond_1
    instance-of v3, v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTaddr_spec;

    if-nez v3, :cond_0

    .line 177
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 182
    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3
.end method

.method private buildGroupBody(Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTgroup_body;)Lcom/broadcom/bt/util/mime4j/field/address/MailboxList;
    .locals 5
    .parameter "node"

    .prologue
    .line 116
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v2, results:Ljava/util/ArrayList;
    new-instance v0, Lcom/broadcom/bt/util/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v0, p1}, Lcom/broadcom/bt/util/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleNode;)V

    .line 118
    .local v0, it:Lcom/broadcom/bt/util/mime4j/field/address/Builder$ChildNodeIterator;
    :goto_0
    invoke-virtual {v0}, Lcom/broadcom/bt/util/mime4j/field/address/Builder$ChildNodeIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 119
    invoke-virtual {v0}, Lcom/broadcom/bt/util/mime4j/field/address/Builder$ChildNodeIterator;->nextNode()Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;

    move-result-object v1

    .line 120
    .local v1, n:Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;
    instance-of v3, v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTmailbox;

    if-eqz v3, :cond_0

    .line 121
    check-cast v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTmailbox;

    .end local v1           #n:Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;
    invoke-direct {p0, v1}, Lcom/broadcom/bt/util/mime4j/field/address/Builder;->buildMailbox(Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTmailbox;)Lcom/broadcom/bt/util/mime4j/field/address/Mailbox;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 123
    .restart local v1       #n:Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 125
    .end local v1           #n:Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;
    :cond_1
    new-instance v3, Lcom/broadcom/bt/util/mime4j/field/address/MailboxList;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Lcom/broadcom/bt/util/mime4j/field/address/MailboxList;-><init>(Ljava/util/ArrayList;Z)V

    return-object v3
.end method

.method private buildMailbox(Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTmailbox;)Lcom/broadcom/bt/util/mime4j/field/address/Mailbox;
    .locals 3
    .parameter "node"

    .prologue
    .line 129
    new-instance v0, Lcom/broadcom/bt/util/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v0, p1}, Lcom/broadcom/bt/util/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleNode;)V

    .line 130
    .local v0, it:Lcom/broadcom/bt/util/mime4j/field/address/Builder$ChildNodeIterator;
    invoke-virtual {v0}, Lcom/broadcom/bt/util/mime4j/field/address/Builder$ChildNodeIterator;->nextNode()Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;

    move-result-object v1

    .line 131
    .local v1, n:Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;
    instance-of v2, v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTaddr_spec;

    if-eqz v2, :cond_0

    .line 132
    check-cast v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTaddr_spec;

    .end local v1           #n:Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;
    invoke-direct {p0, v1}, Lcom/broadcom/bt/util/mime4j/field/address/Builder;->buildAddrSpec(Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTaddr_spec;)Lcom/broadcom/bt/util/mime4j/field/address/Mailbox;

    move-result-object v2

    .line 138
    :goto_0
    return-object v2

    .line 134
    .restart local v1       #n:Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;
    :cond_0
    instance-of v2, v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTangle_addr;

    if-eqz v2, :cond_1

    .line 135
    check-cast v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTangle_addr;

    .end local v1           #n:Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;
    invoke-direct {p0, v1}, Lcom/broadcom/bt/util/mime4j/field/address/Builder;->buildAngleAddr(Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTangle_addr;)Lcom/broadcom/bt/util/mime4j/field/address/Mailbox;

    move-result-object v2

    goto :goto_0

    .line 137
    .restart local v1       #n:Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;
    :cond_1
    instance-of v2, v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTname_addr;

    if-eqz v2, :cond_2

    .line 138
    check-cast v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTname_addr;

    .end local v1           #n:Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;
    invoke-direct {p0, v1}, Lcom/broadcom/bt/util/mime4j/field/address/Builder;->buildNameAddr(Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTname_addr;)Lcom/broadcom/bt/util/mime4j/field/address/NamedMailbox;

    move-result-object v2

    goto :goto_0

    .line 141
    .restart local v1       #n:Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2
.end method

.method private buildNameAddr(Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTname_addr;)Lcom/broadcom/bt/util/mime4j/field/address/NamedMailbox;
    .locals 5
    .parameter "node"

    .prologue
    .line 146
    new-instance v0, Lcom/broadcom/bt/util/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v0, p1}, Lcom/broadcom/bt/util/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleNode;)V

    .line 147
    .local v0, it:Lcom/broadcom/bt/util/mime4j/field/address/Builder$ChildNodeIterator;
    invoke-virtual {v0}, Lcom/broadcom/bt/util/mime4j/field/address/Builder$ChildNodeIterator;->nextNode()Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;

    move-result-object v1

    .line 149
    .local v1, n:Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;
    instance-of v3, v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTphrase;

    if-eqz v3, :cond_0

    .line 150
    check-cast v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTphrase;

    .end local v1           #n:Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/broadcom/bt/util/mime4j/field/address/Builder;->buildString(Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleNode;Z)Ljava/lang/String;

    move-result-object v2

    .line 156
    .local v2, name:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/broadcom/bt/util/mime4j/field/address/Builder$ChildNodeIterator;->nextNode()Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;

    move-result-object v1

    .line 157
    .restart local v1       #n:Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;
    instance-of v3, v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTangle_addr;

    if-eqz v3, :cond_1

    .line 158
    invoke-static {v2}, Lcom/broadcom/bt/util/mime4j/decoder/DecoderUtil;->decodeEncodedWords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 159
    new-instance v3, Lcom/broadcom/bt/util/mime4j/field/address/NamedMailbox;

    check-cast v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTangle_addr;

    .end local v1           #n:Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;
    invoke-direct {p0, v1}, Lcom/broadcom/bt/util/mime4j/field/address/Builder;->buildAngleAddr(Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTangle_addr;)Lcom/broadcom/bt/util/mime4j/field/address/Mailbox;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/broadcom/bt/util/mime4j/field/address/NamedMailbox;-><init>(Ljava/lang/String;Lcom/broadcom/bt/util/mime4j/field/address/Mailbox;)V

    return-object v3

    .line 153
    .end local v2           #name:Ljava/lang/String;
    .restart local v1       #n:Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 162
    .restart local v2       #name:Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3
.end method

.method private buildRoute(Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTroute;)Lcom/broadcom/bt/util/mime4j/field/address/DomainList;
    .locals 5
    .parameter "node"

    .prologue
    const/4 v4, 0x1

    .line 186
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTroute;->jjtGetNumChildren()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 187
    .local v2, results:Ljava/util/ArrayList;
    new-instance v0, Lcom/broadcom/bt/util/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v0, p1}, Lcom/broadcom/bt/util/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleNode;)V

    .line 188
    .local v0, it:Lcom/broadcom/bt/util/mime4j/field/address/Builder$ChildNodeIterator;
    :goto_0
    invoke-virtual {v0}, Lcom/broadcom/bt/util/mime4j/field/address/Builder$ChildNodeIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 189
    invoke-virtual {v0}, Lcom/broadcom/bt/util/mime4j/field/address/Builder$ChildNodeIterator;->nextNode()Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;

    move-result-object v1

    .line 190
    .local v1, n:Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;
    instance-of v3, v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTdomain;

    if-eqz v3, :cond_0

    .line 191
    check-cast v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTdomain;

    .end local v1           #n:Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;
    invoke-direct {p0, v1, v4}, Lcom/broadcom/bt/util/mime4j/field/address/Builder;->buildString(Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleNode;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 193
    .restart local v1       #n:Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 195
    .end local v1           #n:Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;
    :cond_1
    new-instance v3, Lcom/broadcom/bt/util/mime4j/field/address/DomainList;

    invoke-direct {v3, v2, v4}, Lcom/broadcom/bt/util/mime4j/field/address/DomainList;-><init>(Ljava/util/ArrayList;Z)V

    return-object v3
.end method

.method private buildString(Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleNode;Z)Ljava/lang/String;
    .locals 4
    .parameter "node"
    .parameter "stripSpaces"

    .prologue
    .line 210
    iget-object v0, p1, Lcom/broadcom/bt/util/mime4j/field/address/parser/BaseNode;->firstToken:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    .line 211
    .local v0, head:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;
    iget-object v2, p1, Lcom/broadcom/bt/util/mime4j/field/address/parser/BaseNode;->lastToken:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    .line 212
    .local v2, tail:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 214
    .local v1, out:Ljava/lang/StringBuffer;
    :cond_0
    :goto_0
    if-eq v0, v2, :cond_1

    .line 215
    iget-object v3, v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 216
    iget-object v0, v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;->next:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    .line 217
    if-nez p2, :cond_0

    .line 218
    iget-object v3, v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;->specialToken:Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;

    invoke-direct {p0, v1, v3}, Lcom/broadcom/bt/util/mime4j/field/address/Builder;->addSpecials(Ljava/lang/StringBuffer;Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;)V

    goto :goto_0

    .line 220
    :cond_1
    iget-object v3, v2, Lcom/broadcom/bt/util/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 222
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getInstance()Lcom/broadcom/bt/util/mime4j/field/address/Builder;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/broadcom/bt/util/mime4j/field/address/Builder;->singleton:Lcom/broadcom/bt/util/mime4j/field/address/Builder;

    return-object v0
.end method


# virtual methods
.method public buildAddressList(Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTaddress_list;)Lcom/broadcom/bt/util/mime4j/field/address/AddressList;
    .locals 6
    .parameter "node"

    .prologue
    .line 76
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v3, list:Ljava/util/ArrayList;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTaddress_list;->jjtGetNumChildren()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 78
    invoke-virtual {p1, v2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTaddress_list;->jjtGetChild(I)Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTaddress;

    .line 79
    .local v1, childNode:Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTaddress;
    invoke-direct {p0, v1}, Lcom/broadcom/bt/util/mime4j/field/address/Builder;->buildAddress(Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTaddress;)Lcom/broadcom/bt/util/mime4j/field/address/Address;

    move-result-object v0

    .line 80
    .local v0, address:Lcom/broadcom/bt/util/mime4j/field/address/Address;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    .end local v0           #address:Lcom/broadcom/bt/util/mime4j/field/address/Address;
    .end local v1           #childNode:Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTaddress;
    :cond_0
    new-instance v4, Lcom/broadcom/bt/util/mime4j/field/address/AddressList;

    const/4 v5, 0x1

    invoke-direct {v4, v3, v5}, Lcom/broadcom/bt/util/mime4j/field/address/AddressList;-><init>(Ljava/util/ArrayList;Z)V

    return-object v4
.end method
