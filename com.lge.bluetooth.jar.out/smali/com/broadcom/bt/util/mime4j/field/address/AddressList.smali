.class public Lcom/broadcom/bt/util/mime4j/field/address/AddressList;
.super Ljava/lang/Object;
.source "AddressList.java"


# instance fields
.field private addresses:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Z)V
    .locals 2
    .parameter "addresses"
    .parameter "dontCopy"

    .prologue
    .line 58
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 59
    if-eqz p1, :cond_1

    .line 60
    if-eqz p2, :cond_0

    .end local p1
    :goto_0
    iput-object p1, p0, Lcom/broadcom/bt/util/mime4j/field/address/AddressList;->addresses:Ljava/util/ArrayList;

    .line 63
    :goto_1
    return-void

    .line 60
    .restart local p1
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    move-object p1, v0

    goto :goto_0

    .line 62
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/AddressList;->addresses:Ljava/util/ArrayList;

    goto :goto_1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 139
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    sget-object v5, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 141
    .local v3, reader:Ljava/io/BufferedReader;
    if-nez v3, :cond_1

    .line 143
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "[AddressList.java]error : reader is null!!!!"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 160
    :goto_0
    return-void

    .line 162
    .local v1, line:Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-static {v1}, Lcom/broadcom/bt/util/mime4j/field/address/AddressList;->parse(Ljava/lang/String;)Lcom/broadcom/bt/util/mime4j/field/address/AddressList;

    move-result-object v2

    .line 163
    .local v2, list:Lcom/broadcom/bt/util/mime4j/field/address/AddressList;
    invoke-virtual {v2}, Lcom/broadcom/bt/util/mime4j/field/address/AddressList;->print()V

    .line 149
    .end local v1           #line:Ljava/lang/String;
    .end local v2           #list:Lcom/broadcom/bt/util/mime4j/field/address/AddressList;
    :cond_1
    :goto_1
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "> "

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 152
    .restart local v1       #line:Ljava/lang/String;
    if-nez v1, :cond_2

    .line 154
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "[AddressList.java]error : line is null!!!!"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 165
    .end local v1           #line:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 166
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 167
    const-wide/16 v4, 0x12c

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_1

    .line 158
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #line:Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "exit"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "quit"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 159
    :cond_3
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Goodbye."

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static parse(Ljava/lang/String;)Lcom/broadcom/bt/util/mime4j/field/address/AddressList;
    .locals 3
    .parameter "rawAddressList"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 131
    new-instance v0, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;-><init>(Ljava/io/Reader;)V

    .line 132
    .local v0, parser:Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;
    invoke-static {}, Lcom/broadcom/bt/util/mime4j/field/address/Builder;->getInstance()Lcom/broadcom/bt/util/mime4j/field/address/Builder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;->parse()Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTaddress_list;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/broadcom/bt/util/mime4j/field/address/Builder;->buildAddressList(Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTaddress_list;)Lcom/broadcom/bt/util/mime4j/field/address/AddressList;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public flatten()Lcom/broadcom/bt/util/mime4j/field/address/MailboxList;
    .locals 7

    .prologue
    .line 88
    const/4 v1, 0x0

    .line 89
    .local v1, groupDetected:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/broadcom/bt/util/mime4j/field/address/AddressList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 90
    invoke-virtual {p0, v2}, Lcom/broadcom/bt/util/mime4j/field/address/AddressList;->get(I)Lcom/broadcom/bt/util/mime4j/field/address/Address;

    move-result-object v4

    instance-of v4, v4, Lcom/broadcom/bt/util/mime4j/field/address/Mailbox;

    if-nez v4, :cond_1

    .line 91
    const/4 v1, 0x1

    .line 96
    :cond_0
    if-nez v1, :cond_2

    .line 97
    new-instance v4, Lcom/broadcom/bt/util/mime4j/field/address/MailboxList;

    iget-object v5, p0, Lcom/broadcom/bt/util/mime4j/field/address/AddressList;->addresses:Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Lcom/broadcom/bt/util/mime4j/field/address/MailboxList;-><init>(Ljava/util/ArrayList;Z)V

    .line 107
    :goto_1
    return-object v4

    .line 89
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 99
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v3, results:Ljava/util/ArrayList;
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/broadcom/bt/util/mime4j/field/address/AddressList;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 101
    invoke-virtual {p0, v2}, Lcom/broadcom/bt/util/mime4j/field/address/AddressList;->get(I)Lcom/broadcom/bt/util/mime4j/field/address/Address;

    move-result-object v0

    .line 102
    .local v0, addr:Lcom/broadcom/bt/util/mime4j/field/address/Address;
    invoke-virtual {v0, v3}, Lcom/broadcom/bt/util/mime4j/field/address/Address;->addMailboxesTo(Ljava/util/ArrayList;)V

    .line 100
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 107
    .end local v0           #addr:Lcom/broadcom/bt/util/mime4j/field/address/Address;
    :cond_3
    new-instance v4, Lcom/broadcom/bt/util/mime4j/field/address/MailboxList;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Lcom/broadcom/bt/util/mime4j/field/address/MailboxList;-><init>(Ljava/util/ArrayList;Z)V

    goto :goto_1
.end method

.method public get(I)Lcom/broadcom/bt/util/mime4j/field/address/Address;
    .locals 1
    .parameter "index"

    .prologue
    .line 76
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/broadcom/bt/util/mime4j/field/address/AddressList;->size()I

    move-result v0

    if-gt v0, p1, :cond_1

    .line 77
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/AddressList;->addresses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/util/mime4j/field/address/Address;

    return-object v0
.end method

.method public print()V
    .locals 4

    .prologue
    .line 115
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/broadcom/bt/util/mime4j/field/address/AddressList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 116
    invoke-virtual {p0, v1}, Lcom/broadcom/bt/util/mime4j/field/address/AddressList;->get(I)Lcom/broadcom/bt/util/mime4j/field/address/Address;

    move-result-object v0

    .line 117
    .local v0, addr:Lcom/broadcom/bt/util/mime4j/field/address/Address;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 115
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    .end local v0           #addr:Lcom/broadcom/bt/util/mime4j/field/address/Address;
    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/AddressList;->addresses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
