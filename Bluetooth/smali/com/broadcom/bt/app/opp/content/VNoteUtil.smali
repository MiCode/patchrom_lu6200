.class public Lcom/broadcom/bt/app/opp/content/VNoteUtil;
.super Ljava/lang/Object;
.source "VNoteUtil.java"


# direct methods
.method public static createFile(Ljava/lang/String;Ljava/io/File;)Z
    .locals 7
    .parameter "inputFilePath"
    .parameter "outputFile"

    .prologue
    .line 102
    const-string v1, ""

    .line 103
    .local v1, fileData:Ljava/lang/String;
    const-string v3, ""

    .line 105
    .local v3, str:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 107
    .local v2, fileReader:Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 108
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .end local v2           #fileReader:Ljava/io/BufferedReader;
    :goto_1
    const-string v4, "VNoteUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "str ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const-string v4, "VNoteUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fileData ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-static {p1, v1}, Lcom/broadcom/bt/app/opp/content/VNoteUtil;->createVNote(Ljava/io/File;Ljava/lang/String;)Z

    move-result v4

    return v4

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, e:Ljava/io/IOException;
    const-string v4, "VNoteUtil"

    const-string v5, "Error creating vNote"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static createVNote(Ljava/io/File;Ljava/lang/String;)Z
    .locals 10
    .parameter "file"
    .parameter "str"

    .prologue
    const/4 v6, 0x0

    .line 58
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v2, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 59
    .local v2, fm:Ljava/text/SimpleDateFormat;
    const/4 v4, 0x0

    .line 60
    .local v4, out:Ljava/io/FileWriter;
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, dateString:Ljava/lang/String;
    const-string v7, "VNoteUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createVnote str:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    if-nez p1, :cond_1

    .line 97
    :cond_0
    :goto_0
    return v6

    .line 67
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 68
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 70
    :cond_2
    const/4 v3, 0x0

    .line 72
    .local v3, hasError:Z
    :try_start_0
    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, p0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .end local v4           #out:Ljava/io/FileWriter;
    .local v5, out:Ljava/io/FileWriter;
    :try_start_1
    const-string v7, "="

    const-string v8, "=3D"

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 74
    const-string v7, "\r"

    const-string v8, "=0D"

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 75
    const-string v7, "\n"

    const-string v8, "=0A"

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 76
    const-string v7, "BEGIN:VNOTE\r\nVERSION:1.1\r\nBODY;CHARSET=UTF-8;ENCODING=QUOTED-PRINTABLE:"

    invoke-virtual {v5, v7}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v5, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 80
    const-string v7, "\r\nDCREATED:"

    invoke-virtual {v5, v7}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v5, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 82
    const-string v7, "\r\nLAST-MODIFIED:"

    invoke-virtual {v5, v7}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v5, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 84
    const-string v7, "\r\nEND:VNOTE"

    invoke-virtual {v5, v7}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    move-object v4, v5

    .line 91
    .end local v5           #out:Ljava/io/FileWriter;
    .restart local v4       #out:Ljava/io/FileWriter;
    :goto_1
    if-eqz v4, :cond_3

    .line 92
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 94
    :cond_3
    :goto_2
    if-nez v3, :cond_4

    .line 95
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/broadcom/bt/app/opp/util/Utils;->setDefaultFilePermission(Ljava/lang/String;)V

    .line 97
    :cond_4
    if-nez v3, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    .line 85
    :catch_0
    move-exception v1

    .line 86
    .local v1, e:Ljava/lang/Throwable;
    :goto_3
    const-string v7, "VNoteUtil"

    const-string v8, "ERROR"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    const/4 v3, 0x1

    goto :goto_1

    .line 93
    .end local v1           #e:Ljava/lang/Throwable;
    :catch_1
    move-exception v7

    goto :goto_2

    .line 85
    .end local v4           #out:Ljava/io/FileWriter;
    .restart local v5       #out:Ljava/io/FileWriter;
    :catch_2
    move-exception v1

    move-object v4, v5

    .end local v5           #out:Ljava/io/FileWriter;
    .restart local v4       #out:Ljava/io/FileWriter;
    goto :goto_3
.end method
