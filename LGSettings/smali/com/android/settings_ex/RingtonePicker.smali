.class public Lcom/android/settings_ex/RingtonePicker;
.super Landroid/app/ListActivity;
.source "RingtonePicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DRM_COLUMNS:[Ljava/lang/String;

.field private static final INTERNAL_COLUMNS:[Ljava/lang/String;

.field private static final MEDIA_COLUMNS:[Ljava/lang/String;


# instance fields
.field LAUNCHED_REQUEST_CODE:I

.field private final RIGHTS_EXPIRED:I

.field private final RIGHTS_INVALID:I

.field private final RIGHTS_NOT_ACQUIRED:I

.field private final RIGHTS_VALID:I

.field default_ringtone_position:I

.field external_ringtone_position:I

.field internal_ringtone_position:I

.field isDualSim:Z

.field items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/RingtoneItem;",
            ">;"
        }
    .end annotation
.end field

.field private listView:Landroid/widget/ListView;

.field private mAudio:Landroid/media/MediaPlayer;

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBuild:Landroid/os/Build;

.field mCancelButton:Landroid/widget/Button;

.field private mClickedPos:I

.field mContext:Landroid/content/Context;

.field private mDefaultRingtone:Landroid/media/Ringtone;

.field private mDefaultRingtonePos:I

.field private mDevice:Ljava/lang/String;

.field private mDrmJob:Z

.field private mDrmRingtone:Z

.field private mDrmTask:Ljava/lang/Runnable;

.field private mExistingUri:Landroid/net/Uri;

.field private mExternalCursor:Landroid/database/Cursor;

.field private mFilterColumns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHasDefaultItem:Z

.field private mHasSilentItem:Z

.field private mIncludeDrm:Z

.field private mInternalCursor:Landroid/database/Cursor;

.field private mMediaCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field mOKButton:Landroid/widget/Button;

.field private mOperator:Ljava/lang/String;

.field mRingtoneManager:Landroid/media/RingtoneManager;

.field private mSampleRingtonePos:I

.field private mSampleRingtoneUri:Landroid/net/Uri;

.field private mSelected:Z

.field private mSilentPos:I

.field private mStaticItemCount:I

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mUriForDefaultItem:Landroid/net/Uri;

.field private mediahandler:Landroid/os/Handler;

.field position_uri:Landroid/net/Uri;

.field private ringtone:Landroid/media/Ringtone;

.field private strTargetOperator:Ljava/lang/String;

.field types:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 154
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "title_key"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/settings_ex/RingtonePicker;->INTERNAL_COLUMNS:[Ljava/lang/String;

    .line 159
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "title_key"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/settings_ex/RingtonePicker;->MEDIA_COLUMNS:[Ljava/lang/String;

    .line 165
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "title AS title_key"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/settings_ex/RingtonePicker;->DRM_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 90
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 112
    new-instance v0, Landroid/os/Build;

    invoke-direct {v0}, Landroid/os/Build;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->mBuild:Landroid/os/Build;

    .line 114
    const-string v0, "l_dcm"

    iput-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->mDevice:Ljava/lang/String;

    .line 115
    const-string v0, "DCM"

    iput-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->mOperator:Ljava/lang/String;

    .line 116
    const-string v0, "ro.build.target_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->strTargetOperator:Ljava/lang/String;

    .line 121
    iput v2, p0, Lcom/android/settings_ex/RingtonePicker;->RIGHTS_VALID:I

    .line 122
    iput v3, p0, Lcom/android/settings_ex/RingtonePicker;->RIGHTS_INVALID:I

    .line 123
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings_ex/RingtonePicker;->RIGHTS_EXPIRED:I

    .line 124
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings_ex/RingtonePicker;->RIGHTS_NOT_ACQUIRED:I

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->mFilterColumns:Ljava/util/List;

    .line 171
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/settings_ex/RingtonePicker;->LAUNCHED_REQUEST_CODE:I

    .line 175
    iput-object v4, p0, Lcom/android/settings_ex/RingtonePicker;->mSampleRingtoneUri:Landroid/net/Uri;

    .line 207
    iput-boolean v2, p0, Lcom/android/settings_ex/RingtonePicker;->mSelected:Z

    .line 208
    iput-boolean v3, p0, Lcom/android/settings_ex/RingtonePicker;->mDrmRingtone:Z

    .line 209
    iput-boolean v2, p0, Lcom/android/settings_ex/RingtonePicker;->mDrmJob:Z

    .line 210
    new-instance v0, Lcom/android/settings_ex/RingtonePicker$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/RingtonePicker$1;-><init>(Lcom/android/settings_ex/RingtonePicker;)V

    iput-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->mDrmTask:Ljava/lang/Runnable;

    .line 231
    iput v1, p0, Lcom/android/settings_ex/RingtonePicker;->mClickedPos:I

    .line 234
    iput v1, p0, Lcom/android/settings_ex/RingtonePicker;->mDefaultRingtonePos:I

    .line 237
    iput v1, p0, Lcom/android/settings_ex/RingtonePicker;->mSilentPos:I

    .line 243
    iput v1, p0, Lcom/android/settings_ex/RingtonePicker;->mSampleRingtonePos:I

    .line 247
    iput v1, p0, Lcom/android/settings_ex/RingtonePicker;->types:I

    .line 273
    iput-object v4, p0, Lcom/android/settings_ex/RingtonePicker;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 1551
    new-instance v0, Lcom/android/settings_ex/RingtonePicker$4;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/RingtonePicker$4;-><init>(Lcom/android/settings_ex/RingtonePicker;)V

    iput-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->mMediaCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 1558
    new-instance v0, Lcom/android/settings_ex/RingtonePicker$5;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/RingtonePicker$5;-><init>(Lcom/android/settings_ex/RingtonePicker;)V

    iput-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 1575
    new-instance v0, Lcom/android/settings_ex/RingtonePicker$6;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/RingtonePicker$6;-><init>(Lcom/android/settings_ex/RingtonePicker;)V

    iput-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->mediahandler:Landroid/os/Handler;

    .line 1880
    new-instance v0, Lcom/android/settings_ex/RingtonePicker$9;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/RingtonePicker$9;-><init>(Lcom/android/settings_ex/RingtonePicker;)V

    iput-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method private CheckDrmExpired(Ljava/lang/String;)I
    .locals 9
    .parameter "filePath"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v5, -0x1

    .line 822
    const/4 v2, -0x1

    .line 823
    .local v2, drmContentType:I
    const/4 v3, -0x1

    .line 825
    .local v3, drmJudge:I
    :try_start_0
    invoke-static {p1, p0}, Lcom/lge/lgdrm/DrmManager;->createContentSession(Ljava/lang/String;Landroid/content/Context;)Lcom/lge/lgdrm/DrmContentSession;

    move-result-object v1

    .line 827
    .local v1, drmContentSession:Lcom/lge/lgdrm/DrmContentSession;
    if-nez v1, :cond_1

    .line 859
    .end local v1           #drmContentSession:Lcom/lge/lgdrm/DrmContentSession;
    :cond_0
    :goto_0
    return v5

    .line 833
    .restart local v1       #drmContentSession:Lcom/lge/lgdrm/DrmContentSession;
    :cond_1
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lcom/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Lcom/lge/lgdrm/DrmContent;

    move-result-object v0

    .line 834
    .local v0, drmContent:Lcom/lge/lgdrm/DrmContent;
    if-eqz v0, :cond_0

    .line 839
    invoke-virtual {v0}, Lcom/lge/lgdrm/DrmContent;->getContentType()I

    move-result v2

    .line 840
    if-ne v2, v7, :cond_2

    .line 842
    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Lcom/lge/lgdrm/DrmContentSession;->judgeRight(IZ)I

    move-result v3

    :goto_1
    move v5, v3

    .line 851
    goto :goto_0

    .line 844
    :cond_2
    if-eq v2, v8, :cond_3

    const/4 v6, 0x3

    if-ne v2, v6, :cond_0

    .line 846
    :cond_3
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Lcom/lge/lgdrm/DrmContentSession;->judgeRight(IZ)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/lge/lgdrm/DrmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    goto :goto_1

    .line 853
    .end local v0           #drmContent:Lcom/lge/lgdrm/DrmContent;
    .end local v1           #drmContentSession:Lcom/lge/lgdrm/DrmContentSession;
    :catch_0
    move-exception v4

    .line 854
    .local v4, e:Ljava/lang/SecurityException;
    invoke-virtual {v4}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 857
    .end local v4           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v4

    .line 858
    .local v4, e:Lcom/lge/lgdrm/DrmException;
    invoke-virtual {v4}, Lcom/lge/lgdrm/DrmException;->printStackTrace()V

    goto :goto_0
.end method

.method private GetFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "path"

    .prologue
    .line 577
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 578
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 579
    .local v2, scheme:Ljava/lang/String;
    const/4 v0, 0x0

    .line 581
    .local v0, filename:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v4, "file"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 582
    :cond_0
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 599
    :cond_1
    :goto_0
    const-string v4, "RingToneTest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MultiPlayer] setDataSource : filename = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    return-object v0

    .line 583
    :cond_2
    if-eqz v2, :cond_1

    const-string v4, "content"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 585
    const-string v4, "content://settings"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 586
    invoke-direct {p0, v3}, Lcom/android/settings_ex/RingtonePicker;->getFilepathFromSettingUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 587
    .local v1, fileuri:Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 588
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 590
    if-eqz v2, :cond_3

    const-string v4, "file"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 591
    :cond_3
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 592
    :cond_4
    if-eqz v2, :cond_1

    const-string v4, "content"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 593
    invoke-direct {p0, v3}, Lcom/android/settings_ex/RingtonePicker;->getFilepathFromContentUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 596
    .end local v1           #fileuri:Ljava/lang/String;
    :cond_5
    invoke-direct {p0, v3}, Lcom/android/settings_ex/RingtonePicker;->getFilepathFromContentUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings_ex/RingtonePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/settings_ex/RingtonePicker;->stopAnyPlayingRingtone()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/RingtonePicker;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->mediahandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings_ex/RingtonePicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/settings_ex/RingtonePicker;->mDrmJob:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/RingtonePicker;)Landroid/media/Ringtone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->ringtone:Landroid/media/Ringtone;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/RingtonePicker;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings_ex/RingtonePicker;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/RingtonePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/settings_ex/RingtonePicker;->mDrmRingtone:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings_ex/RingtonePicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/settings_ex/RingtonePicker;->mDrmRingtone:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings_ex/RingtonePicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/android/settings_ex/RingtonePicker;->mClickedPos:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/RingtonePicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/android/settings_ex/RingtonePicker;->mDefaultRingtonePos:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/RingtonePicker;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->mUriForDefaultItem:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/RingtonePicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/android/settings_ex/RingtonePicker;->mSilentPos:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/RingtonePicker;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/settings_ex/RingtonePicker;->GetFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/RingtonePicker;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/settings_ex/RingtonePicker;->checkDRM(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings_ex/RingtonePicker;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/settings_ex/RingtonePicker;->getURI()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private appIsEnabled()Z
    .locals 3

    .prologue
    .line 1649
    invoke-virtual {p0}, Lcom/android/settings_ex/RingtonePicker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1653
    :try_start_0
    const-string v1, "com.lge.music"

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1657
    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    :goto_0
    return v0

    .line 1654
    :catch_0
    move-exception v0

    .line 1655
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkDRM(Ljava/lang/String;)I
    .locals 11
    .parameter "filename"

    .prologue
    const/4 v9, 0x2

    const/4 v10, 0x4

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 531
    if-nez p1, :cond_1

    .line 561
    :cond_0
    :goto_0
    return v4

    .line 535
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 536
    .local v6, length:I
    add-int/lit8 v2, v6, -0x3

    const-string v3, ".dm"

    const/4 v5, 0x3

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_2

    add-int/lit8 v2, v6, -0x4

    const-string v3, ".dcf"

    move-object v0, p1

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_2

    add-int/lit8 v2, v6, -0x4

    const-string v3, ".odf"

    move-object v0, p1

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_2

    add-int/lit8 v2, v6, -0x4

    const-string v3, ".o4a"

    move-object v0, p1

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_2

    add-int/lit8 v2, v6, -0x4

    const-string v3, ".o4v"

    move-object v0, p1

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    move v0, v1

    :goto_1
    if-eqz v0, :cond_0

    .line 544
    invoke-static {p1}, Lcom/lge/lgdrm/DrmManager;->isDRM(Ljava/lang/String;)I

    move-result v7

    .line 545
    .local v7, mDrmFile:I
    const/16 v0, 0x10

    if-lt v7, v0, :cond_3

    const/16 v0, 0x3000

    if-le v7, v0, :cond_5

    .line 546
    :cond_3
    const/4 v7, 0x0

    .line 547
    goto :goto_0

    .end local v7           #mDrmFile:I
    :cond_4
    move v0, v4

    .line 536
    goto :goto_1

    .line 551
    .restart local v7       #mDrmFile:I
    :cond_5
    :try_start_0
    invoke-static {p1, p0}, Lcom/lge/lgdrm/DrmManager;->createContentSession(Ljava/lang/String;Landroid/content/Context;)Lcom/lge/lgdrm/DrmContentSession;

    move-result-object v8

    .line 553
    .local v8, session:Lcom/lge/lgdrm/DrmContentSession;
    const/4 v0, 0x2

    invoke-virtual {v8, v0}, Lcom/lge/lgdrm/DrmContentSession;->isActionSupported(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_6

    move v4, v1

    .line 554
    goto :goto_0

    :cond_6
    move v4, v9

    .line 557
    goto :goto_0

    .line 558
    .end local v8           #session:Lcom/lge/lgdrm/DrmContentSession;
    :catch_0
    move-exception v0

    move v4, v1

    .line 561
    goto :goto_0
.end method

.method private confirmDialog()V
    .locals 3

    .prologue
    .line 1662
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08094f

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/RingtonePicker;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08044e

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/RingtonePicker;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/android/settings_ex/RingtonePicker$8;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/RingtonePicker$8;-><init>(Lcom/android/settings_ex/RingtonePicker;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08044f

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/RingtonePicker;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/android/settings_ex/RingtonePicker$7;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/RingtonePicker$7;-><init>(Lcom/android/settings_ex/RingtonePicker;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0809f1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/RingtonePicker;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1686
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1687
    return-void
.end method

.method private static constructBooleanTrueWhereClause(Ljava/util/List;Z)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter "includeDrm"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1062
    .local p0, columns:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 1063
    const/4 v2, 0x0

    .line 1087
    :goto_0
    return-object v2

    .line 1065
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1066
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1068
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_1

    .line 1069
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=1 or "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1068
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1072
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 1074
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1077
    :cond_2
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1079
    if-nez p1, :cond_3

    .line 1082
    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1083
    const-string v2, "is_drm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1084
    const-string v2, "=0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1087
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getDefaultPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1017
    const/4 v0, 0x3

    .line 1018
    .local v0, mStreamType:I
    iget-object v1, p0, Lcom/android/settings_ex/RingtonePicker;->mRingtoneManager:Landroid/media/RingtoneManager;

    if-eqz v1, :cond_0

    .line 1019
    iget-object v1, p0, Lcom/android/settings_ex/RingtonePicker;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v1}, Landroid/media/RingtoneManager;->inferStreamType()I

    move-result v0

    .line 1020
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 1032
    :pswitch_0
    const-string v1, "ro.config.ringtone"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 1023
    :pswitch_1
    const-string v1, "ro.config.ringtone"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1026
    :pswitch_2
    const-string v1, "ro.config.notification_sound"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1029
    :pswitch_3
    const-string v1, "ro.config.alarm_alert"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1020
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private getDrmRingtones()Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1041
    sget-object v1, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/settings_ex/RingtonePicker;->DRM_COLUMNS:[Ljava/lang/String;

    const-string v5, "title"

    move-object v0, p0

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lcom/android/settings_ex/RingtonePicker;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getFilepathFromContentUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 13
    .parameter "uri"

    .prologue
    const/4 v12, 0x1

    const/4 v7, 0x0

    const/4 v11, 0x0

    .line 637
    const/4 v9, 0x0

    .line 638
    .local v9, filepath:Ljava/lang/String;
    const/4 v6, 0x0

    .line 641
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/RingtonePicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 642
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 646
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 647
    .local v7, count:I
    :cond_0
    if-eq v7, v12, :cond_2

    .line 650
    if-nez v7, :cond_2

    .line 661
    if-eqz v6, :cond_1

    .line 662
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 670
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v7           #count:I
    :cond_1
    :goto_0
    return-object v11

    .line 654
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    .restart local v7       #count:I
    :cond_2
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 655
    const-string v1, "_data"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 656
    .local v10, i:I
    if-ltz v10, :cond_4

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    .line 661
    :goto_1
    if-eqz v6, :cond_3

    .line 662
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 665
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v7           #count:I
    .end local v10           #i:I
    :cond_3
    :goto_2
    if-eqz v9, :cond_1

    .line 668
    const-string v1, "RingToneTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFilepathFromContentUri Media _data result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v9

    .line 670
    goto :goto_0

    .restart local v0       #resolver:Landroid/content/ContentResolver;
    .restart local v7       #count:I
    .restart local v10       #i:I
    :cond_4
    move-object v9, v11

    .line 656
    goto :goto_1

    .line 658
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v7           #count:I
    .end local v10           #i:I
    :catch_0
    move-exception v8

    .line 659
    .local v8, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "RingtonePicker"

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 661
    if-eqz v6, :cond_3

    .line 662
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 661
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_5

    .line 662
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1
.end method

.method private getFilepathFromSettingUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 13
    .parameter "uri"

    .prologue
    const/4 v12, 0x1

    const/4 v7, 0x0

    const/4 v11, 0x0

    .line 605
    const/4 v9, 0x0

    .line 606
    .local v9, filepath:Ljava/lang/String;
    const/4 v6, 0x0

    .line 609
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/RingtonePicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 610
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "value"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 612
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 613
    .local v7, count:I
    :cond_0
    if-eq v7, v12, :cond_2

    .line 615
    if-nez v7, :cond_2

    .line 625
    if-eqz v6, :cond_1

    .line 626
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 633
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v7           #count:I
    :cond_1
    :goto_0
    return-object v11

    .line 619
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    .restart local v7       #count:I
    :cond_2
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 620
    const-string v1, "value"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 621
    .local v10, i:I
    if-ltz v10, :cond_4

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    .line 625
    :goto_1
    if-eqz v6, :cond_3

    .line 626
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 628
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v7           #count:I
    .end local v10           #i:I
    :cond_3
    :goto_2
    if-eqz v9, :cond_1

    .line 631
    const-string v1, "RingToneTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFilepathFromSettingUri system value result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v9

    .line 633
    goto :goto_0

    .restart local v0       #resolver:Landroid/content/ContentResolver;
    .restart local v7       #count:I
    .restart local v10       #i:I
    :cond_4
    move-object v9, v11

    .line 621
    goto :goto_1

    .line 622
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v7           #count:I
    .end local v10           #i:I
    :catch_0
    move-exception v8

    .line 623
    .local v8, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "RingtonePicker"

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 625
    if-eqz v6, :cond_3

    .line 626
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 625
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_5

    .line 626
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1
.end method

.method private getListPosition(I)I
    .locals 1
    .parameter "ringtoneManagerPos"

    .prologue
    .line 567
    if-gez p1, :cond_0

    .line 570
    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    iget v0, p0, Lcom/android/settings_ex/RingtonePicker;->mStaticItemCount:I

    add-int/2addr p1, v0

    goto :goto_0
.end method

.method private getMediaRingtones()Landroid/database/Cursor;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 1047
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    .line 1049
    .local v6, status:Ljava/lang/String;
    const-string v0, "mounted"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mounted_ro"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/settings_ex/RingtonePicker;->MEDIA_COLUMNS:[Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->mFilterColumns:Ljava/util/List;

    iget-boolean v3, p0, Lcom/android/settings_ex/RingtonePicker;->mIncludeDrm:Z

    invoke-static {v0, v3}, Lcom/android/settings_ex/RingtonePicker;->constructBooleanTrueWhereClause(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v3

    const-string v5, "title_key"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/settings_ex/RingtonePicker;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    :cond_1
    return-object v4
.end method

.method private getRingtonePosition(Landroid/net/Uri;Landroid/database/Cursor;)I
    .locals 9
    .parameter "ringtoneUri"
    .parameter "c"

    .prologue
    const/4 v6, -0x1

    .line 1394
    if-nez p1, :cond_1

    move v3, v6

    .line 1426
    :cond_0
    :goto_0
    return v3

    .line 1398
    :cond_1
    if-nez p2, :cond_2

    move v3, v6

    .line 1399
    goto :goto_0

    .line 1400
    :cond_2
    move-object v1, p2

    .line 1401
    .local v1, cursor:Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 1403
    .local v2, cursorCount:I
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-nez v7, :cond_3

    move v3, v6

    .line 1404
    goto :goto_0

    .line 1408
    :cond_3
    const/4 v0, 0x0

    .line 1409
    .local v0, currentUri:Landroid/net/Uri;
    const/4 v4, 0x0

    .line 1410
    .local v4, previousUriString:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_6

    .line 1411
    const/4 v7, 0x2

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1412
    .local v5, uriString:Ljava/lang/String;
    if-eqz v0, :cond_4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1413
    :cond_4
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1416
    :cond_5
    const/4 v7, 0x0

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v0, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1421
    const/4 v7, 0x1

    invoke-interface {v1, v7}, Landroid/database/Cursor;->move(I)Z

    .line 1423
    move-object v4, v5

    .line 1410
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v5           #uriString:Ljava/lang/String;
    :cond_6
    move v3, v6

    .line 1426
    goto :goto_0
.end method

.method private getURI()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 1383
    const-string v0, "RingtonePicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActualDefaultRingtoneUri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/RingtonePicker;->mRingtoneManager:Landroid/media/RingtoneManager;

    const/4 v2, 0x1

    invoke-static {p0, v2}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget v0, p0, Lcom/android/settings_ex/RingtonePicker;->types:I

    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 1390
    return-object v0
.end method

.method private static getUriFromCursor(Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 3
    .parameter "cursor"

    .prologue
    .line 1157
    const/4 v0, 0x2

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static getValidRingtoneUriFromCursorAndClose(Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 2
    .parameter "cursor"

    .prologue
    .line 1142
    if-eqz p0, :cond_1

    .line 1143
    const/4 v0, 0x0

    .line 1145
    .local v0, uri:Landroid/net/Uri;
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1146
    invoke-static {p0}, Lcom/android/settings_ex/RingtonePicker;->getUriFromCursor(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v0

    .line 1148
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1152
    .end local v0           #uri:Landroid/net/Uri;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initRingtoneList()V
    .locals 19

    .prologue
    .line 881
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/RingtonePicker;->items:Ljava/util/ArrayList;

    .line 883
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/settings_ex/RingtonePicker;->INTERNAL_COLUMNS:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/RingtonePicker;->mFilterColumns:Ljava/util/List;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/settings_ex/RingtonePicker;->mIncludeDrm:Z

    invoke-static {v2, v5}, Lcom/android/settings_ex/RingtonePicker;->constructBooleanTrueWhereClause(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "title_key"

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/android/settings_ex/RingtonePicker;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/RingtonePicker;->mInternalCursor:Landroid/database/Cursor;

    .line 899
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/RingtonePicker;->mIncludeDrm:Z

    if-eqz v2, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/RingtonePicker;->getDrmRingtones()Landroid/database/Cursor;

    move-result-object v9

    .line 900
    .local v9, drmCursor:Landroid/database/Cursor;
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/RingtonePicker;->getMediaRingtones()Landroid/database/Cursor;

    move-result-object v13

    .line 902
    .local v13, mediaCursor:Landroid/database/Cursor;
    new-instance v2, Lcom/android/internal/database/SortCursor;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/database/Cursor;

    const/4 v4, 0x0

    aput-object v9, v3, v4

    const/4 v4, 0x1

    aput-object v13, v3, v4

    const-string v4, "title_key"

    invoke-direct {v2, v3, v4}, Lcom/android/internal/database/SortCursor;-><init>([Landroid/database/Cursor;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/RingtonePicker;->mExternalCursor:Landroid/database/Cursor;

    .line 907
    const-string v14, ""

    .line 908
    .local v14, my_ring_category:Ljava/lang/String;
    const-string v12, ""

    .line 909
    .local v12, lg_ring_category:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/RingtonePicker;->types:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/RingtonePicker;->types:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/RingtonePicker;->types:I

    const/16 v3, 0x20

    if-ne v2, v3, :cond_3

    .line 910
    :cond_0
    const v2, 0x7f08089b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/RingtonePicker;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 911
    const v2, 0x7f08089c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/RingtonePicker;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 920
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/RingtonePicker;->mExternalCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_5

    .line 921
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/RingtonePicker;->mExternalCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_5

    .line 922
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/RingtonePicker;->mExternalCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 923
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/RingtonePicker;->items:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/settings_ex/RingtoneEntryAdapter$RingtoneSectionItem;

    invoke-direct {v3, v14}, Lcom/android/settings_ex/RingtoneEntryAdapter$RingtoneSectionItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 926
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/RingtonePicker;->mStaticItemCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings_ex/RingtonePicker;->mStaticItemCount:I

    .line 928
    const/4 v10, 0x0

    .local v10, i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/RingtonePicker;->mExternalCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v10, v2, :cond_5

    .line 929
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/RingtonePicker;->items:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/settings_ex/RingtoneEntryAdapter$RingtoneEntryItem;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/RingtonePicker;->mExternalCursor:Landroid/database/Cursor;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings_ex/RingtonePicker;->mExternalCursor:Landroid/database/Cursor;

    const/4 v7, 0x2

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings_ex/RingtonePicker;->mExternalCursor:Landroid/database/Cursor;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/settings_ex/RingtoneEntryAdapter$RingtoneEntryItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 932
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/RingtonePicker;->mExternalCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 928
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 899
    .end local v9           #drmCursor:Landroid/database/Cursor;
    .end local v10           #i:I
    .end local v12           #lg_ring_category:Ljava/lang/String;
    .end local v13           #mediaCursor:Landroid/database/Cursor;
    .end local v14           #my_ring_category:Ljava/lang/String;
    :cond_2
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 914
    .restart local v9       #drmCursor:Landroid/database/Cursor;
    .restart local v12       #lg_ring_category:Ljava/lang/String;
    .restart local v13       #mediaCursor:Landroid/database/Cursor;
    .restart local v14       #my_ring_category:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/RingtonePicker;->types:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/RingtonePicker;->types:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_1

    .line 915
    :cond_4
    const v2, 0x7f08089d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/RingtonePicker;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 916
    const v2, 0x7f08089e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/RingtonePicker;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 938
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/RingtonePicker;->items:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/settings_ex/RingtoneEntryAdapter$RingtoneSectionItem;

    invoke-direct {v3, v12}, Lcom/android/settings_ex/RingtoneEntryAdapter$RingtoneSectionItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 941
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/RingtonePicker;->mStaticItemCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings_ex/RingtonePicker;->mStaticItemCount:I

    .line 944
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/RingtonePicker;->mHasDefaultItem:Z

    if-eqz v2, :cond_6

    .line 945
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/RingtonePicker;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings_ex/RingtonePicker;->mDefaultRingtonePos:I

    .line 947
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/RingtonePicker;->mExistingUri:Landroid/net/Uri;

    invoke-static {v2}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 948
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/RingtonePicker;->mDefaultRingtonePos:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings_ex/RingtonePicker;->mClickedPos:I

    .line 952
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ex/RingtonePicker;->mHasSilentItem:Z

    if-eqz v2, :cond_7

    .line 953
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/RingtonePicker;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings_ex/RingtonePicker;->mSilentPos:I

    .line 956
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/RingtonePicker;->mExistingUri:Landroid/net/Uri;

    if-nez v2, :cond_7

    .line 957
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/RingtonePicker;->mSilentPos:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings_ex/RingtonePicker;->mClickedPos:I

    .line 961
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/RingtonePicker;->mClickedPos:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_8

    .line 962
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/RingtonePicker;->mRingtoneManager:Landroid/media/RingtoneManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/RingtonePicker;->mExistingUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/media/RingtoneManager;->getRingtonePosition(Landroid/net/Uri;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings_ex/RingtonePicker;->getListPosition(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings_ex/RingtonePicker;->mClickedPos:I

    .line 974
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ex/RingtonePicker;->mClickedPos:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_a

    .line 975
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/RingtonePicker;->mInternalCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_a

    .line 976
    const/16 v17, -0x1

    .line 977
    .local v17, nIdexDefaultRingtone:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/RingtonePicker;->mInternalCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v16

    .line 978
    .local v16, nCount:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/RingtonePicker;->mInternalCursor:Landroid/database/Cursor;

    const-string v3, "_display_name"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 980
    .local v15, nColumeIndex:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/RingtonePicker;->mInternalCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 982
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/RingtonePicker;->getDefaultPath()Ljava/lang/String;

    move-result-object v8

    .line 983
    .local v8, defaultPath:Ljava/lang/String;
    const-string v2, "RingtonePicker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "defaultPath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mHasSilentItem = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings_ex/RingtonePicker;->mHasSilentItem:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    const/4 v11, 0x0

    .local v11, index:I
    :goto_3
    move/from16 v0, v16

    if-ge v11, v0, :cond_9

    .line 986
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/RingtonePicker;->mInternalCursor:Landroid/database/Cursor;

    invoke-interface {v2, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 987
    .local v18, pathName:Ljava/lang/String;
    const-string v2, "RingtonePicker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pathName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 989
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/settings_ex/RingtonePicker;->getListPosition(I)I

    move-result v17

    .line 994
    .end local v18           #pathName:Ljava/lang/String;
    :cond_9
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/RingtonePicker;->mClickedPos:I

    .line 1001
    .end local v8           #defaultPath:Ljava/lang/String;
    .end local v11           #index:I
    .end local v15           #nColumeIndex:I
    .end local v16           #nCount:I
    .end local v17           #nIdexDefaultRingtone:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/RingtonePicker;->mInternalCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_c

    .line 1002
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/RingtonePicker;->mInternalCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 1003
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/RingtonePicker;->mInternalCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v10, v2, :cond_c

    .line 1004
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/RingtonePicker;->items:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/settings_ex/RingtoneEntryAdapter$RingtoneEntryItem;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/RingtonePicker;->mInternalCursor:Landroid/database/Cursor;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings_ex/RingtonePicker;->mInternalCursor:Landroid/database/Cursor;

    const/4 v7, 0x2

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings_ex/RingtonePicker;->mInternalCursor:Landroid/database/Cursor;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/settings_ex/RingtoneEntryAdapter$RingtoneEntryItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1007
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/RingtonePicker;->mInternalCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 1003
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 992
    .end local v10           #i:I
    .restart local v8       #defaultPath:Ljava/lang/String;
    .restart local v11       #index:I
    .restart local v15       #nColumeIndex:I
    .restart local v16       #nCount:I
    .restart local v17       #nIdexDefaultRingtone:I
    .restart local v18       #pathName:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/RingtonePicker;->mInternalCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 985
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    .line 1011
    .end local v8           #defaultPath:Ljava/lang/String;
    .end local v11           #index:I
    .end local v15           #nColumeIndex:I
    .end local v16           #nCount:I
    .end local v17           #nIdexDefaultRingtone:I
    .end local v18           #pathName:Ljava/lang/String;
    :cond_c
    return-void
.end method

.method private initRingtoneUI()V
    .locals 3

    .prologue
    .line 1092
    new-instance v0, Lcom/android/settings_ex/RingtoneEntryAdapter;

    const v1, 0x109000f

    iget-object v2, p0, Lcom/android/settings_ex/RingtonePicker;->items:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings_ex/RingtoneEntryAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 1095
    .local v0, adapter:Lcom/android/settings_ex/RingtoneEntryAdapter;
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/RingtonePicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 1097
    invoke-virtual {p0}, Lcom/android/settings_ex/RingtonePicker;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/RingtonePicker;->listView:Landroid/widget/ListView;

    .line 1098
    iget-object v1, p0, Lcom/android/settings_ex/RingtonePicker;->listView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 1099
    iget-object v1, p0, Lcom/android/settings_ex/RingtonePicker;->listView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 1100
    invoke-direct {p0}, Lcom/android/settings_ex/RingtonePicker;->onPrepareUI()V

    .line 1102
    return-void
.end method

.method private onPrepareUI()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 1168
    invoke-direct {p0}, Lcom/android/settings_ex/RingtonePicker;->getURI()Landroid/net/Uri;

    move-result-object v0

    .line 1170
    invoke-virtual {p0}, Lcom/android/settings_ex/RingtonePicker;->getDefaultPhoneRingtone()Landroid/net/Uri;

    move-result-object v1

    .line 1175
    iget-object v2, p0, Lcom/android/settings_ex/RingtonePicker;->mInternalCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    .line 1176
    iget-object v2, p0, Lcom/android/settings_ex/RingtonePicker;->mInternalCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0, v2}, Lcom/android/settings_ex/RingtonePicker;->getRingtonePosition(Landroid/net/Uri;Landroid/database/Cursor;)I

    move-result v2

    iput v2, p0, Lcom/android/settings_ex/RingtonePicker;->internal_ringtone_position:I

    .line 1179
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/RingtonePicker;->mExternalCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_1

    .line 1180
    iget-object v2, p0, Lcom/android/settings_ex/RingtonePicker;->mExternalCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0, v2}, Lcom/android/settings_ex/RingtonePicker;->getRingtonePosition(Landroid/net/Uri;Landroid/database/Cursor;)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/RingtonePicker;->external_ringtone_position:I

    .line 1185
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->mInternalCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 1186
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->mInternalCursor:Landroid/database/Cursor;

    invoke-direct {p0, v1, v0}, Lcom/android/settings_ex/RingtonePicker;->getRingtonePosition(Landroid/net/Uri;Landroid/database/Cursor;)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/RingtonePicker;->default_ringtone_position:I

    .line 1193
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->mExternalCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->mExternalCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_7

    .line 1195
    const-string v0, "RingtonePicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "internal_ringtone_position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/RingtonePicker;->internal_ringtone_position:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    iget v0, p0, Lcom/android/settings_ex/RingtonePicker;->external_ringtone_position:I

    if-ne v0, v4, :cond_6

    .line 1201
    iget v0, p0, Lcom/android/settings_ex/RingtonePicker;->internal_ringtone_position:I

    if-ne v0, v4, :cond_5

    .line 1202
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->listView:Landroid/widget/ListView;

    iget v1, p0, Lcom/android/settings_ex/RingtonePicker;->default_ringtone_position:I

    iget-object v2, p0, Lcom/android/settings_ex/RingtonePicker;->mExternalCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1204
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->listView:Landroid/widget/ListView;

    iget v1, p0, Lcom/android/settings_ex/RingtonePicker;->default_ringtone_position:I

    iget-object v2, p0, Lcom/android/settings_ex/RingtonePicker;->mExternalCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 1238
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->mExternalCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    .line 1239
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->mExternalCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1241
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->mInternalCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_4

    .line 1242
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->mInternalCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1246
    :cond_4
    return-void

    .line 1207
    :cond_5
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->listView:Landroid/widget/ListView;

    iget v1, p0, Lcom/android/settings_ex/RingtonePicker;->internal_ringtone_position:I

    iget-object v2, p0, Lcom/android/settings_ex/RingtonePicker;->mExternalCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1209
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->listView:Landroid/widget/ListView;

    iget v1, p0, Lcom/android/settings_ex/RingtonePicker;->internal_ringtone_position:I

    iget-object v2, p0, Lcom/android/settings_ex/RingtonePicker;->mExternalCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 1216
    :cond_6
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->listView:Landroid/widget/ListView;

    iget v1, p0, Lcom/android/settings_ex/RingtonePicker;->external_ringtone_position:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1217
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->listView:Landroid/widget/ListView;

    iget v1, p0, Lcom/android/settings_ex/RingtonePicker;->external_ringtone_position:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 1224
    :cond_7
    iget v0, p0, Lcom/android/settings_ex/RingtonePicker;->internal_ringtone_position:I

    if-ne v0, v4, :cond_8

    .line 1225
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->listView:Landroid/widget/ListView;

    iget v1, p0, Lcom/android/settings_ex/RingtonePicker;->default_ringtone_position:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1226
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->listView:Landroid/widget/ListView;

    iget v1, p0, Lcom/android/settings_ex/RingtonePicker;->default_ringtone_position:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 1228
    :cond_8
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->listView:Landroid/widget/ListView;

    iget v1, p0, Lcom/android/settings_ex/RingtonePicker;->internal_ringtone_position:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1229
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->listView:Landroid/widget/ListView;

    iget v1, p0, Lcom/android/settings_ex/RingtonePicker;->internal_ringtone_position:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0
.end method

.method private playRingtone(Landroid/net/Uri;I)V
    .locals 3
    .parameter "uri"
    .parameter "delayMs"

    .prologue
    .line 1431
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1432
    iput-object p1, p0, Lcom/android/settings_ex/RingtonePicker;->mSampleRingtoneUri:Landroid/net/Uri;

    .line 1433
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->mHandler:Landroid/os/Handler;

    int-to-long v1, p2

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1434
    return-void
.end method

.method public static query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "context"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 1854
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/android/settings_ex/RingtonePicker;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 1836
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1837
    if-nez v0, :cond_0

    move-object v0, v6

    .line 1847
    :goto_0
    return-object v0

    .line 1840
    :cond_0
    if-lez p6, :cond_1

    .line 1841
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "limit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    :goto_1
    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1844
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1846
    :catch_0
    move-exception v0

    move-object v0, v6

    .line 1847
    goto :goto_0

    :cond_1
    move-object v1, p1

    goto :goto_1
.end method

.method private setFilterColumnsList(I)V
    .locals 4
    .parameter

    .prologue
    .line 1860
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->mFilterColumns:Ljava/util/List;

    .line 1861
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1863
    const-string v1, "RingtonePicker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "##########################################"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1864
    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_0

    and-int/lit8 v1, p1, 0x8

    if-nez v1, :cond_0

    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_1

    .line 1865
    :cond_0
    const-string v1, "RingtonePicker"

    const-string v2, "##################columns.add(MediaStore.Audio.AudioColumns.IS_RINGTONE)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1866
    const-string v1, "is_ringtone"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1869
    :cond_1
    and-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_2

    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_3

    .line 1870
    :cond_2
    const-string v1, "RingtonePicker"

    const-string v2, "##################columns.add(MediaStore.Audio.AudioColumns.IS_NOTIFICATION)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1871
    const-string v1, "is_notification"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1874
    :cond_3
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_4

    .line 1875
    const-string v1, "is_alarm"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1877
    :cond_4
    return-void
.end method

.method private stopAnyPlayingRingtone()V
    .locals 1

    .prologue
    .line 1593
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->mDefaultRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1594
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 1597
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->mRingtoneManager:Landroid/media/RingtoneManager;

    if-eqz v0, :cond_1

    .line 1598
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v0}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    .line 1600
    :cond_1
    return-void
.end method


# virtual methods
.method public getDefaultPhoneRingtone()Landroid/net/Uri;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1107
    const-string v0, ""

    .line 1112
    iget v1, p0, Lcom/android/settings_ex/RingtonePicker;->types:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/settings_ex/RingtonePicker;->types:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/settings_ex/RingtonePicker;->types:I

    const/16 v2, 0x20

    if-ne v1, v2, :cond_3

    .line 1113
    :cond_0
    const-string v0, "ro.config.ringtone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1126
    :cond_1
    :goto_0
    const-string v1, "RingtonePicker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Default Ringtone Name(stream:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/settings_ex/RingtonePicker;->INTERNAL_COLUMNS:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_display_name = \""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/settings_ex/RingtonePicker;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1134
    invoke-static {v0}, Lcom/android/settings_ex/RingtonePicker;->getValidRingtoneUriFromCursorAndClose(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v1

    .line 1136
    if-eqz v0, :cond_2

    .line 1137
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1138
    :cond_2
    return-object v1

    .line 1116
    :cond_3
    iget v1, p0, Lcom/android/settings_ex/RingtonePicker;->types:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    iget v1, p0, Lcom/android/settings_ex/RingtonePicker;->types:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    .line 1117
    :cond_4
    const-string v0, "ro.config.notification_sound"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1120
    :cond_5
    iget v1, p0, Lcom/android/settings_ex/RingtonePicker;->types:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    goto :goto_0
.end method

.method protected isExpiredDrm()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    .line 767
    const/4 v0, 0x0

    .line 768
    .local v0, db_Uri:Ljava/lang/String;
    iget v5, p0, Lcom/android/settings_ex/RingtonePicker;->types:I

    if-ne v5, v4, :cond_1

    .line 769
    invoke-virtual {p0}, Lcom/android/settings_ex/RingtonePicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "ringtone"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 803
    :cond_0
    :goto_0
    const-string v5, "RingtonePicker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "!!!!!db_uri = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    if-eqz v0, :cond_6

    .line 806
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings_ex/RingtonePicker;->GetFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 807
    .local v3, path:Ljava/lang/String;
    if-eqz v3, :cond_6

    .line 808
    invoke-static {v3}, Lcom/lge/lgdrm/DrmManager;->isDRM(Ljava/lang/String;)I

    move-result v1

    .line 809
    .local v1, isDrm:I
    invoke-direct {p0, v3}, Lcom/android/settings_ex/RingtonePicker;->CheckDrmExpired(Ljava/lang/String;)I

    move-result v2

    .line 810
    .local v2, isDrmExpired:I
    const-string v5, "RingtonePicker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "!!!!!isDrm = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isDrmExpired = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    if-lez v1, :cond_6

    if-ne v2, v4, :cond_6

    .line 812
    const-string v5, "RingtonePicker"

    const-string v6, "!!!!! return true"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    .end local v1           #isDrm:I
    .end local v2           #isDrmExpired:I
    .end local v3           #path:Ljava/lang/String;
    :goto_1
    return v4

    .line 774
    :cond_1
    iget v5, p0, Lcom/android/settings_ex/RingtonePicker;->types:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 775
    invoke-virtual {p0}, Lcom/android/settings_ex/RingtonePicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "notification_sound"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 780
    :cond_2
    iget v5, p0, Lcom/android/settings_ex/RingtonePicker;->types:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_3

    .line 781
    invoke-virtual {p0}, Lcom/android/settings_ex/RingtonePicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "alarm_alert"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 786
    :cond_3
    iget v5, p0, Lcom/android/settings_ex/RingtonePicker;->types:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_4

    .line 787
    invoke-virtual {p0}, Lcom/android/settings_ex/RingtonePicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "ringtone_sim2"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 792
    :cond_4
    iget v5, p0, Lcom/android/settings_ex/RingtonePicker;->types:I

    const/16 v6, 0x10

    if-ne v5, v6, :cond_5

    .line 793
    invoke-virtual {p0}, Lcom/android/settings_ex/RingtonePicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "notification_sound_sim2"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 798
    :cond_5
    iget v5, p0, Lcom/android/settings_ex/RingtonePicker;->types:I

    const/16 v6, 0x20

    if-ne v5, v6, :cond_0

    .line 799
    invoke-virtual {p0}, Lcom/android/settings_ex/RingtonePicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "ringtone_videocall"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 817
    :cond_6
    const-string v4, "RingtonePicker"

    const-string v5, "!!!!! return false"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    const/4 v4, 0x0

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v10, 0x10

    const/16 v9, 0x8

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 1694
    iget v0, p0, Lcom/android/settings_ex/RingtonePicker;->LAUNCHED_REQUEST_CODE:I

    if-ne p1, v0, :cond_19

    .line 1695
    const/4 v0, -0x1

    if-eq p2, v0, :cond_5

    .line 1696
    const-string v0, "RingtonePicker"

    const-string v1, "resultCode != RESULT_OK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1798
    :goto_0
    iget v0, p0, Lcom/android/settings_ex/RingtonePicker;->types:I

    if-ne v0, v7, :cond_0

    .line 1799
    iget-boolean v0, p0, Lcom/android/settings_ex/RingtonePicker;->isDualSim:Z

    if-ne v7, v0, :cond_17

    .line 1800
    invoke-virtual {p0}, Lcom/android/settings_ex/RingtonePicker;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0802c6

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 1806
    :cond_0
    :goto_1
    iget v0, p0, Lcom/android/settings_ex/RingtonePicker;->types:I

    if-ne v0, v8, :cond_1

    .line 1808
    iget-boolean v0, p0, Lcom/android/settings_ex/RingtonePicker;->isDualSim:Z

    if-ne v7, v0, :cond_18

    .line 1809
    invoke-virtual {p0}, Lcom/android/settings_ex/RingtonePicker;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0802c8

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 1815
    :cond_1
    :goto_2
    iget v0, p0, Lcom/android/settings_ex/RingtonePicker;->types:I

    if-ne v0, v9, :cond_2

    .line 1816
    invoke-virtual {p0}, Lcom/android/settings_ex/RingtonePicker;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0802c7

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 1818
    :cond_2
    iget v0, p0, Lcom/android/settings_ex/RingtonePicker;->types:I

    if-ne v0, v10, :cond_3

    .line 1819
    invoke-virtual {p0}, Lcom/android/settings_ex/RingtonePicker;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0802c9

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 1821
    :cond_3
    iget v0, p0, Lcom/android/settings_ex/RingtonePicker;->types:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_4

    .line 1822
    invoke-virtual {p0}, Lcom/android/settings_ex/RingtonePicker;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f080995

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 1830
    :cond_4
    :goto_3
    return-void

    .line 1699
    :cond_5
    const-string v0, "RingtonePicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data.getExtras() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1700
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 1701
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1702
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1704
    invoke-virtual {p0}, Lcom/android/settings_ex/RingtonePicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1709
    iget v2, p0, Lcom/android/settings_ex/RingtonePicker;->types:I

    if-eq v2, v7, :cond_6

    iget v2, p0, Lcom/android/settings_ex/RingtonePicker;->types:I

    if-eq v2, v9, :cond_6

    iget v2, p0, Lcom/android/settings_ex/RingtonePicker;->types:I

    const/16 v3, 0x20

    if-ne v2, v3, :cond_b

    .line 1711
    :cond_6
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 1712
    const-string v3, "is_ringtone"

    const-string v5, "1"

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1713
    const-string v3, "is_alarm"

    const-string v5, "1"

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1714
    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v6, v2, v3, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1735
    :cond_7
    :goto_4
    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v1

    const-string v1, "_data"

    aput-object v1, v2, v7

    const-string v1, "title"

    aput-object v1, v2, v8

    .line 1739
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1740
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/settings_ex/RingtonePicker;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1745
    iget v1, p0, Lcom/android/settings_ex/RingtonePicker;->types:I

    if-ne v1, v7, :cond_d

    .line 1746
    invoke-virtual {p0}, Lcom/android/settings_ex/RingtonePicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ringtone"

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_8
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1787
    :cond_9
    :goto_5
    if-eqz v0, :cond_a

    .line 1788
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1791
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings_ex/RingtonePicker;->finish()V

    goto/16 :goto_0

    .line 1721
    :cond_b
    iget v2, p0, Lcom/android/settings_ex/RingtonePicker;->types:I

    if-eq v2, v8, :cond_c

    iget v2, p0, Lcom/android/settings_ex/RingtonePicker;->types:I

    if-ne v2, v10, :cond_7

    .line 1723
    :cond_c
    :try_start_1
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 1724
    const-string v3, "is_notification"

    const-string v5, "1"

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1725
    const-string v3, "is_alarm"

    const-string v5, "1"

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1726
    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v6, v2, v3, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 1727
    :catch_0
    move-exception v0

    goto/16 :goto_3

    .line 1752
    :cond_d
    iget v1, p0, Lcom/android/settings_ex/RingtonePicker;->types:I

    if-ne v1, v8, :cond_f

    .line 1753
    invoke-virtual {p0}, Lcom/android/settings_ex/RingtonePicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "notification_sound"

    if-eqz v6, :cond_e

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_e
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_5

    .line 1759
    :cond_f
    iget v1, p0, Lcom/android/settings_ex/RingtonePicker;->types:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_11

    .line 1760
    invoke-virtual {p0}, Lcom/android/settings_ex/RingtonePicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "alarm_alert"

    if-eqz v6, :cond_10

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_10
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_5

    .line 1766
    :cond_11
    iget v1, p0, Lcom/android/settings_ex/RingtonePicker;->types:I

    if-ne v1, v9, :cond_13

    .line 1767
    invoke-virtual {p0}, Lcom/android/settings_ex/RingtonePicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ringtone_sim2"

    if-eqz v6, :cond_12

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_12
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_5

    .line 1773
    :cond_13
    iget v1, p0, Lcom/android/settings_ex/RingtonePicker;->types:I

    if-ne v1, v10, :cond_15

    .line 1774
    invoke-virtual {p0}, Lcom/android/settings_ex/RingtonePicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "notification_sound_sim2"

    if-eqz v6, :cond_14

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_14
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_5

    .line 1780
    :cond_15
    iget v1, p0, Lcom/android/settings_ex/RingtonePicker;->types:I

    const/16 v2, 0x20

    if-ne v1, v2, :cond_9

    .line 1781
    invoke-virtual {p0}, Lcom/android/settings_ex/RingtonePicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ringtone_videocall"

    if-eqz v6, :cond_16

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_16
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_5

    .line 1803
    :cond_17
    invoke-virtual {p0}, Lcom/android/settings_ex/RingtonePicker;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0802a6

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    goto/16 :goto_1

    .line 1812
    :cond_18
    invoke-virtual {p0}, Lcom/android/settings_ex/RingtonePicker;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f080874

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    goto/16 :goto_2

    .line 1827
    :cond_19
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_3

    .line 1715
    :catch_1
    move-exception v0

    goto/16 :goto_3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 281
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 283
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/settings_ex/RingtonePicker;->mHandler:Landroid/os/Handler;

    .line 286
    invoke-virtual {p0}, Lcom/android/settings_ex/RingtonePicker;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 290
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/RingtonePicker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/settings_ex/RingtonePicker;->mAudioManager:Landroid/media/AudioManager;

    .line 295
    iget-object v2, p0, Lcom/android/settings_ex/RingtonePicker;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v2, :cond_0

    .line 296
    const-string v2, "storage"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/RingtonePicker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    iput-object v2, p0, Lcom/android/settings_ex/RingtonePicker;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 297
    iget-object v2, p0, Lcom/android/settings_ex/RingtonePicker;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v3, p0, Lcom/android/settings_ex/RingtonePicker;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 308
    :cond_0
    const-string v2, "android.intent.extra.ringtone.INCLUDE_DRM"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 310
    .local v0, includeDrm:Z
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/RingtonePicker;->setIncludeDrm(Z)V

    .line 313
    const-string v2, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings_ex/RingtonePicker;->mHasDefaultItem:Z

    .line 315
    const-string v2, "android.intent.extra.ringtone.DEFAULT_URI"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/settings_ex/RingtonePicker;->mUriForDefaultItem:Landroid/net/Uri;

    .line 317
    iget-object v2, p0, Lcom/android/settings_ex/RingtonePicker;->mUriForDefaultItem:Landroid/net/Uri;

    if-nez v2, :cond_1

    .line 318
    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/settings_ex/RingtonePicker;->mUriForDefaultItem:Landroid/net/Uri;

    .line 322
    :cond_1
    const-string v2, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings_ex/RingtonePicker;->mHasSilentItem:Z

    .line 327
    new-instance v2, Landroid/media/RingtoneManager;

    invoke-direct {v2, p0}, Landroid/media/RingtoneManager;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/android/settings_ex/RingtonePicker;->mRingtoneManager:Landroid/media/RingtoneManager;

    .line 331
    const-string v2, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings_ex/RingtonePicker;->types:I

    .line 332
    invoke-static {}, Lcom/android/settings_ex/Utils;->isMultiSimEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings_ex/RingtonePicker;->isDualSim:Z

    .line 334
    iget v2, p0, Lcom/android/settings_ex/RingtonePicker;->types:I

    if-ne v2, v4, :cond_2

    .line 335
    iget-boolean v2, p0, Lcom/android/settings_ex/RingtonePicker;->isDualSim:Z

    if-ne v4, v2, :cond_9

    .line 336
    const v2, 0x7f0802c6

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/RingtonePicker;->setTitle(I)V

    .line 342
    :cond_2
    :goto_0
    iget v2, p0, Lcom/android/settings_ex/RingtonePicker;->types:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 344
    iget-boolean v2, p0, Lcom/android/settings_ex/RingtonePicker;->isDualSim:Z

    if-ne v4, v2, :cond_a

    .line 345
    const v2, 0x7f0802c8

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/RingtonePicker;->setTitle(I)V

    .line 351
    :cond_3
    :goto_1
    iget v2, p0, Lcom/android/settings_ex/RingtonePicker;->types:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 352
    const v2, 0x7f0802c7

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/RingtonePicker;->setTitle(I)V

    .line 354
    :cond_4
    iget v2, p0, Lcom/android/settings_ex/RingtonePicker;->types:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 355
    const v2, 0x7f0802c9

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/RingtonePicker;->setTitle(I)V

    .line 358
    :cond_5
    iget v2, p0, Lcom/android/settings_ex/RingtonePicker;->types:I

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 359
    const v2, 0x7f080995

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/RingtonePicker;->setTitle(I)V

    .line 363
    :cond_6
    iget v2, p0, Lcom/android/settings_ex/RingtonePicker;->types:I

    if-eq v2, v5, :cond_7

    .line 365
    iget-object v2, p0, Lcom/android/settings_ex/RingtonePicker;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget v3, p0, Lcom/android/settings_ex/RingtonePicker;->types:I

    invoke-virtual {v2, v3}, Landroid/media/RingtoneManager;->setType(I)V

    .line 366
    iget v2, p0, Lcom/android/settings_ex/RingtonePicker;->types:I

    invoke-direct {p0, v2}, Lcom/android/settings_ex/RingtonePicker;->setFilterColumnsList(I)V

    .line 378
    :cond_7
    const-string v2, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Lcom/android/settings_ex/RingtonePicker;->mExistingUri:Landroid/net/Uri;

    .line 380
    const-string v2, "RingtonePicker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mExistingUri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/RingtonePicker;->mExistingUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const v2, 0x7f06002f

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/RingtonePicker;->setContentView(I)V

    .line 385
    const v2, 0x7f0b0045

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/RingtonePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings_ex/RingtonePicker;->mCancelButton:Landroid/widget/Button;

    .line 386
    const v2, 0x7f0b0258

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/RingtonePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings_ex/RingtonePicker;->mOKButton:Landroid/widget/Button;

    .line 389
    iget-object v2, p0, Lcom/android/settings_ex/RingtonePicker;->mOperator:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings_ex/RingtonePicker;->strTargetOperator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 391
    iget-object v2, p0, Lcom/android/settings_ex/RingtonePicker;->mOKButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 395
    :cond_8
    iget-object v2, p0, Lcom/android/settings_ex/RingtonePicker;->mCancelButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/settings_ex/RingtonePicker$2;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/RingtonePicker$2;-><init>(Lcom/android/settings_ex/RingtonePicker;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 403
    iget-object v2, p0, Lcom/android/settings_ex/RingtonePicker;->mOKButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/settings_ex/RingtonePicker$3;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/RingtonePicker$3;-><init>(Lcom/android/settings_ex/RingtonePicker;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 520
    iget-object v2, p0, Lcom/android/settings_ex/RingtonePicker;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v2}, Landroid/media/RingtoneManager;->inferStreamType()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/RingtonePicker;->setVolumeControlStream(I)V

    .line 522
    return-void

    .line 339
    :cond_9
    const v2, 0x7f0802a6

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/RingtonePicker;->setTitle(I)V

    goto/16 :goto_0

    .line 348
    :cond_a
    const v2, 0x7f080874

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/RingtonePicker;->setTitle(I)V

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 1610
    invoke-virtual {p0}, Lcom/android/settings_ex/RingtonePicker;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1611
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 867
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 869
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->mStorageListener:Landroid/os/storage/StorageEventListener;

    if-eqz v0, :cond_0

    .line 870
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings_ex/RingtonePicker;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 873
    :cond_0
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 1252
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 1257
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/RingtoneItem;

    invoke-interface {v0}, Lcom/android/settings_ex/RingtoneItem;->isSection()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1259
    const-string v0, "RingtonePicker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    iput p3, p0, Lcom/android/settings_ex/RingtonePicker;->mClickedPos:I

    .line 1266
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/RingtonePicker;->mSelected:Z

    .line 1267
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/RingtonePicker;->mDrmRingtone:Z

    .line 1271
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/RingtoneEntryAdapter$RingtoneEntryItem;

    .line 1273
    iget-object v0, v0, Lcom/android/settings_ex/RingtoneEntryAdapter$RingtoneEntryItem;->uri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->position_uri:Landroid/net/Uri;

    .line 1275
    const-string v0, "RingtonePicker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "position_uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/RingtonePicker;->position_uri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->mOperator:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings_ex/RingtonePicker;->strTargetOperator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1281
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->position_uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/RingtonePicker;->GetFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1283
    const-string v0, "RingtonePicker"

    const-string v3, "~~~31> creating DrmManagerClient. "

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    new-instance v3, Landroid/drm/DrmManagerClient;

    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->mContext:Landroid/content/Context;

    invoke-direct {v3, v0}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    .line 1285
    if-nez v3, :cond_0

    .line 1286
    const-string v0, "RingtonePicker"

    const-string v4, "~~~31> mDrmStore is null"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1288
    :cond_0
    if-eqz v2, :cond_1

    .line 1291
    :try_start_1
    const-string v0, "RingtonePicker"

    const-string v4, "~~~31> check. mDrmManagerClient.canHandle()"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    const-string v0, "audio/mp4"

    invoke-virtual {v3, v2, v0}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 1293
    :try_start_2
    const-string v1, "RingtonePicker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "~~~31> nCanHandle is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1298
    :goto_0
    if-ne v0, v6, :cond_2

    .line 1303
    :try_start_3
    const-string v0, "RingtonePicker"

    const-string v1, "~~~31> checkRightsStatus()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    const/4 v0, 0x2

    invoke-virtual {v3, v2, v0}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v0

    .line 1307
    packed-switch v0, :pswitch_data_0

    .line 1349
    const-string v0, "RingtonePicker"

    const-string v1, "~~~31> default"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    const v0, 0x7f0809f0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/RingtonePicker;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1352
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->mOKButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 1353
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->mOKButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1379
    :cond_1
    :goto_1
    return-void

    .line 1294
    :catch_0
    move-exception v0

    move v0, v1

    .line 1295
    :goto_2
    :try_start_4
    const-string v1, "RingtonePicker"

    const-string v4, "~~~31> exception is occured during checking canHandle"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 1375
    :catch_1
    move-exception v0

    .line 1376
    invoke-virtual {p0}, Lcom/android/settings_ex/RingtonePicker;->finish()V

    goto :goto_1

    .line 1309
    :pswitch_0
    :try_start_5
    const-string v0, "RingtonePicker"

    const-string v1, "~~~31>  mDrmStore.RightsStatus.RIGHTS_EXPIRED "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    :pswitch_1
    const-string v0, "RingtonePicker"

    const-string v1, "~~~31>  mDrmStore.RightsStatus.RIGHTS_INVALID"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    :pswitch_2
    const-string v0, "RingtonePicker"

    const-string v1, "~~~31>  mDrmStore.RightsStatus.RIGHTS_NOT_ACQUIRED "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    const v0, 0x7f0809f0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/RingtonePicker;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1316
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->mOKButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 1317
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->mOKButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 1356
    :catch_2
    move-exception v0

    .line 1357
    :try_start_6
    const-string v1, "RingtonePicker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "~~~31> exception is occured whiling check nDrmStatus"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 1320
    :pswitch_3
    :try_start_7
    const-string v0, "RingtonePicker"

    const-string v1, "~~~31>  mDrmStore.RightsStatus.RIGHTS_VALID"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->mOKButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 1322
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->mOKButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_1

    .line 1324
    :try_start_8
    const-string v0, "RingtonePicker"

    const-string v1, "~~~31> mAudio =  new MediaPlayer(); "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->mAudio:Landroid/media/MediaPlayer;

    .line 1326
    const-string v0, "RingtonePicker"

    const-string v1, "~~~31> int mStreamType = AudioManager.STREAM_MUSIC "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    const/4 v0, 0x3

    .line 1328
    const-string v1, "RingtonePicker"

    const-string v2, "~~~31> mAudio.setDataSource(this, position_uri) "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    iget-object v1, p0, Lcom/android/settings_ex/RingtonePicker;->mAudio:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/settings_ex/RingtonePicker;->position_uri:Landroid/net/Uri;

    invoke-virtual {v1, p0, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1330
    const-string v1, "RingtonePicker"

    const-string v2, "~~~31> mAudio.setAudioStreamType(mStreamType) "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    iget-object v1, p0, Lcom/android/settings_ex/RingtonePicker;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 1332
    const-string v0, "RingtonePicker"

    const-string v1, "~~~31> mAudio.prepare() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->mAudio:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 1334
    const-string v0, "RingtonePicker"

    const-string v1, "~~~31> finished try catch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->position_uri:Landroid/net/Uri;

    const/16 v1, 0x12c

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/RingtonePicker;->playRingtone(Landroid/net/Uri;I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_1

    .line 1336
    :catch_3
    move-exception v0

    .line 1337
    :try_start_9
    const-string v0, "RingtonePicker"

    const-string v1, "~~~31> Play exception is occured."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    const v0, 0x7f0809f0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/RingtonePicker;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1340
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->mOKButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 1341
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->mOKButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_1

    .line 1360
    :cond_2
    :try_start_a
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->mOKButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 1361
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->mOKButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1362
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->position_uri:Landroid/net/Uri;

    const/16 v1, 0x12c

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/RingtonePicker;->playRingtone(Landroid/net/Uri;I)V

    goto/16 :goto_1

    .line 1372
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->position_uri:Landroid/net/Uri;

    const/16 v1, 0x12c

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/RingtonePicker;->playRingtone(Landroid/net/Uri;I)V
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_1

    .line 1294
    :catch_4
    move-exception v1

    goto/16 :goto_2

    .line 1307
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    .line 1619
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1624
    const/4 v0, 0x0

    .line 1643
    :goto_0
    return v0

    .line 1628
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ex/RingtonePicker;->appIsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1630
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1631
    const-string v1, "com.lge.music"

    const-string v2, "com.lge.music.MusicPicker"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1632
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1633
    const-string v1, "com.lge.lgdrm.extra.ACTION"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1635
    iget v1, p0, Lcom/android/settings_ex/RingtonePicker;->LAUNCHED_REQUEST_CODE:I

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/RingtonePicker;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1643
    :goto_1
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 1639
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/RingtonePicker;->confirmDialog()V

    goto :goto_1

    .line 1619
    :pswitch_data_0
    .packed-switch 0x7f0b02a8
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 694
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 695
    invoke-direct {p0}, Lcom/android/settings_ex/RingtonePicker;->stopAnyPlayingRingtone()V

    .line 696
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->mExternalCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->items:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->mInternalCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 698
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->mExternalCursor:Landroid/database/Cursor;

    .line 699
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->mInternalCursor:Landroid/database/Cursor;

    .line 700
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->items:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 706
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_2

    .line 707
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/settings_ex/RingtonePicker;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 710
    :cond_2
    return-void

    .line 701
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 685
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 687
    invoke-direct {p0}, Lcom/android/settings_ex/RingtonePicker;->initRingtoneList()V

    .line 688
    invoke-direct {p0}, Lcom/android/settings_ex/RingtonePicker;->initRingtoneUI()V

    .line 689
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 679
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 680
    return-void
.end method

.method protected onStop()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 714
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 715
    invoke-direct {p0}, Lcom/android/settings_ex/RingtonePicker;->stopAnyPlayingRingtone()V

    .line 717
    invoke-virtual {p0}, Lcom/android/settings_ex/RingtonePicker;->isExpiredDrm()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 718
    const-string v2, "RingtonePicker"

    const-string v3, "!!!!!it is expired uri change to default!!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    invoke-virtual {p0}, Lcom/android/settings_ex/RingtonePicker;->getDefaultPhoneRingtone()Landroid/net/Uri;

    move-result-object v0

    .line 720
    .local v0, uri:Landroid/net/Uri;
    iget v2, p0, Lcom/android/settings_ex/RingtonePicker;->types:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 721
    invoke-virtual {p0}, Lcom/android/settings_ex/RingtonePicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "ringtone"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 763
    .end local v0           #uri:Landroid/net/Uri;
    :cond_1
    :goto_0
    return-void

    .line 727
    .restart local v0       #uri:Landroid/net/Uri;
    :cond_2
    iget v2, p0, Lcom/android/settings_ex/RingtonePicker;->types:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 728
    invoke-virtual {p0}, Lcom/android/settings_ex/RingtonePicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "notification_sound"

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 734
    :cond_4
    iget v2, p0, Lcom/android/settings_ex/RingtonePicker;->types:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_6

    .line 735
    invoke-virtual {p0}, Lcom/android/settings_ex/RingtonePicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "alarm_alert"

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_5
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 741
    :cond_6
    iget v2, p0, Lcom/android/settings_ex/RingtonePicker;->types:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_8

    .line 742
    invoke-virtual {p0}, Lcom/android/settings_ex/RingtonePicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "ringtone_sim2"

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_7
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 748
    :cond_8
    iget v2, p0, Lcom/android/settings_ex/RingtonePicker;->types:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_a

    .line 749
    invoke-virtual {p0}, Lcom/android/settings_ex/RingtonePicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "notification_sound_sim2"

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_9
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 755
    :cond_a
    iget v2, p0, Lcom/android/settings_ex/RingtonePicker;->types:I

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    .line 756
    invoke-virtual {p0}, Lcom/android/settings_ex/RingtonePicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "ringtone_videocall"

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_b
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v1, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1439
    iget v0, p0, Lcom/android/settings_ex/RingtonePicker;->mSampleRingtonePos:I

    iget v2, p0, Lcom/android/settings_ex/RingtonePicker;->mSilentPos:I

    if-ne v0, v2, :cond_1

    .line 1443
    invoke-direct {p0}, Lcom/android/settings_ex/RingtonePicker;->stopAnyPlayingRingtone()V

    .line 1448
    iput-boolean v5, p0, Lcom/android/settings_ex/RingtonePicker;->mSelected:Z

    .line 1547
    :cond_0
    :goto_0
    return-void

    .line 1454
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings_ex/RingtonePicker;->mDrmJob:Z

    if-eqz v0, :cond_2

    .line 1455
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings_ex/RingtonePicker;->mDrmTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1456
    iput-boolean v5, p0, Lcom/android/settings_ex/RingtonePicker;->mDrmJob:Z

    .line 1464
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->mDefaultRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1465
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 1466
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->mDefaultRingtone:Landroid/media/Ringtone;

    .line 1469
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->mSampleRingtoneUri:Landroid/net/Uri;

    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->mDefaultRingtone:Landroid/media/Ringtone;

    .line 1471
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->mDefaultRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_4

    .line 1473
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->mDefaultRingtone:Landroid/media/Ringtone;

    iget-object v2, p0, Lcom/android/settings_ex/RingtonePicker;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v2}, Landroid/media/RingtoneManager;->inferStreamType()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 1476
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->mDefaultRingtone:Landroid/media/Ringtone;

    iput-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->ringtone:Landroid/media/Ringtone;

    .line 1478
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->ringtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_8

    .line 1481
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-eqz v0, :cond_7

    .line 1482
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->ringtone:Landroid/media/Ringtone;

    invoke-virtual {v0, v6}, Landroid/media/Ringtone;->getProperty(I)I

    move-result v0

    if-nez v0, :cond_6

    .line 1483
    iget-boolean v0, p0, Lcom/android/settings_ex/RingtonePicker;->mSelected:Z

    if-eqz v0, :cond_5

    .line 1485
    iput-boolean v5, p0, Lcom/android/settings_ex/RingtonePicker;->mDrmRingtone:Z

    .line 1487
    const v0, 0x7f0809f0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/RingtonePicker;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1492
    :cond_5
    iput-boolean v5, p0, Lcom/android/settings_ex/RingtonePicker;->mSelected:Z

    goto :goto_0

    .line 1496
    :cond_6
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->mSampleRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/RingtonePicker;->GetFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1497
    if-eqz v0, :cond_7

    .line 1501
    :try_start_0
    invoke-static {v0}, Lcom/lge/lgdrm/DrmManager;->isDRM(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1507
    const/16 v2, 0x501

    if-eq v0, v2, :cond_7

    const/16 v2, 0x1800

    if-eq v0, v2, :cond_7

    .line 1508
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->ringtone:Landroid/media/Ringtone;

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->getProperty(I)I

    move-result v0

    if-ne v0, v6, :cond_7

    .line 1510
    iput-boolean v6, p0, Lcom/android/settings_ex/RingtonePicker;->mDrmJob:Z

    .line 1511
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings_ex/RingtonePicker;->mDrmTask:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1523
    :cond_7
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-ne v0, v6, :cond_9

    .line 1526
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->mRingtoneManager:Landroid/media/RingtoneManager;

    if-eqz v0, :cond_a

    .line 1527
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v0}, Landroid/media/RingtoneManager;->inferStreamType()I

    move-result v0

    .line 1528
    :goto_1
    iget-object v2, p0, Lcom/android/settings_ex/RingtonePicker;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/android/settings_ex/RingtonePicker;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v2, v3, v0, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 1529
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->ringtone:Landroid/media/Ringtone;

    iget-object v1, p0, Lcom/android/settings_ex/RingtonePicker;->mMediaCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1530
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->mediahandler:Landroid/os/Handler;

    const/16 v1, 0xb

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1541
    :cond_8
    :goto_2
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-eqz v0, :cond_0

    .line 1542
    iput-boolean v5, p0, Lcom/android/settings_ex/RingtonePicker;->mSelected:Z

    goto/16 :goto_0

    .line 1502
    :catch_0
    move-exception v0

    .line 1503
    const-string v0, "RingtonePicker"

    const-string v1, "ringtone path is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1534
    :cond_9
    iget-object v0, p0, Lcom/android/settings_ex/RingtonePicker;->ringtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    goto :goto_2

    :cond_a
    move v0, v1

    goto :goto_1
.end method

.method public setIncludeDrm(Z)V
    .locals 0
    .parameter "includeDrm"

    .prologue
    .line 151
    iput-boolean p1, p0, Lcom/android/settings_ex/RingtonePicker;->mIncludeDrm:Z

    .line 152
    return-void
.end method
