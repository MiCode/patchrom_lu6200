.class public Lcom/android/settings_ex/FontSettingsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FontSettingsReceiver.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurConfig:Landroid/content/res/Configuration;

.field private mCurrentDefaultFontIndex:I

.field private mSelectDefaultFontIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 39
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/FontSettingsReceiver;->mCurConfig:Landroid/content/res/Configuration;

    return-void
.end method

.method private changingFontType()V
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/android/settings_ex/FontSettingsReceiver;->mSelectDefaultFontIndex:I

    iput v0, p0, Lcom/android/settings_ex/FontSettingsReceiver;->mCurrentDefaultFontIndex:I

    .line 106
    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/android/settings_ex/FontSettingsReceiver;->restartProgress(I)V

    .line 107
    return-void
.end method

.method private configurationReady()V
    .locals 3

    .prologue
    .line 112
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/FontSettingsReceiver;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    invoke-static {}, Lcom/android/settings_ex/FontTypeFace;->getCurrentDefaultFontIndex()I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/FontSettingsReceiver;->mCurrentDefaultFontIndex:I

    .line 118
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "FontSettingsReceiver"

    const-string v2, "Unable to retrieve font type index."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private deleteDownloadFontApp()V
    .locals 2

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/settings_ex/FontSettingsReceiver;->updateDownloadFontApps()I

    move-result v0

    const/16 v1, 0x69

    if-ne v0, v1, :cond_0

    .line 100
    invoke-direct {p0}, Lcom/android/settings_ex/FontSettingsReceiver;->updateDownloadFontApps()I

    .line 101
    :cond_0
    return-void
.end method

