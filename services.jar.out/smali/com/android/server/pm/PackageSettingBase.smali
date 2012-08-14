.class Lcom/android/server/pm/PackageSettingBase;
.super Lcom/android/server/pm/GrantedPermissions;
.source "PackageSettingBase.java"


# static fields
.field static final PKG_INSTALL_COMPLETE:I = 0x1

.field static final PKG_INSTALL_INCOMPLETE:I


# instance fields
.field codePath:Ljava/io/File;

.field codePathString:Ljava/lang/String;

.field disabledComponents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field enabled:I

.field enabledComponents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field firstInstallTime:J

.field haveGids:Z

.field installStatus:I

.field installerPackageName:Ljava/lang/String;

.field lastUpdateTime:J

.field public mCursorTables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/lge/debug/ProviderRefInfo;",
            ">;"
        }
    .end annotation
.end field

.field final name:Ljava/lang/String;

.field nativeLibraryPathString:Ljava/lang/String;

.field public notLaunched:Z

.field origPackage:Lcom/android/server/pm/PackageSettingBase;

.field permissionsFixed:Z

.field final realName:Ljava/lang/String;

.field resourcePath:Ljava/io/File;

.field resourcePathString:Ljava/lang/String;

.field signatures:Lcom/android/server/pm/PackageSignatures;

.field public stopped:Z

.field timeStamp:J

.field uidError:Z

