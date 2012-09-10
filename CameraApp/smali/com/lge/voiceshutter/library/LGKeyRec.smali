.class public final Lcom/lge/voiceshutter/library/LGKeyRec;
.super Ljava/lang/Object;
.source "LGKeyRec.java"


# static fields
.field public static final EVENT_INCOMPLETE:I = 0x2

.field public static final EVENT_INVALID:I = 0x0

.field public static final EVENT_MAX_SPEECH:I = 0x9

.field public static final EVENT_NEED_MORE_AUDIO:I = 0x8

.field public static final EVENT_NO_MATCH:I = 0x1

.field public static final EVENT_RECOGNITION_RESULT:I = 0x6

.field public static final EVENT_RECOGNITION_TIMEOUT:I = 0x7

.field public static final EVENT_STARTED:I = 0x3

.field public static final EVENT_START_OF_VOICING:I = 0x5

.field public static final EVENT_STOPPED:I = 0x4

.field private static LGKhandle:I = 0x0

.field private static final STATUS_CREATED:I = 0x1

.field private static final STATUS_INITIALIZED:I = 0x2

.field private static final STATUS_NULL:I = 0x0

.field private static final STATUS_STARTED:I = 0x3

.field private static final STATUS_STOPPED:I = 0x4

.field public static final TAG:Ljava/lang/String; = "LGKeyRec"


# instance fields
.field private LGK_status:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    const/4 v1, 0x0

    sput v1, Lcom/lge/voiceshutter/library/LGKeyRec;->LGKhandle:I

    .line 174
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/mvoice/pcm"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 175
    .local v0, path:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 177
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 180
    :cond_0
    const-string v1, "kwr_mvoice-jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 181
    const-string v1, "LGKeyRec"

    const-string v2, "loading: libkwr_mvoice-jni.so"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "language"

    .prologue
    .line 90
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/voiceshutter/library/LGKeyRec;->LGK_status:I

    .line 93
    invoke-direct {p0, p1}, Lcom/lge/voiceshutter/library/LGKeyRec;->LGKCreate(I)I

    move-result v0

    sput v0, Lcom/lge/voiceshutter/library/LGKeyRec;->LGKhandle:I

    .line 94
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/voiceshutter/library/LGKeyRec;->LGK_status:I

    .line 97
    return-void
.end method

.method private native LGKAdvance(I)I
.end method

.method private native LGKCreate(I)I
.end method

.method private native LGKDestroy(I)V
.end method

.method private native LGKInitialize(I)V
.end method

.method private native LGKLibraryVersion()Ljava/lang/String;
.end method

