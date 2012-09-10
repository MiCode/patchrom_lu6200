.class public Lcom/lge/camera/VideoFile;
.super Ljava/lang/Object;
.source "VideoFile.java"


# static fields
.field public static final VIDEO_EXTENSION_3GP:Ljava/lang/String; = ".3gp"

.field public static final VIDEO_EXTENSION_MP4:Ljava/lang/String; = ".mp4"


# instance fields
.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mFile:Ljava/io/File;

.field private mFileDirectory:Ljava/lang/String;

.field private mFileExtension:Ljava/lang/String;

.field private mFileName:Ljava/lang/String;

.field private mFilePath:Ljava/lang/String;

.field private mInitialized:Z

.field private mRecordingTime_duration:J

.field private mRecordingTime_end:J

.field private mRecordingTime_real_duration:J

.field private mRecordingTime_start:J

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3
    .parameter "context"
    .parameter "fileName"
    .parameter "purpose"

    .prologue
    const-wide/16 v1, 0x0

    .line 88
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/VideoFile;->mInitialized:Z

    .line 35
    iput-wide v1, p0, Lcom/lge/camera/VideoFile;->mRecordingTime_duration:J

    .line 36
    iput-wide v1, p0, Lcom/lge/camera/VideoFile;->mRecordingTime_start:J

    .line 37
    iput-wide v1, p0, Lcom/lge/camera/VideoFile;->mRecordingTime_end:J

    .line 38
    iput-wide v1, p0, Lcom/lge/camera/VideoFile;->mRecordingTime_real_duration:J

    .line 89
    if-nez p3, :cond_0

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFileName:Ljava/lang/String;

    .line 91
    const-string v0, ".mp4"

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFileExtension:Ljava/lang/String;

    .line 97
    :goto_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFileName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/VideoFile;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0, p1}, Lcom/lge/camera/VideoFile;->initialize(Landroid/content/Context;)Z

    .line 99
    return-void

    .line 94
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".3gp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFileName:Ljava/lang/String;

    .line 95
    const-string v0, ".3gp"

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFileExtension:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 3
    .parameter "context"
    .parameter "fileName"
    .parameter "storage"
    .parameter "purpose"

    .prologue
    const-wide/16 v1, 0x0

    .line 130
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/VideoFile;->mInitialized:Z

    .line 35
    iput-wide v1, p0, Lcom/lge/camera/VideoFile;->mRecordingTime_duration:J

    .line 36
    iput-wide v1, p0, Lcom/lge/camera/VideoFile;->mRecordingTime_start:J

    .line 37
    iput-wide v1, p0, Lcom/lge/camera/VideoFile;->mRecordingTime_end:J

    .line 38
    iput-wide v1, p0, Lcom/lge/camera/VideoFile;->mRecordingTime_real_duration:J

    .line 131
    if-nez p4, :cond_0

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFileName:Ljava/lang/String;

    .line 133
    const-string v0, ".mp4"

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFileExtension:Ljava/lang/String;

    .line 139
    :goto_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFileName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/VideoFile;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0, p1, p3}, Lcom/lge/camera/VideoFile;->initialize(Landroid/content/Context;I)Z

    .line 141
    return-void

    .line 136
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".3gp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFileName:Ljava/lang/String;

    .line 137
    const-string v0, ".3gp"

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFileExtension:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter "context"
    .parameter "directory"
    .parameter "fileName"
    .parameter "purpose"

    .prologue
    const-wide/16 v1, 0x0

    .line 101
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/VideoFile;->mInitialized:Z

    .line 35
    iput-wide v1, p0, Lcom/lge/camera/VideoFile;->mRecordingTime_duration:J

    .line 36
    iput-wide v1, p0, Lcom/lge/camera/VideoFile;->mRecordingTime_start:J

    .line 37
    iput-wide v1, p0, Lcom/lge/camera/VideoFile;->mRecordingTime_end:J

    .line 38
    iput-wide v1, p0, Lcom/lge/camera/VideoFile;->mRecordingTime_real_duration:J

    .line 102
    if-nez p4, :cond_0

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFileName:Ljava/lang/String;

    .line 104
    const-string v0, ".mp4"

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFileExtension:Ljava/lang/String;

    .line 111
    :goto_0
    iput-object p2, p0, Lcom/lge/camera/VideoFile;->mFileDirectory:Ljava/lang/String;

    .line 113
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFileName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/VideoFile;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0, p1}, Lcom/lge/camera/VideoFile;->initialize(Landroid/content/Context;)Z

    .line 115
    return-void

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".3gp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFileName:Ljava/lang/String;

    .line 108
    const-string v0, ".3gp"

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFileExtension:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZI)V
    .locals 3
    .parameter "context"
    .parameter "fileName"
    .parameter "testMode"
    .parameter "purpose"

    .prologue
    const-wide/16 v1, 0x0

    .line 117
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/VideoFile;->mInitialized:Z

    .line 35
    iput-wide v1, p0, Lcom/lge/camera/VideoFile;->mRecordingTime_duration:J

    .line 36
    iput-wide v1, p0, Lcom/lge/camera/VideoFile;->mRecordingTime_start:J

    .line 37
    iput-wide v1, p0, Lcom/lge/camera/VideoFile;->mRecordingTime_end:J

    .line 38
    iput-wide v1, p0, Lcom/lge/camera/VideoFile;->mRecordingTime_real_duration:J

    .line 118
    if-nez p4, :cond_0

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFileName:Ljava/lang/String;

    .line 120
    const-string v0, ".mp4"

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFileExtension:Ljava/lang/String;

    .line 126
    :goto_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFileName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/VideoFile;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0, p1}, Lcom/lge/camera/VideoFile;->initialize(Landroid/content/Context;)Z

    .line 128
    return-void

    .line 123
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".3gp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFileName:Ljava/lang/String;

    .line 124
    const-string v0, ".3gp"

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFileExtension:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public clearEmptyFile()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 196
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearEmptyFile() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v1, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 198
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 199
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 201
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 202
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Empty file deleted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iput-object v5, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    .line 204
    iput-object v5, p0, Lcom/lge/camera/VideoFile;->mFileName:Ljava/lang/String;

    .line 213
    .end local v0           #file:Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 206
    .restart local v0       #file:Ljava/io/File;
    :cond_1
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Empty file delete failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 209
    :cond_2
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File is not empty: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public deleteFile()V
    .locals 3

    .prologue
    .line 228
    iget-object v0, p0, Lcom/lge/camera/VideoFile;->mFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 229
    const-string v0, "CameraApp"

    const-string v1, "delete invalid video file"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/lge/camera/VideoFile;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 231
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFile:Ljava/io/File;

    .line 235
    :goto_0
    return-void

    .line 233
    :cond_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/lge/camera/VideoFile;->mFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getFile()Ljava/io/File;
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/lge/camera/VideoFile;->mFile:Ljava/io/File;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 217
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFile:Ljava/io/File;

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/VideoFile;->mFile:Ljava/io/File;

    if-nez v0, :cond_1

    .line 221
    const-string v0, "CameraApp"

    const-string v1, "Error!! mFile can\'t create!!!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/VideoFile;->mFile:Ljava/io/File;

    return-object v0
