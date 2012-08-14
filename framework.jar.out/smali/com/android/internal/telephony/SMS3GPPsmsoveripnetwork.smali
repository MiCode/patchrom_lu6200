.class public Lcom/android/internal/telephony/SMS3GPPsmsoveripnetwork;
.super Ljava/lang/Object;
.source "SMS3GPPsmsoveripnetwork.java"


# static fields
.field private static lgSI:Lcom/android/internal/telephony/LgSvcCmdInterface;

.field private static mSMSOverIPNetwork:Z

.field private static mUseCache:Z

.field private static sLoader:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 13
    new-instance v2, Lcom/android/internal/telephony/DefaultLgSvcCmdInterfaceImpl;

    invoke-direct {v2}, Lcom/android/internal/telephony/DefaultLgSvcCmdInterfaceImpl;-><init>()V

    sput-object v2, Lcom/android/internal/telephony/SMS3GPPsmsoveripnetwork;->lgSI:Lcom/android/internal/telephony/LgSvcCmdInterface;

    .line 16
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/internal/telephony/SMS3GPPsmsoveripnetwork;->mUseCache:Z

    .line 18
    sput-boolean v3, Lcom/android/internal/telephony/SMS3GPPsmsoveripnetwork;->mSMSOverIPNetwork:Z

    .line 22
    new-instance v2, Ldalvik/system/PathClassLoader;

    const-string v3, "/system/framework/lgsvcitems.jar:/system/framework/qcrilhook.jar"

    const-class v4, Lcom/android/internal/telephony/SMS3GPPsmsoveripnetwork;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v2, Lcom/android/internal/telephony/SMS3GPPsmsoveripnetwork;->sLoader:Ljava/lang/ClassLoader;

    .line 29
    :try_start_0
    const-string v2, "com.android.lge.lgsvcitems.LgSvcCmd"

    const/4 v3, 0x1

    sget-object v4, Lcom/android/internal/telephony/SMS3GPPsmsoveripnetwork;->sLoader:Ljava/lang/ClassLoader;

    invoke-static {v2, v3, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 30
    .local v1, lgSvcCmdclass:Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/LgSvcCmdInterface;

    sput-object v2, Lcom/android/internal/telephony/SMS3GPPsmsoveripnetwork;->lgSI:Lcom/android/internal/telephony/LgSvcCmdInterface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :goto_0
    return-void

    .line 31
    :catch_0
    move-exception v0

    .line 33
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "SMS3GPPsmsoveripnetwork"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Load com.android.lge.lgsvcitems.LgSvcCmd class fail"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearCache()V
    .locals 3

    .prologue
    .line 39
    const-string v0, "SMS3GPPsmsoveripnetwork"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearCache() - UseCache="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/telephony/SMS3GPPsmsoveripnetwork;->mUseCache:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", SMSOverIPNetwork="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/telephony/SMS3GPPsmsoveripnetwork;->mSMSOverIPNetwork:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/SMS3GPPsmsoveripnetwork;->mUseCache:Z

    .line 42
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/SMS3GPPsmsoveripnetwork;->mSMSOverIPNetwork:Z

    .line 43
    return-void
.end method

.method public static getSmsoveripnetwork()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 47
    sget-boolean v1, Lcom/android/internal/telephony/SMS3GPPsmsoveripnetwork;->mUseCache:Z

    if-eqz v1, :cond_0

    .line 48
    const-string v1, "SMS3GPPsmsoveripnetwork"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSmsoveripnetwork() - UseCache :: value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/internal/telephony/SMS3GPPsmsoveripnetwork;->mSMSOverIPNetwork:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    sget-boolean v1, Lcom/android/internal/telephony/SMS3GPPsmsoveripnetwork;->mSMSOverIPNetwork:Z

    .line 69
    .local v0, smsoveripnetworkValue:Ljava/lang/String;
    :goto_0
    return v1

    .line 52
    .end local v0           #smsoveripnetworkValue:Ljava/lang/String;
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/SMS3GPPsmsoveripnetwork;->lgSI:Lcom/android/internal/telephony/LgSvcCmdInterface;

    const/16 v2, 0x1d5a

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/LgSvcCmdInterface;->getCommandValue(I)Ljava/lang/String;

    move-result-object v0

    .line 54
    .restart local v0       #smsoveripnetworkValue:Ljava/lang/String;
    const-string v1, "SMS3GPPsmsoveripnetwork"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSmsoveripnetwork() - value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    if-nez v0, :cond_1

    .line 58
    sput-boolean v4, Lcom/android/internal/telephony/SMS3GPPsmsoveripnetwork;->mSMSOverIPNetwork:Z

    .line 69
    :goto_1
    sget-boolean v1, Lcom/android/internal/telephony/SMS3GPPsmsoveripnetwork;->mSMSOverIPNetwork:Z

    goto :goto_0

    .line 60
    :cond_1
    sput-boolean v4, Lcom/android/internal/telephony/SMS3GPPsmsoveripnetwork;->mUseCache:Z

    .line 62
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 63
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/internal/telephony/SMS3GPPsmsoveripnetwork;->mSMSOverIPNetwork:Z

    goto :goto_1

    .line 65
    :cond_2
    sput-boolean v4, Lcom/android/internal/telephony/SMS3GPPsmsoveripnetwork;->mSMSOverIPNetwork:Z

    goto :goto_1
.end method
