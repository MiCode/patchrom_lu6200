.class public Lcom/android/internal/telephony/gsm/RejectCauseFactory;
.super Ljava/lang/Object;
.source "RejectCauseFactory.java"


# static fields
.field static final DBG:Z = true

.field static final LOG_TAG:Ljava/lang/String; = "RejectCauseFactory"

.field static sProxyRejectCause:Lcom/android/internal/telephony/gsm/RejectCause;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/gsm/RejectCauseFactory;->sProxyRejectCause:Lcom/android/internal/telephony/gsm/RejectCause;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dispose()V
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/android/internal/telephony/gsm/RejectCauseFactory;->sProxyRejectCause:Lcom/android/internal/telephony/gsm/RejectCause;

    if-eqz v0, :cond_0

    .line 74
    sget-object v0, Lcom/android/internal/telephony/gsm/RejectCauseFactory;->sProxyRejectCause:Lcom/android/internal/telephony/gsm/RejectCause;

    invoke-interface {v0}, Lcom/android/internal/telephony/gsm/RejectCause;->initialize()V

    .line 75
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/gsm/RejectCauseFactory;->sProxyRejectCause:Lcom/android/internal/telephony/gsm/RejectCause;

    .line 77
    :cond_0
    return-void
.end method

.method public static getDefaultRejectCause(Lcom/android/internal/telephony/gsm/GSMPhone;)Lcom/android/internal/telephony/gsm/RejectCause;
    .locals 7
    .parameter "p"

    .prologue
    .line 27
    sget-object v4, Lcom/android/internal/telephony/gsm/RejectCauseFactory;->sProxyRejectCause:Lcom/android/internal/telephony/gsm/RejectCause;

    if-eqz v4, :cond_0

    .line 28
    sget-object v4, Lcom/android/internal/telephony/gsm/RejectCauseFactory;->sProxyRejectCause:Lcom/android/internal/telephony/gsm/RejectCause;

    .line 69
    :goto_0
    return-object v4

    .line 31
    :cond_0
    :try_start_0
    new-instance v2, Ldalvik/system/PathClassLoader;

    const-string v4, "/system/framework/com.lge.rejectcause.jar"

    const-class v5, Lcom/android/internal/telephony/gsm/RejectCauseFactory;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 33
    .local v2, rejectCauseClassloader:Ldalvik/system/PathClassLoader;
    const/4 v1, 0x0

    .line 35
    .local v1, rejectCauseClass:Ljava/lang/Class;
    const-string v4, "KR"

    const-string v5, "SKT"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 36
    invoke-static {}, Lcom/android/internal/telephony/TelephonyUtils;->isQCRIL()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 37
    const-string v4, "com.lge.KrRejectCause.QcrilSKTRejectCause"

    invoke-virtual {v2, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 49
    :cond_1
    :goto_1
    if-nez v1, :cond_6

    .line 50
    const/4 v4, 0x0

    goto :goto_0

    .line 39
    :cond_2
    const-string v4, "com.lge.KrRejectCause.InfineonSKTRejectCause"

    invoke-virtual {v2, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_1

    .line 40
    :cond_3
    const-string v4, "KR"

    const-string v5, "KT"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 41
    invoke-static {}, Lcom/android/internal/telephony/TelephonyUtils;->isQCRIL()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 42
    const-string v4, "com.lge.KrRejectCause.QcrilKTRejectCause"

    invoke-virtual {v2, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_1

    .line 44
    :cond_4
    const-string v4, "com.lge.KrRejectCause.InfineonKTRejectCause"

    invoke-virtual {v2, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_1

    .line 45
    :cond_5
    const-string v4, "KR"

    const-string v5, "LGU"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 46
    const-string v4, "com.lge.KrRejectCause.LGURejectCause"

    invoke-virtual {v2, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_1

    .line 52
    :cond_6
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lcom/android/internal/telephony/gsm/GSMPhone;

    aput-object v6, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 55
    .local v3, rejectCauseConstructor:Ljava/lang/reflect/Constructor;
    new-instance v5, Lcom/android/internal/telephony/gsm/RejectCauseProxy;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/gsm/RejectCause;

    invoke-direct {v5, v4}, Lcom/android/internal/telephony/gsm/RejectCauseProxy;-><init>(Lcom/android/internal/telephony/gsm/RejectCause;)V

    sput-object v5, Lcom/android/internal/telephony/gsm/RejectCauseFactory;->sProxyRejectCause:Lcom/android/internal/telephony/gsm/RejectCause;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 69
    .end local v1           #rejectCauseClass:Ljava/lang/Class;
    .end local v2           #rejectCauseClassloader:Ldalvik/system/PathClassLoader;
    .end local v3           #rejectCauseConstructor:Ljava/lang/reflect/Constructor;
    :goto_2
    sget-object v4, Lcom/android/internal/telephony/gsm/RejectCauseFactory;->sProxyRejectCause:Lcom/android/internal/telephony/gsm/RejectCause;

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 59
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 60
    .local v0, e:Ljava/lang/InstantiationException;
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_2

    .line 61
    .end local v0           #e:Ljava/lang/InstantiationException;
    :catch_2
    move-exception v0

    .line 62
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2

    .line 63
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 64
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_2

    .line 65
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_4
    move-exception v0

    .line 66
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method
