.class public Lcom/broadcom/bt/util/mime4j/field/AddressListField;
.super Lcom/broadcom/bt/util/mime4j/field/Field;
.source "AddressListField.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/util/mime4j/field/AddressListField$Parser;
    }
.end annotation


# instance fields
.field private addressList:Lcom/broadcom/bt/util/mime4j/field/address/AddressList;

.field private parseException:Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/broadcom/bt/util/mime4j/field/address/AddressList;Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;)V
    .locals 0
    .parameter "name"
    .parameter "body"
    .parameter "raw"
    .parameter "addressList"
    .parameter "parseException"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/util/mime4j/field/Field;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iput-object p4, p0, Lcom/broadcom/bt/util/mime4j/field/AddressListField;->addressList:Lcom/broadcom/bt/util/mime4j/field/address/AddressList;

    .line 53
    iput-object p5, p0, Lcom/broadcom/bt/util/mime4j/field/AddressListField;->parseException:Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;

    .line 54
    return-void
.end method


# virtual methods
.method public getAddressList()Lcom/broadcom/bt/util/mime4j/field/address/AddressList;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/AddressListField;->addressList:Lcom/broadcom/bt/util/mime4j/field/address/AddressList;

    return-object v0
.end method

.method public getParseException()Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/AddressListField;->parseException:Lcom/broadcom/bt/util/mime4j/field/address/parser/ParseException;

    return-object v0
.end method
