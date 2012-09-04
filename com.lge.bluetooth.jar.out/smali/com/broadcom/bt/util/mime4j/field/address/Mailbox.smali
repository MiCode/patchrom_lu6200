.class public Lcom/broadcom/bt/util/mime4j/field/address/Mailbox;
.super Lcom/broadcom/bt/util/mime4j/field/address/Address;
.source "Mailbox.java"


# instance fields
.field private domain:Ljava/lang/String;

.field private localPart:Ljava/lang/String;

.field private route:Lcom/broadcom/bt/util/mime4j/field/address/DomainList;


# direct methods
.method public constructor <init>(Lcom/broadcom/bt/util/mime4j/field/address/DomainList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "route"
    .parameter "localPart"
    .parameter "domain"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/broadcom/bt/util/mime4j/field/address/Address;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/broadcom/bt/util/mime4j/field/address/Mailbox;->route:Lcom/broadcom/bt/util/mime4j/field/address/DomainList;

    .line 68
    iput-object p2, p0, Lcom/broadcom/bt/util/mime4j/field/address/Mailbox;->localPart:Ljava/lang/String;

    .line 69
    iput-object p3, p0, Lcom/broadcom/bt/util/mime4j/field/address/Mailbox;->domain:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "localPart"
    .parameter "domain"

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/broadcom/bt/util/mime4j/field/address/Mailbox;-><init>(Lcom/broadcom/bt/util/mime4j/field/address/DomainList;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method


# virtual methods
.method protected final doAddMailboxesTo(Ljava/util/ArrayList;)V
    .locals 0
    .parameter "results"

    .prologue
    .line 130
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    return-void
.end method

.method public getAddressString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/util/mime4j/field/address/Mailbox;->getAddressString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAddressString(Z)Ljava/lang/String;
    .locals 3
    .parameter "includeRoute"

    .prologue
    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/Mailbox;->route:Lcom/broadcom/bt/util/mime4j/field/address/DomainList;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/Mailbox;->localPart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/Mailbox;->domain:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/Mailbox;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/Mailbox;->route:Lcom/broadcom/bt/util/mime4j/field/address/DomainList;

    invoke-virtual {v2}, Lcom/broadcom/bt/util/mime4j/field/address/DomainList;->toRouteString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "@"

    goto :goto_1
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/Mailbox;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalPart()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/Mailbox;->localPart:Ljava/lang/String;

    return-object v0
.end method

.method public getRoute()Lcom/broadcom/bt/util/mime4j/field/address/DomainList;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/Mailbox;->route:Lcom/broadcom/bt/util/mime4j/field/address/DomainList;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/broadcom/bt/util/mime4j/field/address/Mailbox;->getAddressString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
