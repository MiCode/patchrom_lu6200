.class public Lcom/lge/camera/util/BitmapManager;
.super Ljava/lang/Object;
.source "BitmapManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/util/BitmapManager$1;,
        Lcom/lge/camera/util/BitmapManager$ThreadStatus;,
        Lcom/lge/camera/util/BitmapManager$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraApp"

.field private static sManager:Lcom/lge/camera/util/BitmapManager;


# instance fields
.field private final mThreadStatus:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Thread;",
            "Lcom/lge/camera/util/BitmapManager$ThreadStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/camera/util/BitmapManager;->sManager:Lcom/lge/camera/util/BitmapManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/util/BitmapManager;->mThreadStatus:Ljava/util/WeakHashMap;

    .line 78
    return-void
.end method

.method private declared-synchronized getOrCreateThreadStatus(Ljava/lang/Thread;)Lcom/lge/camera/util/BitmapManager$ThreadStatus;
    .locals 2
    .parameter "t"

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/util/BitmapManager;->mThreadStatus:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/util/BitmapManager$ThreadStatus;

    .line 85
    .local v0, status:Lcom/lge/camera/util/BitmapManager$ThreadStatus;
    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/lge/camera/util/BitmapManager$ThreadStatus;

    .end local v0           #status:Lcom/lge/camera/util/BitmapManager$ThreadStatus;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lge/camera/util/BitmapManager$ThreadStatus;-><init>(Lcom/lge/camera/util/BitmapManager$1;)V

    .line 87
    .restart local v0       #status:Lcom/lge/camera/util/BitmapManager$ThreadStatus;
    iget-object v1, p0, Lcom/lge/camera/util/BitmapManager;->mThreadStatus:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :cond_0
    monitor-exit p0

    return-object v0

    .line 84
    .end local v0           #status:Lcom/lge/camera/util/BitmapManager$ThreadStatus;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;
    .locals 12
    .parameter "activity"
    .parameter "contentUri"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 104
    const/4 v9, 0x0

    .line 105
    .local v9, path:Ljava/lang/String;
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 106
    new-array v2, v11, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v10

    .line 107
    .local v2, proj:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 109
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 111
    if-eqz v7, :cond_0

    .line 112
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 114
    .local v6, column_index:I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 122
    .end local v6           #column_index:I
    :cond_0
    if-eqz v7, :cond_1

    .line 123
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 124
    const/4 v7, 0x0

    .line 128
    .end local v2           #proj:[Ljava/lang/String;
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_1
    :goto_0
    const-string v0, "CameraApp"

    const-string v1, "return null: activity:%s uri:%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v10

    aput-object p1, v3, v11

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-object v9

    .line 118
    .restart local v2       #proj:[Ljava/lang/String;
    .restart local v7       #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .line 119
    .local v8, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "CameraApp"

    const-string v1, "failed to get path from uri"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    if-eqz v7, :cond_1

    .line 123
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 124
    const/4 v7, 0x0

    goto :goto_0

    .line 122
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 123
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 124
    const/4 v7, 0x0

    :cond_2
    throw v0
.end method

.method public static declared-synchronized instance()Lcom/lge/camera/util/BitmapManager;
    .locals 2

    .prologue
    .line 171
    const-class v1, Lcom/lge/camera/util/BitmapManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lge/camera/util/BitmapManager;->sManager:Lcom/lge/camera/util/BitmapManager;

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Lcom/lge/camera/util/BitmapManager;

    invoke-direct {v0}, Lcom/lge/camera/util/BitmapManager;-><init>()V

    sput-object v0, Lcom/lge/camera/util/BitmapManager;->sManager:Lcom/lge/camera/util/BitmapManager;

    .line 174
    :cond_0
    sget-object v0, Lcom/lge/camera/util/BitmapManager;->sManager:Lcom/lge/camera/util/BitmapManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized canThreadDecoding(Ljava/lang/Thread;)Z
    .locals 4
    .parameter "t"

    .prologue
    const/4 v0, 0x1

    .line 93
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/lge/camera/util/BitmapManager;->mThreadStatus:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/util/BitmapManager$ThreadStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .local v1, status:Lcom/lge/camera/util/BitmapManager$ThreadStatus;
    if-nez v1, :cond_0

    .line 100
    :goto_0
    monitor-exit p0

    return v0

    .line 99
    :cond_0
    :try_start_1
    iget-object v2, v1, Lcom/lge/camera/util/BitmapManager$ThreadStatus;->mState:Lcom/lge/camera/util/BitmapManager$State;

    sget-object v3, Lcom/lge/camera/util/BitmapManager$State;->CANCEL:Lcom/lge/camera/util/BitmapManager$State;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v2, v3, :cond_1

    .line 100
    .local v0, result:Z
    :goto_1
    goto :goto_0

    .line 99
    .end local v0           #result:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 93
    .end local v1           #status:Lcom/lge/camera/util/BitmapManager$ThreadStatus;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "cr"
    .parameter "origId"
    .parameter "kind"
    .parameter "options"
    .parameter "isVideo"

    .prologue
    .line 143
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    .line 144
    .local v9, t:Ljava/lang/Thread;
    invoke-direct {p0, v9}, Lcom/lge/camera/util/BitmapManager;->getOrCreateThreadStatus(Ljava/lang/Thread;)Lcom/lge/camera/util/BitmapManager$ThreadStatus;

    move-result-object v8

    .line 146
    .local v8, status:Lcom/lge/camera/util/BitmapManager$ThreadStatus;
    invoke-virtual {p0, v9}, Lcom/lge/camera/util/BitmapManager;->canThreadDecoding(Ljava/lang/Thread;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not allowed to decode."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const/4 v0, 0x0

    .line 166
    :goto_0
    return-object v0

    .line 152
    :cond_0
    if-eqz p6, :cond_1

    .line 153
    :try_start_0
    invoke-virtual {v9}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    const/4 v6, 0x0

    move-object v0, p1

    move-wide v1, p2

    move v5, p4

    invoke-static/range {v0 .. v6}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JJILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 164
    monitor-enter v8

    .line 165
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 166
    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 156
    :cond_1
    :try_start_2
    invoke-virtual {v9}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    const/4 v6, 0x0

    move-object v0, p1

    move-wide v1, p2

    move v5, p4

    invoke-static/range {v0 .. v6}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JJILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 164
    monitor-enter v8

    .line 165
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 166
    monitor-exit v8

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 159
    :catch_0
    move-exception v7

    .line 160
    .local v7, e:Ljava/lang/Exception;
    :try_start_4
    const-string v0, "CameraApp"

    const-string v1, "failed to getThumbnail()"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 162
    const/4 v0, 0x0

    .line 164
    monitor-enter v8

    .line 165
    :try_start_5
    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 166
    monitor-exit v8

    goto :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 164
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_3
    move-exception v0

    monitor-enter v8

    .line 165
    :try_start_6
    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 166
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    :try_start_7
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v0
.end method
