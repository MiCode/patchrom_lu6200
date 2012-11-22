.class public Lcom/android/settings_ex/FontSettingsPreference;
.super Landroid/preference/ListPreference;
.source "FontSettingsPreference.java"


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mCertifiedFontAppCount:I

.field private mCertifiedFontFaceNameLists:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mCurrentDefaultFontIndex:I

.field private mDefaultFontCount:I

.field private mDefaultFontFaceLists:[Ljava/lang/String;

.field private mDefaultFontFaceNameLists:[Ljava/lang/String;

.field private mDefaultFontMenuItemValues:[Ljava/lang/CharSequence;

.field private mDefaultFontMenuItems:[Ljava/lang/CharSequence;

.field private mEmbeddedFontCount:I

.field private mSelectDefaultFontIndex:I

.field private progressHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, p0, Lcom/android/settings_ex/FontSettingsPreference;->mCurConfig:Landroid/content/res/Configuration;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/settings_ex/FontSettingsPreference;->progressHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/android/settings_ex/FontTypeFace;->getUseCappFonts()Z

    move-result v0

    .local v0, bSupportChangeFont:Z
    if-nez v0, :cond_0

    const-string v1, "FontSettingsPreference"

    const-string v2, "Warning : not support changing fonts"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/settings_ex/FontSettingsPreference;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/FontSettingsPreference;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/android/settings_ex/FontSettingsPreference;->mActivityManager:Landroid/app/ActivityManager;

    invoke-direct {p0}, Lcom/android/settings_ex/FontSettingsPreference;->setFontTypeSelectSummary()V

    invoke-direct {p0}, Lcom/android/settings_ex/FontSettingsPreference;->updateDownloadFontApps()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_1
    invoke-direct {p0}, Lcom/android/settings_ex/FontSettingsPreference;->updateFontTypeSelectMenuList()V

    goto :goto_0

    :pswitch_0
    const-string v1, "FontSettingsPreference"

    const-string v2, "Selected font has been deleted.., Change the default font."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings_ex/FontSettingsPreference;->updateDownloadFontApps()I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x69
        :pswitch_0
    .end packed-switch
.end method

.method private findNewDownloadFontApps()V
    .locals 5

    .prologue
    invoke-static {}, Lcom/android/settings_ex/FontTypeFace;->countNewDownloadFontApps()I

    move-result v0

    .local v0, count:I
    const/4 v1, 0x0

    .local v1, n:I
    :goto_0
    if-ge v1, v0, :cond_2

    invoke-static {v1}, Lcom/android/settings_ex/FontTypeFace;->getNewDownloadFontAppName(I)Ljava/lang/String;

    move-result-object v2

    .local v2, name:Ljava/lang/String;
    if-nez v2, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v2}, Lcom/android/settings_ex/FontSettingsPreference;->unzipFontApp(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    invoke-static {v1}, Lcom/android/settings_ex/FontTypeFace;->certifyNewDownloadFontApp(I)I

    move-result v3

    const/16 v4, 0x67

    if-ne v3, v4, :cond_0

    invoke-static {v1}, Lcom/android/settings_ex/FontTypeFace;->updateNewDownloadFontApp(I)I

    goto :goto_1

    .end local v2           #name:Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/android/settings_ex/FontTypeFace;->saveNewDownloadFontApps()V

    return-void
.end method

.method private restartAllPackages()V
    .locals 6

    .prologue
    .line 219
    const/4 v4, 0x3

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "com.lge.launcher2"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "com.lge.email"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "com.android.browser"

    aput-object v5, v2, v4

    .line 221
    .local v2, restartList:[Ljava/lang/String;
    array-length v3, v2

    .line 223
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 224
    aget-object v1, v2, v0

    .line 226
    .local v1, processName:Ljava/lang/String;
    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/android/settings_ex/FontSettingsPreference;->mActivityManager:Landroid/app/ActivityManager;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings_ex/FontSettingsPreference;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v4, v1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1           #processName:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private restartProgress(I)V
    .locals 1
    .parameter "mode"

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/FontSettingsPreference;->sendIntentPreFontChange()V

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings_ex/FontSettingsPreference;->saveFontTypeSelectData(Z)V

    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/FontSettingsPreference;->saveFontTypeSelectConfiguration()V

    invoke-direct {p0}, Lcom/android/settings_ex/FontSettingsPreference;->restartAllPackages()V

    invoke-direct {p0}, Lcom/android/settings_ex/FontSettingsPreference;->sendIntentFontChange()V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/FontSettingsPreference;->saveFontTypeSelectData(Z)V

    goto :goto_0
.end method

.method private saveFontTypeSelectConfiguration()V
    .locals 3

    .prologue
    .line 255
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/FontSettingsPreference;->mCurConfig:Landroid/content/res/Configuration;

    iget v2, p0, Lcom/android/settings_ex/FontSettingsPreference;->mCurrentDefaultFontIndex:I

    invoke-direct {p0, v1, v2}, Lcom/android/settings_ex/FontSettingsPreference;->setFontIndex(Landroid/content/res/Configuration;I)V

    .line 257
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/FontSettingsPreference;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :goto_0
    return-void

    .line 259
    :catch_0
    move-exception v0

    .line 261
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "FontSettingsPreference"

    const-string v2, "Unable to save font type index."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private saveFontTypeSelectData(Z)V
    .locals 1
    .parameter "resetDefaultFontIndex"

    .prologue
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/android/settings_ex/FontTypeFace;->getSystemDefaultFamilyIndex()I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/FontSettingsPreference;->mCurrentDefaultFontIndex:I

    invoke-static {}, Lcom/android/settings_ex/FontTypeFace;->saveNewDownloadFontApps()V

    :cond_0
    iget v0, p0, Lcom/android/settings_ex/FontSettingsPreference;->mCurrentDefaultFontIndex:I

    invoke-static {v0}, Lcom/android/settings_ex/FontTypeFace;->selectDefaultFont(I)V

    return-void
.end method

.method private sendIntentFontChange()V
    .locals 3

    .prologue
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.6A73.ACTION_FONT_CHANGE_FINISHED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, intentOld:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings_ex/FontSettingsPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v0, Landroid/content/Intent;

    const-string v2, "jungle.intent.action.FONTDIALOG_FINISH"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intentGB:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings_ex/FontSettingsPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private sendIntentPreFontChange()V
    .locals 2

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "font.intent.action.ACTION_FONT_CHANGE_READY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intentOld:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings_ex/FontSettingsPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setFontIndex(Landroid/content/res/Configuration;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 268
    :try_start_0
    const-class v0, Landroid/content/res/Configuration;

    const-string v1, "fontTypeIndex"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 270
    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 278
    :goto_0
    return-void

    .line 271
    :catch_0
    move-exception v0

    .line 272
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 273
    :catch_1
    move-exception v0

    .line 274
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 275
    :catch_2
    move-exception v0

    .line 276
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method private setFontTypeSelect()V
    .locals 5

    .prologue
    .line 400
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/FontSettingsPreference;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    :goto_0
    invoke-static {}, Lcom/android/settings_ex/FontTypeFace;->getCurrentDefaultFontIndex()I

    move-result v2

    iput v2, p0, Lcom/android/settings_ex/FontSettingsPreference;->mCurrentDefaultFontIndex:I

    iget v2, p0, Lcom/android/settings_ex/FontSettingsPreference;->mCurrentDefaultFontIndex:I

    iput v2, p0, Lcom/android/settings_ex/FontSettingsPreference;->mSelectDefaultFontIndex:I

    iget v2, p0, Lcom/android/settings_ex/FontSettingsPreference;->mEmbeddedFontCount:I

    iget v3, p0, Lcom/android/settings_ex/FontSettingsPreference;->mCurrentDefaultFontIndex:I

    if-gt v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/FontSettingsPreference;->mCertifiedFontFaceNameLists:[Ljava/lang/String;

    iget v3, p0, Lcom/android/settings_ex/FontSettingsPreference;->mCurrentDefaultFontIndex:I

    iget v4, p0, Lcom/android/settings_ex/FontSettingsPreference;->mEmbeddedFontCount:I

    sub-int/2addr v3, v4

    aget-object v1, v2, v3

    .local v1, summary:Ljava/lang/String;
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/FontSettingsPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget v2, p0, Lcom/android/settings_ex/FontSettingsPreference;->mCurrentDefaultFontIndex:I

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/FontSettingsPreference;->setValueIndex(I)V

    return-void

    .end local v1           #summary:Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "FontSettingsPreference"

    const-string v3, "Unable to retrieve font type index."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 415
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/FontSettingsPreference;->mDefaultFontFaceNameLists:[Ljava/lang/String;

    iget v3, p0, Lcom/android/settings_ex/FontSettingsPreference;->mCurrentDefaultFontIndex:I

    aget-object v1, v2, v3

    .restart local v1       #summary:Ljava/lang/String;
    goto :goto_1
.end method

.method private setFontTypeSelectSummary()V
    .locals 8

    .prologue
    invoke-static {}, Lcom/android/settings_ex/FontTypeFace;->getDefaultFontCount()I

    move-result v2

    .local v2, defaultFontCount:I
    invoke-static {}, Lcom/android/settings_ex/FontTypeFace;->countCertifiedDownloadFontApps()I

    move-result v0

    .local v0, certifiedFontAppCount:I
    sub-int v4, v2, v0

    .local v4, sysEmbeddedFontCount:I
    invoke-static {}, Lcom/android/settings_ex/FontTypeFace;->getCurrentDefaultFontIndex()I

    move-result v1

    .local v1, currentDefaultFontIndex:I
    iget-object v6, p0, Lcom/android/settings_ex/FontSettingsPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09009c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .local v5, sysEmbeddedFontFaceNameList:[Ljava/lang/String;
    if-gt v4, v1, :cond_0

    sub-int v6, v1, v4

    invoke-static {v6}, Lcom/android/settings_ex/FontTypeFace;->getCertifiedDownloadFontAppFontname(I)Ljava/lang/String;

    move-result-object v3

    .local v3, summary:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/FontSettingsPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    .end local v3           #summary:Ljava/lang/String;
    :cond_0
    aget-object v3, v5, v1

    .restart local v3       #summary:Ljava/lang/String;
    goto :goto_0
.end method

.method private unzipFontApp(Ljava/lang/String;)Z
    .locals 27
    .parameter "fontAppName"

    .prologue
    if-nez p1, :cond_1

    const/16 v25, 0x0

    :cond_0
    :goto_0
    return v25

    :cond_1
    invoke-static {}, Lcom/android/settings_ex/FontTypeFace;->getNewDownloadFontAppsSrcPath()Ljava/lang/String;

    move-result-object v24

    .local v24, srcPath:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings_ex/FontTypeFace;->getNewDownloadFontAppsDstPath()Ljava/lang/String;

    move-result-object v14

    .local v14, dstPath:Ljava/lang/String;
    const/16 v19, 0x0

    .local v19, findFile:I
    const/4 v3, 0x0

    .local v3, apkFile:Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v23, Ljava/io/File;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    .local v23, srcApk:Ljava/io/File;
    const/16 v25, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v26

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 437
    .local v5, apkPath:Ljava/lang/String;
    new-instance v13, Ljava/io/File;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 439
    .local v13, dstApk:Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->mkdir()Z

    .line 441
    new-instance v4, Ljava/util/zip/ZipFile;

    move-object/from16 v0, v23

    invoke-direct {v4, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 442
    .end local v3           #apkFile:Ljava/util/zip/ZipFile;
    .local v4, apkFile:Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v16

    .line 444
    .local v16, en:Ljava/util/Enumeration;
    :cond_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v25

    if-eqz v25, :cond_6

    .line 446
    invoke-interface/range {v16 .. v16}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/zip/ZipEntry;

    .line 448
    .local v17, entry:Ljava/util/zip/ZipEntry;
    if-eqz v17, :cond_2

    .line 451
    invoke-virtual/range {v17 .. v17}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v18

    .line 452
    .local v18, entryName:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v25

    const-string v26, "font.ttf"

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    sub-int v25, v25, v26

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v26

    move-object/from16 v0, v18

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 453
    .local v11, checkTTF:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v25

    const-string v26, "font.dat"

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    sub-int v25, v25, v26

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v26

    move-object/from16 v0, v18

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 454
    .local v10, checkCertify:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v25

    const-string v26, "font.xml"

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    sub-int v25, v25, v26

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v26

    move-object/from16 v0, v18

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 456
    .local v12, checkXML:Ljava/lang/String;
    const-string v25, "font.ttf"

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v25

    if-eqz v25, :cond_3

    const-string v25, "font.dat"

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v25

    if-eqz v25, :cond_3

    const-string v25, "font.xml"

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v25

    if-nez v25, :cond_2

    .line 461
    :cond_3
    new-instance v21, Ljava/io/File;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const-string v26, "/asset/"

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    .local v21, output:Ljava/io/File;
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v22

    .line 464
    .local v22, parent:Ljava/io/File;
    if-eqz v22, :cond_2

    .line 467
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->mkdirs()Z

    .line 469
    invoke-virtual/range {v17 .. v17}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v25

    if-nez v25, :cond_2

    .line 475
    new-instance v7, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v7, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 477
    .local v7, bis:Ljava/io/BufferedInputStream;
    const/16 v25, 0x400

    move/from16 v0, v25

    new-array v9, v0, [B

    .line 479
    .local v9, buffer:[B
    new-instance v20, Ljava/io/FileOutputStream;

    invoke-direct/range {v20 .. v21}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 480
    .local v20, fos:Ljava/io/FileOutputStream;
    new-instance v8, Ljava/io/BufferedOutputStream;

    const/16 v25, 0x400

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-direct {v8, v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 482
    .local v8, bos:Ljava/io/BufferedOutputStream;
    :goto_1
    const/16 v25, 0x0

    const/16 v26, 0x400

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v7, v9, v0, v1}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v6

    .local v6, b:I
    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v6, v0, :cond_5

    .line 484
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v8, v9, v0, v6}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    goto :goto_1

    .line 502
    .end local v6           #b:I
    .end local v7           #bis:Ljava/io/BufferedInputStream;
    .end local v8           #bos:Ljava/io/BufferedOutputStream;
    .end local v9           #buffer:[B
    .end local v10           #checkCertify:Ljava/lang/String;
    .end local v11           #checkTTF:Ljava/lang/String;
    .end local v12           #checkXML:Ljava/lang/String;
    .end local v16           #en:Ljava/util/Enumeration;
    .end local v17           #entry:Ljava/util/zip/ZipEntry;
    .end local v18           #entryName:Ljava/lang/String;
    .end local v20           #fos:Ljava/io/FileOutputStream;
    .end local v21           #output:Ljava/io/File;
    .end local v22           #parent:Ljava/io/File;
    :catch_0
    move-exception v15

    move-object v3, v4

    .line 504
    .end local v4           #apkFile:Ljava/util/zip/ZipFile;
    .end local v5           #apkPath:Ljava/lang/String;
    .end local v13           #dstApk:Ljava/io/File;
    .end local v23           #srcApk:Ljava/io/File;
    .restart local v3       #apkFile:Ljava/util/zip/ZipFile;
    .local v15, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_2
    invoke-virtual {v15}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 512
    if-eqz v3, :cond_4

    .line 514
    :try_start_3
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 520
    .end local v15           #e:Ljava/io/FileNotFoundException;
    :cond_4
    :goto_3
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 487
    .end local v3           #apkFile:Ljava/util/zip/ZipFile;
    .restart local v4       #apkFile:Ljava/util/zip/ZipFile;
    .restart local v5       #apkPath:Ljava/lang/String;
    .restart local v6       #b:I
    .restart local v7       #bis:Ljava/io/BufferedInputStream;
    .restart local v8       #bos:Ljava/io/BufferedOutputStream;
    .restart local v9       #buffer:[B
    .restart local v10       #checkCertify:Ljava/lang/String;
    .restart local v11       #checkTTF:Ljava/lang/String;
    .restart local v12       #checkXML:Ljava/lang/String;
    .restart local v13       #dstApk:Ljava/io/File;
    .restart local v16       #en:Ljava/util/Enumeration;
    .restart local v17       #entry:Ljava/util/zip/ZipEntry;
    .restart local v18       #entryName:Ljava/lang/String;
    .restart local v20       #fos:Ljava/io/FileOutputStream;
    .restart local v21       #output:Ljava/io/File;
    .restart local v22       #parent:Ljava/io/File;
    .restart local v23       #srcApk:Ljava/io/File;
    :cond_5
    :try_start_4
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->flush()V

    .line 488
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->close()V

    .line 489
    invoke-virtual {v7}, Ljava/io/BufferedInputStream;->close()V

    .line 491
    add-int/lit8 v19, v19, 0x1

    .line 493
    const/16 v25, 0x3

    move/from16 v0, v19

    move/from16 v1, v25

    if-lt v0, v1, :cond_2

    .line 498
    .end local v6           #b:I
    .end local v7           #bis:Ljava/io/BufferedInputStream;
    .end local v8           #bos:Ljava/io/BufferedOutputStream;
    .end local v9           #buffer:[B
    .end local v10           #checkCertify:Ljava/lang/String;
    .end local v11           #checkTTF:Ljava/lang/String;
    .end local v12           #checkXML:Ljava/lang/String;
    .end local v17           #entry:Ljava/util/zip/ZipEntry;
    .end local v18           #entryName:Ljava/lang/String;
    .end local v20           #fos:Ljava/io/FileOutputStream;
    .end local v21           #output:Ljava/io/File;
    .end local v22           #parent:Ljava/io/File;
    :cond_6
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 500
    const/16 v25, 0x1

    .line 512
    if-eqz v4, :cond_0

    .line 514
    :try_start_5
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 515
    :catch_1
    move-exception v15

    .line 516
    .local v15, e:Ljava/io/IOException;
    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 515
    .end local v4           #apkFile:Ljava/util/zip/ZipFile;
    .end local v5           #apkPath:Ljava/lang/String;
    .end local v13           #dstApk:Ljava/io/File;
    .end local v16           #en:Ljava/util/Enumeration;
    .end local v23           #srcApk:Ljava/io/File;
    .restart local v3       #apkFile:Ljava/util/zip/ZipFile;
    .local v15, e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v15

    .line 516
    .local v15, e:Ljava/io/IOException;
    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 506
    .end local v15           #e:Ljava/io/IOException;
    :catch_3
    move-exception v15

    .line 508
    .restart local v15       #e:Ljava/io/IOException;
    :goto_4
    :try_start_6
    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 512
    if-eqz v3, :cond_4

    .line 514
    :try_start_7
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_3

    .line 515
    :catch_4
    move-exception v15

    .line 516
    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 512
    .end local v15           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v25

    :goto_5
    if-eqz v3, :cond_7

    .line 514
    :try_start_8
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 517
    :cond_7
    :goto_6
    throw v25

    .line 515
    :catch_5
    move-exception v15

    .line 516
    .restart local v15       #e:Ljava/io/IOException;
    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 512
    .end local v3           #apkFile:Ljava/util/zip/ZipFile;
    .end local v15           #e:Ljava/io/IOException;
    .restart local v4       #apkFile:Ljava/util/zip/ZipFile;
    .restart local v5       #apkPath:Ljava/lang/String;
    .restart local v13       #dstApk:Ljava/io/File;
    .restart local v23       #srcApk:Ljava/io/File;
    :catchall_1
    move-exception v25

    move-object v3, v4

    .end local v4           #apkFile:Ljava/util/zip/ZipFile;
    .restart local v3       #apkFile:Ljava/util/zip/ZipFile;
    goto :goto_5

    .line 506
    .end local v3           #apkFile:Ljava/util/zip/ZipFile;
    .restart local v4       #apkFile:Ljava/util/zip/ZipFile;
    :catch_6
    move-exception v15

    move-object v3, v4

    .end local v4           #apkFile:Ljava/util/zip/ZipFile;
    .restart local v3       #apkFile:Ljava/util/zip/ZipFile;
    goto :goto_4

    .line 502
    .end local v5           #apkPath:Ljava/lang/String;
    .end local v13           #dstApk:Ljava/io/File;
    .end local v23           #srcApk:Ljava/io/File;
    :catch_7
    move-exception v15

    goto :goto_2
.end method

.method private updateDownloadFontApps()I
    .locals 2

    .prologue
    invoke-static {}, Lcom/android/settings_ex/FontTypeFace;->searchNewDownloadFontApps()I

    move-result v0

    .local v0, state:I
    sparse-switch v0, :sswitch_data_0

    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/FontSettingsPreference;->updateDownloadFontAppsList()V

    const/16 v0, 0x68

    .end local v0           #state:I
    :goto_1
    return v0

    .restart local v0       #state:I
    :sswitch_0
    const/16 v1, 0x3e9

    invoke-direct {p0, v1}, Lcom/android/settings_ex/FontSettingsPreference;->restartProgress(I)V

    goto :goto_1

    :sswitch_1
    invoke-direct {p0}, Lcom/android/settings_ex/FontSettingsPreference;->findNewDownloadFontApps()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_1
        0x69 -> :sswitch_0
    .end sparse-switch
.end method

.method private updateDownloadFontAppsList()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/android/settings_ex/FontTypeFace;->countCertifiedDownloadFontApps()I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/FontSettingsPreference;->mCertifiedFontAppCount:I

    iget v1, p0, Lcom/android/settings_ex/FontSettingsPreference;->mCertifiedFontAppCount:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings_ex/FontSettingsPreference;->mCertifiedFontFaceNameLists:[Ljava/lang/String;

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/settings_ex/FontSettingsPreference;->mCertifiedFontAppCount:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/FontSettingsPreference;->mCertifiedFontFaceNameLists:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings_ex/FontTypeFace;->getCertifiedDownloadFontAppFontname(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 186
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 188
    :cond_0
    return-void
.end method

.method private updateFontTypeSelectMenuList()V
    .locals 5

    .prologue
    invoke-static {}, Lcom/android/settings_ex/FontTypeFace;->getDefaultFontCount()I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/FontSettingsPreference;->mDefaultFontCount:I

    iget v1, p0, Lcom/android/settings_ex/FontSettingsPreference;->mDefaultFontCount:I

    iget v2, p0, Lcom/android/settings_ex/FontSettingsPreference;->mCertifiedFontAppCount:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/settings_ex/FontSettingsPreference;->mEmbeddedFontCount:I

    iget-object v1, p0, Lcom/android/settings_ex/FontSettingsPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09009c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/FontSettingsPreference;->mDefaultFontFaceNameLists:[Ljava/lang/String;

    iget v1, p0, Lcom/android/settings_ex/FontSettingsPreference;->mDefaultFontCount:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings_ex/FontSettingsPreference;->mDefaultFontFaceLists:[Ljava/lang/String;

    iget v1, p0, Lcom/android/settings_ex/FontSettingsPreference;->mDefaultFontCount:I

    new-array v1, v1, [Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/android/settings_ex/FontSettingsPreference;->mDefaultFontMenuItems:[Ljava/lang/CharSequence;

    iget v1, p0, Lcom/android/settings_ex/FontSettingsPreference;->mDefaultFontCount:I

    new-array v1, v1, [Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/android/settings_ex/FontSettingsPreference;->mDefaultFontMenuItemValues:[Ljava/lang/CharSequence;

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/settings_ex/FontSettingsPreference;->mDefaultFontCount:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/FontSettingsPreference;->mDefaultFontFaceLists:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings_ex/FontTypeFace;->getDefaultFontFaceName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    iget v1, p0, Lcom/android/settings_ex/FontSettingsPreference;->mEmbeddedFontCount:I

    if-gt v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/FontSettingsPreference;->mDefaultFontMenuItems:[Ljava/lang/CharSequence;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<FONT face="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/FontSettingsPreference;->mDefaultFontFaceLists:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/FontSettingsPreference;->mCertifiedFontFaceNameLists:[Ljava/lang/String;

    iget v4, p0, Lcom/android/settings_ex/FontSettingsPreference;->mEmbeddedFontCount:I

    sub-int v4, v0, v4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</FONT>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    aput-object v2, v1, v0

    .line 386
    :goto_1
    iget-object v1, p0, Lcom/android/settings_ex/FontSettingsPreference;->mDefaultFontMenuItemValues:[Ljava/lang/CharSequence;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 377
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 384
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/FontSettingsPreference;->mDefaultFontMenuItems:[Ljava/lang/CharSequence;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<FONT face="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/FontSettingsPreference;->mDefaultFontFaceLists:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/FontSettingsPreference;->mDefaultFontFaceNameLists:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</FONT>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/FontSettingsPreference;->mDefaultFontMenuItems:[Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/FontSettingsPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings_ex/FontSettingsPreference;->mDefaultFontMenuItemValues:[Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/FontSettingsPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/settings_ex/FontSettingsPreference;->setFontTypeSelect()V

    return-void
.end method


# virtual methods
.method public callChangeListener(Ljava/lang/Object;)Z
    .locals 3
    .parameter "newValue"

    .prologue
    .line 354
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/FontSettingsPreference;->mSelectDefaultFontIndex:I

    iget v0, p0, Lcom/android/settings_ex/FontSettingsPreference;->mCurrentDefaultFontIndex:I

    iget v1, p0, Lcom/android/settings_ex/FontSettingsPreference;->mSelectDefaultFontIndex:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/settings_ex/FontSettingsPreference;->mSelectDefaultFontIndex:I

    iput v0, p0, Lcom/android/settings_ex/FontSettingsPreference;->mCurrentDefaultFontIndex:I

    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/android/settings_ex/FontSettingsPreference;->restartProgress(I)V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/FontSettingsPreference;->mContext:Landroid/content/Context;

    const v1, 0x7f080b24

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
