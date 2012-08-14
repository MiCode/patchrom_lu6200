.class public Lcom/android/internal/telephony/SmsKrMessageManager;
.super Ljava/lang/Object;
.source "SmsKrMessageManager.java"


# static fields
.field public static final SPAM_RESULT:Ljava/lang/String; = "spam_result"

.field private static sLoader:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    new-instance v0, Ldalvik/system/PathClassLoader;

    const-string v1, "/system/framework/com.lge.krmessage.jar"

    const-class v2, Lcom/android/internal/telephony/SmsKrMessageManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v0, Lcom/android/internal/telephony/SmsKrMessageManager;->sLoader:Ljava/lang/ClassLoader;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOperatorMessage(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher;Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;[[B)Lcom/android/internal/telephony/SmsOperatorBasicMessage;
    .locals 8
    .parameter "className"
    .parameter "dispatcher"
    .parameter "context"
    .parameter "sms"
    .parameter "pdus"

    .prologue
    .line 26
    :try_start_0
    const-string v5, "Gsm"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 27
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "com.android.internal.telephony.gsm."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    sget-object v7, Lcom/android/internal/telephony/SmsKrMessageManager;->sLoader:Ljava/lang/ClassLoader;

    invoke-static {v5, v6, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 31
    .local v1, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    const/4 v5, 0x4

    new-array v4, v5, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lcom/android/internal/telephony/SMSDispatcher;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Lcom/android/internal/telephony/SmsMessageBase;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-class v6, [[B

    aput-object v6, v4, v5

    .line 32
    .local v4, paramTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    invoke-virtual {v1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 33
    .local v2, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/4 v5, 0x4

    new-array v0, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v0, v5

    const/4 v5, 0x1

    aput-object p2, v0, v5

    const/4 v5, 0x2

    aput-object p3, v0, v5

    const/4 v5, 0x3

    aput-object p4, v0, v5

    .line 34
    .local v0, args:[Ljava/lang/Object;
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/SmsOperatorBasicMessage;

    .line 48
    .end local v0           #args:[Ljava/lang/Object;
    .end local v1           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v4           #paramTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :goto_1
    return-object v5

    .line 29
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "com.android.internal.telephony.cdma."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    sget-object v7, Lcom/android/internal/telephony/SmsKrMessageManager;->sLoader:Ljava/lang/ClassLoader;

    invoke-static {v5, v6, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v1

    .restart local v1       #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    goto :goto_0

    .line 35
    .end local v1           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_0
    move-exception v3

    .line 36
    .local v3, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 48
    .end local v3           #e:Ljava/lang/ClassNotFoundException;
    :goto_2
    const/4 v5, 0x0

    goto :goto_1

    .line 37
    :catch_1
    move-exception v3

    .line 38
    .local v3, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v3}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_2

    .line 39
    .end local v3           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v3

    .line 40
    .local v3, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    .line 41
    .end local v3           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v3

    .line 42
    .local v3, e:Ljava/lang/InstantiationException;
    invoke-virtual {v3}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_2

    .line 43
    .end local v3           #e:Ljava/lang/InstantiationException;
    :catch_4
    move-exception v3

    .line 44
    .local v3, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2

    .line 45
    .end local v3           #e:Ljava/lang/IllegalAccessException;
    :catch_5
    move-exception v3

    .line 46
    .local v3, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_2
.end method

.method public static getOperatorMessage(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/android/internal/telephony/SmsOperatorBasicMessage;
    .locals 8
    .parameter "className"
    .parameter "dispatcher"
    .parameter "content"
    .parameter "recipient"
    .parameter "context"

    .prologue
    .line 54
    :try_start_0
    const-string v5, "Gsm"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 55
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "com.android.internal.telephony.gsm."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    sget-object v7, Lcom/android/internal/telephony/SmsKrMessageManager;->sLoader:Ljava/lang/ClassLoader;

    invoke-static {v5, v6, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 59
    .local v1, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    const/4 v5, 0x4

    new-array v4, v5, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lcom/android/internal/telephony/SMSDispatcher;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    .line 60
    .local v4, paramTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    invoke-virtual {v1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 61
    .local v2, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/4 v5, 0x4

    new-array v0, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v0, v5

    const/4 v5, 0x1

    aput-object p2, v0, v5

    const/4 v5, 0x2

    aput-object p3, v0, v5

    const/4 v5, 0x3

    aput-object p4, v0, v5

    .line 62
    .local v0, args:[Ljava/lang/Object;
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/SmsOperatorBasicMessage;

    .line 76
    .end local v0           #args:[Ljava/lang/Object;
    .end local v1           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v4           #paramTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :goto_1
    return-object v5

    .line 57
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "com.android.internal.telephony.cdma."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    sget-object v7, Lcom/android/internal/telephony/SmsKrMessageManager;->sLoader:Ljava/lang/ClassLoader;

    invoke-static {v5, v6, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v1

    .restart local v1       #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    goto :goto_0

    .line 63
    .end local v1           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_0
    move-exception v3

    .line 64
    .local v3, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 76
    .end local v3           #e:Ljava/lang/ClassNotFoundException;
    :goto_2
    const/4 v5, 0x0

    goto :goto_1

    .line 65
    :catch_1
    move-exception v3

    .line 66
    .local v3, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v3}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_2

    .line 67
    .end local v3           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v3

    .line 68
    .local v3, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    .line 69
    .end local v3           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v3

    .line 70
    .local v3, e:Ljava/lang/InstantiationException;
    invoke-virtual {v3}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_2

    .line 71
    .end local v3           #e:Ljava/lang/InstantiationException;
    :catch_4
    move-exception v3

    .line 72
    .local v3, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2

    .line 73
    .end local v3           #e:Ljava/lang/IllegalAccessException;
    :catch_5
    move-exception v3

    .line 74
    .local v3, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_2
.end method

.method public static getOperatorSpamMessage(Lcom/android/internal/telephony/SMSDispatcher;Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;[[B)Lcom/android/internal/telephony/SmsOperatorBasicMessage;
    .locals 3
    .parameter "dispatcher"
    .parameter "context"
    .parameter "sms"
    .parameter "pdus"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 81
    const-string v0, "SKTspam"

    invoke-static {v2, v0}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 83
    const-string v0, "GsmSmsSKTSpamMessage"

    invoke-static {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/SmsKrMessageManager;->getOperatorMessage(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher;Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;[[B)Lcom/android/internal/telephony/SmsOperatorBasicMessage;

    move-result-object v0

    .line 94
    :goto_0
    return-object v0

    .line 85
    :cond_0
    const-string v0, "LGUspam"

    invoke-static {v2, v0}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v1, :cond_1

    .line 87
    const-string v0, "CdmaSmsLgtSpamMessage"

    invoke-static {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/SmsKrMessageManager;->getOperatorMessage(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher;Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;[[B)Lcom/android/internal/telephony/SmsOperatorBasicMessage;

    move-result-object v0

    goto :goto_0

    .line 89
    :cond_1
    const-string v0, "KTspam"

    invoke-static {v2, v0}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v1, :cond_2

    .line 91
    const-string v0, "GsmSmsKTSpamMessage"

    invoke-static {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/SmsKrMessageManager;->getOperatorMessage(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher;Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;[[B)Lcom/android/internal/telephony/SmsOperatorBasicMessage;

    move-result-object v0

    goto :goto_0

    .line 94
    :cond_2
    const-string v0, "GsmSmsKTSpamMessage"

    invoke-static {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/SmsKrMessageManager;->getOperatorMessage(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher;Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;[[B)Lcom/android/internal/telephony/SmsOperatorBasicMessage;

    move-result-object v0

    goto :goto_0
.end method

.method public static getOperatorSpamMessage(Lcom/android/internal/telephony/SMSDispatcher;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/android/internal/telephony/SmsOperatorBasicMessage;
    .locals 3
    .parameter "dispatcher"
    .parameter "content"
    .parameter "recipient"
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 101
    const-string v0, "SKTspam"

    invoke-static {v2, v0}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 103
    const-string v0, "GsmSmsSKTSpamMessage"

    invoke-static {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/SmsKrMessageManager;->getOperatorMessage(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/android/internal/telephony/SmsOperatorBasicMessage;

    move-result-object v0

    .line 114
    :goto_0
    return-object v0

    .line 105
    :cond_0
    const-string v0, "LGUspam"

    invoke-static {v2, v0}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v1, :cond_1

    .line 107
    const-string v0, "CdmaSmsLgtSpamMessage"

    invoke-static {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/SmsKrMessageManager;->getOperatorMessage(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/android/internal/telephony/SmsOperatorBasicMessage;

    move-result-object v0

    goto :goto_0

    .line 109
    :cond_1
    const-string v0, "KTspam"

    invoke-static {v2, v0}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v1, :cond_2

    .line 111
    const-string v0, "GsmSmsKTSpamMessage"

    invoke-static {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/SmsKrMessageManager;->getOperatorMessage(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/android/internal/telephony/SmsOperatorBasicMessage;

    move-result-object v0

    goto :goto_0

    .line 114
    :cond_2
    const-string v0, "GsmSmsKTSpamMessage"

    invoke-static {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/SmsKrMessageManager;->getOperatorMessage(Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/android/internal/telephony/SmsOperatorBasicMessage;

    move-result-object v0

    goto :goto_0
.end method
