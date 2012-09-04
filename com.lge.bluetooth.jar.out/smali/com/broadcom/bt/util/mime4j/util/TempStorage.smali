.class public abstract Lcom/broadcom/bt/util/mime4j/util/TempStorage;
.super Ljava/lang/Object;
.source "TempStorage.java"


# static fields
.field private static inst:Lcom/broadcom/bt/util/mime4j/util/TempStorage;

.field private static log:Lcom/broadcom/bt/util/mime4j/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 49
    const-class v2, Lcom/broadcom/bt/util/mime4j/util/TempStorage;

    invoke-static {v2}, Lcom/broadcom/bt/util/mime4j/LogFactory;->getLog(Ljava/lang/Class;)Lcom/broadcom/bt/util/mime4j/Log;

    move-result-object v2

    sput-object v2, Lcom/broadcom/bt/util/mime4j/util/TempStorage;->log:Lcom/broadcom/bt/util/mime4j/Log;

    .line 50
    const/4 v2, 0x0

    sput-object v2, Lcom/broadcom/bt/util/mime4j/util/TempStorage;->inst:Lcom/broadcom/bt/util/mime4j/util/TempStorage;

    .line 54
    const-string v2, "com.broadcom.bt.util.mime4j.tempStorage"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, clazz:Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/broadcom/bt/util/mime4j/util/TempStorage;->inst:Lcom/broadcom/bt/util/mime4j/util/TempStorage;

    if-eqz v2, :cond_0

    .line 58
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/util/mime4j/util/TempStorage;

    sput-object v2, Lcom/broadcom/bt/util/mime4j/util/TempStorage;->inst:Lcom/broadcom/bt/util/mime4j/util/TempStorage;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :cond_0
    :goto_0
    sget-object v2, Lcom/broadcom/bt/util/mime4j/util/TempStorage;->inst:Lcom/broadcom/bt/util/mime4j/util/TempStorage;

    if-nez v2, :cond_1

    .line 67
    new-instance v2, Lcom/broadcom/bt/util/mime4j/util/SimpleTempStorage;

    invoke-direct {v2}, Lcom/broadcom/bt/util/mime4j/util/SimpleTempStorage;-><init>()V

    sput-object v2, Lcom/broadcom/bt/util/mime4j/util/TempStorage;->inst:Lcom/broadcom/bt/util/mime4j/util/TempStorage;

    .line 69
    :cond_1
    return-void

    .line 61
    :catch_0
    move-exception v1

    .line 62
    .local v1, t:Ljava/lang/Throwable;
    sget-object v2, Lcom/broadcom/bt/util/mime4j/util/TempStorage;->log:Lcom/broadcom/bt/util/mime4j/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create or instantiate TempStorage class \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' using SimpleTempStorage instead"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/broadcom/bt/util/mime4j/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/broadcom/bt/util/mime4j/util/TempStorage;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/broadcom/bt/util/mime4j/util/TempStorage;->inst:Lcom/broadcom/bt/util/mime4j/util/TempStorage;

    return-object v0
.end method

.method public static setInstance(Lcom/broadcom/bt/util/mime4j/util/TempStorage;)V
    .locals 2
    .parameter "inst"

    .prologue
    .line 84
    if-nez p0, :cond_0

    .line 85
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "inst"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_0
    sput-object p0, Lcom/broadcom/bt/util/mime4j/util/TempStorage;->inst:Lcom/broadcom/bt/util/mime4j/util/TempStorage;

    .line 88
    return-void
.end method


# virtual methods
.method public abstract getRootTempPath()Lcom/broadcom/bt/util/mime4j/util/TempPath;
.end method
