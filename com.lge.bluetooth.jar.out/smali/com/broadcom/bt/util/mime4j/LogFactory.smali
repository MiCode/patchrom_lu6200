.class public final Lcom/broadcom/bt/util/mime4j/LogFactory;
.super Ljava/lang/Object;
.source "LogFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static getLog(Ljava/lang/Class;)Lcom/broadcom/bt/util/mime4j/Log;
    .locals 1
    .parameter "clazz"

    .prologue
    .line 28
    new-instance v0, Lcom/broadcom/bt/util/mime4j/Log;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/util/mime4j/Log;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method