.end method

.method public getFileExtension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/lge/camera/VideoFile;->mFileExtension:Ljava/lang/String;

    return-object v0
.end method

.method public getFileExternalPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lge/camera/VideoFile;->mFileDirectory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/VideoFile;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/lge/camera/VideoFile;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lge/camera/VideoFile;->mFileDirectory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/VideoFile;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordingTime_duration()J
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/lge/camera/VideoFile;->mRecordingTime_duration:J

    return-wide v0
.end method

.method public getRecordingTime_end()J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/lge/camera/VideoFile;->mRecordingTime_end:J

    return-wide v0
.end method

.method public getRecordingTime_start()J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/lge/camera/VideoFile;->mRecordingTime_start:J

    return-wide v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 325
    iget-boolean v0, p0, Lcom/lge/camera/VideoFile;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/lge/camera/VideoFile;->mUri:Landroid/net/Uri;

    .line 328
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVideoThumb()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 385
    iget-object v1, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 386
    .local v0, videoFrame:Landroid/graphics/Bitmap;
    return-object v0
.end method

.method public initialize(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 144
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mContext:Ljava/lang/ref/WeakReference;

    .line 145
    invoke-virtual {p0}, Lcom/lge/camera/VideoFile;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    .line 146
    invoke-virtual {p0}, Lcom/lge/camera/VideoFile;->getFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFile:Ljava/io/File;

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/VideoFile;->mInitialized:Z

    .line 149
    iget-boolean v0, p0, Lcom/lge/camera/VideoFile;->mInitialized:Z

    return v0
.end method

.method public initialize(Landroid/content/Context;I)Z
    .locals 1
    .parameter "context"
    .parameter "storage"

    .prologue
    .line 153
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mContext:Ljava/lang/ref/WeakReference;

    .line 155
    if-nez p2, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/lge/camera/VideoFile;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    .line 162
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/VideoFile;->getFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFile:Ljava/io/File;

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/VideoFile;->mInitialized:Z

    .line 165
    iget-boolean v0, p0, Lcom/lge/camera/VideoFile;->mInitialized:Z

    return v0

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/VideoFile;->getFileExternalPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    goto :goto_0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/lge/camera/VideoFile;->mInitialized:Z

    return v0
.end method

.method public registerUri(ILjava/lang/String;Landroid/location/Location;ZI)Landroid/net/Uri;
    .locals 16
    .parameter "mode"
    .parameter "resolution"
    .parameter "location"
    .parameter "toast"
    .parameter "purpose"

    .prologue
    .line 238
    const-string v11, "CameraApp"

    const-string v12, "registerUri()"

    invoke-static {v11, v12}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 242
    .local v4, dateTaken:J
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lge/camera/VideoFile;->mFileName:Ljava/lang/String;

    .line 243
    .local v8, name:Ljava/lang/String;
    const-string v11, "CameraApp"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "name: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    if-nez v8, :cond_0

    .line 246
    const/4 v11, 0x0

    .line 321
    :goto_0
    return-object v11

    .line 249
    :cond_0
    const/16 v11, 0x2e

    invoke-virtual {v8, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 250
    .local v7, indexOfDot:I
    const/4 v9, 0x0

    .line 251
    .local v9, title:Ljava/lang/String;
    const/4 v11, -0x1

    if-eq v7, v11, :cond_5

    .line 252
    const/4 v11, 0x0

    invoke-virtual {v8, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 258
    :goto_1
    :try_start_0
    const-string v1, "video/mp4"

    .line 259
    .local v1, VIDEO_MIME_TYPE:Ljava/lang/String;
    const/4 v11, 0x1

    move/from16 v0, p5

    if-eq v0, v11, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetCarrierCode()I

    move-result v11

    const/4 v12, 0x6

    if-ne v11, v12, :cond_2

    .line 261
    :cond_1
    const/4 v11, 0x0

    invoke-static {v11}, Lcom/lge/camera/properties/ProjectVariables;->GetVideoMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 263
    :cond_2
    const-string v11, "CameraApp"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "video mime type : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    new-instance v10, Landroid/content/ContentValues;

    const/16 v11, 0x9

    invoke-direct {v10, v11}, Landroid/content/ContentValues;-><init>(I)V

    .line 266
    .local v10, values:Landroid/content/ContentValues;
    const-string v11, "title"

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v11, "_display_name"

    invoke-virtual {v10, v11, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v11, "mime_type"

    invoke-virtual {v10, v11, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string v11, "datetaken"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 272
    const-string v11, "date_added"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 273
    const-string v11, "date_modified"

    const-wide/16 v12, 0x3e8

    div-long v12, v4, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 274
    const-string v11, "_data"

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/VideoFile;->getFilePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v11, "_size"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/VideoFile;->mFile:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 277
    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/lge/camera/VideoFile;->mRecordingTime_real_duration:J

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-eqz v11, :cond_6

    .line 279
    const-string v11, "duration"

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/lge/camera/VideoFile;->mRecordingTime_real_duration:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 284
    :goto_2
    if-eqz p2, :cond_3

    .line 285
    const-string v11, "resolution"

    move-object/from16 v0, p2

    invoke-virtual {v10, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :cond_3
    if-eqz p3, :cond_4

    .line 288
    const-string v11, "latitude"

    invoke-virtual/range {p3 .. p3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 289
    const-string v11, "longitude"

    invoke-virtual/range {p3 .. p3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 292
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lge/camera/VideoFile;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    .line 293
    .local v3, context:Landroid/content/Context;
    if-eqz v3, :cond_8

    .line 294
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 295
    .local v2, contentResolver:Landroid/content/ContentResolver;
    const-string v11, "CameraApp"

    const-string v12, "insert to DB:%s"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/VideoFile;->getFilePath()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    sget-object v11, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v11, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/lge/camera/VideoFile;->mUri:Landroid/net/Uri;

    .line 297
    const-string v11, "CameraApp"

    const-string v12, "insert to DB done."

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    .end local v2           #contentResolver:Landroid/content/ContentResolver;
    :goto_3
    const-string v11, "CameraApp"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Current video URI: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/VideoFile;->mUri:Landroid/net/Uri;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    .end local v1           #VIDEO_MIME_TYPE:Ljava/lang/String;
    .end local v3           #context:Landroid/content/Context;
    .end local v10           #values:Landroid/content/ContentValues;
    :goto_4
    const-string v11, "CameraApp"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Manually registered uri: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/VideoFile;->mUri:Landroid/net/Uri;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lge/camera/VideoFile;->mUri:Landroid/net/Uri;

    goto/16 :goto_0

    .line 254
    :cond_5
    move-object v9, v8

    goto/16 :goto_1

    .line 281
    .restart local v1       #VIDEO_MIME_TYPE:Ljava/lang/String;
    .restart local v10       #values:Landroid/content/ContentValues;
    :cond_6
    :try_start_1
    const-string v11, "duration"

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/lge/camera/VideoFile;->mRecordingTime_end:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/lge/camera/VideoFile;->mRecordingTime_start:J

    sub-long/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 307
    .end local v1           #VIDEO_MIME_TYPE:Ljava/lang/String;
    .end local v10           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v6

    .line 308
    .local v6, e:Ljava/lang/Exception;
    :try_start_2
    const-string v11, "CameraApp"

    const-string v12, "Failed to register uri: %s"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    if-eqz p4, :cond_7

    .line 310
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lge/camera/VideoFile;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    .line 311
    .restart local v3       #context:Landroid/content/Context;
    if-eqz v3, :cond_7

    .line 312
    const v11, 0x7f0b0145

    invoke-virtual {v3, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Lcom/lge/camera/util/Common;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 315
    .end local v3           #context:Landroid/content/Context;
    :cond_7
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/lge/camera/VideoFile;->mUri:Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 317
    const-string v11, "CameraApp"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Current video URI: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/VideoFile;->mUri:Landroid/net/Uri;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 299
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v1       #VIDEO_MIME_TYPE:Ljava/lang/String;
    .restart local v3       #context:Landroid/content/Context;
    .restart local v10       #values:Landroid/content/ContentValues;
    :cond_8
    :try_start_3
    const-string v11, "CameraApp"

    const-string v12, "Cannot insert URI because context is null"

    invoke-static {v11, v12}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_3

    .line 317
    .end local v1           #VIDEO_MIME_TYPE:Ljava/lang/String;
    .end local v3           #context:Landroid/content/Context;
    .end local v10           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v11

    const-string v12, "CameraApp"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Current video URI: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/VideoFile;->mUri:Landroid/net/Uri;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    throw v11
.end method

.method public rename(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "title"
    .parameter "extension"

    .prologue
    const/4 v6, 0x0

    .line 333
    const-string v3, ".3gp"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ".mp4"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 335
    :cond_0
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "videofile.rename extension error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/camera/VideoFile;->mFileName:Ljava/lang/String;

    .line 338
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lge/camera/VideoFile;->mFileDirectory:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/VideoFile;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    .line 339
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/lge/camera/VideoFile;->mFile:Ljava/io/File;

    .line 341
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 342
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "title"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string v3, "_display_name"

    iget-object v4, p0, Lcom/lge/camera/VideoFile;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const-string v3, "_data"

    iget-object v4, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const-string v3, "_size"

    iget-object v4, p0, Lcom/lge/camera/VideoFile;->mFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 347
    iget-object v3, p0, Lcom/lge/camera/VideoFile;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 348
    .local v1, context:Landroid/content/Context;
    if-eqz v1, :cond_2

    .line 349
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 350
    .local v0, c:Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/lge/camera/VideoFile;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v3, v2, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 355
    .end local v0           #c:Landroid/content/ContentResolver;
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 352
    :cond_2
    const-string v3, "CameraApp"

    const-string v4, "Cannot update name because context is null"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public rename_ExternalSD(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "title"
    .parameter "extension"

    .prologue
    const/4 v6, 0x0

    .line 359
    const-string v3, ".3gp"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ".mp4"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 361
    :cond_0
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "videofile.rename extension error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/camera/VideoFile;->mFileName:Ljava/lang/String;

    .line 364
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lge/camera/VideoFile;->mFileDirectory:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/VideoFile;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    .line 365
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/lge/camera/VideoFile;->mFile:Ljava/io/File;

    .line 367
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 368
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "title"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-string v3, "_display_name"

    iget-object v4, p0, Lcom/lge/camera/VideoFile;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const-string v3, "_data"

    iget-object v4, p0, Lcom/lge/camera/VideoFile;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-string v3, "_size"

    iget-object v4, p0, Lcom/lge/camera/VideoFile;->mFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 373
    iget-object v3, p0, Lcom/lge/camera/VideoFile;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 374
    .local v1, context:Landroid/content/Context;
    if-eqz v1, :cond_2

    .line 375
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 376
    .local v0, c:Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/lge/camera/VideoFile;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v3, v2, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 381
    .end local v0           #c:Landroid/content/ContentResolver;
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 378
    :cond_2
    const-string v3, "CameraApp"

    const-string v4, "Cannot update name because context is null"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setRecordingTime_duration(J)V
    .locals 0
    .parameter "recordingTime_duration"

    .prologue
    .line 67
    iput-wide p1, p0, Lcom/lge/camera/VideoFile;->mRecordingTime_duration:J

    .line 68
    return-void
.end method

.method public setRecordingTime_end(J)V
    .locals 0
    .parameter "recordingTime_end"

    .prologue
    .line 85
    iput-wide p1, p0, Lcom/lge/camera/VideoFile;->mRecordingTime_end:J

    .line 86
    return-void
.end method

.method public setRecordingTime_realduration(J)V
    .locals 0
    .parameter "recordingTime_realDuration"

    .prologue
    .line 71
    iput-wide p1, p0, Lcom/lge/camera/VideoFile;->mRecordingTime_real_duration:J

    .line 72
    return-void
.end method

.method public setRecordingTime_start(J)V
    .locals 0
    .parameter "recordingTime_start"

    .prologue
    .line 78
    iput-wide p1, p0, Lcom/lge/camera/VideoFile;->mRecordingTime_start:J

    .line 79
    return-void
.end method
