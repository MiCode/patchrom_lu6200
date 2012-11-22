.class public Lcom/android/settings_ex/PinSettingsUtils;
.super Ljava/lang/Object;
.source "PinSettingsUtils.java"


# instance fields
.field private context:Landroid/content/Context;

.field private sLGPasswordFilename:Ljava/lang/String;

.field private save:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/android/settings_ex/PinSettingsUtils;->initFilename()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings_ex/PinSettingsUtils;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/settings_ex/PinSettingsUtils;->initFilename()V

    return-void
.end method

.method private initFilename()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/PinSettingsUtils;->sLGPasswordFilename:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/system/backuppin.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/PinSettingsUtils;->sLGPasswordFilename:Ljava/lang/String;

    .line 52
    :cond_0
    return-void
.end method

.method private savePasswordFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "filename"
    .parameter "password"

    .prologue
    .line 55
    const/4 v3, 0x0

    .line 56
    .local v3, raf:Ljava/io/RandomAccessFile;
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v6, p0, Lcom/android/settings_ex/PinSettingsUtils;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings_ex/PinSettingsUtils;->save:Lcom/android/internal/widget/LockPatternUtils;

    .line 59
    :try_start_0
    iget-object v5, p0, Lcom/android/settings_ex/PinSettingsUtils;->save:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v1

    .line 60
    .local v1, hash:[B
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v4, p1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 61
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .local v4, raf:Ljava/io/RandomAccessFile;
    const/4 v5, 0x0

    :try_start_1
    array-length v6, v1

    invoke-virtual {v4, v1, v5, v6}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    .line 70
    if-eqz v4, :cond_0

    .line 71
    :try_start_2
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v3, v4

    .line 74
    .end local v1           #hash:[B
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    :cond_1
    :goto_0
    return-void

    .line 72
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v1       #hash:[B
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v5

    move-object v3, v4

    .line 73
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 62
    .end local v1           #hash:[B
    :catch_1
    move-exception v2

    .line 63
    .local v2, noe:Ljava/lang/NullPointerException;
    :goto_1
    :try_start_3
    const-string v5, "BackupPinSettings"

    const-string v6, "Null pointer"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 70
    if-eqz v3, :cond_1

    .line 71
    :try_start_4
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 72
    :catch_2
    move-exception v5

    goto :goto_0

    .line 64
    .end local v2           #noe:Ljava/lang/NullPointerException;
    :catch_3
    move-exception v0

    .line 65
    .local v0, fnfe:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_5
    const-string v5, "BackupPinSettings"

    const-string v6, "File not found"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 70
    if-eqz v3, :cond_1

    .line 71
    :try_start_6
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 72
    :catch_4
    move-exception v5

    goto :goto_0

    .line 66
    .end local v0           #fnfe:Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v5

    .line 70
    :goto_3
    if-eqz v3, :cond_1

    .line 71
    :try_start_7
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_0

    .line 72
    :catch_6
    move-exception v5

    goto :goto_0

    .line 69
    :catchall_0
    move-exception v5

    .line 70
    :goto_4
    if-eqz v3, :cond_2

    .line 71
    :try_start_8
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 72
    :cond_2
    :goto_5
    throw v5

    :catch_7
    move-exception v6

    goto :goto_5

    .line 69
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v1       #hash:[B
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_4

    .line 66
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_8
    move-exception v5

    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_3

    .line 64
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_9
    move-exception v0

    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_2

    .line 62
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_a
    move-exception v2

    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_1
.end method


# virtual methods
.method protected exsistFile()Z
    .locals 5

    .prologue
    .line 124
    const/4 v1, 0x0

    .line 126
    .local v1, raf:Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lcom/android/settings_ex/PinSettingsUtils;->sLGPasswordFilename:Ljava/lang/String;

    const-string v4, "r"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .end local v1           #raf:Ljava/io/RandomAccessFile;
    .local v2, raf:Ljava/io/RandomAccessFile;
    if-eqz v2, :cond_0

    .line 132
    :try_start_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 135
    :cond_0
    :goto_0
    const/4 v3, 0x1

    move-object v1, v2

    .end local v2           #raf:Ljava/io/RandomAccessFile;
    .restart local v1       #raf:Ljava/io/RandomAccessFile;
    :cond_1
    :goto_1
    return v3

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, fnfe:Ljava/io/FileNotFoundException;
    const/4 v3, 0x0

    .line 131
    if-eqz v1, :cond_1

    .line 132
    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 133
    :catch_1
    move-exception v4

    goto :goto_1

    .line 130
    .end local v0           #fnfe:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v3

    .line 131
    if-eqz v1, :cond_2

    .line 132
    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 133
    :cond_2
    :goto_2
    throw v3

    .end local v1           #raf:Ljava/io/RandomAccessFile;
    .restart local v2       #raf:Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v3

    goto :goto_0

    .end local v2           #raf:Ljava/io/RandomAccessFile;
    .restart local v1       #raf:Ljava/io/RandomAccessFile;
    :catch_3
    move-exception v4

    goto :goto_2
.end method

.method protected fileInit()V
    .locals 2

    .prologue
    .line 117
    const/4 v0, 0x0

    .line 118
    .local v0, fo:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    .end local v0           #fo:Ljava/io/File;
    iget-object v1, p0, Lcom/android/settings_ex/PinSettingsUtils;->sLGPasswordFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    .restart local v0       #fo:Ljava/io/File;
    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 121
    :cond_0
    return-void
.end method

.method protected savePasswrod(Ljava/lang/String;)V
    .locals 1
    .parameter "password"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/PinSettingsUtils;->sLGPasswordFilename:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/android/settings_ex/PinSettingsUtils;->savePasswordFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
