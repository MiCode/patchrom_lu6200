.class public Lcom/broadcom/bt/util/mime4j/field/DateTimeField;
.super Lcom/broadcom/bt/util/mime4j/field/Field;
.source "DateTimeField.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/util/mime4j/field/DateTimeField$Parser;
    }
.end annotation


# instance fields
.field private date:Ljava/util/Date;

.field private parseException:Lcom/broadcom/bt/util/mime4j/field/datetime/parser/ParseException;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Lcom/broadcom/bt/util/mime4j/field/datetime/parser/ParseException;)V
    .locals 0
    .parameter "name"
    .parameter "body"
    .parameter "raw"
    .parameter "date"
    .parameter "parseException"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/util/mime4j/field/Field;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iput-object p4, p0, Lcom/broadcom/bt/util/mime4j/field/DateTimeField;->date:Ljava/util/Date;

    .line 55
    iput-object p5, p0, Lcom/broadcom/bt/util/mime4j/field/DateTimeField;->parseException:Lcom/broadcom/bt/util/mime4j/field/datetime/parser/ParseException;

    .line 56
    return-void
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/DateTimeField;->date:Ljava/util/Date;

    return-object v0
.end method

.method public getParseException()Lcom/broadcom/bt/util/mime4j/field/datetime/parser/ParseException;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/DateTimeField;->parseException:Lcom/broadcom/bt/util/mime4j/field/datetime/parser/ParseException;

    return-object v0
.end method
