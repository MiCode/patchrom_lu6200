.class public Lcom/lge/voiceshutter/library/ISTAudioRecorder;
.super Ljava/lang/Object;
.source "ISTAudioRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;
    }
.end annotation


# static fields
.field public static final JAVA_BUFFER_INTERVAL:I = 0xfa0

.field public static final NUM_JAVA_BUFFER:I = 0x50

.field private static final TAG:Ljava/lang/String; = null

.field public static final TIMER_INTERVAL:I = 0x32


# instance fields
.field private BackupPool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/voiceshutter/library/ByteArray;",
            ">;"
        }
    .end annotation
.end field

.field private BufferPool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/voiceshutter/library/ByteArray;",
            ">;"
        }
    .end annotation
.end field

.field private ChannelConfig:I

.field private RecorderBufferSize:I

.field private aFormat:I

.field private aRecorder:Landroid/media/AudioRecord;

.field private aSource:I

.field private bSamples:S

.field public buffer:[B

.field private framePeriod:I

.field private mState:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

.field private mThread:Ljava/lang/Thread;

.field private nChannels:S

.field private read_size:I

.field private sRate:I

.field private final syncObj:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 9
    .parameter "audioSource"
    .parameter "sampleRate"
    .parameter "channelConfig"
    .parameter "audioFormat"

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x2

    const/4 v0, 0x0

    .line 96
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->aRecorder:Landroid/media/AudioRecord;

    .line 44
    iput-object v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->BufferPool:Ljava/util/List;

    .line 45
    iput-object v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->BackupPool:Ljava/util/List;

    .line 49
    iput-object v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->mThread:Ljava/lang/Thread;

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->syncObj:Ljava/lang/Object;

    .line 99
    if-ne p4, v1, :cond_1

    .line 101
    const/16 v0, 0x10

    :try_start_0
    iput-short v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->bSamples:S

    .line 108
    :goto_0
    iput p3, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->ChannelConfig:I

    .line 109
    if-ne p3, v1, :cond_2

    .line 111
    const/4 v0, 0x1

    iput-short v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->nChannels:S

    .line 118
    :goto_1
    iput p1, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->aSource:I

    .line 119
    iput p2, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->sRate:I

    .line 120
    iput p4, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->aFormat:I

    .line 122
    const/16 v7, 0x50

    .line 124
    .local v7, times:I
    mul-int/lit8 v0, p2, 0x32

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->framePeriod:I

    .line 125
    iget v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->framePeriod:I

    mul-int/2addr v0, v7

    iget-short v1, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->bSamples:S

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x8

    iget-short v1, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->nChannels:S

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->RecorderBufferSize:I

    .line 126
    iget v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->RecorderBufferSize:I

    invoke-static {p2, p3, p4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 128
    invoke-static {p2, p3, p4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->RecorderBufferSize:I

    .line 130
    iget v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->RecorderBufferSize:I

    iget-short v1, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->bSamples:S

    mul-int/2addr v1, v7

    div-int/lit8 v1, v1, 0x8

    iget-short v2, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->nChannels:S

    mul-int/2addr v1, v2

    div-int/2addr v0, v1

    iput v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->framePeriod:I

    .line 131
    sget-object v0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Increasing buffer size to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->RecorderBufferSize:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_0
    new-instance v0, Landroid/media/AudioRecord;

    iget v5, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->RecorderBufferSize:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->aRecorder:Landroid/media/AudioRecord;

    .line 135
    iget-object v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->aRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-eq v0, v8, :cond_3

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->aRecorder:Landroid/media/AudioRecord;

    .line 138
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "AudioRecord initialization failed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .end local v7           #times:I
    :catch_0
    move-exception v6

    .line 161
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 163
    sget-object v0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :goto_2
    sget-object v0, Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;->ERROR:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    iput-object v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->mState:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    .line 171
    .end local v6           #e:Ljava/lang/Exception;
    :goto_3
    return-void

    .line 105
    :cond_1
    const/16 v0, 0x8

    :try_start_1
    iput-short v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->bSamples:S

    goto/16 :goto_0

    .line 115
    :cond_2
    const/4 v0, 0x2

    iput-short v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->nChannels:S

    goto/16 :goto_1

    .line 149
    .restart local v7       #times:I
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->read_size:I

    .line 152
    iget v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->RecorderBufferSize:I

    div-int/2addr v0, v7

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->buffer:[B

    .line 154
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->BufferPool:Ljava/util/List;

    .line 155
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->BackupPool:Ljava/util/List;

    .line 157
    sget-object v0, Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;->READY:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    iput-object v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->mState:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 167
    .end local v7           #times:I
    .restart local v6       #e:Ljava/lang/Exception;
    :cond_4
    sget-object v0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->TAG:Ljava/lang/String;

    const-string v1, "Unknown error occured while initializing recording"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/lge/voiceshutter/library/ISTAudioRecorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->recording()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private recording()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 245
    const/4 v2, 0x0

    .local v2, size:I
    const/4 v0, 0x0

    .line 251
    .local v0, ar_size:I
    :cond_0
    :goto_0
    const-wide/16 v3, 0x19

    :try_start_0
    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 253
    iget-object v4, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->syncObj:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    :try_start_1
    iget-object v3, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->mState:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    sget-object v5, Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;->RECORDING:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    if-eq v3, v5, :cond_3

    .line 257
    iget-object v3, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->aRecorder:Landroid/media/AudioRecord;

    if-eqz v3, :cond_1

    .line 259
    iget-object v3, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->aRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->stop()V

    .line 260
    iget-object v3, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->aRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->release()V

    .line 261
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->aRecorder:Landroid/media/AudioRecord;

    .line 263
    :cond_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 294
    iget-object v3, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->aRecorder:Landroid/media/AudioRecord;

    if-eqz v3, :cond_2

    .line 296
    iget-object v3, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->aRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->stop()V

    .line 297
    iget-object v3, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->aRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->release()V

    .line 298
    iput-object v7, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->aRecorder:Landroid/media/AudioRecord;

    .line 301
    :cond_2
    return-void

    .line 265
    :cond_3
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 267
    :try_start_3
    iget-object v3, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->aRecorder:Landroid/media/AudioRecord;

    if-eqz v3, :cond_4

    .line 268
    iget-object v3, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->aRecorder:Landroid/media/AudioRecord;

    iget-object v4, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->buffer:[B

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->buffer:[B

    array-length v6, v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/AudioRecord;->read([BII)I

    move-result v2

    .line 271
    :cond_4
    iget v3, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->read_size:I

    const/16 v4, 0x640

    if-ge v3, v4, :cond_6

    .line 273
    iget v3, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->read_size:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->read_size:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 294
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->aRecorder:Landroid/media/AudioRecord;

    if-eqz v4, :cond_5

    .line 296
    iget-object v4, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->aRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v4}, Landroid/media/AudioRecord;->stop()V

    .line 297
    iget-object v4, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->aRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v4}, Landroid/media/AudioRecord;->release()V

    .line 298
    iput-object v7, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->aRecorder:Landroid/media/AudioRecord;

    :cond_5
    throw v3

    .line 265
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v3

    .line 277
    :cond_6
    if-lez v2, :cond_0

    .line 279
    new-instance v1, Lcom/lge/voiceshutter/library/ByteArray;

    iget-object v3, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->buffer:[B

    invoke-direct {v1, v3, v2}, Lcom/lge/voiceshutter/library/ByteArray;-><init>([BI)V

    .line 280
    .local v1, buf:Lcom/lge/voiceshutter/library/ByteArray;
    iget-object v3, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->BufferPool:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    iget-object v3, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->BufferPool:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 283
    const/16 v3, 0x50

    if-le v0, v3, :cond_0

    .line 285
    sget-object v3, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BufferPool overflow: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v3, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->BufferPool:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #buf:Lcom/lge/voiceshutter/library/ByteArray;
    check-cast v1, Lcom/lge/voiceshutter/library/ByteArray;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 287
    .restart local v1       #buf:Lcom/lge/voiceshutter/library/ByteArray;
    goto/16 :goto_0
.end method


# virtual methods
.method public dump(Ljava/lang/String;)V
    .locals 10
    .parameter "base_dir"

    .prologue
    .line 411
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 412
    .local v4, ftargetLocation:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 414
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 417
    :cond_0
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 418
    .local v5, recent:Ljava/util/Date;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->getYear()I

    move-result v8

    add-int/lit16 v8, v8, 0x76c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/util/Date;->getMonth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/util/Date;->getDate()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/util/Date;->getHours()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/util/Date;->getMinutes()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/util/Date;->getSeconds()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".pcm"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 422
    .local v6, tnow:Ljava/lang/String;
    const/4 v2, 0x0

    .line 426
    .local v2, fos:Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 428
    .end local v2           #fos:Ljava/io/OutputStream;
    .local v3, fos:Ljava/io/OutputStream;
    :goto_0
    :try_start_1
    iget-object v7, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->BackupPool:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 430
    iget-object v7, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->BackupPool:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/voiceshutter/library/ByteArray;

    .line 431
    .local v0, buf:Lcom/lge/voiceshutter/library/ByteArray;
    invoke-virtual {v0}, Lcom/lge/voiceshutter/library/ByteArray;->array()[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v0}, Lcom/lge/voiceshutter/library/ByteArray;->array()[B

    move-result-object v9

    array-length v9, v9

    invoke-virtual {v3, v7, v8, v9}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 432
    const/4 v0, 0x0

    goto :goto_0

    .line 440
    .end local v0           #buf:Lcom/lge/voiceshutter/library/ByteArray;
    :cond_1
    if-eqz v3, :cond_4

    .line 442
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 446
    :goto_1
    const/4 v2, 0x0

    .line 448
    .end local v3           #fos:Ljava/io/OutputStream;
    .restart local v2       #fos:Ljava/io/OutputStream;
    :goto_2
    const/4 v4, 0x0

    .line 450
    :goto_3
    return-void

    .line 443
    .end local v2           #fos:Ljava/io/OutputStream;
    .restart local v3       #fos:Ljava/io/OutputStream;
    :catch_0
    move-exception v1

    .line 444
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 435
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #fos:Ljava/io/OutputStream;
    .restart local v2       #fos:Ljava/io/OutputStream;
    :catch_1
    move-exception v1

    .line 437
    .local v1, e:Ljava/lang/Exception;
    :goto_4
    :try_start_3
    sget-object v7, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " FileOutputStream error:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 440
    if-eqz v2, :cond_2

    .line 442
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 446
    .end local v1           #e:Ljava/lang/Exception;
    :goto_5
    const/4 v2, 0x0

    .line 448
    :cond_2
    const/4 v4, 0x0

    .line 449
    goto :goto_3

    .line 443
    .restart local v1       #e:Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 444
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 440
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_6
    if-eqz v2, :cond_3

    .line 442
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 446
    :goto_7
    const/4 v2, 0x0

    .line 448
    :cond_3
    const/4 v4, 0x0

    throw v7

    .line 443
    :catch_3
    move-exception v1

    .line 444
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 440
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #fos:Ljava/io/OutputStream;
    .restart local v3       #fos:Ljava/io/OutputStream;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3           #fos:Ljava/io/OutputStream;
    .restart local v2       #fos:Ljava/io/OutputStream;
    goto :goto_6

    .line 435
    .end local v2           #fos:Ljava/io/OutputStream;
    .restart local v3       #fos:Ljava/io/OutputStream;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3           #fos:Ljava/io/OutputStream;
    .restart local v2       #fos:Ljava/io/OutputStream;
    goto :goto_4

    .end local v2           #fos:Ljava/io/OutputStream;
    .restart local v3       #fos:Ljava/io/OutputStream;
    :cond_4
    move-object v2, v3

    .end local v3           #fos:Ljava/io/OutputStream;
    .restart local v2       #fos:Ljava/io/OutputStream;
    goto :goto_2
.end method

.method public getBuffer()[B
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 175
    iget-object v3, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->BufferPool:Ljava/util/List;

    if-nez v3, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-object v2

    .line 178
    :cond_1
    iget-object v3, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->BufferPool:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->BufferPool:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 180
    iget-object v2, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->BufferPool:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/voiceshutter/library/ByteArray;

    .line 181
    .local v0, buf:Lcom/lge/voiceshutter/library/ByteArray;
    iget-object v2, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->BackupPool:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object v2, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->BackupPool:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x28

    if-le v2, v3, :cond_2

    .line 184
    iget-object v2, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->BackupPool:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/voiceshutter/library/ByteArray;

    .line 188
    :cond_2
    invoke-virtual {v0}, Lcom/lge/voiceshutter/library/ByteArray;->array()[B

    move-result-object v2

    goto :goto_0
.end method

.method public getRecorderState()Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->mState:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    return-object v0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->mState:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    sget-object v1, Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;->RECORDING:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    if-ne v0, v1, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->stop()V

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->aRecorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->aRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 210
    iget-object v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->aRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->aRecorder:Landroid/media/AudioRecord;

    .line 213
    :cond_1
    return-void
.end method

.method public reset()V
    .locals 7

    .prologue
    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->mState:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    sget-object v1, Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;->ERROR:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    if-eq v0, v1, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->release()V

    .line 231
    new-instance v0, Landroid/media/AudioRecord;

    iget v1, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->aSource:I

    iget v2, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->sRate:I

    iget v3, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->ChannelConfig:I

    iget v4, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->aFormat:I

    iget v5, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->RecorderBufferSize:I

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->aRecorder:Landroid/media/AudioRecord;

    .line 232
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->read_size:I

    .line 233
    sget-object v0, Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;->READY:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    iput-object v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->mState:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 236
    :catch_0
    move-exception v6

    .line 238
    .local v6, e:Ljava/lang/Exception;
    sget-object v0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    sget-object v0, Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;->ERROR:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    iput-object v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->mState:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    goto :goto_0
.end method

.method public start()V
    .locals 3

    .prologue
    .line 311
    iget-object v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->mState:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    sget-object v1, Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;->READY:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    if-ne v0, v1, :cond_1

    .line 313
    sget-object v0, Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;->RECORDING:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    iput-object v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->mState:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    .line 315
    iget-object v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->aRecorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->aRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 319
    :cond_0
    new-instance v0, Lcom/lge/voiceshutter/library/ISTAudioRecorder$1;

    invoke-direct {v0, p0}, Lcom/lge/voiceshutter/library/ISTAudioRecorder$1;-><init>(Lcom/lge/voiceshutter/library/ISTAudioRecorder;)V

    iput-object v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->mThread:Ljava/lang/Thread;

    .line 336
    iget-object v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 344
    :goto_0
    return-void

    .line 341
    :cond_1
    sget-object v0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start() called on illegal state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->mState:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    sget-object v0, Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;->ERROR:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    iput-object v0, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->mState:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    goto :goto_0
.end method

.method public stop()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 355
    iget-object v2, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->mState:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    sget-object v3, Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;->RECORDING:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    if-ne v2, v3, :cond_2

    .line 357
    iget-object v3, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->syncObj:Ljava/lang/Object;

    monitor-enter v3

    .line 360
    :try_start_0
    sget-object v2, Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;->STOPPED:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    iput-object v2, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->mState:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    .line 361
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    :try_start_1
    iget-object v2, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->mThread:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    .line 367
    iget-object v2, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->mThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V

    .line 368
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->mThread:Ljava/lang/Thread;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 382
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->aRecorder:Landroid/media/AudioRecord;

    if-eqz v2, :cond_1

    .line 384
    iget-object v2, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->aRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->stop()V

    .line 385
    iget-object v2, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->aRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->release()V

    .line 386
    iput-object v5, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->aRecorder:Landroid/media/AudioRecord;

    .line 392
    :cond_1
    iget-object v2, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->BufferPool:Ljava/util/List;

    if-eqz v2, :cond_4

    .line 393
    :goto_1
    iget-object v2, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->BufferPool:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 394
    iget-object v2, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->BufferPool:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/voiceshutter/library/ByteArray;

    .line 395
    .local v0, buf:Lcom/lge/voiceshutter/library/ByteArray;
    const/4 v0, 0x0

    goto :goto_1

    .line 361
    .end local v0           #buf:Lcom/lge/voiceshutter/library/ByteArray;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 371
    :catch_0
    move-exception v1

    .line 373
    .local v1, e:Ljava/lang/InterruptedException;
    sget-object v2, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "abrupt thread"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 378
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_2
    sget-object v2, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->TAG:Ljava/lang/String;

    const-string v3, "stop() called on illegal state"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    sget-object v2, Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;->ERROR:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    iput-object v2, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->mState:Lcom/lge/voiceshutter/library/ISTAudioRecorder$RecorderState;

    goto :goto_0

    .line 397
    :cond_3
    iput-object v5, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->BufferPool:Ljava/util/List;

    .line 400
    :cond_4
    iget-object v2, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->BackupPool:Ljava/util/List;

    if-eqz v2, :cond_6

    .line 401
    :goto_2
    iget-object v2, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->BackupPool:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 402
    iget-object v2, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->BackupPool:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/voiceshutter/library/ByteArray;

    .line 403
    .restart local v0       #buf:Lcom/lge/voiceshutter/library/ByteArray;
    const/4 v0, 0x0

    goto :goto_2

    .line 405
    .end local v0           #buf:Lcom/lge/voiceshutter/library/ByteArray;
    :cond_5
    iput-object v5, p0, Lcom/lge/voiceshutter/library/ISTAudioRecorder;->BackupPool:Ljava/util/List;

    .line 407
    :cond_6
    return-void
.end method
