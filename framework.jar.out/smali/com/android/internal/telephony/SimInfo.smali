.class public Lcom/android/internal/telephony/SimInfo;
.super Ljava/lang/Object;
.source "SimInfo.java"


# static fields
.field private static final SIM_INFO_FILE:Ljava/lang/String; = "siminfo"

.field private static final TAG:Ljava/lang/String; = "SimInfo"


# instance fields
.field public gid:Ljava/lang/String;

.field public imsi:Ljava/lang/String;

.field public mcc:Ljava/lang/String;

.field public mnc:Ljava/lang/String;

.field public spn:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "mcc"
    .parameter "mnc"
    .parameter "gid"
    .parameter "spn"
    .parameter "imsi"

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/internal/telephony/SimInfo;->mcc:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/android/internal/telephony/SimInfo;->mnc:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/android/internal/telephony/SimInfo;->gid:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/android/internal/telephony/SimInfo;->spn:Ljava/lang/String;

    .line 30
    iput-object p5, p0, Lcom/android/internal/telephony/SimInfo;->imsi:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public static createFromPreference(Landroid/content/Context;)Lcom/android/internal/telephony/SimInfo;
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 98
    const-string/jumbo v0, "siminfo"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 100
    .local v6, p:Landroid/content/SharedPreferences;
    new-instance v0, Lcom/android/internal/telephony/SimInfo;

    const-string/jumbo v1, "mcc"

    invoke-interface {v6, v1, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "mnc"

    invoke-interface {v6, v2, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "gid"

    invoke-interface {v6, v3, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "spn"

    invoke-interface {v6, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "imsi"

    invoke-interface {v6, v5, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/SimInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createFromSim(Landroid/content/Context;)Lcom/android/internal/telephony/SimInfo;
    .locals 7
    .parameter "context"

    .prologue
    .line 87
    new-instance v6, Lcom/android/internal/telephony/LgeSystemFacade;

    invoke-direct {v6, p0}, Lcom/android/internal/telephony/LgeSystemFacade;-><init>(Landroid/content/Context;)V

    .line 89
    .local v6, f:Lcom/android/internal/telephony/SystemFacade;
    new-instance v0, Lcom/android/internal/telephony/SimInfo;

    invoke-interface {v6}, Lcom/android/internal/telephony/SystemFacade;->getMcc()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6}, Lcom/android/internal/telephony/SystemFacade;->getMnc()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6}, Lcom/android/internal/telephony/SystemFacade;->getGid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6}, Lcom/android/internal/telephony/SystemFacade;->getSpn()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6}, Lcom/android/internal/telephony/SystemFacade;->getImsi()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/SimInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static writeToPreference(Landroid/content/Context;Lcom/android/internal/telephony/SimInfo;)V
    .locals 3
    .parameter "context"
    .parameter "s"

    .prologue
    .line 113
    const-string/jumbo v1, "siminfo"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 115
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "mcc"

    iget-object v2, p1, Lcom/android/internal/telephony/SimInfo;->mcc:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 116
    const-string/jumbo v1, "mnc"

    iget-object v2, p1, Lcom/android/internal/telephony/SimInfo;->mnc:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 117
    const-string v1, "gid"

    iget-object v2, p1, Lcom/android/internal/telephony/SimInfo;->gid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 118
    const-string/jumbo v1, "spn"

    iget-object v2, p1, Lcom/android/internal/telephony/SimInfo;->spn:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 119
    const-string/jumbo v1, "imsi"

    iget-object v2, p1, Lcom/android/internal/telephony/SimInfo;->imsi:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 120
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 121
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 42
    if-ne p0, p1, :cond_1

    .line 77
    :cond_0
    :goto_0
    return v1

    .line 43
    :cond_1
    if-eqz p1, :cond_2

    instance-of v3, p1, Lcom/android/internal/telephony/SimInfo;

    if-nez v3, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 45
    check-cast v0, Lcom/android/internal/telephony/SimInfo;

    .line 47
    .local v0, b:Lcom/android/internal/telephony/SimInfo;
    iget-object v3, p0, Lcom/android/internal/telephony/SimInfo;->mcc:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 48
    iget-object v3, v0, Lcom/android/internal/telephony/SimInfo;->mcc:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    goto :goto_0

    .line 49
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/SimInfo;->mcc:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/telephony/SimInfo;->mcc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 50
    goto :goto_0

    .line 53
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/SimInfo;->mnc:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 54
    iget-object v3, v0, Lcom/android/internal/telephony/SimInfo;->mnc:Ljava/lang/String;

    if-eqz v3, :cond_7

    move v1, v2

    goto :goto_0

    .line 55
    :cond_6
    iget-object v3, p0, Lcom/android/internal/telephony/SimInfo;->mnc:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/telephony/SimInfo;->mnc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 56
    goto :goto_0

    .line 59
    :cond_7
    iget-object v3, p0, Lcom/android/internal/telephony/SimInfo;->gid:Ljava/lang/String;

    if-nez v3, :cond_8

    .line 60
    iget-object v3, v0, Lcom/android/internal/telephony/SimInfo;->gid:Ljava/lang/String;

    if-eqz v3, :cond_9

    move v1, v2

    goto :goto_0

    .line 61
    :cond_8
    iget-object v3, p0, Lcom/android/internal/telephony/SimInfo;->gid:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/telephony/SimInfo;->gid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    move v1, v2

    .line 62
    goto :goto_0

    .line 65
    :cond_9
    iget-object v3, p0, Lcom/android/internal/telephony/SimInfo;->spn:Ljava/lang/String;

    if-nez v3, :cond_a

    .line 66
    iget-object v3, v0, Lcom/android/internal/telephony/SimInfo;->spn:Ljava/lang/String;

    if-eqz v3, :cond_b

    move v1, v2

    goto :goto_0

    .line 67
    :cond_a
    iget-object v3, p0, Lcom/android/internal/telephony/SimInfo;->spn:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/telephony/SimInfo;->spn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    move v1, v2

    .line 68
    goto :goto_0

    .line 71
    :cond_b
    iget-object v3, p0, Lcom/android/internal/telephony/SimInfo;->imsi:Ljava/lang/String;

    if-nez v3, :cond_c

    .line 72
    iget-object v3, v0, Lcom/android/internal/telephony/SimInfo;->imsi:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 73
    :cond_c
    iget-object v3, p0, Lcom/android/internal/telephony/SimInfo;->imsi:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/telephony/SimInfo;->imsi:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 74
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SimInfo;->mcc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mnc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SimInfo;->mnc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SimInfo;->gid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", spn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SimInfo;->spn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imsi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SimInfo;->imsi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