.method private findNewDownloadFontApps()V
    .locals 5

    .prologue
    .line 177
    invoke-static {}, Lcom/android/settings_ex/FontTypeFace;->countNewDownloadFontApps()I

    move-result v0

    .line 179
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, n:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 180
    invoke-static {v1}, Lcom/android/settings_ex/FontTypeFace;->getNewDownloadFontAppName(I)Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, name:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 179
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/settings_ex/FontSettingsReceiver;->unzipFontApp(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 186
    invoke-static {v1}, Lcom/android/settings_ex/FontTypeFace;->certifyNewDownloadFontApp(I)I

    move-result v3

    const/16 v4, 0x67

    if-ne v3, v4, :cond_0

    .line 187
    invoke-static {v1}, Lcom/android/settings_ex/FontTypeFace;->updateNewDownloadFontApp(I)I

    goto :goto_1

    .line 190
    .end local v2           #name:Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/android/settings_ex/FontTypeFace;->saveNewDownloadFontApps()V

    .line 191
    return-void
.end method

.method private installDownloadFontApp()V
    .locals 2

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/settings_ex/FontSettingsReceiver;->updateDownloadFontApps()I

    move-result v0

    const/16 v1, 0x69

    if-ne v0, v1, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/android/settings_ex/FontSettingsReceiver;->updateDownloadFontApps()I

    .line 95
    :cond_0
    return-void
.end method

.method private restartProgress(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/android/settings_ex/FontSettingsReceiver;->sendIntentPreFontChange()V

    .line 205
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 206
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings_ex/FontSettingsReceiver;->saveFontTypeSelectData(Z)V

    .line 210
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/FontSettingsReceiver;->saveFontTypeSelectConfiguration()V

    .line 211
    invoke-direct {p0}, Lcom/android/settings_ex/FontSettingsReceiver;->sendIntentFontChange()V

    .line 212
    return-void

    .line 208
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/FontSettingsReceiver;->saveFontTypeSelectData(Z)V

    goto :goto_0
.end method

.method private saveFontTypeSelectConfiguration()V
    .locals 3

    .prologue
    .line 123
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/FontSettingsReceiver;->mCurConfig:Landroid/content/res/Configuration;

    iget v2, p0, Lcom/android/settings_ex/FontSettingsReceiver;->mCurrentDefaultFontIndex:I

    invoke-direct {p0, v1, v2}, Lcom/android/settings_ex/FontSettingsReceiver;->setFontIndex(Landroid/content/res/Configuration;I)V

    .line 124
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/FontSettingsReceiver;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "FontSettingsReceiver"

    const-string v2, "Unable to save font type index."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private saveFontTypeSelectData(Z)V
    .locals 1
    .parameter "resetDefaultFontIndex"

    .prologue
    .line 133
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 134
    invoke-static {}, Lcom/android/settings_ex/FontTypeFace;->getSystemDefaultFamilyIndex()I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/FontSettingsReceiver;->mCurrentDefaultFontIndex:I

    .line 135
    invoke-static {}, Lcom/android/settings_ex/FontTypeFace;->saveNewDownloadFontApps()V

    .line 138
    :cond_0
    iget v0, p0, Lcom/android/settings_ex/FontSettingsReceiver;->mCurrentDefaultFontIndex:I

    invoke-static {v0}, Lcom/android/settings_ex/FontTypeFace;->selectDefaultFont(I)V

    .line 139
    return-void
.end method

.method private sendIntentFontChange()V
    .locals 3

    .prologue
    .line 220
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.6A73.ACTION_FONT_CHANGE_FINISHED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 221
    .local v1, intentOld:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings_ex/FontSettingsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 224
    new-instance v0, Landroid/content/Intent;

    const-string v2, "jungle.intent.action.FONTDIALOG_FINISH"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 225
    .local v0, intentGB:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings_ex/FontSettingsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 226
    return-void
.end method

.method private sendIntentPreFontChange()V
    .locals 2

    .prologue
    .line 196
    new-instance v0, Landroid/content/Intent;

    const-string v1, "font.intent.action.ACTION_FONT_CHANGE_READY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    .local v0, intentOld:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings_ex/FontSettingsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 198
    return-void
.end method

.method private setFontIndex(Landroid/content/res/Configuration;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 143
    :try_start_0
    const-class v0, Landroid/content/res/Configuration;

    const-string v1, "fontTypeIndex"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 145
    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 153
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 148
    :catch_1
    move-exception v0

    .line 149
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 150
    :catch_2
    move-exception v0

    .line 151
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method private unzipFontApp(Ljava/lang/String;)Z
    .locals 27
    .parameter "fontAppName"

    .prologue
    .line 231
    if-nez p1, :cond_1

    .line 232
    const/16 v25, 0x0

    .line 325
    :cond_0
    :goto_0
    return v25

    .line 234
    :cond_1
    invoke-static {}, Lcom/android/settings_ex/FontTypeFace;->getNewDownloadFontAppsSrcPath()Ljava/lang/String;

    move-result-object v24

    .line 235
    .local v24, srcPath:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings_ex/FontTypeFace;->getNewDownloadFontAppsDstPath()Ljava/lang/String;

    move-result-object v14

    .line 236
    .local v14, dstPath:Ljava/lang/String;
    const/16 v19, 0x0

    .line 237
    .local v19, findFile:I
    const/4 v3, 0x0

    .line 241
    .local v3, apkFile:Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v23, Ljava/io/File;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .local v23, srcApk:Ljava/io/File;
    const/16 v25, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v26

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 243
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

    .line 245
    .local v13, dstApk:Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->mkdir()Z

    .line 247
    new-instance v4, Ljava/util/zip/ZipFile;

    move-object/from16 v0, v23

    invoke-direct {v4, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 248
    .end local v3           #apkFile:Ljava/util/zip/ZipFile;
    .local v4, apkFile:Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v16

    .line 250
    .local v16, en:Ljava/util/Enumeration;
    :cond_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v25

    if-eqz v25, :cond_6

    .line 252
    invoke-interface/range {v16 .. v16}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/zip/ZipEntry;

    .line 254
    .local v17, entry:Ljava/util/zip/ZipEntry;
    if-eqz v17, :cond_2

    .line 257
    invoke-virtual/range {v17 .. v17}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v18

    .line 258
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

    .line 259
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

    .line 260
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

    .line 262
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

    .line 267
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

    .line 268
    .local v21, output:Ljava/io/File;
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v22

    .line 270
    .local v22, parent:Ljava/io/File;
    if-eqz v22, :cond_2

    .line 273
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->mkdirs()Z

    .line 275
    invoke-virtual/range {v17 .. v17}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v25

    if-nez v25, :cond_2

    .line 281
    new-instance v7, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v7, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 283
    .local v7, bis:Ljava/io/BufferedInputStream;
    const/16 v25, 0x400

    move/from16 v0, v25

    new-array v9, v0, [B

    .line 285
    .local v9, buffer:[B
    new-instance v20, Ljava/io/FileOutputStream;

    invoke-direct/range {v20 .. v21}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 286
    .local v20, fos:Ljava/io/FileOutputStream;
    new-instance v8, Ljava/io/BufferedOutputStream;

    const/16 v25, 0x400

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-direct {v8, v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 288
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

    .line 290
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v8, v9, v0, v6}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    goto :goto_1

    .line 308
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

    .line 310
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

    .line 317
    if-eqz v3, :cond_4

    .line 319
    :try_start_3
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 325
    .end local v15           #e:Ljava/io/FileNotFoundException;
    :cond_4
    :goto_3
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 293
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

    .line 294
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->close()V

    .line 295
    invoke-virtual {v7}, Ljava/io/BufferedInputStream;->close()V

    .line 297
    add-int/lit8 v19, v19, 0x1

    .line 299
    const/16 v25, 0x3

    move/from16 v0, v19

    move/from16 v1, v25

    if-lt v0, v1, :cond_2

    .line 304
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

    .line 306
    const/16 v25, 0x1

    .line 317
    if-eqz v4, :cond_0

    .line 319
    :try_start_5
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 320
    :catch_1
    move-exception v15

    .line 321
    .local v15, e:Ljava/io/IOException;
    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 320
    .end local v4           #apkFile:Ljava/util/zip/ZipFile;
    .end local v5           #apkPath:Ljava/lang/String;
    .end local v13           #dstApk:Ljava/io/File;
    .end local v16           #en:Ljava/util/Enumeration;
    .end local v23           #srcApk:Ljava/io/File;
    .restart local v3       #apkFile:Ljava/util/zip/ZipFile;
    .local v15, e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v15

    .line 321
    .local v15, e:Ljava/io/IOException;
    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 312
    .end local v15           #e:Ljava/io/IOException;
    :catch_3
    move-exception v15

    .line 314
    .restart local v15       #e:Ljava/io/IOException;
    :goto_4
    :try_start_6
    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 317
    if-eqz v3, :cond_4

    .line 319
    :try_start_7
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_3

    .line 320
    :catch_4
    move-exception v15

    .line 321
    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 317
    .end local v15           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v25

    :goto_5
    if-eqz v3, :cond_7

    .line 319
    :try_start_8
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 322
    :cond_7
    :goto_6
    throw v25

    .line 320
    :catch_5
    move-exception v15

    .line 321
    .restart local v15       #e:Ljava/io/IOException;
    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 317
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

    .line 312
    .end local v3           #apkFile:Ljava/util/zip/ZipFile;
    .restart local v4       #apkFile:Ljava/util/zip/ZipFile;
    :catch_6
    move-exception v15

    move-object v3, v4

    .end local v4           #apkFile:Ljava/util/zip/ZipFile;
    .restart local v3       #apkFile:Ljava/util/zip/ZipFile;
    goto :goto_4

    .line 308
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
    .line 158
    invoke-static {}, Lcom/android/settings_ex/FontTypeFace;->searchNewDownloadFontApps()I

    move-result v0

    .line 160
    .local v0, state:I
    sparse-switch v0, :sswitch_data_0

    .line 171
    :goto_0
    const/16 v0, 0x68

    .end local v0           #state:I
    :goto_1
    return v0

    .line 163
    .restart local v0       #state:I
    :sswitch_0
    const/16 v1, 0x3e9

    invoke-direct {p0, v1}, Lcom/android/settings_ex/FontSettingsReceiver;->restartProgress(I)V

    goto :goto_1

    .line 167
    :sswitch_1
    invoke-direct {p0}, Lcom/android/settings_ex/FontSettingsReceiver;->findNewDownloadFontApps()V

    goto :goto_0

    .line 160
    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_1
        0x69 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/settings_ex/FontSettingsReceiver;->mContext:Landroid/content/Context;

    .line 75
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.DOWNLOAD_FONTAPP_INSTALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    invoke-direct {p0}, Lcom/android/settings_ex/FontSettingsReceiver;->installDownloadFontApp()V

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.DOWNLOAD_FONTAPP_DELETE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    invoke-direct {p0}, Lcom/android/settings_ex/FontSettingsReceiver;->deleteDownloadFontApp()V

    goto :goto_0

    .line 81
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CHANGING_FONT_TYPE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 82
    const-string v0, "fontTypeIndex"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/FontSettingsReceiver;->mSelectDefaultFontIndex:I

    .line 84
    invoke-direct {p0}, Lcom/android/settings_ex/FontSettingsReceiver;->changingFontType()V

    goto :goto_0

    .line 86
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CONFIGURATION_READY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-direct {p0}, Lcom/android/settings_ex/FontSettingsReceiver;->configurationReady()V

    goto :goto_0
.end method
