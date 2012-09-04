.class public Lcom/broadcom/bt/util/mime4j/field/address/NamedMailbox;
.super Lcom/broadcom/bt/util/mime4j/field/address/Mailbox;
.source "NamedMailbox.java"


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/broadcom/bt/util/mime4j/field/address/DomainList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "route"
    .parameter "localPart"
    .parameter "domain"

    .prologue
    .line 59
    invoke-direct {p0, p2, p3, p4}, Lcom/broadcom/bt/util/mime4j/field/address/Mailbox;-><init>(Lcom/broadcom/bt/util/mime4j/field/address/DomainList;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iput-object p1, p0, Lcom/broadcom/bt/util/mime4j/field/address/NamedMailbox;->name:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/broadcom/bt/util/mime4j/field/address/Mailbox;)V
    .locals 3
    .parameter "name"
    .parameter "baseMailbox"

    .prologue
    .line 67
    invoke-virtual {p2}, Lcom/broadcom/bt/util/mime4j/field/address/Mailbox;->getRoute()Lcom/broadcom/bt/util/mime4j/field/address/DomainList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/broadcom/bt/util/mime4j/field/address/Mailbox;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/broadcom/bt/util/mime4j/field/address/Mailbox;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/broadcom/bt/util/mime4j/field/address/Mailbox;-><init>(Lcom/broadcom/bt/util/mime4j/field/address/DomainList;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iput-object p1, p0, Lcom/broadcom/bt/util/mime4j/field/address/NamedMailbox;->name:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "localPart"
    .parameter "domain"

    .prologue
    .line 51
    invoke-direct {p0, p2, p3}, Lcom/broadcom/bt/util/mime4j/field/address/Mailbox;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iput-object p1, p0, Lcom/broadcom/bt/util/mime4j/field/address/NamedMailbox;->name:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public getAddressString(Z)Ljava/lang/String;
    .locals 3
    .parameter "includeRoute"

    .prologue
    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/NamedMailbox;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0, p1}, Lcom/broadcom/bt/util/mime4j/field/address/Mailbox;->getAddressString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/NamedMailbox;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/NamedMailbox;->name:Ljava/lang/String;

    return-object v0
.end method
