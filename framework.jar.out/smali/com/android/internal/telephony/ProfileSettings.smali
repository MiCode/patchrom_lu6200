.class public Lcom/android/internal/telephony/ProfileSettings;
.super Ljava/lang/Object;
.source "ProfileSettings.java"


# static fields
.field public static final PREF_AUTOPROFIEENABLED:Ljava/lang/String; = "autoProfileEnabled"

.field public static final PREF_ECC1:Ljava/lang/String; = "ECCList"

.field public static final PREF_RVMS:Ljava/lang/String; = "RVMS"

.field public static final PREF_VMS:Ljava/lang/String; = "VMS"

.field private static mContext:Landroid/content/Context;

.field private static sSingleton:Lcom/android/internal/telephony/ProfileSettings;


# instance fields
.field private mAutoProfileEnabled:Z

.field private mEcc1:Ljava/lang/String;

.field private mPreferences:Landroid/content/SharedPreferences;

.field protected mProfile:Lcom/android/internal/telephony/ProfileParser$NameValueProfile;

.field private mRvms:Ljava/lang/String;

.field private mVms:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/ProfileSettings;->mAutoProfileEnabled:Z

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/ProfileSettings;->mVms:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/ProfileSettings;->mRvms:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/ProfileSettings;->mEcc1:Ljava/lang/String;

    .line 55
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v1, p0, Lcom/android/internal/telephony/ProfileSettings;->mAutoProfileEnabled:Z

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/ProfileSettings;->mVms:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/ProfileSettings;->mRvms:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/ProfileSettings;->mEcc1:Ljava/lang/String;

    .line 49
    sput-object p1, Lcom/android/internal/telephony/ProfileSettings;->mContext:Landroid/content/Context;

    .line 50
    const-string/jumbo v0, "telprofiling"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ProfileSettings;->mPreferences:Landroid/content/SharedPreferences;

    .line 52
    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/ProfileSettings;
    .locals 2

    .prologue
    .line 58
    sget-object v0, Lcom/android/internal/telephony/ProfileSettings;->sSingleton:Lcom/android/internal/telephony/ProfileSettings;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/ProfileSettings;->sSingleton:Lcom/android/internal/telephony/ProfileSettings;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 65
    sget-object v0, Lcom/android/internal/telephony/ProfileSettings;->sSingleton:Lcom/android/internal/telephony/ProfileSettings;

    if-eqz v0, :cond_0

    .line 68
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/ProfileSettings;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ProfileSettings;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/telephony/ProfileSettings;->sSingleton:Lcom/android/internal/telephony/ProfileSettings;

    .line 69
    return-void
.end method


# virtual methods
.method public isAutoProfileEnabled()Z
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/android/internal/telephony/ProfileSettings;->mAutoProfileEnabled:Z

    return v0
.end method