.field versionCode:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageSettingBase;)V
    .locals 2
    .parameter "base"

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/pm/GrantedPermissions;-><init>(Lcom/android/server/pm/GrantedPermissions;)V

    .line 62
    new-instance v0, Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v0}, Lcom/android/server/pm/PackageSignatures;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 75
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->disabledComponents:Ljava/util/HashSet;

    .line 77
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->enabledComponents:Ljava/util/HashSet;

    .line 78
    iput v1, p0, Lcom/android/server/pm/PackageSettingBase;->enabled:I

    .line 79
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->mCursorTables:Ljava/util/HashMap;

    .line 102
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    .line 103
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->realName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->realName:Ljava/lang/String;

    .line 104
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->codePath:Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->codePath:Ljava/io/File;

    .line 105
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    .line 106
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->resourcePath:Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->resourcePath:Ljava/io/File;

    .line 107
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    .line 108
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->nativeLibraryPathString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->nativeLibraryPathString:Ljava/lang/String;

    .line 109
    iget-wide v0, p1, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    iput-wide v0, p0, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    .line 110
    iget-wide v0, p1, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    iput-wide v0, p0, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    .line 111
    iget-wide v0, p1, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J

    iput-wide v0, p0, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J

    .line 112
    iget v0, p1, Lcom/android/server/pm/PackageSettingBase;->versionCode:I

    iput v0, p0, Lcom/android/server/pm/PackageSettingBase;->versionCode:I

    .line 114
    iget-boolean v0, p1, Lcom/android/server/pm/PackageSettingBase;->uidError:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageSettingBase;->uidError:Z

    .line 116
    new-instance v0, Lcom/android/server/pm/PackageSignatures;

    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageSignatures;-><init>(Lcom/android/server/pm/PackageSignatures;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 118
    iget-boolean v0, p1, Lcom/android/server/pm/PackageSettingBase;->permissionsFixed:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageSettingBase;->permissionsFixed:Z

    .line 119
    iget-boolean v0, p1, Lcom/android/server/pm/PackageSettingBase;->haveGids:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageSettingBase;->haveGids:Z

    .line 120
    iget-boolean v0, p1, Lcom/android/server/pm/PackageSettingBase;->stopped:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageSettingBase;->stopped:Z

    .line 121
    iget-boolean v0, p1, Lcom/android/server/pm/PackageSettingBase;->notLaunched:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageSettingBase;->notLaunched:Z

    .line 123
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->disabledComponents:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->disabledComponents:Ljava/util/HashSet;

    .line 125
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->enabledComponents:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->enabledComponents:Ljava/util/HashSet;

    .line 127
    iget v0, p1, Lcom/android/server/pm/PackageSettingBase;->enabled:I

    iput v0, p0, Lcom/android/server/pm/PackageSettingBase;->enabled:I

    .line 128
    iget v0, p1, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    iput v0, p0, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    .line 130
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->origPackage:Lcom/android/server/pm/PackageSettingBase;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->origPackage:Lcom/android/server/pm/PackageSettingBase;

    .line 132
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    .line 133
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;II)V
    .locals 2
    .parameter "name"
    .parameter "realName"
    .parameter "codePath"
    .parameter "resourcePath"
    .parameter "nativeLibraryPathString"
    .parameter "pVersionCode"
    .parameter "pkgFlags"

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0, p7}, Lcom/android/server/pm/GrantedPermissions;-><init>(I)V

    .line 62
    new-instance v0, Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v0}, Lcom/android/server/pm/PackageSignatures;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 75
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->disabledComponents:Ljava/util/HashSet;

    .line 77
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->enabledComponents:Ljava/util/HashSet;

    .line 78
    iput v1, p0, Lcom/android/server/pm/PackageSettingBase;->enabled:I

    .line 79
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->mCursorTables:Ljava/util/HashMap;

    .line 90
    iput-object p1, p0, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    .line 91
    iput-object p2, p0, Lcom/android/server/pm/PackageSettingBase;->realName:Ljava/lang/String;

    .line 92
    invoke-virtual {p0, p3, p4, p5, p6}, Lcom/android/server/pm/PackageSettingBase;->init(Ljava/io/File;Ljava/io/File;Ljava/lang/String;I)V

    .line 93
    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/server/pm/PackageSettingBase;)V
    .locals 2
    .parameter "base"

    .prologue
    .line 169
    iget-object v0, p1, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    iput-object v0, p0, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    .line 170
    iget-object v0, p1, Lcom/android/server/pm/GrantedPermissions;->gids:[I

    iput-object v0, p0, Lcom/android/server/pm/GrantedPermissions;->gids:[I

    .line 172
    iget-wide v0, p1, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    iput-wide v0, p0, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    .line 173
    iget-wide v0, p1, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    iput-wide v0, p0, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    .line 174
    iget-wide v0, p1, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J

    iput-wide v0, p0, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J

    .line 175
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 176
    iget-boolean v0, p1, Lcom/android/server/pm/PackageSettingBase;->permissionsFixed:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageSettingBase;->permissionsFixed:Z

    .line 177
    iget-boolean v0, p1, Lcom/android/server/pm/PackageSettingBase;->haveGids:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageSettingBase;->haveGids:Z

    .line 178
    iget-boolean v0, p1, Lcom/android/server/pm/PackageSettingBase;->stopped:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageSettingBase;->stopped:Z

    .line 179
    iget-boolean v0, p1, Lcom/android/server/pm/PackageSettingBase;->notLaunched:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageSettingBase;->notLaunched:Z

    .line 180
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->disabledComponents:Ljava/util/HashSet;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->disabledComponents:Ljava/util/HashSet;

    .line 181
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->enabledComponents:Ljava/util/HashSet;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->enabledComponents:Ljava/util/HashSet;

    .line 182
    iget v0, p1, Lcom/android/server/pm/PackageSettingBase;->enabled:I

    iput v0, p0, Lcom/android/server/pm/PackageSettingBase;->enabled:I

    .line 183
    iget v0, p1, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    iput v0, p0, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    .line 184
    return-void
.end method

.method disableComponentLPw(Ljava/lang/String;)Z
    .locals 2
    .parameter "componentClassName"

    .prologue
    .line 193
    iget-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->enabledComponents:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 194
    .local v0, changed:Z
    iget-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->disabledComponents:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 195
    return v0
.end method

.method enableComponentLPw(Ljava/lang/String;)Z
    .locals 2
    .parameter "componentClassName"

    .prologue
    .line 187
    iget-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->disabledComponents:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 188
    .local v0, changed:Z
    iget-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->enabledComponents:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 189
    return v0
.end method

.method getCurrentEnabledStateLPr(Ljava/lang/String;)I
    .locals 1
    .parameter "componentName"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->enabledComponents:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    const/4 v0, 0x1

    .line 210
    :goto_0
    return v0

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->disabledComponents:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    const/4 v0, 0x2

    goto :goto_0

    .line 210
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInstallStatus()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    return v0
.end method

.method getInstallerPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method init(Ljava/io/File;Ljava/io/File;Ljava/lang/String;I)V
    .locals 1
    .parameter "codePath"
    .parameter "resourcePath"
    .parameter "nativeLibraryPathString"
    .parameter "pVersionCode"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/server/pm/PackageSettingBase;->codePath:Ljava/io/File;

    .line 138
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    .line 139
    iput-object p2, p0, Lcom/android/server/pm/PackageSettingBase;->resourcePath:Ljava/io/File;

    .line 140
    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    .line 141
    iput-object p3, p0, Lcom/android/server/pm/PackageSettingBase;->nativeLibraryPathString:Ljava/lang/String;

    .line 142
    iput p4, p0, Lcom/android/server/pm/PackageSettingBase;->versionCode:I

    .line 143
    return-void
.end method

.method restoreComponentLPw(Ljava/lang/String;)Z
    .locals 2
    .parameter "componentClassName"

    .prologue
    .line 199
    iget-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->enabledComponents:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 200
    .local v0, changed:Z
    iget-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->disabledComponents:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 201
    return v0
.end method

.method public setInstallStatus(I)V
    .locals 0
    .parameter "newStatus"

    .prologue
    .line 154
    iput p1, p0, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    .line 155
    return-void
.end method

.method public setInstallerPackageName(Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setTimeStamp(J)V
    .locals 0
    .parameter "newStamp"

    .prologue
    .line 162
    iput-wide p1, p0, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    .line 163
    return-void
.end method
