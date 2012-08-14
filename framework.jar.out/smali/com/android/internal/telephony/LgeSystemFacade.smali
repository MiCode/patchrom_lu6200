.class public Lcom/android/internal/telephony/LgeSystemFacade;
.super Ljava/lang/Object;
.source "LgeSystemFacade.java"

# interfaces
.implements Lcom/android/internal/telephony/SystemFacade;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTelephony:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/android/internal/telephony/LgeSystemFacade;->mContext:Landroid/content/Context;

    .line 17
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/internal/telephony/LgeSystemFacade;->mTelephony:Landroid/telephony/TelephonyManager;

    .line 19
    return-void
.end method

.method private getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "key"

    .prologue
    .line 88
    const/4 v6, 0x0

    .line 92
    .local v6, ret:Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/telephony/LgeSystemFacade;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 93
    .local v2, cl:Ljava/lang/ClassLoader;
    const-string v7, "android.os.SystemProperties"

    invoke-virtual {v2, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 96
    .local v1, SystemProperties:Ljava/lang/Class;
    const/4 v7, 0x1

    new-array v4, v7, [Ljava/lang/Class;

    .line 97
    .local v4, paramTypes:[Ljava/lang/Class;
    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v4, v7

    .line 99
    const-string v7, "get"

    invoke-virtual {v1, v7, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 102
    .local v3, get:Ljava/lang/reflect/Method;
    const/4 v7, 0x1

    new-array v5, v7, [Ljava/lang/Object;

    .line 103
    .local v5, params:[Ljava/lang/Object;
    const/4 v7, 0x0

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v8, v5, v7

    .line 105
    invoke-virtual {v3, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v6, v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .end local v1           #SystemProperties:Ljava/lang/Class;
    .end local v2           #cl:Ljava/lang/ClassLoader;
    .end local v3           #get:Ljava/lang/reflect/Method;
    .end local v4           #paramTypes:[Ljava/lang/Class;
    .end local v5           #params:[Ljava/lang/Object;
    :goto_0
    return-object v6

    .line 109
    :catch_0
    move-exception v7

    goto :goto_0

    .line 107
    :catch_1
    move-exception v7

    goto :goto_0
.end method


# virtual methods
.method public getGid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    const-string/jumbo v1, "gsm.sim.operator.gid"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/LgeSystemFacade;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, gid:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    const/4 v0, 0x0

    .line 61
    .end local v0           #gid:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    const-string/jumbo v1, "gsm.sim.operator.imsi"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/LgeSystemFacade;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, imsi:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    const/4 v0, 0x0

    .line 71
    .end local v0           #imsi:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getMcc()Ljava/lang/String;
    .locals 3

    .prologue
    .line 28
    iget-object v1, p0, Lcom/android/internal/telephony/LgeSystemFacade;->mTelephony:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, mccmnc:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    .line 30
    :cond_0
    const/4 v1, 0x0

    .line 32
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getMnc()Ljava/lang/String;
    .locals 3

    .prologue
    .line 37
    iget-object v1, p0, Lcom/android/internal/telephony/LgeSystemFacade;->mTelephony:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, mccmnc:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    .line 39
    :cond_0
    const/4 v1, 0x0

    .line 41
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSpn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    iget-object v1, p0, Lcom/android/internal/telephony/LgeSystemFacade;->mTelephony:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, spn:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    const/4 v0, 0x0

    .line 50
    .end local v0           #spn:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getTargetCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    const-string/jumbo v0, "ro.build.target_country"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LgeSystemFacade;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTargetOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    const-string/jumbo v0, "ro.build.target_operator"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LgeSystemFacade;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSimReady()Z
    .locals 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/internal/telephony/LgeSystemFacade;->mTelephony:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
