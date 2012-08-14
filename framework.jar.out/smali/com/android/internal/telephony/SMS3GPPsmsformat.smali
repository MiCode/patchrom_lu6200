.class public Lcom/android/internal/telephony/SMS3GPPsmsformat;
.super Ljava/lang/Object;
.source "SMS3GPPsmsformat.java"


# static fields
.field public static final SMS_FORMAT_3GPP:Z = true

.field public static final SMS_FORMAT_3GPP2:Z

.field private static lgSI:Lcom/android/internal/telephony/LgSvcCmdInterface;

.field private static sLoader:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 10
    new-instance v2, Lcom/android/internal/telephony/DefaultLgSvcCmdInterfaceImpl;

    invoke-direct {v2}, Lcom/android/internal/telephony/DefaultLgSvcCmdInterfaceImpl;-><init>()V

    sput-object v2, Lcom/android/internal/telephony/SMS3GPPsmsformat;->lgSI:Lcom/android/internal/telephony/LgSvcCmdInterface;

    .line 17
    new-instance v2, Ldalvik/system/PathClassLoader;

    const-string v3, "/system/framework/lgsvcitems.jar:/system/framework/qcrilhook.jar"

    const-class v4, Lcom/android/internal/telephony/SMS3GPPsmsformat;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v2, Lcom/android/internal/telephony/SMS3GPPsmsformat;->sLoader:Ljava/lang/ClassLoader;

    .line 24
    :try_start_0
    const-string v2, "com.android.lge.lgsvcitems.LgSvcCmd"

    const/4 v3, 0x1

    sget-object v4, Lcom/android/internal/telephony/SMS3GPPsmsformat;->sLoader:Ljava/lang/ClassLoader;

    invoke-static {v2, v3, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 25
    .local v1, lgSvcCmdclass:Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/LgSvcCmdInterface;

    sput-object v2, Lcom/android/internal/telephony/SMS3GPPsmsformat;->lgSI:Lcom/android/internal/telephony/LgSvcCmdInterface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :goto_0
    return-void

    .line 26
    :catch_0
    move-exception v0

    .line 28
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "SMS3GPPsmsformat"

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
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSmsformat()Z
    .locals 4

    .prologue
    .line 33
    sget-object v1, Lcom/android/internal/telephony/SMS3GPPsmsformat;->lgSI:Lcom/android/internal/telephony/LgSvcCmdInterface;

    const/16 v2, 0x3f6

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/LgSvcCmdInterface;->getCommandValue(I)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, smsformatValue:Ljava/lang/String;
    const-string v1, "SMS3GPPsmsformat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSmsformat()- smsformat before=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    if-eqz v0, :cond_0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    :cond_0
    const/4 v1, 0x0

    .line 40
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static is3GPP()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 48
    invoke-static {}, Lcom/android/internal/telephony/SMS3GPPsmsformat;->getSmsformat()Z

    move-result v0

    .line 50
    .local v0, smsformat:Z
    if-ne v1, v0, :cond_0

    .line 51
    const-string v2, "SMS3GPPsmsformat "

    const-string/jumbo v3, "is3GPP()-smsformat is 3GPP"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :goto_0
    return v1

    .line 54
    :cond_0
    const-string v1, "SMS3GPPsmsformat "

    const-string/jumbo v2, "is3GPP()- smsformat is 3GPP2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static is3GPP2()Z
    .locals 3

    .prologue
    .line 59
    invoke-static {}, Lcom/android/internal/telephony/SMS3GPPsmsformat;->getSmsformat()Z

    move-result v0

    .line 61
    .local v0, smsformat:Z
    if-nez v0, :cond_0

    .line 62
    const-string v1, "SMS3GPPsmsformat "

    const-string/jumbo v2, "is3GPP2()-smsformat is 3GPP2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const/4 v1, 0x1

    .line 66
    :goto_0
    return v1

    .line 65
    :cond_0
    const-string v1, "SMS3GPPsmsformat "

    const-string/jumbo v2, "is3GPP2()-smsformat is 3GPP"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const/4 v1, 0x0

    goto :goto_0
.end method
