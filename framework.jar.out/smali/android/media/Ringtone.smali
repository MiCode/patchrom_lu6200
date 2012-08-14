.class public Landroid/media/Ringtone;
.super Ljava/lang/Object;
.source "Ringtone.java"


# static fields
.field private static final DEFAULT_ALARM_PATH:Ljava/lang/String; = null

.field private static final DEFAULT_NOTIFICATION_PATH:Ljava/lang/String; = null

.field private static final DEFAULT_RINGTONE_PATH:Ljava/lang/String; = null

.field private static final DRM_COLUMNS:[Ljava/lang/String; = null

.field private static LGE_DEBUG:Z = false

.field private static final MEDIA_COLUMNS:[Ljava/lang/String; = null

.field private static final SILENT_RINGTONE_STRING:Ljava/lang/String; = "silent_ringtone"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final RIGHTS_EXPIRED:I

.field private final RIGHTS_INVALID:I

.field private final RIGHTS_NOT_ACQUIRED:I

.field private final RIGHTS_VALID:I

.field errorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

.field private mAudio:Landroid/media/MediaPlayer;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBuild:Landroid/os/Build;

.field private mContext:Landroid/content/Context;

.field private mDevice:Ljava/lang/String;

.field private mDrmConsume:Z

.field private mDrmFile:I

.field private mDrmSession:Lcom/lge/lgdrm/DrmContentSession;

.field private mDrmValid:Z

.field private mErrorCheck:Z

.field private mFileDescriptor:Ljava/io/FileDescriptor;

.field private mOperator:Ljava/lang/String;

.field private mStreamType:I

.field private mTitle:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;

.field private strTargetOperator:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 64
    const-string v0, "Ringtone"

    sput-object v0, Landroid/media/Ringtone;->TAG:Ljava/lang/String;

    .line 65
    sput-boolean v2, Landroid/media/Ringtone;->LGE_DEBUG:Z

    .line 67
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v2

    const-string/jumbo v1, "title"

    aput-object v1, v0, v4

    sput-object v0, Landroid/media/Ringtone;->MEDIA_COLUMNS:[Ljava/lang/String;

    .line 73
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v2

    const-string/jumbo v1, "title"

    aput-object v1, v0, v4

    sput-object v0, Landroid/media/Ringtone;->DRM_COLUMNS:[Ljava/lang/String;

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/media/audio/ringtones/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ro.config.ringtone"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/Ringtone;->DEFAULT_RINGTONE_PATH:Ljava/lang/String;

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/media/audio/alarms/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ro.config.alarm_alert"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/Ringtone;->DEFAULT_ALARM_PATH:Ljava/lang/String;

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/media/audio/notifications/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ro.config.notification_sound"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/Ringtone;->DEFAULT_NOTIFICATION_PATH:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 118
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput v3, p0, Landroid/media/Ringtone;->mStreamType:I

    .line 93
    new-instance v0, Landroid/os/Build;

    invoke-direct {v0}, Landroid/os/Build;-><init>()V

    iput-object v0, p0, Landroid/media/Ringtone;->mBuild:Landroid/os/Build;

    .line 94
    const-string v0, "DCM"

    iput-object v0, p0, Landroid/media/Ringtone;->mOperator:Ljava/lang/String;

    .line 95
    const-string/jumbo v0, "l_dcm"

    iput-object v0, p0, Landroid/media/Ringtone;->mDevice:Ljava/lang/String;

    .line 96
    const-string/jumbo v0, "ro.build.target_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/Ringtone;->strTargetOperator:Ljava/lang/String;

    .line 98
    iput v1, p0, Landroid/media/Ringtone;->RIGHTS_VALID:I

    .line 99
    iput v2, p0, Landroid/media/Ringtone;->RIGHTS_INVALID:I

    .line 100
    iput v3, p0, Landroid/media/Ringtone;->RIGHTS_EXPIRED:I

    .line 101
    const/4 v0, 0x3

    iput v0, p0, Landroid/media/Ringtone;->RIGHTS_NOT_ACQUIRED:I

    .line 105
    iput v1, p0, Landroid/media/Ringtone;->mDrmFile:I

    .line 106
    iput-boolean v1, p0, Landroid/media/Ringtone;->mDrmValid:Z

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/Ringtone;->mDrmSession:Lcom/lge/lgdrm/DrmContentSession;

    .line 108
    iput-boolean v1, p0, Landroid/media/Ringtone;->mDrmConsume:Z

    .line 115
    iput-boolean v2, p0, Landroid/media/Ringtone;->mErrorCheck:Z

    .line 438
    new-instance v0, Landroid/media/Ringtone$1;

    invoke-direct {v0, p0}, Landroid/media/Ringtone$1;-><init>(Landroid/media/Ringtone;)V

    iput-object v0, p0, Landroid/media/Ringtone;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 119
    iput-object p1, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    .line 120
    iget-object v0, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    .line 121
    iput-boolean v2, p0, Landroid/media/Ringtone;->mErrorCheck:Z

    .line 122
    return-void
.end method

.method constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "streamType"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 125
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput v3, p0, Landroid/media/Ringtone;->mStreamType:I

    .line 93
    new-instance v0, Landroid/os/Build;

    invoke-direct {v0}, Landroid/os/Build;-><init>()V

    iput-object v0, p0, Landroid/media/Ringtone;->mBuild:Landroid/os/Build;

    .line 94
    const-string v0, "DCM"

    iput-object v0, p0, Landroid/media/Ringtone;->mOperator:Ljava/lang/String;

    .line 95
    const-string/jumbo v0, "l_dcm"

    iput-object v0, p0, Landroid/media/Ringtone;->mDevice:Ljava/lang/String;

    .line 96
    const-string/jumbo v0, "ro.build.target_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/Ringtone;->strTargetOperator:Ljava/lang/String;

    .line 98
    iput v1, p0, Landroid/media/Ringtone;->RIGHTS_VALID:I

    .line 99
    iput v2, p0, Landroid/media/Ringtone;->RIGHTS_INVALID:I

    .line 100
    iput v3, p0, Landroid/media/Ringtone;->RIGHTS_EXPIRED:I

    .line 101
    const/4 v0, 0x3

    iput v0, p0, Landroid/media/Ringtone;->RIGHTS_NOT_ACQUIRED:I

    .line 105
    iput v1, p0, Landroid/media/Ringtone;->mDrmFile:I

    .line 106
    iput-boolean v1, p0, Landroid/media/Ringtone;->mDrmValid:Z

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/Ringtone;->mDrmSession:Lcom/lge/lgdrm/DrmContentSession;

    .line 108
    iput-boolean v1, p0, Landroid/media/Ringtone;->mDrmConsume:Z

    .line 115
    iput-boolean v2, p0, Landroid/media/Ringtone;->mErrorCheck:Z

    .line 438
    new-instance v0, Landroid/media/Ringtone$1;

    invoke-direct {v0, p0}, Landroid/media/Ringtone$1;-><init>(Landroid/media/Ringtone;)V

    iput-object v0, p0, Landroid/media/Ringtone;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 126
    iput-object p1, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    .line 127
    iget-object v0, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    .line 128
    iput-boolean v2, p0, Landroid/media/Ringtone;->mErrorCheck:Z

    .line 129
    iput p2, p0, Landroid/media/Ringtone;->mStreamType:I

    .line 130
    return-void
.end method

.method static synthetic access$000(Landroid/media/Ringtone;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Landroid/media/Ringtone;->mErrorCheck:Z

    return v0
.end method

.method static synthetic access$002(Landroid/media/Ringtone;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Landroid/media/Ringtone;->mErrorCheck:Z

    return p1
.end method

.method static synthetic access$100(Landroid/media/Ringtone;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$102(Landroid/media/Ringtone;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$200(Landroid/media/Ringtone;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/media/Ringtone;->getDefaultPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 63
    sget-boolean v0, Landroid/media/Ringtone;->LGE_DEBUG:Z

    return v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Landroid/media/Ringtone;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Landroid/media/Ringtone;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Landroid/media/Ringtone;->mStreamType:I

    return v0
.end method

.method private checkDRM(Ljava/lang/String;)I
    .locals 6
    .parameter "filename"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 634
    if-nez p1, :cond_1

    .line 668
    :cond_0
    :goto_0
    return v1

    .line 638
    :cond_1
    const/4 v4, 0x0

    invoke-static {v3, p1, v4}, Lcom/lge/lgdrm/DrmManager;->isSupportedExtension(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 642
    invoke-static {p1}, Lcom/lge/lgdrm/DrmManager;->isDRM(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Landroid/media/Ringtone;->mDrmFile:I

    .line 643
    iget v4, p0, Landroid/media/Ringtone;->mDrmFile:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_2

    iget v4, p0, Landroid/media/Ringtone;->mDrmFile:I

    const/16 v5, 0x3000

    if-le v4, v5, :cond_3

    .line 644
    :cond_2
    iput v1, p0, Landroid/media/Ringtone;->mDrmFile:I

    goto :goto_0

    .line 649
    :cond_3
    :try_start_0
    iget-object v1, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/lge/lgdrm/DrmManager;->createContentSession(Ljava/lang/String;Landroid/content/Context;)Lcom/lge/lgdrm/DrmContentSession;

    move-result-object v0

    .line 650
    .local v0, session:Lcom/lge/lgdrm/DrmContentSession;
    if-nez v0, :cond_4

    move v1, v2

    .line 651
    goto :goto_0

    .line 654
    :cond_4
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/lge/lgdrm/DrmContentSession;->isActionSupported(I)Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v2

    .line 655
    goto :goto_0

    .line 658
    :cond_5
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/lgdrm/DrmContentSession;->setDecryptionInfo(Z)I

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    .line 659
    goto :goto_0

    .line 662
    :cond_6
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/Ringtone;->mDrmValid:Z

    .line 663
    iput-object v0, p0, Landroid/media/Ringtone;->mDrmSession:Lcom/lge/lgdrm/DrmContentSession;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    .line 664
    goto :goto_0

    .line 665
    .end local v0           #session:Lcom/lge/lgdrm/DrmContentSession;
    :catch_0
    move-exception v1

    move v1, v2

    .line 668
    goto :goto_0
.end method

.method private getDefaultPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 676
    iget v0, p0, Landroid/media/Ringtone;->mStreamType:I

    packed-switch v0, :pswitch_data_0

    .line 688
    :pswitch_0
    sget-object v0, Landroid/media/Ringtone;->DEFAULT_NOTIFICATION_PATH:Ljava/lang/String;

    :goto_0
    return-object v0

    .line 679
    :pswitch_1
    sget-object v0, Landroid/media/Ringtone;->DEFAULT_RINGTONE_PATH:Ljava/lang/String;

    goto :goto_0

    .line 682
    :pswitch_2
    sget-object v0, Landroid/media/Ringtone;->DEFAULT_NOTIFICATION_PATH:Ljava/lang/String;

    goto :goto_0

    .line 685
    :pswitch_3
    sget-object v0, Landroid/media/Ringtone;->DEFAULT_ALARM_PATH:Ljava/lang/String;

    goto :goto_0

    .line 676
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private getFilepathFromContentUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 13
    .parameter "uri"

    .prologue
    const/4 v7, 0x0

    const/4 v12, 0x0

    .line 696
    const/4 v9, 0x0

    .line 697
    .local v9, filepath:Ljava/lang/String;
    const/4 v6, 0x0

    .line 698
    .local v6, c:Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 701
    .local v0, testProvider:Landroid/content/IContentProvider;
    :try_start_0
    iget-object v1, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 702
    .local v11, resolver:Landroid/content/ContentResolver;
    invoke-virtual {v11, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v0

    .line 703
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 710
    .end local v11           #resolver:Landroid/content/ContentResolver;
    :goto_0
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 711
    .local v7, count:I
    :cond_0
    if-lez v7, :cond_3

    .line 712
    if-nez v6, :cond_2

    .line 733
    :cond_1
    :goto_1
    return-object v12

    .line 705
    .end local v7           #count:I
    :catch_0
    move-exception v8

    .line 707
    .local v8, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/media/Ringtone;->TAG:Ljava/lang/String;

    const-string v2, "getFilepathFromContentUri... error!! "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 713
    .end local v8           #e:Landroid/os/RemoteException;
    .restart local v7       #count:I
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 714
    const-string v1, "_data"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 715
    .local v10, i:I
    if-ltz v10, :cond_6

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 718
    .end local v10           #i:I
    :cond_3
    :goto_2
    if-eqz v6, :cond_4

    .line 719
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 722
    :cond_4
    if-eqz v0, :cond_5

    .line 723
    iget-object v1, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 728
    :cond_5
    if-eqz v9, :cond_1

    move-object v12, v9

    .line 733
    goto :goto_1

    .restart local v10       #i:I
    :cond_6
    move-object v9, v12

    .line 715
    goto :goto_2
.end method

.method private getFilepathFromSettingsUri()Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v8, 0x0

    const/4 v12, 0x0

    .line 740
    const/4 v9, 0x0

    .line 741
    .local v9, filepath:Ljava/lang/String;
    const/4 v6, 0x0

    .line 742
    .local v6, c:Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 743
    .local v0, testProvider:Landroid/content/IContentProvider;
    const/4 v7, 0x0

    .line 746
    .local v7, contentUri:Landroid/net/Uri;
    :try_start_0
    iget-object v1, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 747
    .local v11, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-virtual {v11, v1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v0

    .line 748
    iget-object v1, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "value"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 759
    .end local v11           #resolver:Landroid/content/ContentResolver;
    :goto_0
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 760
    .local v8, count:I
    :cond_0
    if-lez v8, :cond_3

    .line 761
    if-nez v6, :cond_2

    .line 794
    :cond_1
    :goto_1
    return-object v12

    .line 762
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 763
    const-string/jumbo v1, "value"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 764
    .local v10, i:I
    if-ltz v10, :cond_6

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 767
    .end local v10           #i:I
    :cond_3
    :goto_2
    if-eqz v6, :cond_4

    .line 768
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 771
    :cond_4
    if-eqz v0, :cond_5

    .line 772
    iget-object v1, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 777
    :cond_5
    if-nez v9, :cond_7

    .line 778
    const-string/jumbo v12, "silent_ringtone"

    goto :goto_1

    .restart local v10       #i:I
    :cond_6
    move-object v9, v12

    .line 764
    goto :goto_2

    .line 783
    .end local v10           #i:I
    :cond_7
    const-string v1, "content://media"

    invoke-virtual {v9, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 788
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 789
    if-eqz v7, :cond_1

    .line 794
    invoke-direct {p0, v7}, Landroid/media/Ringtone;->getFilepathFromContentUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    .line 754
    .end local v8           #count:I
    :catch_0
    move-exception v1

    goto :goto_0

    .line 750
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static getTitle(Landroid/content/Context;Landroid/net/Uri;ZI)Ljava/lang/String;
    .locals 14
    .parameter "context"
    .parameter "uri"
    .parameter "followSettingsUri"
    .parameter "streamType"

    .prologue
    .line 181
    const/4 v10, 0x0

    .line 182
    .local v10, cursor:Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 184
    .local v1, res:Landroid/content/ContentResolver;
    const/4 v12, 0x0

    .line 187
    .local v12, title:Ljava/lang/String;
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-eq v2, v3, :cond_c

    .line 189
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v9

    .line 191
    .local v9, authority:Ljava/lang/String;
    const-string/jumbo v2, "settings"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 192
    if-eqz p2, :cond_0

    .line 193
    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v2

    invoke-static {p0, v2}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v8

    .line 196
    .local v8, actualUri:Landroid/net/Uri;
    const/4 v2, 0x0

    move/from16 v0, p3

    invoke-static {p0, v8, v2, v0}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;ZI)Ljava/lang/String;

    move-result-object v7

    .line 198
    .local v7, actualTitle:Ljava/lang/String;
    const v2, 0x10403ee

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v7, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 263
    .end local v7           #actualTitle:Ljava/lang/String;
    .end local v8           #actualUri:Landroid/net/Uri;
    .end local v9           #authority:Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v12, :cond_1

    .line 264
    const v2, 0x10403f1

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 266
    if-nez v12, :cond_1

    .line 267
    const-string v12, ""

    :cond_1
    move-object v2, v12

    .line 271
    :cond_2
    :goto_1
    return-object v2

    .line 202
    .restart local v9       #authority:Ljava/lang/String;
    :cond_3
    const-string v2, "drm"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 203
    sget-object v3, Landroid/media/Ringtone;->DRM_COLUMNS:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 209
    :cond_4
    :goto_2
    if-eqz v10, :cond_6

    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 210
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 211
    const/4 v2, 0x2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 250
    if-eqz v10, :cond_2

    .line 251
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 204
    :cond_5
    const-string/jumbo v2, "media"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 205
    sget-object v3, Landroid/media/Ringtone;->MEDIA_COLUMNS:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    goto :goto_2

    .line 219
    :cond_6
    const/4 v11, 0x0

    .line 221
    .local v11, defaultpath:Ljava/lang/String;
    const/4 v2, 0x2

    move/from16 v0, p3

    if-ne v0, v2, :cond_7

    .line 222
    :try_start_1
    const-string/jumbo v2, "ro.config.ringtone"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 230
    :goto_3
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "title"

    aput-object v5, v3, v4

    const-string v4, "_display_name =? AND mime_type =? "

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v11, v5, v6

    const/4 v6, 0x1

    const-string v13, "application/ogg"

    aput-object v13, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 237
    if-eqz v10, :cond_a

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    .line 240
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 241
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v12

    .line 250
    :goto_4
    if-eqz v10, :cond_0

    .line 251
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 223
    :cond_7
    const/4 v2, 0x5

    move/from16 v0, p3

    if-ne v0, v2, :cond_8

    .line 224
    :try_start_2
    const-string/jumbo v2, "ro.config.notification_sound"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    .line 225
    :cond_8
    const/4 v2, 0x4

    move/from16 v0, p3

    if-ne v0, v2, :cond_9

    .line 226
    const-string/jumbo v2, "ro.config.alarm_alert"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    .line 228
    :cond_9
    const-string/jumbo v2, "ro.config.ringtone"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    .line 244
    :cond_a
    sget-object v2, Landroid/media/Ringtone;->TAG:Ljava/lang/String;

    const-string v3, "It has not default contents !! "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const v2, 0x10403f1

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v12

    goto :goto_4

    .line 250
    .end local v11           #defaultpath:Ljava/lang/String;
    :catchall_0
    move-exception v2

    if-eqz v10, :cond_b

    .line 251
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v2

    .line 259
    .end local v9           #authority:Ljava/lang/String;
    :cond_c
    const v2, 0x10403ef

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0
.end method

.method private openMediaPlayer()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v14, 0x0

    .line 275
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 278
    :cond_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    .line 279
    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_12

    .line 281
    const/4 v12, 0x0

    .line 282
    .local v12, path:Ljava/lang/String;
    const/4 v11, 0x0

    .line 283
    .local v11, nStatus:I
    iput v1, p0, Landroid/media/Ringtone;->mDrmFile:I

    .line 284
    iput-boolean v1, p0, Landroid/media/Ringtone;->mDrmValid:Z

    .line 285
    iput-object v14, p0, Landroid/media/Ringtone;->mDrmSession:Lcom/lge/lgdrm/DrmContentSession;

    .line 286
    sget-object v0, Landroid/media/Ringtone;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "openMediaPlayer().. mUri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_DRM:Z

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getActualRingtoneUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v12

    .line 289
    if-eqz v12, :cond_1

    .line 290
    invoke-direct {p0, v12}, Landroid/media/Ringtone;->checkDRM(Ljava/lang/String;)I

    move-result v11

    .line 293
    :cond_1
    if-ne v11, v3, :cond_4

    .line 297
    invoke-direct {p0}, Landroid/media/Ringtone;->getDefaultPath()Ljava/lang/String;

    move-result-object v7

    .line 298
    .local v7, defaultPath:Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 299
    sget-boolean v0, Landroid/media/Ringtone;->LGE_DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Landroid/media/Ringtone;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkDRM set Default Ring..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_2
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v7}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 414
    .end local v7           #defaultPath:Ljava/lang/String;
    .end local v11           #nStatus:I
    .end local v12           #path:Ljava/lang/String;
    :cond_3
    :goto_0
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    iget v1, p0, Landroid/media/Ringtone;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 417
    iget-object v0, p0, Landroid/media/Ringtone;->mOperator:Ljava/lang/String;

    iget-object v1, p0, Landroid/media/Ringtone;->strTargetOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 419
    :try_start_0
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 435
    :goto_1
    return-void

    .line 303
    .restart local v11       #nStatus:I
    .restart local v12       #path:Ljava/lang/String;
    :cond_4
    if-ne v11, v4, :cond_5

    .line 304
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v12}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    .line 311
    :cond_5
    :try_start_1
    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    .line 312
    .local v13, uriPath:Ljava/lang/String;
    sget-boolean v0, Landroid/media/Ringtone;->LGE_DEBUG:Z

    if-eqz v0, :cond_6

    sget-object v0, Landroid/media/Ringtone;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "openMediaPlayer uriPath= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_6
    const-string v0, "content://media"

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 314
    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Landroid/media/Ringtone;->getFilepathFromContentUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v12

    .line 323
    :goto_2
    sget-object v0, Landroid/media/Ringtone;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "~~~31> strTargetOperator is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/Ringtone;->strTargetOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v0, p0, Landroid/media/Ringtone;->mOperator:Ljava/lang/String;

    iget-object v1, p0, Landroid/media/Ringtone;->strTargetOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 326
    new-instance v9, Landroid/drm/DrmManagerClient;

    iget-object v0, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    invoke-direct {v9, v0}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    .line 327
    .local v9, mDrmManagerClient:Landroid/drm/DrmManagerClient;
    if-nez v9, :cond_7

    .line 328
    sget-object v0, Landroid/media/Ringtone;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "~~~31> mDrmStore is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_7
    const/4 v6, 0x0

    .line 331
    .local v6, bCanHandle:Z
    const-string v0, "audio/mp4"

    invoke-virtual {v9, v12, v0}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 332
    sget-object v0, Landroid/media/Ringtone;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "~~~31> nCanHandle is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 333
    if-ne v6, v3, :cond_8

    .line 337
    const/4 v0, 0x2

    :try_start_2
    invoke-virtual {v9, v12, v0}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v10

    .line 338
    .local v10, nDrmStatus:I
    packed-switch v10, :pswitch_data_0

    .line 352
    sget-object v0, Landroid/media/Ringtone;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "~~~31> default"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 353
    const/4 v12, 0x0

    .line 361
    .end local v6           #bCanHandle:Z
    .end local v9           #mDrmManagerClient:Landroid/drm/DrmManagerClient;
    .end local v10           #nDrmStatus:I
    :cond_8
    :goto_3
    :try_start_3
    sget-boolean v0, Landroid/media/Ringtone;->LGE_DEBUG:Z

    if-eqz v0, :cond_9

    sget-object v0, Landroid/media/Ringtone;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "openMediaPlayer path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_9
    if-nez v12, :cond_f

    .line 363
    invoke-direct {p0}, Landroid/media/Ringtone;->getDefaultPath()Ljava/lang/String;

    move-result-object v7

    .line 364
    .restart local v7       #defaultPath:Ljava/lang/String;
    sget-boolean v0, Landroid/media/Ringtone;->LGE_DEBUG:Z

    if-eqz v0, :cond_a

    sget-object v0, Landroid/media/Ringtone;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "openMediaPlayer path = null!! default path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_a
    if-eqz v7, :cond_b

    .line 366
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v7}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 381
    .end local v7           #defaultPath:Ljava/lang/String;
    :cond_b
    :goto_4
    sget-boolean v0, Landroid/media/Ringtone;->LGE_DEBUG:Z

    if-eqz v0, :cond_3

    sget-object v0, Landroid/media/Ringtone;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LGE] set Ringtone as Uri.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 382
    .end local v13           #uriPath:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 383
    .local v8, ex:Ljava/io/IOException;
    invoke-direct {p0}, Landroid/media/Ringtone;->getDefaultPath()Ljava/lang/String;

    move-result-object v7

    .line 384
    .restart local v7       #defaultPath:Ljava/lang/String;
    sget-boolean v0, Landroid/media/Ringtone;->LGE_DEBUG:Z

    if-eqz v0, :cond_c

    sget-object v0, Landroid/media/Ringtone;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LGE] IOException... set Default Ring..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_c
    if-eqz v7, :cond_3

    .line 386
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v7}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 315
    .end local v7           #defaultPath:Ljava/lang/String;
    .end local v8           #ex:Ljava/io/IOException;
    .restart local v13       #uriPath:Ljava/lang/String;
    :cond_d
    :try_start_4
    const-string v0, "content://settings"

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 316
    invoke-direct {p0}, Landroid/media/Ringtone;->getFilepathFromSettingsUri()Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v12

    goto/16 :goto_2

    .line 318
    :cond_e
    move-object v12, v13

    goto/16 :goto_2

    .line 340
    .restart local v6       #bCanHandle:Z
    .restart local v9       #mDrmManagerClient:Landroid/drm/DrmManagerClient;
    .restart local v10       #nDrmStatus:I
    :pswitch_0
    :try_start_5
    sget-object v0, Landroid/media/Ringtone;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "~~~31>  mDrmStore.RightsStatus.RIGHTS_EXPIRED "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 343
    :pswitch_1
    sget-object v0, Landroid/media/Ringtone;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "~~~31>  mDrmStore.RightsStatus.RIGHTS_INVALID"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 346
    :pswitch_2
    sget-object v0, Landroid/media/Ringtone;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "~~~31>  mDrmStore.RightsStatus.RIGHTS_NOT_ACQUIRED "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 349
    :pswitch_3
    sget-object v0, Landroid/media/Ringtone;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "~~~31>  mDrmStore.RightsStatus.RIGHTS_VALID"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_3

    .line 355
    .end local v10           #nDrmStatus:I
    :catch_1
    move-exception v8

    .line 356
    .local v8, ex:Ljava/lang/Exception;
    :try_start_6
    sget-object v0, Landroid/media/Ringtone;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception is occured"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 368
    .end local v6           #bCanHandle:Z
    .end local v8           #ex:Ljava/lang/Exception;
    .end local v9           #mDrmManagerClient:Landroid/drm/DrmManagerClient;
    :cond_f
    const-string/jumbo v0, "silent_ringtone"

    if-ne v12, v0, :cond_10

    .line 369
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_4

    .line 372
    :cond_10
    :try_start_7
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/media/Ringtone;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_4

    .line 373
    :catch_2
    move-exception v8

    .line 374
    .local v8, ex:Ljava/io/IOException;
    :try_start_8
    invoke-direct {p0}, Landroid/media/Ringtone;->getDefaultPath()Ljava/lang/String;

    move-result-object v7

    .line 375
    .restart local v7       #defaultPath:Ljava/lang/String;
    sget-boolean v0, Landroid/media/Ringtone;->LGE_DEBUG:Z

    if-eqz v0, :cond_11

    sget-object v0, Landroid/media/Ringtone;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LGE] openMediaPlayer set Default Ring..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_11
    if-eqz v7, :cond_b

    .line 377
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v7}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_4

    .line 391
    .end local v7           #defaultPath:Ljava/lang/String;
    .end local v8           #ex:Ljava/io/IOException;
    .end local v11           #nStatus:I
    .end local v12           #path:Ljava/lang/String;
    .end local v13           #uriPath:Ljava/lang/String;
    :cond_12
    iget-object v0, p0, Landroid/media/Ringtone;->mFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_13

    .line 392
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/media/Ringtone;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    goto/16 :goto_0

    .line 393
    :cond_13
    iget-object v0, p0, Landroid/media/Ringtone;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_15

    .line 397
    iget-object v0, p0, Landroid/media/Ringtone;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_14

    .line 398
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/media/Ringtone;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    goto/16 :goto_0

    .line 400
    :cond_14
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/media/Ringtone;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    iget-object v2, p0, Landroid/media/Ringtone;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    iget-object v4, p0, Landroid/media/Ringtone;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    goto/16 :goto_0

    .line 407
    :cond_15
    iget-object v0, p0, Landroid/media/Ringtone;->mOperator:Ljava/lang/String;

    iget-object v1, p0, Landroid/media/Ringtone;->strTargetOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 409
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Landroid/media/Ringtone;->getDefaultPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 411
    :cond_16
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No data source set."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 420
    :catch_3
    move-exception v8

    .line 421
    .local v8, ex:Ljava/lang/Exception;
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 422
    iput-object v14, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    .line 423
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    .line 424
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Landroid/media/Ringtone;->getDefaultPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 425
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    iget v1, p0, Landroid/media/Ringtone;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 426
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    goto/16 :goto_1

    .line 430
    .end local v8           #ex:Ljava/lang/Exception;
    :cond_17
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    goto/16 :goto_1

    .line 338
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private setDataSourceFromResource(Landroid/content/res/Resources;Landroid/media/MediaPlayer;I)V
    .locals 7
    .parameter "resources"
    .parameter "player"
    .parameter "res"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 587
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 588
    .local v6, afd:Landroid/content/res/AssetFileDescriptor;
    if-eqz v6, :cond_0

    .line 589
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 591
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 593
    :cond_0
    return-void
.end method


# virtual methods
.method public getProperty(I)I
    .locals 4
    .parameter "type"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 600
    if-ne p1, v0, :cond_2

    .line 602
    iget v2, p0, Landroid/media/Ringtone;->mDrmFile:I

    if-nez v2, :cond_1

    .line 615
    :cond_0
    :goto_0
    return v0

    .line 605
    :cond_1
    iget-boolean v2, p0, Landroid/media/Ringtone;->mDrmValid:Z

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 606
    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_4

    .line 608
    iget v2, p0, Landroid/media/Ringtone;->mDrmFile:I

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/media/Ringtone;->mDrmFile:I

    const/16 v3, 0x31

    if-eq v2, v3, :cond_3

    iget v2, p0, Landroid/media/Ringtone;->mDrmFile:I

    const/16 v3, 0x501

    if-eq v2, v3, :cond_3

    iget v2, p0, Landroid/media/Ringtone;->mDrmFile:I

    const/16 v3, 0x1800

    if-ne v2, v3, :cond_0

    :cond_3
    move v0, v1

    .line 611
    goto :goto_0

    :cond_4
    move v0, v1

    .line 615
    goto :goto_0
.end method

.method public getStreamType()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Landroid/media/Ringtone;->mStreamType:I

    return v0
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 170
    iget-object v0, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    .line 172
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    const/4 v1, 0x1

    iget v2, p0, Landroid/media/Ringtone;->mStreamType:I

    invoke-static {p1, v0, v1, v2}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;ZI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method open(Landroid/content/res/AssetFileDescriptor;)V
    .locals 0
    .parameter "fd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 478
    iput-object p1, p0, Landroid/media/Ringtone;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 479
    invoke-direct {p0}, Landroid/media/Ringtone;->openMediaPlayer()V

    .line 480
    return-void
.end method

.method open(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 483
    iput-object p1, p0, Landroid/media/Ringtone;->mUri:Landroid/net/Uri;

    .line 484
    invoke-direct {p0}, Landroid/media/Ringtone;->openMediaPlayer()V

    .line 485
    return-void
.end method

.method open(Ljava/io/FileDescriptor;)V
    .locals 0
    .parameter "fd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 473
    iput-object p1, p0, Landroid/media/Ringtone;->mFileDescriptor:Ljava/io/FileDescriptor;

    .line 474
    invoke-direct {p0}, Landroid/media/Ringtone;->openMediaPlayer()V

    .line 475
    return-void
.end method

.method public play()V
    .locals 1

    .prologue
    .line 493
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/Ringtone;->play(Z)V

    .line 494
    return-void
.end method

.method public play(Z)V
    .locals 6
    .parameter "loop"

    .prologue
    const/4 v4, 0x2

    .line 503
    sget-object v1, Landroid/media/Ringtone;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DK] paly( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )...."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iget-object v1, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Landroid/media/Ringtone;->mStreamType:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/media/AudioManager;->checkPlayConditions(IZ)Z

    move-result v1

    if-nez v1, :cond_1

    .line 505
    sget-object v1, Landroid/media/Ringtone;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "play().. checkPlayConditions is false so ringtone do not play2."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_0
    :goto_0
    return-void

    .line 509
    :cond_1
    iget-object v1, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    if-nez v1, :cond_2

    .line 511
    :try_start_0
    invoke-direct {p0}, Landroid/media/Ringtone;->openMediaPlayer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    :cond_2
    :goto_1
    iget-object v1, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 525
    iget-object v1, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Landroid/media/Ringtone;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-nez v1, :cond_5

    iget v1, p0, Landroid/media/Ringtone;->mStreamType:I

    iget-object v2, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_5

    iget v1, p0, Landroid/media/Ringtone;->mStreamType:I

    iget-object v2, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x6

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    iget v1, p0, Landroid/media/Ringtone;->mStreamType:I

    iget-object v2, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    if-eq v1, v4, :cond_4

    iget v1, p0, Landroid/media/Ringtone;->mStreamType:I

    iget-object v2, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    :cond_4
    iget-object v1, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    iget-object v2, p0, Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;

    if-eq v1, v4, :cond_0

    .line 533
    :cond_5
    iget-object v1, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    iget-object v2, p0, Landroid/media/Ringtone;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 535
    iget-object v1, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 536
    iget-object v1, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 538
    iget-boolean v1, p0, Landroid/media/Ringtone;->mDrmValid:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/media/Ringtone;->mDrmConsume:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/Ringtone;->mDrmSession:Lcom/lge/lgdrm/DrmContentSession;

    if-eqz v1, :cond_0

    .line 540
    iget-object v1, p0, Landroid/media/Ringtone;->mDrmSession:Lcom/lge/lgdrm/DrmContentSession;

    iget-object v2, p0, Landroid/media/Ringtone;->mDrmSession:Lcom/lge/lgdrm/DrmContentSession;

    invoke-virtual {v2}, Lcom/lge/lgdrm/DrmContentSession;->getDrmTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/lge/lgdrm/DrmContentSession;->consumeRight(JJ)I

    goto :goto_0

    .line 512
    :catch_0
    move-exception v0

    .line 513
    .local v0, ex:Ljava/lang/Exception;
    sget-object v1, Landroid/media/Ringtone;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "play() caught "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 514
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    goto/16 :goto_1
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 801
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 802
    sget-object v0, Landroid/media/Ringtone;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setOnCompletionListener!!!!!....."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 805
    :cond_0
    return-void
.end method

.method public setProperty(Z)V
    .locals 1
    .parameter "consume"

    .prologue
    .line 623
    iget-boolean v0, p0, Landroid/media/Ringtone;->mDrmValid:Z

    if-eqz v0, :cond_0

    .line 624
    iput-boolean p1, p0, Landroid/media/Ringtone;->mDrmConsume:Z

    .line 626
    :cond_0
    return-void
.end method

.method public setStreamType(I)V
    .locals 3
    .parameter "streamType"

    .prologue
    .line 139
    iput p1, p0, Landroid/media/Ringtone;->mStreamType:I

    .line 141
    iget-object v1, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 147
    :try_start_0
    invoke-direct {p0}, Landroid/media/Ringtone;->openMediaPlayer()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, e:Ljava/io/IOException;
    sget-object v1, Landroid/media/Ringtone;->TAG:Ljava/lang/String;

    const-string v2, "Couldn\'t set the stream type"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 581
    iput-object p1, p0, Landroid/media/Ringtone;->mTitle:Ljava/lang/String;

    .line 582
    return-void
.end method

.method public stop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 551
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 554
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 556
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 557
    iget-object v0, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 558
    iput-object v3, p0, Landroid/media/Ringtone;->mAudio:Landroid/media/MediaPlayer;

    .line 560
    iget-boolean v0, p0, Landroid/media/Ringtone;->mDrmValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/Ringtone;->mDrmSession:Lcom/lge/lgdrm/DrmContentSession;

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Landroid/media/Ringtone;->mDrmSession:Lcom/lge/lgdrm/DrmContentSession;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/lgdrm/DrmContentSession;->setDecryptionInfo(Z)I

    .line 563
    iput v2, p0, Landroid/media/Ringtone;->mDrmFile:I

    .line 564
    iput-boolean v2, p0, Landroid/media/Ringtone;->mDrmValid:Z

    .line 565
    iput-object v3, p0, Landroid/media/Ringtone;->mDrmSession:Lcom/lge/lgdrm/DrmContentSession;

    .line 569
    :cond_0
    return-void
.end method