.method private native LGKPutAudio(I[BIIZ)V
.end method

.method private native LGKStart(I)V
.end method

.method private native LGKStop(I)V
.end method

.method public static eventToString(I)Ljava/lang/String;
    .locals 2
    .parameter "event"

    .prologue
    .line 63
    packed-switch p0, :pswitch_data_0

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 65
    :pswitch_0
    const-string v0, "EVENT_INVALID"

    goto :goto_0

    .line 67
    :pswitch_1
    const-string v0, "EVENT_NO_MATCH"

    goto :goto_0

    .line 69
    :pswitch_2
    const-string v0, "EVENT_INCOMPLETE"

    goto :goto_0

    .line 71
    :pswitch_3
    const-string v0, "EVENT_STARTED"

    goto :goto_0

    .line 73
    :pswitch_4
    const-string v0, "EVENT_STOPPED"

    goto :goto_0

    .line 75
    :pswitch_5
    const-string v0, "EVENT_START_OF_VOICING"

    goto :goto_0

    .line 77
    :pswitch_6
    const-string v0, "EVENT_RECOGNITION_RESULT"

    goto :goto_0

    .line 79
    :pswitch_7
    const-string v0, "EVENT_RECOGNITION_TIMEOUT"

    goto :goto_0

    .line 81
    :pswitch_8
    const-string v0, "EVENT_NEED_MORE_AUDIO"

    goto :goto_0

    .line 83
    :pswitch_9
    const-string v0, "EVENT_MAX_SPEECH"

    goto :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public Advance()I
    .locals 2

    .prologue
    .line 125
    iget v0, p0, Lcom/lge/voiceshutter/library/LGKeyRec;->LGK_status:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 126
    sget v0, Lcom/lge/voiceshutter/library/LGKeyRec;->LGKhandle:I

    invoke-direct {p0, v0}, Lcom/lge/voiceshutter/library/LGKeyRec;->LGKAdvance(I)I

    move-result v0

    .line 128
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public DestroyRecognizer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 154
    invoke-virtual {p0}, Lcom/lge/voiceshutter/library/LGKeyRec;->Stop()V

    .line 155
    sget v0, Lcom/lge/voiceshutter/library/LGKeyRec;->LGKhandle:I

    if-eqz v0, :cond_0

    .line 157
    sget v0, Lcom/lge/voiceshutter/library/LGKeyRec;->LGKhandle:I

    invoke-direct {p0, v0}, Lcom/lge/voiceshutter/library/LGKeyRec;->LGKDestroy(I)V

    .line 158
    sput v2, Lcom/lge/voiceshutter/library/LGKeyRec;->LGKhandle:I

    .line 159
    const-string v0, "LGKeyRec"

    const-string v1, "LGKDestroy is called !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_0
    iput v2, p0, Lcom/lge/voiceshutter/library/LGKeyRec;->LGK_status:I

    .line 162
    return-void
.end method

.method public Initialize()V
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/lge/voiceshutter/library/LGKeyRec;->LGK_status:I

    if-nez v0, :cond_0

    .line 108
    :goto_0
    return-void

    .line 104
    :cond_0
    sget v0, Lcom/lge/voiceshutter/library/LGKeyRec;->LGKhandle:I

    invoke-direct {p0, v0}, Lcom/lge/voiceshutter/library/LGKeyRec;->LGKInitialize(I)V

    .line 107
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/voiceshutter/library/LGKeyRec;->LGK_status:I

    goto :goto_0
.end method

.method public LibraryVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/lge/voiceshutter/library/LGKeyRec;->LGKLibraryVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public PutAudio([BIIZ)V
    .locals 6
    .parameter "buf"
    .parameter "offset"
    .parameter "length"
    .parameter "isLast"

    .prologue
    .line 133
    iget v0, p0, Lcom/lge/voiceshutter/library/LGKeyRec;->LGK_status:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 134
    sget v1, Lcom/lge/voiceshutter/library/LGKeyRec;->LGKhandle:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/lge/voiceshutter/library/LGKeyRec;->LGKPutAudio(I[BIIZ)V

    .line 135
    :cond_0
    return-void
.end method

.method public Start()V
    .locals 2

    .prologue
    .line 112
    iget v0, p0, Lcom/lge/voiceshutter/library/LGKeyRec;->LGK_status:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/lge/voiceshutter/library/LGKeyRec;->Initialize()V

    .line 115
    :cond_0
    iget v0, p0, Lcom/lge/voiceshutter/library/LGKeyRec;->LGK_status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 117
    sget v0, Lcom/lge/voiceshutter/library/LGKeyRec;->LGKhandle:I

    invoke-direct {p0, v0}, Lcom/lge/voiceshutter/library/LGKeyRec;->LGKStart(I)V

    .line 119
    const/4 v0, 0x3

    iput v0, p0, Lcom/lge/voiceshutter/library/LGKeyRec;->LGK_status:I

    .line 121
    :cond_1
    return-void
.end method

.method public Stop()V
    .locals 2

    .prologue
    .line 141
    sget v0, Lcom/lge/voiceshutter/library/LGKeyRec;->LGKhandle:I

    if-eqz v0, :cond_0

    .line 143
    iget v0, p0, Lcom/lge/voiceshutter/library/LGKeyRec;->LGK_status:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 146
    sget v0, Lcom/lge/voiceshutter/library/LGKeyRec;->LGKhandle:I

    invoke-direct {p0, v0}, Lcom/lge/voiceshutter/library/LGKeyRec;->LGKStop(I)V

    .line 149
    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/lge/voiceshutter/library/LGKeyRec;->LGK_status:I

    .line 150
    return-void
.end method