.method public declared-synchronized updateSharedPreferenceFromXml(Landroid/content/Context;Ljava/lang/String;Landroid/content/SharedPreferences;Z)V
    .locals 12
    .parameter "context"
    .parameter "filepath"
    .parameter "p"
    .parameter "forceUpdate"

    .prologue
    .line 80
    monitor-enter p0

    if-nez p4, :cond_0

    :try_start_0
    const-string/jumbo v9, "init"

    const/4 v10, 0x0

    invoke-interface {p3, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_7

    .line 81
    :cond_0
    invoke-static {p1}, Lcom/android/internal/telephony/SimInfo;->createFromSim(Landroid/content/Context;)Lcom/android/internal/telephony/SimInfo;

    move-result-object v6

    .line 83
    .local v6, s:Lcom/android/internal/telephony/SimInfo;
    if-nez v6, :cond_1

    .line 87
    :cond_1
    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 88
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v9, "init"

    const/4 v10, 0x1

    invoke-interface {v0, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 90
    new-instance v4, Lcom/android/internal/telephony/ProfileParser;

    invoke-direct {v4}, Lcom/android/internal/telephony/ProfileParser;-><init>()V

    .line 101
    .local v4, parser:Lcom/android/internal/telephony/ProfileParser;
    invoke-virtual {v4, p2, v6, v0}, Lcom/android/internal/telephony/ProfileParser;->getMatchedProfile(Ljava/lang/String;Lcom/android/internal/telephony/SimInfo;Landroid/content/SharedPreferences$Editor;)Lcom/android/internal/telephony/ProfileParser$ProfileData;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/ProfileParser$NameValueProfile;

    .line 105
    .local v5, profile:Lcom/android/internal/telephony/ProfileParser$NameValueProfile;
    if-nez v5, :cond_4

    const-string v9, "/etc/telephony.xml"

    invoke-virtual {v9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 107
    const/4 v1, 0x0

    .local v1, idx:I
    :goto_0
    sget-object v9, Lcom/android/internal/telephony/lgeAutoProfiling;->ProfileSet:[Ljava/lang/String;

    array-length v9, v9

    if-ge v1, v9, :cond_3

    .line 108
    sget-object v9, Lcom/android/internal/telephony/lgeAutoProfiling;->ProfileSet:[Ljava/lang/String;

    aget-object v9, v9, v1

    invoke-interface {p3, v9}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 111
    sget-object v9, Lcom/android/internal/telephony/lgeAutoProfiling;->ProfileSet:[Ljava/lang/String;

    aget-object v9, v9, v1

    const/4 v10, 0x0

    invoke-interface {v0, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 107
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    :cond_3
    const-string/jumbo v9, "init"

    const/4 v10, 0x0

    invoke-interface {v0, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 118
    .end local v1           #idx:I
    :cond_4
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/android/internal/telephony/ProfileParser$NameValueProfile;->getValueMap()Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/HashMap;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_6

    .line 119
    const/4 v2, 0x0

    .line 120
    .local v2, key:Ljava/lang/String;
    const/4 v8, 0x0

    .line 121
    .local v8, value:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/android/internal/telephony/ProfileParser$NameValueProfile;->getValueMap()Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    .line 122
    .local v7, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 123
    .local v3, keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 124
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #key:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 125
    .restart local v2       #key:Ljava/lang/String;
    invoke-virtual {v5, v2}, Lcom/android/internal/telephony/ProfileParser$NameValueProfile;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v2, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 127
    invoke-virtual {v5, v2}, Lcom/android/internal/telephony/ProfileParser$NameValueProfile;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/android/internal/telephony/lgeAutoProfiling;->setFileStructure(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v9, "ECCList"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v5, v2}, Lcom/android/internal/telephony/ProfileParser$NameValueProfile;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 131
    invoke-virtual {v5, v2}, Lcom/android/internal/telephony/ProfileParser$NameValueProfile;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/android/internal/telephony/lgeAutoProfiling;->setFinalECCList(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 80
    .end local v0           #e:Landroid/content/SharedPreferences$Editor;
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4           #parser:Lcom/android/internal/telephony/ProfileParser;
    .end local v5           #profile:Lcom/android/internal/telephony/ProfileParser$NameValueProfile;
    .end local v6           #s:Lcom/android/internal/telephony/SimInfo;
    .end local v7           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8           #value:Ljava/lang/String;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 136
    .restart local v0       #e:Landroid/content/SharedPreferences$Editor;
    .restart local v4       #parser:Lcom/android/internal/telephony/ProfileParser;
    .restart local v5       #profile:Lcom/android/internal/telephony/ProfileParser$NameValueProfile;
    .restart local v6       #s:Lcom/android/internal/telephony/SimInfo;
    :cond_6
    :try_start_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 138
    const-string v9, "TELProfiling"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "android ca start searching "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " and finish loaded"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    .end local v0           #e:Landroid/content/SharedPreferences$Editor;
    .end local v4           #parser:Lcom/android/internal/telephony/ProfileParser;
    .end local v5           #profile:Lcom/android/internal/telephony/ProfileParser$NameValueProfile;
    .end local v6           #s:Lcom/android/internal/telephony/SimInfo;
    :cond_7
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized updateSharedPreferenceFromXml(Lcom/android/internal/telephony/SimInfo;Ljava/lang/String;)V
    .locals 9
    .parameter "s"
    .parameter "filepath"

    .prologue
    .line 148
    monitor-enter p0

    :try_start_0
    const-string v6, "/etc/featureset.xml"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 149
    .local v0, isFeauture:Z
    new-instance v3, Lcom/android/internal/telephony/ProfileParser;

    invoke-direct {v3}, Lcom/android/internal/telephony/ProfileParser;-><init>()V

    .line 150
    .local v3, parser:Lcom/android/internal/telephony/ProfileParser;
    const/4 v6, 0x0

    invoke-virtual {v3, p2, p1, v6}, Lcom/android/internal/telephony/ProfileParser;->getMatchedProfile(Ljava/lang/String;Lcom/android/internal/telephony/SimInfo;Landroid/content/SharedPreferences$Editor;)Lcom/android/internal/telephony/ProfileParser$ProfileData;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/ProfileParser$NameValueProfile;

    .line 153
    .local v4, profile:Lcom/android/internal/telephony/ProfileParser$NameValueProfile;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/internal/telephony/ProfileParser$NameValueProfile;->getValueMap()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 154
    const/4 v1, 0x0

    .line 155
    .local v1, key:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/android/internal/telephony/ProfileParser$NameValueProfile;->getValueMap()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 156
    .local v5, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 158
    .local v2, keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 159
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #key:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 162
    .restart local v1       #key:Ljava/lang/String;
    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/ProfileParser$NameValueProfile;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/android/internal/telephony/lgeAutoProfiling;->setFileStructure(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    if-nez v0, :cond_0

    const-string v6, "ECCList"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/ProfileParser$NameValueProfile;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 166
    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/ProfileParser$NameValueProfile;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/android/internal/telephony/lgeAutoProfiling;->setFinalECCList(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 148
    .end local v0           #isFeauture:Z
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3           #parser:Lcom/android/internal/telephony/ProfileParser;
    .end local v4           #profile:Lcom/android/internal/telephony/ProfileParser$NameValueProfile;
    .end local v5           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 172
    .restart local v0       #isFeauture:Z
    .restart local v3       #parser:Lcom/android/internal/telephony/ProfileParser;
    .restart local v4       #profile:Lcom/android/internal/telephony/ProfileParser$NameValueProfile;
    :cond_1
    :try_start_1
    const-string v6, "TELProfiling"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "android ca restart searching "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " and finish loaded"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    monitor-exit p0

    return-void
.end method
