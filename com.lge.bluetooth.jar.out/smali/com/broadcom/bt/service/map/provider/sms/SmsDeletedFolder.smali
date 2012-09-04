.class public Lcom/broadcom/bt/service/map/provider/sms/SmsDeletedFolder;
.super Ljava/lang/Object;
.source "SmsDeletedFolder.java"


# static fields
.field private static final DATABASE_SMS_CREATE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS sms (_id INTEGER PRIMARY KEY,thread_id INTEGER,address TEXT,person INTEGER,date INTEGER,protocol INTEGER,read INTEGER DEFAULT 0,status INTEGER DEFAULT -1,type INTEGER,reply_path_present INTEGER,subject TEXT,body TEXT,service_center TEXT,locked INTEGER DEFAULT 0);"

.field private static final DB_NAME:Ljava/lang/String; = "SmsDeletedFolder"

.field private static final DB_PATH:Ljava/lang/String; = "/data/data/com.broadcom.bt.app.system/map/"

.field private static final TAG:Ljava/lang/String; = "SmsDeletedFolder"


# instance fields
.field mDB:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 88
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsDeletedFolder;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 89
    const-string v0, "SmsDeletedFolder"

    const-string v1, "SmsDeletedFolder"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-void
.end method


# virtual methods
.method public addItem(IILjava/lang/String;IJIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 7
    .parameter "id"
    .parameter "thread_id"
    .parameter "address"
    .parameter "person"
    .parameter "date"
    .parameter "protocol"
    .parameter "read"
    .parameter "status"
    .parameter "type"
    .parameter "reply_path_present"
    .parameter "subject"
    .parameter "body"
    .parameter "service_center"
    .parameter "locked"

    .prologue
    .line 152
    const/4 v1, 0x1

    .line 153
    .local v1, fRet:Z
    const-string v3, "SmsDeletedFolder"

    const-string v4, "SmsDeletedFolder::addItem"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v3, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsDeletedFolder;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_1

    .line 156
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 157
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 158
    const-string v3, "thread_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 159
    const-string v3, "address"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v3, "person"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 161
    const-string v3, "date"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 162
    const-string v3, "protocol"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 163
    const-string v3, "read"

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 164
    const-string v3, "status"

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 165
    const-string v3, "type"

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 166
    const-string v3, "reply_path_present"

    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 167
    const-string v3, "subject"

    move-object/from16 v0, p12

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v3, "body"

    move-object/from16 v0, p13

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v3, "service_center"

    move-object/from16 v0, p14

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v3, "locked"

    invoke-static/range {p15 .. p15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 171
    iget-object v3, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsDeletedFolder;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 172
    iget-object v3, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsDeletedFolder;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "sms"

    const-string v5, ""

    invoke-virtual {v3, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 174
    const/4 v1, 0x0

    .line 175
    const-string v3, "SmsDeletedFolder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error inserting row in deleted folder"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :goto_0
    iget-object v3, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsDeletedFolder;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 188
    .end local v2           #values:Landroid/content/ContentValues;
    :goto_1
    return v1

    .line 179
    .restart local v2       #values:Landroid/content/ContentValues;
    :cond_0
    iget-object v3, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsDeletedFolder;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 180
    const-string v3, "SmsDeletedFolder"

    const-string v4, "Successfully added row in deleted folder"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 186
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public closeDeletedFolderDatabase()V
    .locals 2

    .prologue
    .line 140
    const-string v0, "SmsDeletedFolder"

    const-string v1, "SmsDeletedFolder::closeDeletedFolderDatabase"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsDeletedFolder;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsDeletedFolder;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 145
    :cond_0
    return-void
.end method

.method public deleteItem(I)Z
    .locals 7
    .parameter "id"

    .prologue
    .line 193
    const/4 v0, 0x1

    .line 194
    .local v0, fRet:Z
    const-string v1, "SmsDeletedFolder"

    const-string v2, "SmsDeletedFolder::deleteItem"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsDeletedFolder;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_1

    .line 197
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsDeletedFolder;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 198
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsDeletedFolder;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "sms"

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 200
    const-string v1, "SmsDeletedFolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SmsDeletedFolder::deleteItem failed id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const/4 v0, 0x0

    .line 208
    :goto_0
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsDeletedFolder;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 214
    :goto_1
    return v0

    .line 205
    :cond_0
    const-string v1, "SmsDeletedFolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SmsDeletedFolder::deleteItem successful id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsDeletedFolder;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    goto :goto_0

    .line 212
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getAllItems()Landroid/database/Cursor;
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 219
    const-string v0, "SmsDeletedFolder"

    const-string v1, "SmsDeletedFolder::getAllItems"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsDeletedFolder;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsDeletedFolder;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "sms"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 225
    :goto_0
    return-object v8

    :cond_0
    move-object v8, v2

    goto :goto_0
.end method

.method public getAllItemsGreaterThan(I)Landroid/database/Cursor;
    .locals 10
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 230
    const-string v0, "SmsDeletedFolder"

    const-string v1, "SmsDeletedFolder::getAllItemsGreaterThan"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsDeletedFolder;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsDeletedFolder;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "sms"

    const-string v3, "_id>?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 236
    :goto_0
    return-object v9

    :cond_0
    move-object v9, v2

    goto :goto_0
.end method

.method public getItemById(I)Landroid/database/Cursor;
    .locals 9
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 241
    const-string v0, "SmsDeletedFolder"

    const-string v1, "SmsDeletedFolder::getItemById"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsDeletedFolder;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsDeletedFolder;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "sms"

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 247
    :goto_0
    return-object v8

    :cond_0
    move-object v8, v2

    goto :goto_0
.end method

.method public openDeletedFolderDatabase()Z
    .locals 6

    .prologue
    .line 98
    const/4 v2, 0x0

    .line 100
    .local v2, fRet:Z
    const-string v3, "SmsDeletedFolder"

    const-string v4, "SmsDeletedFolder::openDeletedFolderDatabase"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    new-instance v0, Ljava/io/File;

    const-string v3, "/data/data/com.broadcom.bt.app.system/map"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    .local v0, dbDirectory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_0

    .line 106
    const-string v3, "SmsDeletedFolder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "******Cannot create Database directory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_0
    :try_start_0
    const-string v3, "/data/data/com.broadcom.bt.app.system/map/SmsDeletedFolder"

    const/4 v4, 0x0

    const/high16 v5, 0x1000

    invoke-static {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iput-object v3, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsDeletedFolder;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 118
    iget-object v3, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsDeletedFolder;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "CREATE TABLE IF NOT EXISTS sms (_id INTEGER PRIMARY KEY,thread_id INTEGER,address TEXT,person INTEGER,date INTEGER,protocol INTEGER,read INTEGER DEFAULT 0,status INTEGER DEFAULT -1,type INTEGER,reply_path_present INTEGER,subject TEXT,body TEXT,service_center TEXT,locked INTEGER DEFAULT 0);"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_0
    iget-object v3, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsDeletedFolder;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_1

    .line 127
    const-string v3, "SmsDeletedFolder"

    const-string v4, "Created deleted folder database successfully."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const/4 v2, 0x1

    .line 130
    iget-object v3, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsDeletedFolder;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_1

    .line 131
    iget-object v3, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsDeletedFolder;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 135
    :cond_1
    return v2

    .line 121
    :catch_0
    move-exception v1

    .line 123
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    const-string v3, "SmsDeletedFolder"

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
