.class public Lcom/lge/camera/PostviewActivity;
.super Landroid/app/Activity;
.source "PostviewActivity.java"


# static fields
.field public static final DEFAULT_DELAY:I = 0x64

.field public static final EXIT_INTERACTION_2SECS:I = 0x7d0

.field public static final EXIT_INTERACTION_5SECS:I = 0x1388

.field private static final OPAQUE:I = 0xff

.field public static final POSTVIEW_MENU_GALLERY:I = 0x4

.field public static final POSTVIEW_MENU_NORMAL:I = 0x0

.field public static final POSTVIEW_MENU_SETAS:I = 0x2

.field public static final POSTVIEW_MENU_SHARE:I = 0x1

.field public static final POSTVIEW_MENU_VIDEO_PLAY:I = 0x3

.field public static final RELOAD_LAYOUT_INTERVAL:I = 0x12c

.field public static final SET_AS_MENU:I = 0x1

.field public static final SHARE_MENU:I = 0x0

.field public static final SUB_BUTTON_BOTTOM:I = 0x2

.field public static final SUB_BUTTON_MIDDLE:I = 0x1

.field public static final SUB_BUTTON_TOP:I = 0x0

.field public static final TIME_MACHINE_THUMB_INIT:I = -0x1


# instance fields
.field private anim:Landroid/view/animation/Animation;

.field private bChangeFileName:Z

.field private bConnectedDevice:Z

.field private bFromCreateProcess:Z

.field private dialogKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field protected imageHandler:Lcom/lge/camera/util/ImageHandler;

.field private mAnimationTimer:Ljava/util/Timer;

.field private mApplicationMode:I

.field private mAttachButtonListener:Landroid/view/View$OnClickListener;

.field private mAutoReview:Ljava/lang/String;

.field private mBackCamcorderPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

.field private mBackCameraPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

.field private mCamera:Landroid/hardware/Camera;

.field private mCameraId:I

.field private mCameraOpenThread:Ljava/lang/Thread;

.field private mCapturedBitmap:Landroid/graphics/Bitmap;

.field private mCurrentKoreanFont:I

.field private mCurrentLang:Ljava/lang/String;

.field private mCurrentStorageDirectory:Ljava/lang/String;

.field private mDeleteButtonListener:Landroid/view/View$OnClickListener;

.field private mDialog:Landroid/app/Dialog;

.field private mDialogId:I

.field private mDisplayOrientationSetting:I

.field private mExitInteraction:Ljava/lang/Runnable;

.field private mFinishListener:Landroid/view/View$OnClickListener;

.field private mFlip:Ljava/lang/String;

.field private mFrontCamcorderPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

.field private mFrontCameraPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

.field private mHandler:Lcom/lge/camera/util/MainHandler;

.field private mImageAdapter:Lcom/lge/camera/postview/ContShotThumbAdapter;

.field private mIsAttachIntent:Z

.field private mIsAttachMode:Z

.field private mIsMmsVideo:Z

.field private mMultiSelectButtonListener:Landroid/view/View$OnClickListener;

.field private mNewButtonListener:Landroid/view/View$OnClickListener;

.field private mOrientation:I

.field private mOrientationChangeEnabled:Z

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private mPanelAlpha:I

.field private mPause:Z

.field private mPlayButtonListener:Landroid/view/View$OnClickListener;

.field private mPostRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public mPostviewMenuState:I

.field protected mPreferences:Lcom/lge/camera/setting/ComboPreferences;

.field private mPreviewOrientation:I

.field private mReloadAllLayout:Ljava/lang/Runnable;

.field private mSaveFileName:Ljava/lang/String;

.field private mSavedUri:Landroid/net/Uri;

.field private mSelectedIndex:I

.field private mSelectedIndexs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSetAsButtonListener:Landroid/view/View$OnClickListener;

.field private mSetOrientationReload:Ljava/lang/Runnable;

.field private mShareButtonListener:Landroid/view/View$OnClickListener;

.field private mShotMode:Ljava/lang/String;

.field private mShotModeIndex:I

.field private mThumbImage:Landroid/graphics/Bitmap;

.field private mThumbnailButtonListener:Landroid/view/View$OnClickListener;

.field private mThumbnailRect:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeMachineAnimationRunnable1:Ljava/lang/Runnable;

.field private mTimeMachineAnimationRunnable2:Ljava/lang/Runnable;

.field private mTimeMachineDeleteDone:Z

.field private mTimeMachineFileNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeMachineSaveButtonListener:Landroid/view/View$OnClickListener;

.field private mTimeMachineShotCount:I

.field private mTimeMachineViewMode:I

.field private mTimerCount:I

.field private mToast:Lcom/lge/camera/postview/PostViewToast;

.field private mUriList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoEffectsActive:Z

.field private mVideoExtension:Ljava/lang/String;

.field private mcurzoom:Ljava/lang/String;

.field private menuIconListSetas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private menuIconListShare:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private menuListExtendInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private menuListSetas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private menuListShare:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private receiver:Lcom/lge/camera/postview/PostViewMediaBroadCastReceiver;

.field public saveButtonDone:Ljava/lang/Runnable;

.field private setThumbImage:Z

.field public timeMachineAnimationEndListener:Landroid/view/animation/Animation$AnimationListener;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 169
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 115
    iput-object v2, p0, Lcom/lge/camera/PostviewActivity;->mFrontCameraPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 116
    iput-object v2, p0, Lcom/lge/camera/PostviewActivity;->mBackCameraPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 117
    iput-object v2, p0, Lcom/lge/camera/PostviewActivity;->mFrontCamcorderPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 118
    iput-object v2, p0, Lcom/lge/camera/PostviewActivity;->mBackCamcorderPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/PostviewActivity;->mTimeMachineFileNameList:Ljava/util/ArrayList;

    .line 122
    iput v1, p0, Lcom/lge/camera/PostviewActivity;->mApplicationMode:I

    .line 123
    iput v1, p0, Lcom/lge/camera/PostviewActivity;->mCameraId:I

    .line 124
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/camera/PostviewActivity;->mSaveFileName:Ljava/lang/String;

    .line 126
    iput-object v2, p0, Lcom/lge/camera/PostviewActivity;->mSavedUri:Landroid/net/Uri;

    .line 127
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/camera/PostviewActivity;->mCurrentStorageDirectory:Ljava/lang/String;

    .line 128
    iput-boolean v1, p0, Lcom/lge/camera/PostviewActivity;->mIsAttachMode:Z

    .line 129
    iput-boolean v1, p0, Lcom/lge/camera/PostviewActivity;->mIsAttachIntent:Z

    .line 130
    iput-boolean v1, p0, Lcom/lge/camera/PostviewActivity;->mIsMmsVideo:Z

    .line 131
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/camera/PostviewActivity;->mShotMode:Ljava/lang/String;

    .line 132
    iput v1, p0, Lcom/lge/camera/PostviewActivity;->mShotModeIndex:I

    .line 133
    const-string v0, "on"

    iput-object v0, p0, Lcom/lge/camera/PostviewActivity;->mAutoReview:Ljava/lang/String;

    .line 134
    const-string v0, ".mp4"

    iput-object v0, p0, Lcom/lge/camera/PostviewActivity;->mVideoExtension:Ljava/lang/String;

    .line 136
    const-string v0, "en"

    iput-object v0, p0, Lcom/lge/camera/PostviewActivity;->mCurrentLang:Ljava/lang/String;

    .line 137
    iput v1, p0, Lcom/lge/camera/PostviewActivity;->mCurrentKoreanFont:I

    .line 138
    iput v1, p0, Lcom/lge/camera/PostviewActivity;->mPreviewOrientation:I

    .line 139
    iput v1, p0, Lcom/lge/camera/PostviewActivity;->mDisplayOrientationSetting:I

    .line 140
    new-instance v0, Lcom/lge/camera/postview/PostViewToast;

    invoke-direct {v0}, Lcom/lge/camera/postview/PostViewToast;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/PostviewActivity;->mToast:Lcom/lge/camera/postview/PostViewToast;

    .line 141
    iput-boolean v1, p0, Lcom/lge/camera/PostviewActivity;->bChangeFileName:Z

    .line 142
    iput-boolean v1, p0, Lcom/lge/camera/PostviewActivity;->bFromCreateProcess:Z

    .line 143
    iput-boolean v1, p0, Lcom/lge/camera/PostviewActivity;->bConnectedDevice:Z

    .line 144
    iput-boolean v1, p0, Lcom/lge/camera/PostviewActivity;->mTimeMachineDeleteDone:Z

    .line 145
    iput-boolean v1, p0, Lcom/lge/camera/PostviewActivity;->mVideoEffectsActive:Z

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/PostviewActivity;->menuListShare:Ljava/util/ArrayList;

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/PostviewActivity;->menuIconListShare:Ljava/util/ArrayList;

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/PostviewActivity;->menuListSetas:Ljava/util/ArrayList;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/PostviewActivity;->menuIconListSetas:Ljava/util/ArrayList;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/PostviewActivity;->menuListExtendInfo:Ljava/util/ArrayList;

    .line 154
    const-string v0, "-1"

    iput-object v0, p0, Lcom/lge/camera/PostviewActivity;->mcurzoom:Ljava/lang/String;

    .line 155
    const-string v0, "off"

    iput-object v0, p0, Lcom/lge/camera/PostviewActivity;->mFlip:Ljava/lang/String;

    .line 156
    new-instance v0, Lcom/lge/camera/PostviewActivity$1;

    invoke-direct {v0, p0}, Lcom/lge/camera/PostviewActivity$1;-><init>(Lcom/lge/camera/PostviewActivity;)V

    iput-object v0, p0, Lcom/lge/camera/PostviewActivity;->mExitInteraction:Ljava/lang/Runnable;

    .line 162
    new-instance v0, Lcom/lge/camera/util/MainHandler;

    invoke-direct {v0}, Lcom/lge/camera/util/MainHandler;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/PostviewActivity;->mHandler:Lcom/lge/camera/util/MainHandler;

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/PostviewActivity;->mPostRunnables:Ljava/util/ArrayList;

    .line 164
    iput-boolean v1, p0, Lcom/lge/camera/PostviewActivity;->mPause:Z

    .line 165
    iput v1, p0, Lcom/lge/camera/PostviewActivity;->mOrientation:I

    .line 166
    iput-object v2, p0, Lcom/lge/camera/PostviewActivity;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 167
    iput v1, p0, Lcom/lge/camera/PostviewActivity;->mPostviewMenuState:I

    .line 457
    iput-object v2, p0, Lcom/lge/camera/PostviewActivity;->mCamera:Landroid/hardware/Camera;

    .line 458
    iput-object v2, p0, Lcom/lge/camera/PostviewActivity;->mCameraOpenThread:Ljava/lang/Thread;

    .line 529
    iput-object v2, p0, Lcom/lge/camera/PostviewActivity;->mCapturedBitmap:Landroid/graphics/Bitmap;

    .line 551
    new-instance v0, Lcom/lge/camera/PostviewActivity$3;

    invoke-direct {v0, p0}, Lcom/lge/camera/PostviewActivity$3;-><init>(Lcom/lge/camera/PostviewActivity;)V

    iput-object v0, p0, Lcom/lge/camera/PostviewActivity;->mReloadAllLayout:Ljava/lang/Runnable;

    .line 586
    new-instance v0, Lcom/lge/camera/PostviewActivity$4;

    invoke-direct {v0, p0}, Lcom/lge/camera/PostviewActivity$4;-><init>(Lcom/lge/camera/PostviewActivity;)V

    iput-object v0, p0, Lcom/lge/camera/PostviewActivity;->mSetOrientationReload:Ljava/lang/Runnable;

    .line 690
    iput-boolean v1, p0, Lcom/lge/camera/PostviewActivity;->mOrientationChangeEnabled:Z

    .line 907
    new-instance v0, Lcom/lge/camera/util/ImageRotationOn;

    invoke-direct {v0}, Lcom/lge/camera/util/ImageRotationOn;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/PostviewActivity;->imageHandler:Lcom/lge/camera/util/ImageHandler;

    .line 1393
    const/16 v0, 0xff

    iput v0, p0, Lcom/lge/camera/PostviewActivity;->mPanelAlpha:I

    .line 1992
    new-instance v0, Lcom/lge/camera/PostviewActivity$9;

    invoke-direct {v0, p0}, Lcom/lge/camera/PostviewActivity$9;-><init>(Lcom/lge/camera/PostviewActivity;)V

    iput-object v0, p0, Lcom/lge/camera/PostviewActivity;->mShareButtonListener:Landroid/view/View$OnClickListener;

    .line 2008
    new-instance v0, Lcom/lge/camera/PostviewActivity$10;

    invoke-direct {v0, p0}, Lcom/lge/camera/PostviewActivity$10;-><init>(Lcom/lge/camera/PostviewActivity;)V

    iput-object v0, p0, Lcom/lge/camera/PostviewActivity;->mPlayButtonListener:Landroid/view/View$OnClickListener;

    .line 2030
    new-instance v0, Lcom/lge/camera/PostviewActivity$11;

    invoke-direct {v0, p0}, Lcom/lge/camera/PostviewActivity$11;-><init>(Lcom/lge/camera/PostviewActivity;)V

    iput-object v0, p0, Lcom/lge/camera/PostviewActivity;->mSetAsButtonListener:Landroid/view/View$OnClickListener;

    .line 2045
    new-instance v0, Lcom/lge/camera/PostviewActivity$12;

    invoke-direct {v0, p0}, Lcom/lge/camera/PostviewActivity$12;-><init>(Lcom/lge/camera/PostviewActivity;)V

    iput-object v0, p0, Lcom/lge/camera/PostviewActivity;->mFinishListener:Landroid/view/View$OnClickListener;

    .line 2052
    new-instance v0, Lcom/lge/camera/PostviewActivity$13;

    invoke-direct {v0, p0}, Lcom/lge/camera/PostviewActivity$13;-><init>(Lcom/lge/camera/PostviewActivity;)V

    iput-object v0, p0, Lcom/lge/camera/PostviewActivity;->mDeleteButtonListener:Landroid/view/View$OnClickListener;

    .line 2081
    new-instance v0, Lcom/lge/camera/PostviewActivity$14;

    invoke-direct {v0, p0}, Lcom/lge/camera/PostviewActivity$14;-><init>(Lcom/lge/camera/PostviewActivity;)V

    iput-object v0, p0, Lcom/lge/camera/PostviewActivity;->mNewButtonListener:Landroid/view/View$OnClickListener;

    .line 2101
    new-instance v0, Lcom/lge/camera/PostviewActivity$15;

    invoke-direct {v0, p0}, Lcom/lge/camera/PostviewActivity$15;-><init>(Lcom/lge/camera/PostviewActivity;)V

    iput-object v0, p0, Lcom/lge/camera/PostviewActivity;->mAttachButtonListener:Landroid/view/View$OnClickListener;

    .line 2120
    new-instance v0, Lcom/lge/camera/PostviewActivity$16;

    invoke-direct {v0, p0}, Lcom/lge/camera/PostviewActivity$16;-><init>(Lcom/lge/camera/PostviewActivity;)V

    iput-object v0, p0, Lcom/lge/camera/PostviewActivity;->mMultiSelectButtonListener:Landroid/view/View$OnClickListener;

    .line 2132
    new-instance v0, Lcom/lge/camera/PostviewActivity$17;

    invoke-direct {v0, p0}, Lcom/lge/camera/PostviewActivity$17;-><init>(Lcom/lge/camera/PostviewActivity;)V

    iput-object v0, p0, Lcom/lge/camera/PostviewActivity;->mTimeMachineSaveButtonListener:Landroid/view/View$OnClickListener;

    .line 2156
    new-instance v0, Lcom/lge/camera/PostviewActivity$18;

    invoke-direct {v0, p0}, Lcom/lge/camera/PostviewActivity$18;-><init>(Lcom/lge/camera/PostviewActivity;)V

    iput-object v0, p0, Lcom/lge/camera/PostviewActivity;->saveButtonDone:Ljava/lang/Runnable;

    .line 2185
    new-instance v0, Lcom/lge/camera/PostviewActivity$20;

    invoke-direct {v0, p0}, Lcom/lge/camera/PostviewActivity$20;-><init>(Lcom/lge/camera/PostviewActivity;)V

    iput-object v0, p0, Lcom/lge/camera/PostviewActivity;->mThumbnailButtonListener:Landroid/view/View$OnClickListener;

    .line 2256
    iput-object v2, p0, Lcom/lge/camera/PostviewActivity;->mThumbImage:Landroid/graphics/Bitmap;

    .line 2257
    iput-boolean v1, p0, Lcom/lge/camera/PostviewActivity;->setThumbImage:Z

    .line 2372
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/camera/PostviewActivity;->mDialogId:I

    .line 2583
    new-instance v0, Lcom/lge/camera/PostviewActivity$30;

    invoke-direct {v0, p0}, Lcom/lge/camera/PostviewActivity$30;-><init>(Lcom/lge/camera/PostviewActivity;)V

    iput-object v0, p0, Lcom/lge/camera/PostviewActivity;->dialogKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 2995
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/PostviewActivity;->mThumbnailRect:Ljava/util/ArrayList;

    .line 3522
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/PostviewActivity;->mSelectedIndexs:Ljava/util/ArrayList;

    .line 3524
    iput v1, p0, Lcom/lge/camera/PostviewActivity;->mSelectedIndex:I

    .line 3755
    iput-object v2, p0, Lcom/lge/camera/PostviewActivity;->receiver:Lcom/lge/camera/postview/PostViewMediaBroadCastReceiver;

    .line 3882
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/camera/PostviewActivity;->mTimeMachineViewMode:I

    .line 3883
    iput v1, p0, Lcom/lge/camera/PostviewActivity;->mTimerCount:I

    .line 3884
    iput v1, p0, Lcom/lge/camera/PostviewActivity;->mTimeMachineShotCount:I

    .line 3885
    iput-object v2, p0, Lcom/lge/camera/PostviewActivity;->mAnimationTimer:Ljava/util/Timer;

    .line 3955
    new-instance v0, Lcom/lge/camera/PostviewActivity$36;

    invoke-direct {v0, p0}, Lcom/lge/camera/PostviewActivity$36;-><init>(Lcom/lge/camera/PostviewActivity;)V

    iput-object v0, p0, Lcom/lge/camera/PostviewActivity;->mTimeMachineAnimationRunnable1:Ljava/lang/Runnable;

    .line 4005
    iput-object v2, p0, Lcom/lge/camera/PostviewActivity;->anim:Landroid/view/animation/Animation;

    .line 4006
    new-instance v0, Lcom/lge/camera/PostviewActivity$37;

    invoke-direct {v0, p0}, Lcom/lge/camera/PostviewActivity$37;-><init>(Lcom/lge/camera/PostviewActivity;)V

    iput-object v0, p0, Lcom/lge/camera/PostviewActivity;->mTimeMachineAnimationRunnable2:Ljava/lang/Runnable;

    .line 4106
    new-instance v0, Lcom/lge/camera/PostviewActivity$38;

    invoke-direct {v0, p0}, Lcom/lge/camera/PostviewActivity$38;-><init>(Lcom/lge/camera/PostviewActivity;)V

    iput-object v0, p0, Lcom/lge/camera/PostviewActivity;->timeMachineAnimationEndListener:Landroid/view/animation/Animation$AnimationListener;

    .line 170
    sget v0, Lcom/lge/camera/util/Common;->APP_POSTVIEW_INSTANCE_COUNT:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/lge/camera/util/Common;->APP_POSTVIEW_INSTANCE_COUNT:I

    .line 171
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "construct POSTVIEW app_instance_cnt = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lge/camera/util/Common;->APP_POSTVIEW_INSTANCE_COUNT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method private OnPositiveButtonClick(ILandroid/content/DialogInterface;I)V
    .locals 7
    .parameter "id"
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v6, 0x1

    .line 2596
    iget-object v4, p0, Lcom/lge/camera/PostviewActivity;->mDialog:Landroid/app/Dialog;

    if-nez v4, :cond_1

    .line 2659
    :cond_0
    :goto_0
    return-void

    .line 2599
    :cond_1
    iget-boolean v4, p0, Lcom/lge/camera/PostviewActivity;->mPause:Z

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2602
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 2606
    :sswitch_0
    :try_start_0
    iget-object v4, p0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2608
    .local v2, mImageListSize:I
    if-ne v2, v6, :cond_3

    .line 2609
    iget v4, p0, Lcom/lge/camera/PostviewActivity;->mApplicationMode:I

    if-nez v4, :cond_2

    .line 2610
    iget-object v5, p0, Lcom/lge/camera/PostviewActivity;->mSaveFileName:Ljava/lang/String;

    iget-object v4, p0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    invoke-direct {p0, v5, v4}, Lcom/lge/camera/PostviewActivity;->deleteImage(Ljava/lang/String;Landroid/net/Uri;)I

    .line 2614
    :goto_1
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/lge/camera/PostviewActivity;->deleteFinished(Z)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 2642
    .end local v2           #mImageListSize:I
    :catch_0
    move-exception v0

    .line 2643
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v4, "CameraApp"

    const-string v5, "ArrayIndexOutOfBoundsException!"

    invoke-static {v4, v5, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2612
    .end local v0           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v2       #mImageListSize:I
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/lge/camera/PostviewActivity;->mSaveFileName:Ljava/lang/String;

    iget-object v4, p0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    invoke-direct {p0, v5, v4}, Lcom/lge/camera/PostviewActivity;->deleteVideo(Ljava/lang/String;Landroid/net/Uri;)Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 2644
    .end local v2           #mImageListSize:I
    :catch_1
    move-exception v0

    .line 2645
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v4, "CameraApp"

    const-string v5, "NullPointerException!"

    invoke-static {v4, v5, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2616
    .end local v0           #e:Ljava/lang/NullPointerException;
    .restart local v2       #mImageListSize:I
    :cond_3
    if-le v2, v6, :cond_0

    .line 2617
    :try_start_2
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->isTimeMachineShot()Z

    move-result v4

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/lge/camera/PostviewActivity;->mTimeMachineViewMode:I

    if-nez v4, :cond_4

    .line 2618
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/lge/camera/PostviewActivity;->deleteSelectedImages(ZZ)I

    .line 2619
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/lge/camera/PostviewActivity;->deleteFinished(Z)V
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 2646
    .end local v2           #mImageListSize:I
    :catch_2
    move-exception v0

    .line 2647
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v4, "CameraApp"

    const-string v5, "IndexOutOfBoundsException!"

    invoke-static {v4, v5, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2622
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v2       #mImageListSize:I
    :cond_4
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_3
    invoke-virtual {p0, v4, v5}, Lcom/lge/camera/PostviewActivity;->deleteSelectedImages(ZZ)I

    move-result v3

    .line 2624
    .local v3, remain:I
    if-nez v3, :cond_5

    .line 2625
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/lge/camera/PostviewActivity;->setIsMultiSelectMode(Z)V

    .line 2626
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/lge/camera/PostviewActivity;->setMenuDim(Z)V

    .line 2627
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/lge/camera/PostviewActivity;->deleteFinished(Z)V

    goto/16 :goto_0

    .line 2630
    :cond_5
    if-le v3, v6, :cond_6

    .line 2631
    const/4 v4, 0x0

    const v5, 0x7f02018f

    invoke-virtual {p0, v4, v5}, Lcom/lge/camera/PostviewActivity;->setSubButton(II)V

    .line 2633
    :cond_6
    const v4, 0x7f0b012b

    invoke-virtual {p0, v4}, Lcom/lge/camera/PostviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/lge/camera/PostviewActivity;->toast(Ljava/lang/String;)V

    .line 2635
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/lge/camera/PostviewActivity;->setIsMultiSelectMode(Z)V

    .line 2636
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/lge/camera/PostviewActivity;->setMenuDim(Z)V

    .line 2637
    invoke-direct {p0}, Lcom/lge/camera/PostviewActivity;->setGalleryLayout()V

    .line 2638
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/lge/camera/PostviewActivity;->setThumbImage:Z

    .line 2639
    const/16 v4, 0x64

    invoke-virtual {p0, v4}, Lcom/lge/camera/PostviewActivity;->updateReviewThumbnailButton(I)V
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 2652
    .end local v2           #mImageListSize:I
    .end local v3           #remain:I
    :sswitch_1
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v5, "package:com.android.gallery3d"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2655
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/lge/camera/PostviewActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2602
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x8 -> :sswitch_0
        0x20 -> :sswitch_1
    .end sparse-switch
.end method

.method static synthetic access$000(Lcom/lge/camera/PostviewActivity;)Landroid/hardware/Camera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$002(Lcom/lge/camera/PostviewActivity;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/lge/camera/PostviewActivity;->mCamera:Landroid/hardware/Camera;

    return-object p1
.end method

.method static synthetic access$100(Lcom/lge/camera/PostviewActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget v0, p0, Lcom/lge/camera/PostviewActivity;->mCameraId:I

    return v0
.end method

.method static synthetic access$1000(Lcom/lge/camera/PostviewActivity;Landroid/widget/Gallery;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/lge/camera/PostviewActivity;->setMultiShotGalleryVisieble(Landroid/widget/Gallery;)V

    return-void
.end method

.method static synthetic access$102(Lcom/lge/camera/PostviewActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput p1, p0, Lcom/lge/camera/PostviewActivity;->mCameraId:I

    return p1
.end method

.method static synthetic access$1100(Lcom/lge/camera/PostviewActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lge/camera/PostviewActivity;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/lge/camera/PostviewActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/lge/camera/PostviewActivity;->mDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/lge/camera/PostviewActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/lge/camera/PostviewActivity;->setTimeMachineBeforeOpenPopup()V

    return-void
.end method

.method static synthetic access$1400(Lcom/lge/camera/PostviewActivity;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mSavedUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/lge/camera/PostviewActivity;)Lcom/lge/camera/postview/PostViewToast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mToast:Lcom/lge/camera/postview/PostViewToast;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/lge/camera/PostviewActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mExitInteraction:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/lge/camera/PostviewActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget v0, p0, Lcom/lge/camera/PostviewActivity;->mApplicationMode:I

    return v0
.end method

.method static synthetic access$1802(Lcom/lge/camera/PostviewActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/lge/camera/PostviewActivity;->mTimeMachineDeleteDone:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/lge/camera/PostviewActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/lge/camera/PostviewActivity;->saveFinished()V

    return-void
.end method

.method static synthetic access$200(Lcom/lge/camera/PostviewActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/lge/camera/PostviewActivity;->setupPostview()V

    return-void
.end method

.method static synthetic access$2000(Lcom/lge/camera/PostviewActivity;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mThumbImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/lge/camera/PostviewActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/lge/camera/PostviewActivity;->mThumbImage:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/lge/camera/PostviewActivity;ILandroid/content/DialogInterface;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 105
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/camera/PostviewActivity;->OnPositiveButtonClick(ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method static synthetic access$2202(Lcom/lge/camera/PostviewActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput p1, p0, Lcom/lge/camera/PostviewActivity;->mDialogId:I

    return p1
.end method

.method static synthetic access$2300(Lcom/lge/camera/PostviewActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->menuListShare:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/lge/camera/PostviewActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->menuListExtendInfo:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/lge/camera/PostviewActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->menuListSetas:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/lge/camera/PostviewActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/lge/camera/PostviewActivity;->mPause:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/lge/camera/PostviewActivity;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/PostviewActivity;->doContinuousGalleryTouchAction(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/lge/camera/PostviewActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mTimeMachineAnimationRunnable1:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/lge/camera/PostviewActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mTimeMachineAnimationRunnable2:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/camera/PostviewActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/lge/camera/PostviewActivity;->updateLoadedThumbnailButton()V

    return-void
.end method

.method static synthetic access$3000(Lcom/lge/camera/PostviewActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget v0, p0, Lcom/lge/camera/PostviewActivity;->mTimerCount:I

    return v0
.end method

.method static synthetic access$3010(Lcom/lge/camera/PostviewActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 105
    iget v0, p0, Lcom/lge/camera/PostviewActivity;->mTimerCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/lge/camera/PostviewActivity;->mTimerCount:I

    return v0
.end method

.method static synthetic access$3100(Lcom/lge/camera/PostviewActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mThumbnailRect:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/lge/camera/PostviewActivity;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->anim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/camera/PostviewActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/lge/camera/PostviewActivity;->mOrientationChangeEnabled:Z

    return v0
.end method

.method static synthetic access$500(Lcom/lge/camera/PostviewActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget v0, p0, Lcom/lge/camera/PostviewActivity;->mOrientation:I

    return v0
.end method

.method static synthetic access$502(Lcom/lge/camera/PostviewActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput p1, p0, Lcom/lge/camera/PostviewActivity;->mOrientation:I

    return p1
.end method

.method static synthetic access$600(Lcom/lge/camera/PostviewActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget v0, p0, Lcom/lge/camera/PostviewActivity;->mDisplayOrientationSetting:I

    return v0
.end method

.method static synthetic access$700(Lcom/lge/camera/PostviewActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget v0, p0, Lcom/lge/camera/PostviewActivity;->mTimeMachineViewMode:I

    return v0
.end method

.method static synthetic access$702(Lcom/lge/camera/PostviewActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput p1, p0, Lcom/lge/camera/PostviewActivity;->mTimeMachineViewMode:I

    return p1
.end method

.method static synthetic access$800(Lcom/lge/camera/PostviewActivity;)Lcom/lge/camera/postview/ContShotThumbAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mImageAdapter:Lcom/lge/camera/postview/ContShotThumbAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lge/camera/PostviewActivity;Landroid/widget/ImageView;ZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 105
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/camera/PostviewActivity;->setCapturedImageView(Landroid/widget/ImageView;ZI)V

    return-void
.end method

.method private checkAndDisconnectCameraDevice()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 488
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAndDisconnectCameraDevice : mCamera = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/PostviewActivity;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity;->mCameraOpenThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 492
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity;->mCameraOpenThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 493
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity;->mCameraOpenThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    :goto_0
    iput-object v4, p0, Lcom/lge/camera/PostviewActivity;->mCameraOpenThread:Ljava/lang/Thread;

    .line 500
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_2

    .line 501
    iget-boolean v1, p0, Lcom/lge/camera/PostviewActivity;->bConnectedDevice:Z

    if-eqz v1, :cond_1

    .line 502
    invoke-static {}, Lcom/lge/camera/util/CameraHolder;->instance()Lcom/lge/camera/util/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/util/CameraHolder;->keep()V

    .line 504
    :cond_1
    invoke-static {}, Lcom/lge/camera/util/CameraHolder;->instance()Lcom/lge/camera/util/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/util/CameraHolder;->release()Z

    .line 505
    iput-object v4, p0, Lcom/lge/camera/PostviewActivity;->mCamera:Landroid/hardware/Camera;

    .line 507
    :cond_2
    return-void

    .line 494
    :catch_0
    move-exception v0

    .line 495
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private checkFlip(Landroid/graphics/Bitmap;)V
    .locals 6
    .parameter "bmp"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 3802
    iget v5, p0, Lcom/lge/camera/PostviewActivity;->mCameraId:I

    if-ne v5, v4, :cond_0

    move v2, v4

    .line 3805
    .local v2, flip:Z
    :cond_0
    :try_start_0
    iget v5, p0, Lcom/lge/camera/PostviewActivity;->mApplicationMode:I

    if-nez v5, :cond_1

    iget v5, p0, Lcom/lge/camera/PostviewActivity;->mCameraId:I

    if-ne v5, v4, :cond_1

    iget-object v4, p0, Lcom/lge/camera/PostviewActivity;->mFlip:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/lge/camera/PostviewActivity;->mFlip:Ljava/lang/String;

    const-string v5, "off"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3810
    const/4 v2, 0x0

    .line 3813
    :cond_1
    const/4 v0, 0x0

    .line 3814
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_2

    .line 3815
    const-string v4, "CameraApp"

    const-string v5, "bmp is flipped.."

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3816
    iget-object v4, p0, Lcom/lge/camera/PostviewActivity;->imageHandler:Lcom/lge/camera/util/ImageHandler;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5, v2}, Lcom/lge/camera/util/ImageHandler;->getImage(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3820
    :goto_0
    iput-object v0, p0, Lcom/lge/camera/PostviewActivity;->mCapturedBitmap:Landroid/graphics/Bitmap;

    .line 3825
    const v4, 0x7f090030

    invoke-virtual {p0, v4}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 3826
    .local v3, postview:Landroid/widget/ImageView;
    invoke-virtual {p0, v3}, Lcom/lge/camera/PostviewActivity;->setImageViewClear(Landroid/widget/ImageView;)V

    .line 3828
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3832
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v3           #postview:Landroid/widget/ImageView;
    :goto_1
    return-void

    .line 3818
    .restart local v0       #b:Landroid/graphics/Bitmap;
    :cond_2
    move-object v0, p1

    goto :goto_0

    .line 3829
    .end local v0           #b:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 3830
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v4, "CameraApp"

    const-string v5, "NullPointerException : "

    invoke-static {v4, v5, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private clearShareAndSetAsMenuList(ZZ)V
    .locals 1
    .parameter "share"
    .parameter "setas"

    .prologue
    .line 344
    if-eqz p1, :cond_2

    .line 345
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->menuListShare:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->menuListShare:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->menuListShare:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->menuListExtendInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->menuListExtendInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 349
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->menuListExtendInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->menuIconListShare:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->menuIconListShare:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 352
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->menuIconListShare:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 355
    :cond_2
    if-eqz p2, :cond_5

    .line 356
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->menuListSetas:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->menuListSetas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 357
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->menuListSetas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 359
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->menuListExtendInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->menuListExtendInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 360
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->menuListExtendInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 362
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->menuIconListSetas:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->menuIconListSetas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 363
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->menuIconListSetas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 366
    :cond_5
    return-void
.end method

.method private connectCameraDevice()V
    .locals 3

    .prologue
    .line 461
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectCameraDevice : mCamera = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/PostviewActivity;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 463
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lge/camera/PostviewActivity$2;

    invoke-direct {v1, p0}, Lcom/lge/camera/PostviewActivity$2;-><init>(Lcom/lge/camera/PostviewActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lge/camera/PostviewActivity;->mCameraOpenThread:Ljava/lang/Thread;

    .line 483
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mCameraOpenThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 485
    :cond_0
    return-void
.end method

.method private createDeletePopup(I)V
    .locals 7
    .parameter "dialogId"

    .prologue
    .line 2427
    new-instance v3, Lcom/lge/camera/PostviewActivity$22;

    invoke-direct {v3, p0, p1}, Lcom/lge/camera/PostviewActivity$22;-><init>(Lcom/lge/camera/PostviewActivity;I)V

    .line 2433
    .local v3, yesClickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2434
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const-string v2, ""

    .line 2435
    .local v2, notifyMsg:Ljava/lang/String;
    iget v4, p0, Lcom/lge/camera/PostviewActivity;->mApplicationMode:I

    if-nez v4, :cond_1

    .line 2436
    const v4, 0x7f0b0262

    invoke-virtual {p0, v4}, Lcom/lge/camera/PostviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2438
    const/16 v4, 0x8

    if-ne p1, v4, :cond_0

    .line 2439
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getCountThumbnailSelected()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    .line 2440
    const v4, 0x7f0b0258

    invoke-virtual {p0, v4}, Lcom/lge/camera/PostviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2447
    :cond_0
    :goto_0
    const v4, 0x7f0b0127

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1010355

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b0020

    invoke-virtual {v4, v5, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b002a

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2454
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 2455
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-direct {p0, v1}, Lcom/lge/camera/PostviewActivity;->setWindowDimBehindDialog(Landroid/app/AlertDialog;)V

    .line 2457
    new-instance v4, Lcom/lge/camera/PostviewActivity$23;

    invoke-direct {v4, p0}, Lcom/lge/camera/PostviewActivity$23;-><init>(Lcom/lge/camera/PostviewActivity;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2465
    iput-object v1, p0, Lcom/lge/camera/PostviewActivity;->mDialog:Landroid/app/Dialog;

    .line 2466
    return-void

    .line 2444
    .end local v1           #dialog:Landroid/app/AlertDialog;
    :cond_1
    const v4, 0x7f0b0263

    invoke-virtual {p0, v4}, Lcom/lge/camera/PostviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private createEnableGalleryPopup(I)V
    .locals 11
    .parameter "dialogId"

    .prologue
    .line 2534
    new-instance v6, Lcom/lge/camera/PostviewActivity$28;

    invoke-direct {v6, p0, p1}, Lcom/lge/camera/PostviewActivity$28;-><init>(Lcom/lge/camera/PostviewActivity;I)V

    .line 2539
    .local v6, yesClickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2541
    .local v2, builder:Landroid/app/AlertDialog$Builder;
    const-string v1, ""

    .line 2544
    .local v1, appName:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "com.android.gallery3d"

    const/16 v10, 0x2000

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2552
    :goto_0
    const v7, 0x7f0b0267

    invoke-virtual {p0, v7}, Lcom/lge/camera/PostviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 2554
    .local v5, notifyMsg:Ljava/lang/String;
    const v7, 0x7f0b0269

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x1010355

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0b0020

    invoke-virtual {v7, v8, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0b002a

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2560
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 2561
    .local v3, dialog:Landroid/app/AlertDialog;
    invoke-direct {p0, v3}, Lcom/lge/camera/PostviewActivity;->setWindowDimBehindDialog(Landroid/app/AlertDialog;)V

    .line 2563
    new-instance v7, Lcom/lge/camera/PostviewActivity$29;

    invoke-direct {v7, p0}, Lcom/lge/camera/PostviewActivity$29;-><init>(Lcom/lge/camera/PostviewActivity;)V

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2572
    iput-object v3, p0, Lcom/lge/camera/PostviewActivity;->mDialog:Landroid/app/Dialog;

    .line 2573
    return-void

    .line 2547
    .end local v3           #dialog:Landroid/app/AlertDialog;
    .end local v5           #notifyMsg:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 2548
    .local v4, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "CameraApp"

    const-string v8, "Application name is not found"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2549
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private createSetAsListPopup(I)V
    .locals 9
    .parameter "dialogId"

    .prologue
    .line 2500
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2501
    .local v6, builder:Landroid/app/AlertDialog$Builder;
    new-instance v0, Lcom/lge/camera/postview/PostviewMenuAdapter;

    const v2, 0x7f030008

    iget-object v3, p0, Lcom/lge/camera/PostviewActivity;->menuListSetas:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/lge/camera/PostviewActivity;->menuListExtendInfo:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/lge/camera/PostviewActivity;->menuIconListSetas:Ljava/util/ArrayList;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/lge/camera/postview/PostviewMenuAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 2503
    .local v0, adapter:Lcom/lge/camera/postview/PostviewMenuAdapter;
    const/16 v1, 0x14

    if-ne p1, v1, :cond_0

    const v8, 0x7f0b0117

    .line 2505
    .local v8, titleId:I
    :goto_0
    invoke-virtual {v6, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/lge/camera/PostviewActivity$26;

    invoke-direct {v2, p0, p1}, Lcom/lge/camera/PostviewActivity$26;-><init>(Lcom/lge/camera/PostviewActivity;I)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2517
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    .line 2518
    .local v7, dialog:Landroid/app/AlertDialog;
    invoke-direct {p0, v7}, Lcom/lge/camera/PostviewActivity;->setWindowDimBehindDialog(Landroid/app/AlertDialog;)V

    .line 2520
    new-instance v1, Lcom/lge/camera/PostviewActivity$27;

    invoke-direct {v1, p0}, Lcom/lge/camera/PostviewActivity$27;-><init>(Lcom/lge/camera/PostviewActivity;)V

    invoke-virtual {v7, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2529
    iput-object v7, p0, Lcom/lge/camera/PostviewActivity;->mDialog:Landroid/app/Dialog;

    .line 2530
    return-void

    .line 2503
    .end local v7           #dialog:Landroid/app/AlertDialog;
    .end local v8           #titleId:I
    :cond_0
    const v8, 0x7f0b0118

    goto :goto_0
.end method

.method private createSharedListPopup(I)V
    .locals 9
    .parameter "dialogId"

    .prologue
    .line 2469
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2470
    .local v6, builder:Landroid/app/AlertDialog$Builder;
    new-instance v0, Lcom/lge/camera/postview/PostviewMenuAdapter;

    const v2, 0x7f030008

    iget-object v3, p0, Lcom/lge/camera/PostviewActivity;->menuListShare:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/lge/camera/PostviewActivity;->menuListExtendInfo:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/lge/camera/PostviewActivity;->menuIconListShare:Ljava/util/ArrayList;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/lge/camera/postview/PostviewMenuAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 2472
    .local v0, adapter:Lcom/lge/camera/postview/PostviewMenuAdapter;
    const/16 v1, 0x14

    if-ne p1, v1, :cond_0

    const v8, 0x7f0b0117

    .line 2474
    .local v8, titleId:I
    :goto_0
    invoke-virtual {v6, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/lge/camera/PostviewActivity$24;

    invoke-direct {v2, p0, p1}, Lcom/lge/camera/PostviewActivity$24;-><init>(Lcom/lge/camera/PostviewActivity;I)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2484
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    .line 2485
    .local v7, dialog:Landroid/app/AlertDialog;
    invoke-direct {p0, v7}, Lcom/lge/camera/PostviewActivity;->setWindowDimBehindDialog(Landroid/app/AlertDialog;)V

    .line 2487
    new-instance v1, Lcom/lge/camera/PostviewActivity$25;

    invoke-direct {v1, p0}, Lcom/lge/camera/PostviewActivity$25;-><init>(Lcom/lge/camera/PostviewActivity;)V

    invoke-virtual {v7, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2496
    iput-object v7, p0, Lcom/lge/camera/PostviewActivity;->mDialog:Landroid/app/Dialog;

    .line 2497
    return-void

    .line 2472
    .end local v7           #dialog:Landroid/app/AlertDialog;
    .end local v8           #titleId:I
    :cond_0
    const v8, 0x7f0b0118

    goto :goto_0
.end method

.method private deleteFinished(Z)V
    .locals 4
    .parameter "useGalleryAnimation"

    .prologue
    .line 2662
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 2663
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "delete_done"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2664
    const/16 v2, 0x64

    invoke-virtual {p0, v2, v1}, Lcom/lge/camera/PostviewActivity;->setResult(ILandroid/content/Intent;)V

    .line 2665
    if-eqz p1, :cond_1

    .line 2666
    const v2, 0x7f090036

    invoke-virtual {p0, v2}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Gallery;

    .line 2667
    .local v0, galleryView:Landroid/widget/Gallery;
    invoke-virtual {v0}, Landroid/widget/Gallery;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 2668
    iget-object v2, p0, Lcom/lge/camera/PostviewActivity;->mExitInteraction:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/lge/camera/PostviewActivity;->gallerySlideDownAnimation(Ljava/lang/Runnable;)V

    .line 2675
    .end local v0           #galleryView:Landroid/widget/Gallery;
    :goto_0
    return-void

    .line 2670
    .restart local v0       #galleryView:Landroid/widget/Gallery;
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->finish()V

    goto :goto_0

    .line 2673
    .end local v0           #galleryView:Landroid/widget/Gallery;
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->finish()V

    goto :goto_0
.end method

.method private deleteImage(Ljava/lang/String;Landroid/net/Uri;)I
    .locals 5
    .parameter "filename"
    .parameter "uri"

    .prologue
    .line 2719
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/lge/camera/PostviewActivity;->mCurrentStorageDirectory:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2721
    .local v1, fullPath:Ljava/lang/String;
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "try to delete "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2722
    invoke-static {v1}, Lcom/lge/camera/util/Common;->isFileExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2723
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2724
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2725
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/lge/camera/util/ImageManager;->deleteImage(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 2726
    const-string v2, "CameraApp"

    const-string v3, "deleted."

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2728
    iget-object v2, p0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2729
    const-string v2, "CameraApp"

    const-string v3, "deleted uri"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2733
    :goto_0
    iget-object v2, p0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2740
    .end local v0           #file:Ljava/io/File;
    :goto_1
    return v2

    .line 2731
    .restart local v0       #file:Ljava/io/File;
    :cond_0
    const-string v2, "CameraApp"

    const-string v3, "failure to delete uri!"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2735
    :cond_1
    const-string v2, "CameraApp"

    const-string v3, "delete failed"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2739
    .end local v0           #file:Ljava/io/File;
    :cond_2
    const-string v2, "CameraApp"

    const-string v3, "failure delete image file (return -1)"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2740
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private deleteImage(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 2875
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v1, p0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-static {v2, v1}, Lcom/lge/camera/util/Common;->getNameWithoutExtension(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 2876
    .local v0, title:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2877
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-direct {p0, v0, v1}, Lcom/lge/camera/PostviewActivity;->deleteImage(Ljava/lang/String;Landroid/net/Uri;)I

    .line 2878
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity;->mImageAdapter:Lcom/lge/camera/postview/ContShotThumbAdapter;

    iget-object v1, v1, Lcom/lge/camera/postview/ContShotThumbAdapter;->mThumb:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2882
    :goto_0
    return-void

    .line 2880
    :cond_0
    const-string v1, "CameraApp"

    const-string v2, "can\'t find uri data"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private deleteVideo(Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 8
    .parameter "filename"
    .parameter "uri"

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 2697
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/lge/camera/PostviewActivity;->mCurrentStorageDirectory:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/PostviewActivity;->mVideoExtension:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2699
    .local v2, fullPath:Ljava/lang/String;
    invoke-static {v2}, Lcom/lge/camera/util/Common;->isFileExist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2700
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2701
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2702
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2703
    .local v0, c:Landroid/content/ContentResolver;
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "videoFileUri : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/camera/PostviewActivity;->mSavedUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2704
    iget-object v4, p0, Lcom/lge/camera/PostviewActivity;->mSavedUri:Landroid/net/Uri;

    if-nez v4, :cond_0

    .line 2705
    const-string v4, "CameraApp"

    const-string v5, "videoFileUri is null!"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2715
    .end local v0           #c:Landroid/content/ContentResolver;
    .end local v1           #file:Ljava/io/File;
    :goto_0
    return v3

    .line 2708
    .restart local v0       #c:Landroid/content/ContentResolver;
    .restart local v1       #file:Ljava/io/File;
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/PostviewActivity;->mSavedUri:Landroid/net/Uri;

    invoke-virtual {v0, v3, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2715
    .end local v0           #c:Landroid/content/ContentResolver;
    .end local v1           #file:Ljava/io/File;
    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    .line 2711
    .restart local v1       #file:Ljava/io/File;
    :cond_2
    const-string v4, "CameraApp"

    const-string v5, "videoFile delete fail"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private doContinuousGalleryTouchAction(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 16
    .parameter "v"
    .parameter "event"

    .prologue
    .line 3152
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/PostviewActivity;->mShotMode:Ljava/lang/String;

    if-eqz v12, :cond_b

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/PostviewActivity;->mShotMode:Ljava/lang/String;

    const-string v13, "shotmode_continuous"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/PostviewActivity;->mShotMode:Ljava/lang/String;

    const-string v13, "shotmode_timemachine"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 3156
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/PostviewActivity;->mShotMode:Ljava/lang/String;

    const-string v13, "shotmode_timemachine"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 3157
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/PostviewActivity;->mAnimationTimer:Ljava/util/Timer;

    if-eqz v12, :cond_1

    .line 3158
    const/4 v12, 0x1

    .line 3241
    :goto_0
    return v12

    .line 3161
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/PostviewActivity;->setGalleryThumbnailRect()V

    .line 3164
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/PostviewActivity;->mThumbnailRect:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3165
    .local v1, count:I
    const/4 v6, -0x1

    .line 3166
    .local v6, selectedIndex:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    float-to-int v10, v12

    .line 3167
    .local v10, x:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    float-to-int v11, v12

    .line 3171
    .local v11, y:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v1, :cond_2

    .line 3172
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/PostviewActivity;->mThumbnailRect:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    .line 3175
    .local v5, rect:Landroid/graphics/Rect;
    iget v12, v5, Landroid/graphics/Rect;->left:I

    if-lt v10, v12, :cond_3

    iget v12, v5, Landroid/graphics/Rect;->right:I

    if-gt v10, v12, :cond_3

    if-ltz v11, :cond_3

    iget v12, v5, Landroid/graphics/Rect;->bottom:I

    if-gt v11, v12, :cond_3

    .line 3176
    move v6, v4

    .line 3181
    .end local v5           #rect:Landroid/graphics/Rect;
    :cond_2
    const/4 v12, -0x1

    if-eq v6, v12, :cond_7

    .line 3182
    const-string v12, "CameraApp"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "OnTouchListener selectedIndex = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3183
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/PostviewActivity;->getIsMultiSelectMode()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 3184
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/PostviewActivity;->getSelectedIndex()I

    move-result v12

    if-eq v12, v6, :cond_4

    .line 3185
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v12}, Lcom/lge/camera/PostviewActivity;->refreshContinuousGallery(IZ)V

    .line 3186
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/PostviewActivity;->refreshLoadCapturedImages()Z

    .line 3197
    :goto_2
    const v12, 0x7f090036

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Gallery;

    .line 3198
    .local v3, g:Landroid/widget/Gallery;
    if-nez v3, :cond_5

    .line 3199
    const/4 v12, 0x1

    goto :goto_0

    .line 3171
    .end local v3           #g:Landroid/widget/Gallery;
    .restart local v5       #rect:Landroid/graphics/Rect;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3188
    .end local v5           #rect:Landroid/graphics/Rect;
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    packed-switch v12, :pswitch_data_0

    goto :goto_2

    .line 3192
    :pswitch_0
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->playSoundEffect(I)V

    .line 3193
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3190
    :pswitch_1
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3201
    .restart local v3       #g:Landroid/widget/Gallery;
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 3202
    .local v9, uriListSize:I
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v9, :cond_6

    .line 3203
    const-string v12, "THUMB_%d"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 3204
    .local v7, tagKey:Ljava/lang/String;
    invoke-virtual {v3, v7}, Landroid/widget/Gallery;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/lge/camera/postview/ThumbnailGalleryItem;

    .line 3206
    .local v8, tgi:Lcom/lge/camera/postview/ThumbnailGalleryItem;
    if-eqz v8, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/PostviewActivity;->getSelectedIndex()I

    move-result v12

    if-ne v4, v12, :cond_9

    .line 3207
    invoke-virtual {v8}, Lcom/lge/camera/postview/ThumbnailGalleryItem;->getChecked()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 3208
    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Lcom/lge/camera/postview/ThumbnailGalleryItem;->setCheck(Z)V

    .line 3209
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/PostviewActivity;->getSelectedIndexs()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/PostviewActivity;->getSelectedIndex()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 3210
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/PostviewActivity;->getSelectedIndexs()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/PostviewActivity;->getSelectedIndex()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3228
    .end local v3           #g:Landroid/widget/Gallery;
    .end local v7           #tagKey:Ljava/lang/String;
    .end local v8           #tgi:Lcom/lge/camera/postview/ThumbnailGalleryItem;
    .end local v9           #uriListSize:I
    :cond_6
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_7

    .line 3229
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->playSoundEffect(I)V

    .line 3239
    .end local v1           #count:I
    .end local v4           #i:I
    .end local v6           #selectedIndex:I
    .end local v10           #x:I
    .end local v11           #y:I
    :cond_7
    :goto_5
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 3213
    .restart local v1       #count:I
    .restart local v3       #g:Landroid/widget/Gallery;
    .restart local v4       #i:I
    .restart local v6       #selectedIndex:I
    .restart local v7       #tagKey:Ljava/lang/String;
    .restart local v8       #tgi:Lcom/lge/camera/postview/ThumbnailGalleryItem;
    .restart local v9       #uriListSize:I
    .restart local v10       #x:I
    .restart local v11       #y:I
    :cond_8
    const/4 v12, 0x1

    invoke-virtual {v8, v12}, Lcom/lge/camera/postview/ThumbnailGalleryItem;->setCheck(Z)V

    .line 3214
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/PostviewActivity;->getSelectedIndexs()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/PostviewActivity;->getSelectedIndex()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 3215
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/PostviewActivity;->getSelectedIndexs()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/PostviewActivity;->getSelectedIndex()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_4

    .line 3232
    .end local v1           #count:I
    .end local v3           #g:Landroid/widget/Gallery;
    .end local v4           #i:I
    .end local v6           #selectedIndex:I
    .end local v7           #tagKey:Ljava/lang/String;
    .end local v8           #tgi:Lcom/lge/camera/postview/ThumbnailGalleryItem;
    .end local v9           #uriListSize:I
    .end local v10           #x:I
    .end local v11           #y:I
    :catch_0
    move-exception v2

    .line 3233
    .local v2, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v12, "CameraApp"

    const-string v13, "ArrayIndexOutOfBoundsException!"

    invoke-static {v12, v13, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 3202
    .end local v2           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v1       #count:I
    .restart local v3       #g:Landroid/widget/Gallery;
    .restart local v4       #i:I
    .restart local v6       #selectedIndex:I
    .restart local v7       #tagKey:Ljava/lang/String;
    .restart local v8       #tgi:Lcom/lge/camera/postview/ThumbnailGalleryItem;
    .restart local v9       #uriListSize:I
    .restart local v10       #x:I
    .restart local v11       #y:I
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 3222
    .end local v3           #g:Landroid/widget/Gallery;
    .end local v7           #tagKey:Ljava/lang/String;
    .end local v8           #tgi:Lcom/lge/camera/postview/ThumbnailGalleryItem;
    .end local v9           #uriListSize:I
    :cond_a
    const/4 v12, -0x1

    if-eq v6, v12, :cond_6

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/PostviewActivity;->getSelectedIndex()I

    move-result v12

    if-eq v6, v12, :cond_6

    .line 3223
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/PostviewActivity;->removeExitInteraction()V

    .line 3224
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v12}, Lcom/lge/camera/PostviewActivity;->refreshContinuousGallery(IZ)V

    .line 3225
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/PostviewActivity;->refreshLoadCapturedImages()Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_4

    .line 3234
    .end local v1           #count:I
    .end local v4           #i:I
    .end local v6           #selectedIndex:I
    .end local v10           #x:I
    .end local v11           #y:I
    :catch_1
    move-exception v2

    .line 3235
    .local v2, e:Ljava/lang/NullPointerException;
    const-string v12, "CameraApp"

    const-string v13, "NullPointerException!"

    invoke-static {v12, v13, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 3236
    .end local v2           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v2

    .line 3237
    .local v2, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v12, "CameraApp"

    const-string v13, "IndexOutOfBoundsException!"

    invoke-static {v12, v13, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 3241
    .end local v2           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_b
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 3188
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getPreviewSizeOnDevice()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1685
    const/4 v2, 0x0

    .line 1686
    .local v2, previewSizeOnDevice:Ljava/lang/String;
    invoke-direct {p0}, Lcom/lge/camera/PostviewActivity;->isMmsVideo()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1687
    const-string v3, "key_preview_size_on_device"

    invoke-virtual {p0, v3}, Lcom/lge/camera/PostviewActivity;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1688
    .local v1, prefVideoSize:Ljava/lang/String;
    invoke-static {v1}, Lcom/lge/camera/properties/ProjectVariables;->isAvailableMmsResolution(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1689
    move-object v2, v1

    .end local v1           #prefVideoSize:Ljava/lang/String;
    :goto_0
    move-object v3, v2

    .line 1701
    :goto_1
    return-object v3

    .line 1691
    .restart local v1       #prefVideoSize:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getMmsResolutions()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v2, v3, v4

    goto :goto_0

    .line 1694
    .end local v1           #prefVideoSize:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v3

    const-string v4, "key_preview_size_on_device"

    invoke-virtual {v3, v4}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 1695
    .local v0, pref:Lcom/lge/camera/setting/ListPreference;
    if-nez v0, :cond_2

    .line 1696
    const-string v3, "CameraApp"

    const-string v4, " pref is null "

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1697
    const/4 v3, 0x0

    goto :goto_1

    .line 1699
    :cond_2
    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private isMmsVideo()Z
    .locals 1

    .prologue
    .line 1619
    iget-boolean v0, p0, Lcom/lge/camera/PostviewActivity;->mIsMmsVideo:Z

    return v0
.end method

.method private readMenuActivity(ILandroid/content/Intent;)Ljava/util/List;
    .locals 4
    .parameter "menuType"
    .parameter "intent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1857
    const/4 v0, 0x0

    .line 1858
    .local v0, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1860
    .local v1, packageManager:Landroid/content/pm/PackageManager;
    iget v2, p0, Lcom/lge/camera/PostviewActivity;->mApplicationMode:I

    if-nez v2, :cond_0

    .line 1861
    const-string v2, "image/jpeg"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1866
    :goto_0
    if-nez p1, :cond_1

    .line 1867
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1868
    invoke-virtual {v1, p2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1873
    :goto_1
    return-object v0

    .line 1863
    :cond_0
    const-string v2, "video/*"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 1870
    :cond_1
    const-string v2, "android.intent.action.ATTACH_DATA"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1871
    invoke-virtual {v1, p2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method

.method private registerMediaReceiver(Lcom/lge/camera/postview/PostViewMediaBroadCastReceiver;)V
    .locals 2
    .parameter "receiver"

    .prologue
    .line 3758
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3759
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3760
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3761
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3762
    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3763
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3764
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3765
    const-string v1, "android.intent.action.MEDIA_NOFS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3766
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3767
    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3768
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3769
    const-string v1, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3771
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 3773
    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/PostviewActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3774
    return-void
.end method

.method private saveFinished()V
    .locals 3

    .prologue
    .line 2678
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2679
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "save_done"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2680
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/lge/camera/PostviewActivity;->setResult(ILandroid/content/Intent;)V

    .line 2681
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->finish()V

    .line 2682
    return-void
.end method

.method private setCapturedImageClickListener(Landroid/view/View;)V
    .locals 3
    .parameter "capturedImageView"

    .prologue
    .line 1557
    if-nez p1, :cond_0

    .line 1558
    const-string v1, "CameraApp"

    const-string v2, "capturedImageView is null!"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1616
    :goto_0
    return-void

    .line 1562
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1563
    new-instance v1, Lcom/lge/camera/PostviewActivity$7;

    invoke-direct {v1, p0, p1}, Lcom/lge/camera/PostviewActivity$7;-><init>(Lcom/lge/camera/PostviewActivity;Landroid/view/View;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1611
    :catch_0
    move-exception v0

    .line 1612
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v1, "CameraApp"

    const-string v2, "ClassCastException:"

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1613
    .end local v0           #e:Ljava/lang/ClassCastException;
    :catch_1
    move-exception v0

    .line 1614
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "CameraApp"

    const-string v2, "NullPointerException:"

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private setCapturedImageView(Landroid/widget/ImageView;ZI)V
    .locals 4
    .parameter "view"
    .parameter "bSetImageView"
    .parameter "selectedIndex"

    .prologue
    .line 888
    if-eqz p1, :cond_0

    .line 889
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/lge/camera/PostviewActivity;->setImageViewClear(Landroid/widget/ImageView;)V

    .line 890
    if-eqz p2, :cond_0

    if-ltz p3, :cond_0

    .line 891
    iget-object v2, p0, Lcom/lge/camera/PostviewActivity;->mImageAdapter:Lcom/lge/camera/postview/ContShotThumbAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/PostviewActivity;->mImageAdapter:Lcom/lge/camera/postview/ContShotThumbAdapter;

    iget-object v2, v2, Lcom/lge/camera/postview/ContShotThumbAdapter;->mThumb:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/PostviewActivity;->mImageAdapter:Lcom/lge/camera/postview/ContShotThumbAdapter;

    iget-object v2, v2, Lcom/lge/camera/postview/ContShotThumbAdapter;->mThumb:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, p3, :cond_0

    .line 893
    iget-object v2, p0, Lcom/lge/camera/PostviewActivity;->mImageAdapter:Lcom/lge/camera/postview/ContShotThumbAdapter;

    iget-object v2, v2, Lcom/lge/camera/postview/ContShotThumbAdapter;->mThumb:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 894
    .local v0, bmpD:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    .line 905
    .end local v0           #bmpD:Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    :goto_0
    return-void

    .line 898
    :catch_0
    move-exception v1

    .line 899
    .local v1, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v2, "CameraApp"

    const-string v3, "ArrayIndexOutOfBoundsException!"

    invoke-static {v2, v3, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 900
    .end local v1           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_1
    move-exception v1

    .line 901
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v2, "CameraApp"

    const-string v3, "NullPointerException!"

    invoke-static {v2, v3, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 902
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v1

    .line 903
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v2, "CameraApp"

    const-string v3, "IndexOutOfBoundsException!"

    invoke-static {v2, v3, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private setClockAnimationView(Z)V
    .locals 6
    .parameter "isSet"

    .prologue
    const/4 v5, 0x0

    .line 4175
    const v4, 0x7f090032

    invoke-virtual {p0, v4}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 4176
    .local v3, timeMachineAniView:Landroid/view/View;
    const v4, 0x7f090033

    invoke-virtual {p0, v4}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 4177
    .local v0, clockBgView:Landroid/widget/ImageView;
    const v4, 0x7f090034

    invoke-virtual {p0, v4}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 4178
    .local v1, clockNeedleMinuteView:Landroid/widget/ImageView;
    const v4, 0x7f090035

    invoke-virtual {p0, v4}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 4180
    .local v2, clockNeedleSecView:Landroid/widget/ImageView;
    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 4182
    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 4183
    invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 4185
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 4187
    invoke-virtual {p0, v0}, Lcom/lge/camera/PostviewActivity;->setImageViewClear(Landroid/widget/ImageView;)V

    .line 4188
    invoke-virtual {p0, v1}, Lcom/lge/camera/PostviewActivity;->setImageViewClear(Landroid/widget/ImageView;)V

    .line 4189
    invoke-virtual {p0, v2}, Lcom/lge/camera/PostviewActivity;->setImageViewClear(Landroid/widget/ImageView;)V

    .line 4191
    if-eqz p1, :cond_1

    .line 4192
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 4193
    const v4, 0x7f0200d3

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 4194
    const v4, 0x7f0200d4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 4195
    const v4, 0x7f0200d5

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 4202
    :cond_0
    :goto_0
    return-void

    .line 4197
    :cond_1
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4198
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4199
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setFileNameLayout()V
    .locals 18

    .prologue
    .line 3256
    const v1, 0x7f090037

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 3257
    .local v17, tv:Landroid/widget/TextView;
    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3259
    .local v2, lp_filename:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/PostviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0a0032

    invoke-static {v1, v3}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v14

    .line 3260
    .local v14, lcdWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/PostviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0a0045

    invoke-static {v1, v3}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v15

    .line 3262
    .local v15, panelWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/PostviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0a000b

    invoke-static {v1, v3}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v4

    .line 3263
    .local v4, fileNameHeight:I
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/PostviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0a0006

    invoke-static {v1, v3}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v5

    .line 3264
    .local v5, fileNameMarginLeft:I
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/PostviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0a000c

    invoke-static {v1, v3}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v16

    .line 3266
    .local v16, postviewMenuWidth:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/lge/camera/PostviewActivity;->mOrientation:I

    packed-switch v1, :pswitch_data_0

    .line 3280
    :goto_0
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3284
    .end local v2           #lp_filename:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v4           #fileNameHeight:I
    .end local v5           #fileNameMarginLeft:I
    .end local v14           #lcdWidth:I
    .end local v15           #panelWidth:I
    .end local v16           #postviewMenuWidth:I
    .end local v17           #tv:Landroid/widget/TextView;
    :goto_1
    return-void

    .line 3268
    .restart local v2       #lp_filename:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v4       #fileNameHeight:I
    .restart local v5       #fileNameMarginLeft:I
    .restart local v14       #lcdWidth:I
    .restart local v15       #panelWidth:I
    .restart local v16       #postviewMenuWidth:I
    .restart local v17       #tv:Landroid/widget/TextView;
    :pswitch_0
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/4 v7, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/lge/camera/PostviewActivity;->setLayoutParams(Landroid/widget/RelativeLayout$LayoutParams;IIIII)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3281
    .end local v2           #lp_filename:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v4           #fileNameHeight:I
    .end local v5           #fileNameMarginLeft:I
    .end local v14           #lcdWidth:I
    .end local v15           #panelWidth:I
    .end local v16           #postviewMenuWidth:I
    .end local v17           #tv:Landroid/widget/TextView;
    :catch_0
    move-exception v13

    .line 3282
    .local v13, e:Ljava/lang/NullPointerException;
    const-string v1, "CameraApp"

    const-string v3, "NullPointerException : "

    invoke-static {v1, v3, v13}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 3271
    .end local v13           #e:Ljava/lang/NullPointerException;
    .restart local v2       #lp_filename:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v4       #fileNameHeight:I
    .restart local v5       #fileNameMarginLeft:I
    .restart local v14       #lcdWidth:I
    .restart local v15       #panelWidth:I
    .restart local v16       #postviewMenuWidth:I
    .restart local v17       #tv:Landroid/widget/TextView;
    :pswitch_1
    :try_start_1
    iget v8, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int v1, v5, v15

    sub-int v10, v1, v16

    iget v11, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/4 v12, 0x0

    move-object/from16 v6, p0

    move-object v7, v2

    move v9, v4

    invoke-direct/range {v6 .. v12}, Lcom/lge/camera/PostviewActivity;->setLayoutParams(Landroid/widget/RelativeLayout$LayoutParams;IIIII)V

    goto :goto_0

    .line 3274
    :pswitch_2
    iget v8, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v10, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v1, v14, v15

    sub-int v11, v1, v4

    iget v12, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    move-object/from16 v6, p0

    move-object v7, v2

    move v9, v4

    invoke-direct/range {v6 .. v12}, Lcom/lge/camera/PostviewActivity;->setLayoutParams(Landroid/widget/RelativeLayout$LayoutParams;IIIII)V

    goto :goto_0

    .line 3277
    :pswitch_3
    iget v8, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v10, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v1, v14, v16

    sub-int v11, v1, v4

    iget v12, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    move-object/from16 v6, p0

    move-object v7, v2

    move v9, v4

    invoke-direct/range {v6 .. v12}, Lcom/lge/camera/PostviewActivity;->setLayoutParams(Landroid/widget/RelativeLayout$LayoutParams;IIIII)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3266
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private setGalleryLayout()V
    .locals 29

    .prologue
    .line 3289
    const v2, 0x7f090037

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    .line 3290
    .local v28, tv:Landroid/widget/TextView;
    const v2, 0x7f090036

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Gallery;

    .line 3291
    .local v21, g:Landroid/widget/Gallery;
    invoke-virtual/range {v28 .. v28}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3292
    .local v3, lp_filename:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual/range {v21 .. v21}, Landroid/widget/Gallery;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    check-cast v25, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3294
    .local v25, lp_gallery:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/PostviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f0a0032

    invoke-static {v2, v4}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v24

    .line 3295
    .local v24, lcdWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/PostviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f0a0033

    invoke-static {v2, v4}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v23

    .line 3296
    .local v23, lcdHeight:I
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/PostviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f0a00c8

    invoke-static {v2, v4}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v11

    .line 3297
    .local v11, quickFunctionWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/PostviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f0a0045

    invoke-static {v2, v4}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v26

    .line 3299
    .local v26, panelWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/PostviewActivity;->isTimeMachineShot()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/PostviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f0a01ba

    invoke-static {v2, v4}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v22

    .line 3300
    .local v22, gallery_margin:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/PostviewActivity;->mImageAdapter:Lcom/lge/camera/postview/ContShotThumbAdapter;

    if-nez v2, :cond_1

    const/4 v10, 0x0

    .line 3302
    .local v10, galleryHeight:I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/PostviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f0a000b

    invoke-static {v2, v4}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v20

    .line 3303
    .local v20, fileNameHeight:I
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/PostviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f0a0006

    invoke-static {v2, v4}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v6

    .line 3304
    .local v6, fileNameMarginLeft:I
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/PostviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f0a000c

    invoke-static {v2, v4}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v27

    .line 3306
    .local v27, postviewMenuWidth:I
    const-string v2, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mOrientation = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lge/camera/PostviewActivity;->mOrientation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3307
    const/16 v2, 0xc

    const/4 v4, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 3309
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lge/camera/PostviewActivity;->mOrientation:I

    packed-switch v2, :pswitch_data_0

    .line 3327
    :goto_2
    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3328
    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3332
    .end local v3           #lp_filename:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v6           #fileNameMarginLeft:I
    .end local v10           #galleryHeight:I
    .end local v11           #quickFunctionWidth:I
    .end local v20           #fileNameHeight:I
    .end local v21           #g:Landroid/widget/Gallery;
    .end local v22           #gallery_margin:I
    .end local v23           #lcdHeight:I
    .end local v24           #lcdWidth:I
    .end local v25           #lp_gallery:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v26           #panelWidth:I
    .end local v27           #postviewMenuWidth:I
    .end local v28           #tv:Landroid/widget/TextView;
    :goto_3
    return-void

    .line 3299
    .restart local v3       #lp_filename:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v11       #quickFunctionWidth:I
    .restart local v21       #g:Landroid/widget/Gallery;
    .restart local v23       #lcdHeight:I
    .restart local v24       #lcdWidth:I
    .restart local v25       #lp_gallery:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v26       #panelWidth:I
    .restart local v28       #tv:Landroid/widget/TextView;
    :cond_0
    const/16 v22, 0x0

    goto :goto_0

    .line 3300
    .restart local v22       #gallery_margin:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/PostviewActivity;->mImageAdapter:Lcom/lge/camera/postview/ContShotThumbAdapter;

    iget v2, v2, Lcom/lge/camera/postview/ContShotThumbAdapter;->THUMB_IMAGE_HEIGHT:I

    add-int v10, v2, v22

    goto :goto_1

    .line 3311
    .restart local v6       #fileNameMarginLeft:I
    .restart local v10       #galleryHeight:I
    .restart local v20       #fileNameHeight:I
    .restart local v27       #postviewMenuWidth:I
    :pswitch_0
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int v5, v20, v10

    iget v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v8, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/lge/camera/PostviewActivity;->setLayoutParams(Landroid/widget/RelativeLayout$LayoutParams;IIIII)V

    .line 3312
    sub-int v2, v24, v11

    sub-int v9, v2, v26

    sub-int v12, v23, v10

    move-object/from16 v0, v25

    iget v13, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    move-object/from16 v7, p0

    move-object/from16 v8, v25

    invoke-direct/range {v7 .. v13}, Lcom/lge/camera/PostviewActivity;->setLayoutParams(Landroid/widget/RelativeLayout$LayoutParams;IIIII)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 3329
    .end local v3           #lp_filename:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v6           #fileNameMarginLeft:I
    .end local v10           #galleryHeight:I
    .end local v11           #quickFunctionWidth:I
    .end local v20           #fileNameHeight:I
    .end local v21           #g:Landroid/widget/Gallery;
    .end local v22           #gallery_margin:I
    .end local v23           #lcdHeight:I
    .end local v24           #lcdWidth:I
    .end local v25           #lp_gallery:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v26           #panelWidth:I
    .end local v27           #postviewMenuWidth:I
    .end local v28           #tv:Landroid/widget/TextView;
    :catch_0
    move-exception v19

    .line 3330
    .local v19, e:Ljava/lang/NullPointerException;
    const-string v2, "CameraApp"

    const-string v4, "NullPointerException : "

    move-object/from16 v0, v19

    invoke-static {v2, v4, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 3315
    .end local v19           #e:Ljava/lang/NullPointerException;
    .restart local v3       #lp_filename:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v6       #fileNameMarginLeft:I
    .restart local v10       #galleryHeight:I
    .restart local v11       #quickFunctionWidth:I
    .restart local v20       #fileNameHeight:I
    .restart local v21       #g:Landroid/widget/Gallery;
    .restart local v22       #gallery_margin:I
    .restart local v23       #lcdHeight:I
    .restart local v24       #lcdWidth:I
    .restart local v25       #lp_gallery:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v26       #panelWidth:I
    .restart local v27       #postviewMenuWidth:I
    .restart local v28       #tv:Landroid/widget/TextView;
    :pswitch_1
    :try_start_1
    iget v14, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int v15, v20, v10

    sub-int v2, v24, v27

    sub-int v16, v2, v20

    iget v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v17, v0

    iget v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    move/from16 v18, v0

    move-object/from16 v12, p0

    move-object v13, v3

    invoke-direct/range {v12 .. v18}, Lcom/lge/camera/PostviewActivity;->setLayoutParams(Landroid/widget/RelativeLayout$LayoutParams;IIIII)V

    .line 3316
    sub-int v2, v24, v11

    sub-int v14, v2, v26

    sub-int v17, v23, v10

    move-object/from16 v0, v25

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    move/from16 v18, v0

    move-object/from16 v12, p0

    move-object/from16 v13, v25

    move v15, v10

    move/from16 v16, v26

    invoke-direct/range {v12 .. v18}, Lcom/lge/camera/PostviewActivity;->setLayoutParams(Landroid/widget/RelativeLayout$LayoutParams;IIIII)V

    goto :goto_2

    .line 3319
    :pswitch_2
    iget v14, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int v15, v20, v10

    iget v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v16, v0

    iget v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    move/from16 v18, v0

    move-object/from16 v12, p0

    move-object v13, v3

    move/from16 v17, v6

    invoke-direct/range {v12 .. v18}, Lcom/lge/camera/PostviewActivity;->setLayoutParams(Landroid/widget/RelativeLayout$LayoutParams;IIIII)V

    .line 3320
    const/16 v16, 0x0

    sub-int v2, v24, v26

    sub-int v17, v2, v10

    move-object/from16 v0, v25

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    move/from16 v18, v0

    move-object/from16 v12, p0

    move-object/from16 v13, v25

    move/from16 v14, v23

    move v15, v10

    invoke-direct/range {v12 .. v18}, Lcom/lge/camera/PostviewActivity;->setLayoutParams(Landroid/widget/RelativeLayout$LayoutParams;IIIII)V

    goto/16 :goto_2

    .line 3323
    :pswitch_3
    iget v14, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int v15, v20, v10

    iget v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v16, v0

    sub-int v2, v24, v11

    sub-int v17, v2, v20

    iget v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    move/from16 v18, v0

    move-object/from16 v12, p0

    move-object v13, v3

    invoke-direct/range {v12 .. v18}, Lcom/lge/camera/PostviewActivity;->setLayoutParams(Landroid/widget/RelativeLayout$LayoutParams;IIIII)V

    .line 3324
    const/16 v16, 0x0

    sub-int v2, v24, v11

    sub-int v17, v2, v10

    move-object/from16 v0, v25

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    move/from16 v18, v0

    move-object/from16 v12, p0

    move-object/from16 v13, v25

    move/from16 v14, v23

    move v15, v10

    invoke-direct/range {v12 .. v18}, Lcom/lge/camera/PostviewActivity;->setLayoutParams(Landroid/widget/RelativeLayout$LayoutParams;IIIII)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 3309
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private setLayoutParams(Landroid/widget/RelativeLayout$LayoutParams;IIIII)V
    .locals 0
    .parameter "params"
    .parameter "width"
    .parameter "height"
    .parameter "leftMargin"
    .parameter "topMargin"
    .parameter "bottomMargin"

    .prologue
    .line 3245
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3246
    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3247
    iput p4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 3248
    iput p5, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 3249
    iput p6, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 3251
    return-void
.end method

.method private setMultiShotGalleryTouchListener(Landroid/widget/Gallery;)V
    .locals 1
    .parameter "g"

    .prologue
    .line 3091
    if-nez p1, :cond_0

    .line 3116
    :goto_0
    return-void

    .line 3094
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->isTimeMachineShot()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3095
    const v0, 0x7f02015d

    invoke-virtual {p1, v0}, Landroid/widget/Gallery;->setBackgroundResource(I)V

    .line 3100
    :goto_1
    new-instance v0, Lcom/lge/camera/PostviewActivity$33;

    invoke-direct {v0, p0}, Lcom/lge/camera/PostviewActivity$33;-><init>(Lcom/lge/camera/PostviewActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Gallery;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 3097
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Gallery;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3098
    const-string v0, "#b0161616"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Gallery;->setBackgroundColor(I)V

    goto :goto_1
.end method

.method private setMultiShotGalleryVisieble(Landroid/widget/Gallery;)V
    .locals 7
    .parameter "g"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3119
    iget-object v2, p0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3120
    .local v0, imageListSize:I
    const/4 v1, 0x1

    .line 3121
    .local v1, spacing:I
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->isTimeMachineShot()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3122
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a01b9

    invoke-static {v2, v3}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v1

    .line 3123
    iget v2, p0, Lcom/lge/camera/PostviewActivity;->mTimeMachineViewMode:I

    if-ne v2, v6, :cond_0

    .line 3124
    invoke-direct {p0, p1}, Lcom/lge/camera/PostviewActivity;->setMultiShotGalleryTouchListener(Landroid/widget/Gallery;)V

    .line 3130
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/lge/camera/PostviewActivity;->mImageAdapter:Lcom/lge/camera/postview/ContShotThumbAdapter;

    iget-object v2, v2, Lcom/lge/camera/postview/ContShotThumbAdapter;->mThumb:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 3131
    iget-object v2, p0, Lcom/lge/camera/PostviewActivity;->mImageAdapter:Lcom/lge/camera/postview/ContShotThumbAdapter;

    invoke-virtual {p1, v2}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 3132
    invoke-virtual {p1, v1}, Landroid/widget/Gallery;->setSpacing(I)V

    .line 3133
    const/high16 v2, 0x3f80

    invoke-virtual {p1, v2}, Landroid/widget/Gallery;->setUnselectedAlpha(F)V

    .line 3134
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initAfterCaptureView : normal mode -> continuous shot mode, count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3136
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->isTimeMachineShot()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3137
    iget v2, p0, Lcom/lge/camera/PostviewActivity;->mTimeMachineViewMode:I

    if-ne v2, v6, :cond_3

    .line 3138
    invoke-virtual {p1, v5}, Landroid/widget/Gallery;->setVisibility(I)V

    .line 3139
    invoke-direct {p0}, Lcom/lge/camera/PostviewActivity;->setGalleryLayout()V

    .line 3147
    :goto_1
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Landroid/widget/Gallery;->setSelection(I)V

    .line 3149
    :cond_1
    return-void

    .line 3127
    :cond_2
    invoke-direct {p0, p1}, Lcom/lge/camera/PostviewActivity;->setMultiShotGalleryTouchListener(Landroid/widget/Gallery;)V

    goto :goto_0

    .line 3141
    :cond_3
    invoke-direct {p0}, Lcom/lge/camera/PostviewActivity;->setFileNameLayout()V

    goto :goto_1

    .line 3144
    :cond_4
    invoke-virtual {p1, v5}, Landroid/widget/Gallery;->setVisibility(I)V

    .line 3145
    invoke-direct {p0}, Lcom/lge/camera/PostviewActivity;->setGalleryLayout()V

    goto :goto_1
.end method

.method private setPreviewSizeOnScreenForCamcorder()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1623
    invoke-direct {p0}, Lcom/lge/camera/PostviewActivity;->isMmsVideo()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1624
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v3

    const-string v4, "key_preview_size_on_device"

    invoke-virtual {v3, v4}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 1625
    .local v0, pref:Lcom/lge/camera/setting/ListPreference;
    if-nez v0, :cond_0

    .line 1626
    const-string v3, "CameraApp"

    const-string v4, " pref is null "

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1640
    :goto_0
    return-object v2

    .line 1629
    :cond_0
    invoke-direct {p0}, Lcom/lge/camera/PostviewActivity;->getPreviewSizeOnDevice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 1630
    .local v1, prefVideoSizeIndex:I
    if-gez v1, :cond_1

    .line 1631
    const/4 v1, 0x0

    .line 1633
    :cond_1
    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getExtraInfos()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1635
    .end local v0           #pref:Lcom/lge/camera/setting/ListPreference;
    .end local v1           #prefVideoSizeIndex:I
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v3

    const-string v4, "key_preview_size_on_device"

    invoke-virtual {v3, v4}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 1636
    .restart local v0       #pref:Lcom/lge/camera/setting/ListPreference;
    if-nez v0, :cond_3

    .line 1637
    const-string v3, "CameraApp"

    const-string v4, " pref is null "

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1640
    :cond_3
    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private setPreviewSizeOnscreenForCamera()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1645
    iget v3, p0, Lcom/lge/camera/PostviewActivity;->mCameraId:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 1646
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v3

    const-string v4, "key_camera_picturesize"

    invoke-virtual {v3, v4}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 1647
    .local v1, pref:Lcom/lge/camera/setting/ListPreference;
    if-nez v1, :cond_1

    .line 1648
    const-string v3, "CameraApp"

    const-string v4, " pref is null "

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1672
    .end local v1           #pref:Lcom/lge/camera/setting/ListPreference;
    :cond_0
    :goto_0
    return-object v2

    .line 1651
    .restart local v1       #pref:Lcom/lge/camera/setting/ListPreference;
    :cond_1
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getExtraInfo3()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1653
    .end local v1           #pref:Lcom/lge/camera/setting/ListPreference;
    :cond_2
    iget-object v3, p0, Lcom/lge/camera/PostviewActivity;->mShotMode:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1656
    iget-object v3, p0, Lcom/lge/camera/PostviewActivity;->mShotMode:Ljava/lang/String;

    const-string v4, "shotmode_panorama"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/lge/camera/PostviewActivity;->mShotMode:Ljava/lang/String;

    const-string v4, "shotmode_continuous"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1658
    :cond_3
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v3

    const-string v4, "key_camera_shot_mode"

    invoke-virtual {v3, v4}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 1659
    .local v0, listPref:Lcom/lge/camera/setting/ListPreference;
    if-nez v0, :cond_4

    .line 1660
    const-string v3, "CameraApp"

    const-string v4, " pref is null "

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1663
    :cond_4
    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getExtraInfos2()[Ljava/lang/CharSequence;

    move-result-object v2

    iget v3, p0, Lcom/lge/camera/PostviewActivity;->mShotModeIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1667
    .end local v0           #listPref:Lcom/lge/camera/setting/ListPreference;
    :cond_5
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v3

    const-string v4, "key_camera_picturesize"

    invoke-virtual {v3, v4}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 1668
    .restart local v1       #pref:Lcom/lge/camera/setting/ListPreference;
    if-nez v1, :cond_6

    .line 1669
    const-string v3, "CameraApp"

    const-string v4, " pref is null "

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1672
    :cond_6
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getExtraInfo3()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private setTimeMachineBeforeOpenPopup()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1980
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->isTimeMachineShot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1981
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->stopTimeMachineAnimation()V

    .line 1982
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/camera/PostviewActivity;->timeMachineDeleteImagesWhenFinish(Z)V

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    .line 1983
    invoke-direct/range {v0 .. v5}, Lcom/lge/camera/PostviewActivity;->setTimeMachineButtonLayout(ZIIII)V

    .line 1984
    iput v1, p0, Lcom/lge/camera/PostviewActivity;->mTimeMachineViewMode:I

    .line 1985
    invoke-virtual {p0, v1}, Lcom/lge/camera/PostviewActivity;->displayCheckbox(Z)V

    .line 1986
    invoke-virtual {p0, v1}, Lcom/lge/camera/PostviewActivity;->setMenuDim(Z)V

    .line 1987
    iput-boolean v1, p0, Lcom/lge/camera/PostviewActivity;->setThumbImage:Z

    .line 1988
    invoke-virtual {p0, v1}, Lcom/lge/camera/PostviewActivity;->updateReviewThumbnailButton(I)V

    .line 1990
    :cond_0
    return-void
.end method

.method private setTimeMachineButtonLayout(ZIIII)V
    .locals 10
    .parameter "setButton"
    .parameter "postviewWidth"
    .parameter "width"
    .parameter "leftMargin"
    .parameter "panelWidth"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1491
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->isTimeMachineShot()Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/lge/camera/PostviewActivity;->mTimeMachineViewMode:I

    if-nez v5, :cond_0

    .line 1492
    const v5, 0x7f090032

    invoke-virtual {p0, v5}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1493
    .local v1, clockAniView:Landroid/view/View;
    const v5, 0x7f090033

    invoke-virtual {p0, v5}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1494
    .local v2, clockViewBg:Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1495
    .local v0, clockAniParam:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a01bb

    invoke-static {v5, v6}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v4

    .line 1496
    .local v4, timeMachineMarginTop:I
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a01bc

    invoke-static {v5, v6}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v3

    .line 1498
    .local v3, timeMachineMarginRight:I
    if-eqz p1, :cond_2

    iget-object v5, p0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v8, :cond_2

    .line 1499
    const v5, 0x7f0201ae

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1500
    const v5, 0x7f0200d2

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1501
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1503
    invoke-static {v0}, Lcom/lge/camera/util/Common;->ResetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 1504
    const/16 v5, 0xa

    invoke-virtual {v0, v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1505
    const/16 v5, 0xb

    invoke-virtual {v0, v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1507
    if-ge p2, p3, :cond_1

    .line 1508
    iget v5, p0, Lcom/lge/camera/PostviewActivity;->mOrientation:I

    packed-switch v5, :pswitch_data_0

    .line 1526
    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1527
    add-int v5, v3, p5

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 1534
    :goto_0
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1536
    invoke-direct {p0, v2}, Lcom/lge/camera/PostviewActivity;->setCapturedImageClickListener(Landroid/view/View;)V

    .line 1552
    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1554
    .end local v0           #clockAniParam:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1           #clockAniView:Landroid/view/View;
    .end local v2           #clockViewBg:Landroid/widget/ImageView;
    .end local v3           #timeMachineMarginRight:I
    .end local v4           #timeMachineMarginTop:I
    :cond_0
    return-void

    .line 1510
    .restart local v0       #clockAniParam:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v1       #clockAniView:Landroid/view/View;
    .restart local v2       #clockViewBg:Landroid/widget/ImageView;
    .restart local v3       #timeMachineMarginRight:I
    .restart local v4       #timeMachineMarginTop:I
    :pswitch_0
    add-int v5, v4, p4

    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1511
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    .line 1514
    :pswitch_1
    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1515
    add-int v5, v3, p5

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    .line 1518
    :pswitch_2
    add-int v5, v4, p5

    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1519
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    .line 1522
    :pswitch_3
    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1523
    add-int v5, v3, p4

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    .line 1531
    :cond_1
    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1532
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    .line 1538
    :cond_2
    const/4 v5, -0x1

    invoke-direct {p0, v2, v7, v5}, Lcom/lge/camera/PostviewActivity;->setCapturedImageView(Landroid/widget/ImageView;ZI)V

    .line 1540
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1541
    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1543
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1545
    invoke-static {v0}, Lcom/lge/camera/util/Common;->ResetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 1546
    const/16 v5, 0xd

    invoke-virtual {v0, v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1547
    iput v7, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1548
    iput v7, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 1550
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 1508
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private setTouchDelegate(II)V
    .locals 2
    .parameter "sourceViewId"
    .parameter "targetViewId"

    .prologue
    .line 1299
    invoke-virtual {p0, p1}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1300
    .local v0, source:Landroid/view/View;
    new-instance v1, Lcom/lge/camera/PostviewActivity$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/lge/camera/PostviewActivity$6;-><init>(Lcom/lge/camera/PostviewActivity;II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1311
    return-void
.end method

.method private setUpAttach()V
    .locals 6

    .prologue
    const v5, 0x7f090038

    const/4 v4, 0x0

    .line 1152
    iget-boolean v3, p0, Lcom/lge/camera/PostviewActivity;->mIsAttachIntent:Z

    if-nez v3, :cond_0

    .line 1153
    invoke-virtual {p0, v5}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1172
    :goto_0
    return-void

    .line 1156
    :cond_0
    const v3, 0x7f09003d

    invoke-virtual {p0, v3}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1157
    .local v0, mAttach:Landroid/widget/Button;
    const v3, 0x7f09003c

    invoke-virtual {p0, v3}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1158
    .local v1, mFinish:Landroid/widget/Button;
    const v3, 0x7f09003a

    invoke-virtual {p0, v3}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 1160
    .local v2, mPlay:Landroid/widget/ImageButton;
    iget v3, p0, Lcom/lge/camera/PostviewActivity;->mApplicationMode:I

    if-nez v3, :cond_1

    .line 1161
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1165
    :goto_1
    invoke-virtual {p0, v5}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1167
    iget-object v3, p0, Lcom/lge/camera/PostviewActivity;->mAttachButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1168
    iget-object v3, p0, Lcom/lge/camera/PostviewActivity;->mFinishListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1169
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1170
    iget-object v3, p0, Lcom/lge/camera/PostviewActivity;->mPlayButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1163
    :cond_1
    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1
.end method

.method private setWindowDimBehindDialog(Landroid/app/AlertDialog;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 2576
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 2577
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2578
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/high16 v1, 0x3f00

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 2579
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2580
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 2581
    return-void
.end method

.method private setupCaptureParams()V
    .locals 9

    .prologue
    .line 965
    const-string v6, "CameraApp"

    const-string v7, "setupCaptureParams"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    :try_start_0
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "capturedUriList"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 969
    .local v0, capturedUriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    .line 970
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 972
    .local v4, uriListSize:I
    if-nez v4, :cond_1

    .line 973
    const-string v6, "CameraApp"

    const-string v7, "Image List size is 0 !! return to preview."

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->finish()V

    .line 1038
    .end local v0           #capturedUriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #uriListSize:I
    :cond_0
    :goto_0
    return-void

    .line 977
    .restart local v0       #capturedUriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4       #uriListSize:I
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_2

    .line 978
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 979
    .local v5, uriString:Ljava/lang/String;
    iget-object v6, p0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 977
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 986
    .end local v2           #i:I
    .end local v4           #uriListSize:I
    .end local v5           #uriString:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "app_mode"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/lge/camera/PostviewActivity;->mApplicationMode:I

    .line 987
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "cameraId"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/lge/camera/PostviewActivity;->mCameraId:I

    .line 989
    iget v6, p0, Lcom/lge/camera/PostviewActivity;->mApplicationMode:I

    if-nez v6, :cond_3

    iget v6, p0, Lcom/lge/camera/PostviewActivity;->mCameraId:I

    if-nez v6, :cond_3

    .line 990
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "shotMode"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/lge/camera/PostviewActivity;->mShotMode:Ljava/lang/String;

    .line 991
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "shotModeIndex"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/lge/camera/PostviewActivity;->mShotModeIndex:I

    .line 993
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isTimeMachinShotSupported()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 994
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "timeMachineMode"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 995
    .local v3, timeMachineModeOn:Z
    if-eqz v3, :cond_3

    .line 996
    const-string v6, "shotmode_timemachine"

    iput-object v6, p0, Lcom/lge/camera/PostviewActivity;->mShotMode:Ljava/lang/String;

    .line 997
    const/4 v6, 0x3

    iput v6, p0, Lcom/lge/camera/PostviewActivity;->mShotModeIndex:I

    .line 1001
    .end local v3           #timeMachineModeOn:Z
    :cond_3
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "saveFileName"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/lge/camera/PostviewActivity;->mSaveFileName:Ljava/lang/String;

    .line 1002
    iget-object v6, p0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    iput-object v6, p0, Lcom/lge/camera/PostviewActivity;->mSavedUri:Landroid/net/Uri;

    .line 1003
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "currentStorageDir"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/lge/camera/PostviewActivity;->mCurrentStorageDirectory:Ljava/lang/String;

    .line 1004
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "isAttachMode"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/lge/camera/PostviewActivity;->mIsAttachMode:Z

    .line 1005
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "isAttachIntent"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/lge/camera/PostviewActivity;->mIsAttachIntent:Z

    .line 1006
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "isMmsVideo"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/lge/camera/PostviewActivity;->mIsMmsVideo:Z

    .line 1007
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "autoReview"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/lge/camera/PostviewActivity;->mAutoReview:Ljava/lang/String;

    .line 1008
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "videoExtension"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/lge/camera/PostviewActivity;->mVideoExtension:Ljava/lang/String;

    .line 1009
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "currentLang"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/lge/camera/PostviewActivity;->mCurrentLang:Ljava/lang/String;

    .line 1010
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "currentFont"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/lge/camera/PostviewActivity;->mCurrentKoreanFont:I

    .line 1011
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "currentOrientation"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/lge/camera/PostviewActivity;->mPreviewOrientation:I

    .line 1012
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "effectsActive"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/lge/camera/PostviewActivity;->mVideoEffectsActive:Z

    .line 1013
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/lge/camera/PostviewActivity;->mTimeMachineDeleteDone:Z

    .line 1016
    iget v6, p0, Lcom/lge/camera/PostviewActivity;->mApplicationMode:I

    if-nez v6, :cond_4

    iget v6, p0, Lcom/lge/camera/PostviewActivity;->mCameraId:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 1018
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "Flip"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/lge/camera/PostviewActivity;->mFlip:Ljava/lang/String;

    .line 1020
    :cond_4
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->isTimeMachineShot()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1021
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "timeMachineFileNameList"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/lge/camera/PostviewActivity;->mTimeMachineFileNameList:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    .line 1028
    .end local v0           #capturedUriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 1029
    .local v1, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v6, "CameraApp"

    const-string v7, "ArrayIndexOutOfBoundsException!"

    invoke-static {v6, v7, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1030
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->finish()V

    goto/16 :goto_0

    .line 1031
    .end local v1           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_1
    move-exception v1

    .line 1032
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v6, "CameraApp"

    const-string v7, "NullPointerException!"

    invoke-static {v6, v7, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1033
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->finish()V

    goto/16 :goto_0

    .line 1034
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v1

    .line 1035
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v6, "CameraApp"

    const-string v7, "IndexOutOfBoundsException!"

    invoke-static {v6, v7, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1036
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->finish()V

    goto/16 :goto_0
.end method

.method private setupLayout()V
    .locals 1

    .prologue
    .line 1041
    const v0, 0x7f030013

    invoke-virtual {p0, v0}, Lcom/lge/camera/PostviewActivity;->setContentView(I)V

    .line 1042
    const v0, 0x7f090088

    invoke-virtual {p0, v0}, Lcom/lge/camera/PostviewActivity;->inflateStub(I)Landroid/view/View;

    .line 1043
    const v0, 0x7f090089

    invoke-virtual {p0, v0}, Lcom/lge/camera/PostviewActivity;->inflateStub(I)Landroid/view/View;

    .line 1044
    const v0, 0x7f09008a

    invoke-virtual {p0, v0}, Lcom/lge/camera/PostviewActivity;->inflateStub(I)Landroid/view/View;

    .line 1045
    const v0, 0x7f09008b

    invoke-virtual {p0, v0}, Lcom/lge/camera/PostviewActivity;->inflateStub(I)Landroid/view/View;

    .line 1047
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->setupLayoutMainBarAndPostviewMenu()V

    .line 1049
    invoke-direct {p0}, Lcom/lge/camera/PostviewActivity;->setupPostview()V

    .line 1050
    invoke-direct {p0}, Lcom/lge/camera/PostviewActivity;->setupMenu()V

    .line 1051
    invoke-direct {p0}, Lcom/lge/camera/PostviewActivity;->setupPanel()V

    .line 1052
    invoke-direct {p0}, Lcom/lge/camera/PostviewActivity;->setUpAttach()V

    .line 1053
    return-void
.end method

.method private setupMenu()V
    .locals 7

    .prologue
    const v6, 0x7f09003f

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1115
    const-string v2, "CameraApp"

    const-string v3, "PostviewMenuControll set buttons !"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    iget-boolean v2, p0, Lcom/lge/camera/PostviewActivity;->mIsAttachIntent:Z

    if-eqz v2, :cond_0

    .line 1117
    invoke-virtual {p0, v6}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1149
    :goto_0
    return-void

    .line 1120
    :cond_0
    invoke-virtual {p0, v6}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1122
    const v2, 0x7f090040

    invoke-virtual {p0, v2}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1123
    .local v0, buttonSend:Landroid/widget/Button;
    iget v2, p0, Lcom/lge/camera/PostviewActivity;->mApplicationMode:I

    if-nez v2, :cond_2

    .line 1124
    iget-boolean v2, p0, Lcom/lge/camera/PostviewActivity;->mIsAttachMode:Z

    if-eqz v2, :cond_1

    .line 1125
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1129
    :goto_1
    iget-object v2, p0, Lcom/lge/camera/PostviewActivity;->mShareButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1135
    :goto_2
    const v2, 0x7f090042

    invoke-virtual {p0, v2}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1136
    .local v1, buttonSetAs:Landroid/widget/Button;
    iget-boolean v2, p0, Lcom/lge/camera/PostviewActivity;->mIsAttachMode:Z

    if-eqz v2, :cond_3

    .line 1137
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1142
    :goto_3
    iget v2, p0, Lcom/lge/camera/PostviewActivity;->mApplicationMode:I

    if-nez v2, :cond_4

    .line 1143
    iget-object v2, p0, Lcom/lge/camera/PostviewActivity;->mSetAsButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1147
    :goto_4
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->showMenu()V

    goto :goto_0

    .line 1127
    .end local v1           #buttonSetAs:Landroid/widget/Button;
    :cond_1
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 1131
    :cond_2
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1132
    iget-object v2, p0, Lcom/lge/camera/PostviewActivity;->mPlayButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 1139
    .restart local v1       #buttonSetAs:Landroid/widget/Button;
    :cond_3
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_3

    .line 1145
    :cond_4
    iget-object v2, p0, Lcom/lge/camera/PostviewActivity;->mShareButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4
.end method

.method private setupPanel()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1258
    const v1, 0x7f090044

    invoke-virtual {p0, v1}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1260
    .local v0, panel:Landroid/view/View;
    iget-boolean v1, p0, Lcom/lge/camera/PostviewActivity;->mIsAttachIntent:Z

    if-eqz v1, :cond_1

    .line 1261
    if-eqz v0, :cond_0

    .line 1262
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1275
    :cond_0
    :goto_0
    return-void

    .line 1265
    :cond_1
    if-eqz v0, :cond_2

    .line 1266
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1267
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/PostviewActivity;->mPanelAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1268
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 1270
    :cond_2
    invoke-virtual {p0, v3, v3}, Lcom/lge/camera/PostviewActivity;->setSubButton(II)V

    .line 1271
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v3}, Lcom/lge/camera/PostviewActivity;->setSubButton(II)V

    .line 1272
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v3}, Lcom/lge/camera/PostviewActivity;->setSubButton(II)V

    .line 1273
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->setPanelButton()V

    goto :goto_0
.end method

.method private setupPostview()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1094
    const v2, 0x7f09002e

    invoke-virtual {p0, v2}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1095
    const/4 v1, 0x0

    .line 1096
    .local v1, sizeOnScreenString:Ljava/lang/String;
    iget v2, p0, Lcom/lge/camera/PostviewActivity;->mApplicationMode:I

    if-ne v2, v5, :cond_2

    .line 1097
    invoke-direct {p0}, Lcom/lge/camera/PostviewActivity;->setPreviewSizeOnScreenForCamcorder()Ljava/lang/String;

    move-result-object v1

    .line 1101
    :goto_0
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->IsLiveEffectSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/lge/camera/PostviewActivity;->mApplicationMode:I

    if-ne v2, v5, :cond_0

    iget-boolean v2, p0, Lcom/lge/camera/PostviewActivity;->mVideoEffectsActive:Z

    if-eqz v2, :cond_0

    .line 1104
    invoke-static {v5}, Lcom/lge/camera/properties/ProjectVariables;->getLiveeffectResolutions(I)Ljava/lang/String;

    move-result-object v1

    .line 1105
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sizeOnLiveEffectString = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    :cond_0
    if-eqz v1, :cond_1

    .line 1109
    invoke-static {v1}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v0

    .line 1110
    .local v0, postviewSizeOnScreen:[I
    aget v2, v0, v6

    aget v3, v0, v5

    invoke-virtual {p0, v2, v3}, Lcom/lge/camera/PostviewActivity;->setupPostviewLayout(II)V

    .line 1112
    .end local v0           #postviewSizeOnScreen:[I
    :cond_1
    return-void

    .line 1099
    :cond_2
    invoke-direct {p0}, Lcom/lge/camera/PostviewActivity;->setPreviewSizeOnscreenForCamera()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private startResolvedActivity(ILandroid/content/Intent;Landroid/content/pm/ResolveInfo;)V
    .locals 6
    .parameter "menuType"
    .parameter "intent"
    .parameter "info"

    .prologue
    .line 1936
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1937
    .local v2, resolvedIntent:Landroid/content/Intent;
    iget-object v0, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1938
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1940
    const/4 v1, 0x0

    .line 1941
    .local v1, capturedImageUri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 1942
    iget-object v3, p0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getSelectedIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #capturedImageUri:Landroid/net/Uri;
    check-cast v1, Landroid/net/Uri;

    .line 1947
    .restart local v1       #capturedImageUri:Landroid/net/Uri;
    :goto_0
    if-nez p1, :cond_1

    .line 1948
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1954
    :goto_1
    iget-object v3, p0, Lcom/lge/camera/PostviewActivity;->mHandler:Lcom/lge/camera/util/MainHandler;

    new-instance v4, Lcom/lge/camera/PostviewActivity$8;

    invoke-direct {v4, p0, p1, v2}, Lcom/lge/camera/PostviewActivity$8;-><init>(Lcom/lge/camera/PostviewActivity;ILandroid/content/Intent;)V

    invoke-virtual {v3, v4}, Lcom/lge/camera/util/MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 1960
    return-void

    .line 1944
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #capturedImageUri:Landroid/net/Uri;
    check-cast v1, Landroid/net/Uri;

    .restart local v1       #capturedImageUri:Landroid/net/Uri;
    goto :goto_0

    .line 1950
    :cond_1
    const-string v3, "image/jpeg"

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1951
    const-string v3, "mimeType"

    const-string v4, "image/jpeg"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method private updateLoadedThumbnailButton()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2325
    const v1, 0x7f09004b

    invoke-virtual {p0, v1}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageView;

    .line 2327
    .local v0, riv:Lcom/lge/camera/components/RotateImageView;
    iget-boolean v1, p0, Lcom/lge/camera/PostviewActivity;->mIsAttachIntent:Z

    if-eqz v1, :cond_0

    .line 2328
    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2329
    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2330
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageView;->setVisibility(I)V

    .line 2336
    :goto_0
    return-void

    .line 2332
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity;->mThumbImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2333
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity;->mThumbnailButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2334
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public adjustFilenameForView(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "filename"
    .parameter "thumbInfo"

    .prologue
    .line 2686
    const v2, 0x7f090037

    invoke-virtual {p0, v2}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2687
    .local v1, tv:Landroid/widget/TextView;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2688
    .local v0, tFilename:Ljava/lang/String;
    new-instance v2, Lcom/lge/camera/PostviewActivity$31;

    invoke-direct {v2, p0, v1, v0}, Lcom/lge/camera/PostviewActivity$31;-><init>(Lcom/lge/camera/PostviewActivity;Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 2694
    return-void
.end method

.method public checkPauseAndAutoReview()Z
    .locals 1

    .prologue
    .line 2247
    iget-boolean v0, p0, Lcom/lge/camera/PostviewActivity;->mPause:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2248
    :cond_0
    const/4 v0, 0x0

    .line 2253
    :goto_0
    return v0

    .line 2250
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isPostviewDeviceOpenModel()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2251
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->removeExitInteraction()V

    .line 2253
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public checkValidateImage()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 2885
    const-string v7, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "validateImage() image list count = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_0
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2886
    const/4 v4, 0x0

    .local v4, totalCount:I
    const/4 v5, 0x0

    .local v5, validateCount:I
    const/4 v2, 0x0

    .line 2890
    .local v2, index:I
    :try_start_0
    iget-object v6, p0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    if-eqz v6, :cond_6

    .line 2891
    iget-object v6, p0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2893
    :cond_0
    iget-object v6, p0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 2894
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v6, p0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    invoke-static {v7, v6}, Lcom/lge/camera/util/Common;->getNameWithoutExtension(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 2895
    .local v3, mFileNameWithoutExtention:Ljava/lang/String;
    if-nez v3, :cond_8

    .line 2896
    const-string v6, "CameraApp"

    const-string v7, "found deleted image!"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2897
    iget-object v6, p0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2899
    iget-object v6, p0, Lcom/lge/camera/PostviewActivity;->mImageAdapter:Lcom/lge/camera/postview/ContShotThumbAdapter;

    if-eqz v6, :cond_2

    .line 2900
    iget-object v6, p0, Lcom/lge/camera/PostviewActivity;->mImageAdapter:Lcom/lge/camera/postview/ContShotThumbAdapter;

    iget-object v6, v6, Lcom/lge/camera/postview/ContShotThumbAdapter;->mThumb:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2901
    iget-object v6, p0, Lcom/lge/camera/PostviewActivity;->mThumbnailRect:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/lge/camera/PostviewActivity;->mThumbnailRect:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 2902
    iget-object v6, p0, Lcom/lge/camera/PostviewActivity;->mThumbnailRect:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2904
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getSelectedIndex()I

    move-result v6

    iget-object v7, p0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v6, v7, :cond_2

    .line 2905
    iget-object v6, p0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v6}, Lcom/lge/camera/PostviewActivity;->setSelectedIndex(I)V

    .line 2917
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 2918
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "tot = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " / index = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " / validateCount = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2919
    if-ne v5, v4, :cond_0

    .line 2922
    .end local v3           #mFileNameWithoutExtention:Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2924
    iget-object v6, p0, Lcom/lge/camera/PostviewActivity;->mImageAdapter:Lcom/lge/camera/postview/ContShotThumbAdapter;

    if-eqz v6, :cond_4

    if-ne v4, v9, :cond_4

    .line 2925
    const/4 v6, 0x0

    const v7, 0x7f02018d

    invoke-virtual {p0, v6, v7}, Lcom/lge/camera/PostviewActivity;->setSubButton(II)V

    .line 2927
    :cond_4
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "validate image return = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2928
    if-lez v4, :cond_5

    .line 2929
    iget-object v6, p0, Lcom/lge/camera/PostviewActivity;->mImageAdapter:Lcom/lge/camera/postview/ContShotThumbAdapter;

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getIsMultiSelectMode()Z

    move-result v6

    if-nez v6, :cond_5

    .line 2930
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getSelectedIndex()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/lge/camera/PostviewActivity;->refreshContinuousGallery(IZ)V

    .line 2931
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->refreshLoadCapturedImages()Z

    .line 2932
    iget-object v6, p0, Lcom/lge/camera/PostviewActivity;->mImageAdapter:Lcom/lge/camera/postview/ContShotThumbAdapter;

    invoke-virtual {v6}, Lcom/lge/camera/postview/ContShotThumbAdapter;->notifyDataSetChanged()V

    .line 2933
    invoke-direct {p0}, Lcom/lge/camera/PostviewActivity;->setupPostview()V

    .line 2937
    :cond_5
    if-nez v4, :cond_9

    .line 2938
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->finish()V

    .line 2961
    :cond_6
    :goto_2
    return-void

    .line 2885
    .end local v2           #index:I
    .end local v4           #totalCount:I
    .end local v5           #validateCount:I
    :cond_7
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 2909
    .restart local v2       #index:I
    .restart local v3       #mFileNameWithoutExtention:Ljava/lang/String;
    .restart local v4       #totalCount:I
    .restart local v5       #validateCount:I
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 2910
    iget-object v6, p0, Lcom/lge/camera/PostviewActivity;->mSaveFileName:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/lge/camera/PostviewActivity;->mSaveFileName:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 2911
    const-string v6, "CameraApp"

    const-string v7, " differ!! reassign"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2912
    iput-object v3, p0, Lcom/lge/camera/PostviewActivity;->mSaveFileName:Ljava/lang/String;

    .line 2913
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/lge/camera/PostviewActivity;->bChangeFileName:Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_1

    .line 2951
    .end local v3           #mFileNameWithoutExtention:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2952
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v6, "CameraApp"

    const-string v7, "ArrayIndexOutOfBoundsException!"

    invoke-static {v6, v7, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2953
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->finish()V

    goto :goto_2

    .line 2939
    .end local v0           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_9
    if-le v4, v9, :cond_6

    .line 2940
    const v6, 0x7f090036

    :try_start_1
    invoke-virtual {p0, v6}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Gallery;

    .line 2941
    .local v1, gallery:Landroid/widget/Gallery;
    if-eqz v1, :cond_a

    .line 2942
    add-int/lit8 v6, v4, -0x1

    invoke-virtual {v1, v6}, Landroid/widget/Gallery;->setSelection(I)V

    .line 2943
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hbDebug getSelectedIndex() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getSelectedIndex()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2945
    :cond_a
    iget-object v6, p0, Lcom/lge/camera/PostviewActivity;->mThumbnailRect:Ljava/util/ArrayList;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/lge/camera/PostviewActivity;->mThumbnailRect:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_6

    .line 2946
    iget-object v6, p0, Lcom/lge/camera/PostviewActivity;->mThumbnailRect:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 2954
    .end local v1           #gallery:Landroid/widget/Gallery;
    :catch_1
    move-exception v0

    .line 2955
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v6, "CameraApp"

    const-string v7, "NullPointerException!"

    invoke-static {v6, v7, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2956
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->finish()V

    goto :goto_2

    .line 2957
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 2958
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v6, "CameraApp"

    const-string v7, "IndexOutOfBoundsException!"

    invoke-static {v6, v7, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2959
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->finish()V

    goto/16 :goto_2
.end method

.method public checkValidateVideo()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 2965
    :try_start_0
    iget-object v4, p0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    :goto_0
    invoke-static {p0, v4}, Lcom/lge/camera/util/BitmapManager;->getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 2966
    .local v1, filePath:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v4, p0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    :goto_1
    invoke-static {v6, v4}, Lcom/lge/camera/util/Common;->getNameWithoutExtension(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 2967
    .local v2, mFileNameWithoutExtention:Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/camera/PostviewActivity;->mSaveFileName:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/lge/camera/PostviewActivity;->mSaveFileName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2968
    const-string v4, "CameraApp"

    const-string v5, " differ!! reassign"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2969
    iput-object v2, p0, Lcom/lge/camera/PostviewActivity;->mSaveFileName:Ljava/lang/String;

    .line 2971
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/lge/camera/PostviewActivity;->bChangeFileName:Z

    .line 2974
    :cond_0
    const-string v4, "CameraApp"

    const-string v5, "video path:%s, mSaveFileName:%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/lge/camera/PostviewActivity;->mSaveFileName:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2975
    const/4 v3, 0x0

    .line 2976
    .local v3, videoFile:Ljava/io/File;
    if-eqz v1, :cond_1

    .line 2977
    new-instance v3, Ljava/io/File;

    .end local v3           #videoFile:Ljava/io/File;
    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2979
    .restart local v3       #videoFile:Ljava/io/File;
    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    .line 2980
    :cond_2
    const-string v4, "CameraApp"

    const-string v5, "Video file(%s) doesn\'t exist"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2981
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2993
    .end local v1           #filePath:Ljava/lang/String;
    .end local v2           #mFileNameWithoutExtention:Ljava/lang/String;
    .end local v3           #videoFile:Ljava/io/File;
    :cond_3
    :goto_2
    return-void

    :cond_4
    move-object v4, v5

    .line 2965
    goto :goto_0

    .restart local v1       #filePath:Ljava/lang/String;
    :cond_5
    move-object v4, v5

    .line 2966
    goto :goto_1

    .line 2983
    .end local v1           #filePath:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2984
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v4, "CameraApp"

    const-string v5, "ArrayIndexOutOfBoundsException!"

    invoke-static {v4, v5, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2985
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->finish()V

    goto :goto_2

    .line 2986
    .end local v0           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_1
    move-exception v0

    .line 2987
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v4, "CameraApp"

    const-string v5, "NullPointerException!"

    invoke-static {v4, v5, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2988
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->finish()V

    goto :goto_2

    .line 2989
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 2990
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v4, "CameraApp"

    const-string v5, "IndexOutOfBoundsException!"

    invoke-static {v4, v5, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2991
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->finish()V

    goto :goto_2
.end method

.method protected configureWindow()V
    .locals 2

    .prologue
    .line 524
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 525
    .local v0, window:Landroid/view/Window;
    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 526
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/lge/camera/PostviewActivity;->requestWindowFeature(I)Z

    .line 527
    return-void
.end method

.method public debugStackTrace()V
    .locals 6

    .prologue
    .line 3777
    const-string v3, "CameraApp"

    const-string v4, "Printing stack trace : "

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3778
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 3779
    .local v0, elements:[Ljava/lang/StackTraceElement;
    const/4 v1, 0x3

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 3780
    aget-object v2, v0, v1

    .line 3781
    .local v2, s:Ljava/lang/StackTraceElement;
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\tat "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3779
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3786
    .end local v2           #s:Ljava/lang/StackTraceElement;
    :cond_0
    return-void
.end method

.method public deleteSelectedImages(ZZ)I
    .locals 12
    .parameter "useTimeMachine"
    .parameter "deleteAll"

    .prologue
    .line 2747
    const-string v9, "CameraApp"

    const-string v10, "deleteSelectedImages()"

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2749
    const v9, 0x7f090036

    invoke-virtual {p0, v9}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Gallery;

    .line 2750
    .local v3, gallery:Landroid/widget/Gallery;
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getSelectedIndexs()Ljava/util/ArrayList;

    move-result-object v7

    .line 2751
    .local v7, selectedIndexes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    .local v8, uriListSize:I
    const/4 v5, 0x0

    .local v5, lastUriIndex:I
    const/4 v0, 0x0

    .local v0, NextIndex:I
    const/4 v1, 0x0

    .local v1, diff:I
    const/4 v6, 0x0

    .line 2754
    .local v6, newIndex:I
    :try_start_0
    iget-object v9, p0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 2756
    if-nez p2, :cond_0

    if-nez p1, :cond_0

    .line 2757
    add-int/lit8 v5, v8, -0x1

    .line 2758
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getSelectedIndexs()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/lit8 v0, v9, 0x1

    .line 2759
    sub-int v1, v5, v0

    .line 2763
    :cond_0
    add-int/lit8 v4, v8, -0x1

    .line 2764
    .local v4, index:I
    :goto_0
    if-ltz v4, :cond_6

    .line 2765
    if-eqz p2, :cond_2

    .line 2766
    invoke-direct {p0, v4}, Lcom/lge/camera/PostviewActivity;->deleteImage(I)V

    .line 2767
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2784
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 2769
    :cond_2
    if-eqz p1, :cond_5

    .line 2770
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 2771
    const-string v9, "CameraApp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TMS delete index = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2772
    invoke-direct {p0, v4}, Lcom/lge/camera/PostviewActivity;->deleteImage(I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 2814
    .end local v4           #index:I
    :catch_0
    move-exception v2

    .line 2815
    .local v2, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v9, "CameraApp"

    const-string v10, "ArrayIndexOutOfBoundsException!"

    invoke-static {v9, v10, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2816
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->finish()V

    .line 2824
    .end local v2           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_3
    :goto_2
    iget-object v9, p0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    return v9

    .line 2774
    .restart local v4       #index:I
    :cond_4
    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 2817
    .end local v4           #index:I
    :catch_1
    move-exception v2

    .line 2818
    .local v2, e:Ljava/lang/NullPointerException;
    const-string v9, "CameraApp"

    const-string v10, "NullPointerException!"

    invoke-static {v9, v10, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2819
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->finish()V

    goto :goto_2

    .line 2777
    .end local v2           #e:Ljava/lang/NullPointerException;
    .restart local v4       #index:I
    :cond_5
    :try_start_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2779
    invoke-direct {p0, v4}, Lcom/lge/camera/PostviewActivity;->deleteImage(I)V

    .line 2780
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 2820
    .end local v4           #index:I
    :catch_2
    move-exception v2

    .line 2821
    .local v2, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v9, "CameraApp"

    const-string v10, "IndexOutOfBoundsException!"

    invoke-static {v9, v10, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2822
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->finish()V

    goto :goto_2

    .line 2787
    .end local v2           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v4       #index:I
    :cond_6
    if-eqz p1, :cond_9

    .line 2788
    :try_start_3
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->renameForTimeMachineShot()V

    .line 2789
    const/4 v9, 0x4

    invoke-virtual {v3, v9}, Landroid/widget/Gallery;->setVisibility(I)V

    .line 2790
    const/4 v6, 0x0

    .line 2791
    invoke-virtual {p0, v6}, Lcom/lge/camera/PostviewActivity;->setSelectedIndex(I)V

    .line 2804
    :cond_7
    :goto_3
    invoke-virtual {v3, v6}, Landroid/widget/Gallery;->setSelection(I)V

    .line 2806
    iget-object v9, p0, Lcom/lge/camera/PostviewActivity;->mThumbnailRect:Ljava/util/ArrayList;

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/lge/camera/PostviewActivity;->mThumbnailRect:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_8

    .line 2807
    iget-object v9, p0, Lcom/lge/camera/PostviewActivity;->mThumbnailRect:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 2809
    :cond_8
    if-nez p1, :cond_3

    .line 2810
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getSelectedIndex()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lcom/lge/camera/PostviewActivity;->refreshContinuousGallery(IZ)V

    .line 2811
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->refreshLoadCapturedImages()Z

    .line 2812
    iget-object v9, p0, Lcom/lge/camera/PostviewActivity;->mImageAdapter:Lcom/lge/camera/postview/ContShotThumbAdapter;

    invoke-virtual {v9}, Lcom/lge/camera/postview/ContShotThumbAdapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 2793
    :cond_9
    iget-object v9, p0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_7

    .line 2794
    iget-object v9, p0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v6, v9, -0x1

    .line 2796
    sub-int v9, v6, v1

    if-lt v9, v6, :cond_a

    .line 2797
    invoke-virtual {p0, v6}, Lcom/lge/camera/PostviewActivity;->setSelectedIndex(I)V

    .line 2801
    :goto_4
    iget-object v9, p0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/Uri;

    invoke-virtual {p0, v9}, Lcom/lge/camera/PostviewActivity;->saveLastPicture(Landroid/net/Uri;)V

    goto :goto_3

    .line 2799
    :cond_a
    sub-int v9, v6, v1

    invoke-virtual {p0, v9}, Lcom/lge/camera/PostviewActivity;->setSelectedIndex(I)V
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 3635
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 3643
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 3640
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 3635
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public displayCheckbox(Z)V
    .locals 14
    .parameter "show"

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 3408
    const-string v9, "CameraApp"

    const-string v10, "displayCheckbox"

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3409
    const/4 v8, 0x0

    .line 3410
    .local v8, thumbWidth:I
    const/4 v7, 0x0

    .line 3411
    .local v7, thumbHeight:I
    iget v9, p0, Lcom/lge/camera/PostviewActivity;->mOrientation:I

    if-eqz v9, :cond_0

    iget v9, p0, Lcom/lge/camera/PostviewActivity;->mOrientation:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    .line 3413
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0a01b2

    invoke-static {v9, v10}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v8

    .line 3414
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0a01b3

    invoke-static {v9, v10}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v7

    .line 3420
    :goto_0
    iget-object v9, p0, Lcom/lge/camera/PostviewActivity;->mImageAdapter:Lcom/lge/camera/postview/ContShotThumbAdapter;

    if-eqz v9, :cond_1

    .line 3421
    iget-object v9, p0, Lcom/lge/camera/PostviewActivity;->mImageAdapter:Lcom/lge/camera/postview/ContShotThumbAdapter;

    invoke-virtual {v9, v8, v7}, Lcom/lge/camera/postview/ContShotThumbAdapter;->setThumbSize(II)V

    .line 3424
    :cond_1
    iget-object v9, p0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3425
    .local v3, imageListSize:I
    const v9, 0x7f090036

    invoke-virtual {p0, v9}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Gallery;

    .line 3426
    .local v1, g:Landroid/widget/Gallery;
    const-string v9, "THUMB_%d"

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 3428
    .local v5, tagKey:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_6

    .line 3429
    const-string v9, "THUMB_%d"

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 3430
    invoke-virtual {v1, v5}, Landroid/widget/Gallery;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lge/camera/postview/ThumbnailGalleryItem;

    .line 3432
    .local v6, tgi:Lcom/lge/camera/postview/ThumbnailGalleryItem;
    if-eqz v6, :cond_2

    .line 3433
    invoke-virtual {v6, v8, v7}, Lcom/lge/camera/postview/ThumbnailGalleryItem;->setThumbSize(II)V

    .line 3435
    if-nez p1, :cond_4

    .line 3436
    invoke-virtual {v6, v13}, Lcom/lge/camera/postview/ThumbnailGalleryItem;->showCheckbox(Z)V

    .line 3437
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getSelectedIndex()I

    move-result v9

    if-ne v2, v9, :cond_2

    .line 3438
    invoke-virtual {v6, v12}, Lcom/lge/camera/postview/ThumbnailGalleryItem;->setCheck(Z)V

    .line 3428
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3416
    .end local v1           #g:Landroid/widget/Gallery;
    .end local v2           #i:I
    .end local v3           #imageListSize:I
    .end local v5           #tagKey:Ljava/lang/String;
    .end local v6           #tgi:Lcom/lge/camera/postview/ThumbnailGalleryItem;
    :cond_3
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0a01b4

    invoke-static {v9, v10}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v8

    .line 3417
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0a01b5

    invoke-static {v9, v10}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v7

    goto :goto_0

    .line 3441
    .restart local v1       #g:Landroid/widget/Gallery;
    .restart local v2       #i:I
    .restart local v3       #imageListSize:I
    .restart local v5       #tagKey:Ljava/lang/String;
    .restart local v6       #tgi:Lcom/lge/camera/postview/ThumbnailGalleryItem;
    :cond_4
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getSelectedIndex()I

    move-result v9

    if-ne v2, v9, :cond_5

    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getSelectedIndexs()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getSelectedIndex()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 3443
    invoke-virtual {v6, v12}, Lcom/lge/camera/postview/ThumbnailGalleryItem;->setCheck(Z)V

    .line 3445
    :cond_5
    invoke-virtual {v6, v12}, Lcom/lge/camera/postview/ThumbnailGalleryItem;->showCheckbox(Z)V

    goto :goto_2

    .line 3450
    .end local v6           #tgi:Lcom/lge/camera/postview/ThumbnailGalleryItem;
    :cond_6
    const/4 v4, 0x0

    .line 3451
    .local v4, needDeleteButton:Z
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->isTimeMachineShot()Z

    move-result v9

    if-eqz v9, :cond_7

    iget v9, p0, Lcom/lge/camera/PostviewActivity;->mTimeMachineViewMode:I

    if-nez v9, :cond_7

    .line 3453
    const/4 v4, 0x1

    .line 3456
    :cond_7
    const/4 v0, 0x0

    .line 3457
    .local v0, buttonImage:I
    if-nez p1, :cond_9

    .line 3458
    if-le v3, v12, :cond_8

    if-nez v4, :cond_8

    .line 3459
    const v0, 0x7f02018f

    .line 3463
    :goto_3
    invoke-virtual {p0, v13, v0}, Lcom/lge/camera/PostviewActivity;->setSubButton(II)V

    .line 3472
    :goto_4
    invoke-virtual {p0, p1}, Lcom/lge/camera/PostviewActivity;->setIsMultiSelectMode(Z)V

    .line 3473
    return-void

    .line 3461
    :cond_8
    const v0, 0x7f02018d

    goto :goto_3

    .line 3465
    :cond_9
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->isTimeMachineShot()Z

    move-result v9

    if-eqz v9, :cond_a

    iget v9, p0, Lcom/lge/camera/PostviewActivity;->mTimeMachineViewMode:I

    if-ne v9, v12, :cond_a

    .line 3466
    const v0, 0x7f020193

    .line 3470
    :goto_5
    invoke-virtual {p0, v13, v0}, Lcom/lge/camera/PostviewActivity;->setSubButton(II)V

    goto :goto_4

    .line 3468
    :cond_a
    const v0, 0x7f02018d

    goto :goto_5
.end method

.method public enableOrientationListener(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 693
    iget-boolean v0, p0, Lcom/lge/camera/PostviewActivity;->mPause:Z

    if-eqz v0, :cond_0

    .line 694
    const-string v0, "CameraApp"

    const-string v1, "Activity is finishing. so listener must be disabled"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    const/4 p1, 0x0

    .line 698
    :cond_0
    iput-boolean p1, p0, Lcom/lge/camera/PostviewActivity;->mOrientationChangeEnabled:Z

    .line 699
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_1

    .line 700
    if-eqz p1, :cond_2

    .line 701
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 705
    :cond_1
    :goto_0
    return-void

    .line 703
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    goto :goto_0
.end method

.method public exitInteraction(I)V
    .locals 3
    .parameter "delay"

    .prologue
    .line 3603
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mExitInteraction:Ljava/lang/Runnable;

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/lge/camera/PostviewActivity;->postOnUiThread(Ljava/lang/Runnable;J)V

    .line 3604
    return-void
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 176
    sget v0, Lcom/lge/camera/util/Common;->APP_POSTVIEW_INSTANCE_COUNT:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/lge/camera/util/Common;->APP_POSTVIEW_INSTANCE_COUNT:I

    .line 177
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroy POSTVIEW app_instance_cnt = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lge/camera/util/Common;->APP_POSTVIEW_INSTANCE_COUNT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 179
    return-void
.end method

.method public finish()V
    .locals 9

    .prologue
    const/16 v8, 0x64

    const/4 v7, 0x1

    .line 422
    const-string v3, "CameraApp"

    const-string v4, "Postview finish()"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 424
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "postview_return"

    invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 426
    :try_start_0
    iget-object v3, p0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lge/camera/PostviewActivity;->mThumbImage:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    .line 428
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/lge/camera/PostviewActivity;->timeMachineDeleteImagesWhenFinish(Z)V

    .line 430
    iget-object v3, p0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 435
    .local v2, uriListSize:I
    const-string v3, "thumb_data"

    iget-object v4, p0, Lcom/lge/camera/PostviewActivity;->mThumbImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 436
    const-string v4, "recent_uri"

    iget-object v3, p0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 437
    const-string v3, "file_name"

    iget-object v4, p0, Lcom/lge/camera/PostviewActivity;->mSaveFileName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Postview intent:file_name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/PostviewActivity;->mSaveFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    .line 447
    .end local v2           #uriListSize:I
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportManualAntibanding()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/lge/camera/PostviewActivity;->mcurzoom:Ljava/lang/String;

    const-string v4, "-1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 448
    const-string v3, "currentZoom"

    iget-object v4, p0, Lcom/lge/camera/PostviewActivity;->mcurzoom:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 449
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "===> mcurzoom : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/PostviewActivity;->mcurzoom:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    :cond_1
    iput-boolean v7, p0, Lcom/lge/camera/PostviewActivity;->bConnectedDevice:Z

    .line 452
    invoke-virtual {p0, v8, v1}, Lcom/lge/camera/PostviewActivity;->setResult(ILandroid/content/Intent;)V

    .line 453
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 455
    :goto_0
    return-void

    .line 440
    :catch_0
    move-exception v0

    .line 441
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_1
    const-string v3, "CameraApp"

    const-string v4, "ArrayIndexOutOfBoundsException!"

    invoke-static {v3, v4, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 447
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportManualAntibanding()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/lge/camera/PostviewActivity;->mcurzoom:Ljava/lang/String;

    const-string v4, "-1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 448
    const-string v3, "currentZoom"

    iget-object v4, p0, Lcom/lge/camera/PostviewActivity;->mcurzoom:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 449
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "===> mcurzoom : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/PostviewActivity;->mcurzoom:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    :cond_2
    iput-boolean v7, p0, Lcom/lge/camera/PostviewActivity;->bConnectedDevice:Z

    .line 452
    invoke-virtual {p0, v8, v1}, Lcom/lge/camera/PostviewActivity;->setResult(ILandroid/content/Intent;)V

    .line 453
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 442
    .end local v0           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_1
    move-exception v0

    .line 443
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_2
    const-string v3, "CameraApp"

    const-string v4, "NullPointerException!"

    invoke-static {v3, v4, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 447
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportManualAntibanding()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/lge/camera/PostviewActivity;->mcurzoom:Ljava/lang/String;

    const-string v4, "-1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 448
    const-string v3, "currentZoom"

    iget-object v4, p0, Lcom/lge/camera/PostviewActivity;->mcurzoom:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 449
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "===> mcurzoom : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/PostviewActivity;->mcurzoom:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    :cond_3
    iput-boolean v7, p0, Lcom/lge/camera/PostviewActivity;->bConnectedDevice:Z

    .line 452
    invoke-virtual {p0, v8, v1}, Lcom/lge/camera/PostviewActivity;->setResult(ILandroid/content/Intent;)V

    .line 453
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 444
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 445
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    :try_start_3
    const-string v3, "CameraApp"

    const-string v4, "IndexOutOfBoundsException!"

    invoke-static {v3, v4, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 447
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportManualAntibanding()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/lge/camera/PostviewActivity;->mcurzoom:Ljava/lang/String;

    const-string v4, "-1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 448
    const-string v3, "currentZoom"

    iget-object v4, p0, Lcom/lge/camera/PostviewActivity;->mcurzoom:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 449
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "===> mcurzoom : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/PostviewActivity;->mcurzoom:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    :cond_4
    iput-boolean v7, p0, Lcom/lge/camera/PostviewActivity;->bConnectedDevice:Z

    .line 452
    invoke-virtual {p0, v8, v1}, Lcom/lge/camera/PostviewActivity;->setResult(ILandroid/content/Intent;)V

    .line 453
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 447
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :catchall_0
    move-exception v3

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportManualAntibanding()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/lge/camera/PostviewActivity;->mcurzoom:Ljava/lang/String;

    const-string v5, "-1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 448
    const-string v4, "currentZoom"

    iget-object v5, p0, Lcom/lge/camera/PostviewActivity;->mcurzoom:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 449
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "===> mcurzoom : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/camera/PostviewActivity;->mcurzoom:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    :cond_5
    iput-boolean v7, p0, Lcom/lge/camera/PostviewActivity;->bConnectedDevice:Z

    .line 452
    invoke-virtual {p0, v8, v1}, Lcom/lge/camera/PostviewActivity;->setResult(ILandroid/content/Intent;)V

    .line 453
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    throw v3
.end method

.method public gallerySlideDownAnimation(Ljava/lang/Runnable;)V
    .locals 5
    .parameter "action"

    .prologue
    .line 2165
    const-string v3, "CameraApp"

    const-string v4, "gallerySlideDownAnimation"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2167
    const v3, 0x7f090036

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Gallery;

    .line 2168
    .local v2, galleryView:Landroid/widget/Gallery;
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/Gallery;->setVisibility(I)V

    .line 2169
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f040001

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 2170
    .local v1, gallerySlideDownAnimation:Landroid/view/animation/Animation;
    new-instance v3, Lcom/lge/camera/PostviewActivity$19;

    invoke-direct {v3, p0, p1}, Lcom/lge/camera/PostviewActivity$19;-><init>(Lcom/lge/camera/PostviewActivity;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2179
    invoke-virtual {v2, v1}, Landroid/widget/Gallery;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2183
    .end local v1           #gallerySlideDownAnimation:Landroid/view/animation/Animation;
    .end local v2           #galleryView:Landroid/widget/Gallery;
    :goto_0
    return-void

    .line 2180
    :catch_0
    move-exception v0

    .line 2181
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "CameraApp"

    const-string v4, "NullPointerException : "

    invoke-static {v3, v4, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 0

    .prologue
    .line 3617
    return-object p0
.end method

.method public getActivityOrientation()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 652
    iget v1, p0, Lcom/lge/camera/PostviewActivity;->mOrientation:I

    packed-switch v1, :pswitch_data_0

    .line 662
    :goto_0
    :pswitch_0
    return v0

    .line 656
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 658
    :pswitch_2
    const/16 v0, 0x9

    goto :goto_0

    .line 660
    :pswitch_3
    const/16 v0, 0x8

    goto :goto_0

    .line 652
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public getContShotThumbAdapter()Lcom/lge/camera/postview/ContShotThumbAdapter;
    .locals 1

    .prologue
    .line 3561
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mImageAdapter:Lcom/lge/camera/postview/ContShotThumbAdapter;

    return-object v0
.end method

.method public getCountThumbnailSelected()I
    .locals 9

    .prologue
    .line 3476
    const v5, 0x7f090036

    invoke-virtual {p0, v5}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Gallery;

    .line 3479
    .local v0, g:Landroid/widget/Gallery;
    const/4 v2, 0x0

    .line 3482
    .local v2, nCount:I
    iget-object v5, p0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .line 3483
    .local v1, index:I
    :goto_0
    if-ltz v1, :cond_1

    .line 3484
    const-string v5, "THUMB_%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 3485
    .local v3, tagKey:Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/widget/Gallery;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lge/camera/postview/ThumbnailGalleryItem;

    .line 3488
    .local v4, ti:Lcom/lge/camera/postview/ThumbnailGalleryItem;
    if-eqz v4, :cond_0

    .line 3489
    invoke-virtual {v4}, Lcom/lge/camera/postview/ThumbnailGalleryItem;->getChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3490
    add-int/lit8 v2, v2, 0x1

    .line 3493
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3495
    .end local v3           #tagKey:Ljava/lang/String;
    .end local v4           #ti:Lcom/lge/camera/postview/ThumbnailGalleryItem;
    :cond_1
    return v2
.end method

.method public getIsMultiSelectMode()Z
    .locals 1

    .prologue
    .line 3527
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mImageAdapter:Lcom/lge/camera/postview/ContShotThumbAdapter;

    if-eqz v0, :cond_0

    .line 3528
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mImageAdapter:Lcom/lge/camera/postview/ContShotThumbAdapter;

    invoke-virtual {v0}, Lcom/lge/camera/postview/ContShotThumbAdapter;->getIsMultiSelectMode()Z

    move-result v0

    .line 3530
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLastThumbnail(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "uri"

    .prologue
    .line 2339
    const/4 v9, 0x0

    .line 2341
    .local v9, thumbnail:Landroid/graphics/Bitmap;
    iget v0, p0, Lcom/lge/camera/PostviewActivity;->mApplicationMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isOMAP4Chipset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2342
    invoke-static {p0, p1}, Lcom/lge/camera/util/BitmapManager;->getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    .line 2343
    .local v7, filePath:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 2344
    const/4 v0, 0x1

    invoke-static {v7, v0}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v9

    .end local v7           #filePath:Ljava/lang/String;
    :cond_0
    :goto_0
    move-object v0, v9

    .line 2368
    :goto_1
    return-object v0

    .line 2347
    :cond_1
    const-wide/16 v2, -0x1

    .line 2348
    .local v2, id:J
    if-eqz p1, :cond_2

    .line 2349
    invoke-static {p0, p1}, Lcom/lge/camera/util/Util;->getIdFromUri(Landroid/app/Activity;Landroid/net/Uri;)J

    move-result-wide v2

    .line 2350
    const-string v0, "CameraApp"

    const-string v1, "GET THUMB start id is %d, and uri is %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2352
    :cond_2
    const-wide/16 v0, -0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_3

    .line 2353
    const-string v0, "CameraApp"

    const-string v1, "GET THUMB end: uri not valid"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2354
    const/4 v0, 0x0

    goto :goto_1

    .line 2357
    :cond_3
    iget v0, p0, Lcom/lge/camera/PostviewActivity;->mApplicationMode:I

    if-nez v0, :cond_4

    .line 2358
    invoke-static {p0, p1}, Lcom/lge/camera/util/BitmapManager;->getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/ImageManager;->getExifOrientation(Ljava/lang/String;)I

    move-result v8

    .line 2359
    .local v8, orientation:I
    invoke-static {}, Lcom/lge/camera/util/BitmapManager;->instance()Lcom/lge/camera/util/BitmapManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/lge/camera/util/BitmapManager;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 2360
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->imageHandler:Lcom/lge/camera/util/ImageHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v9, v8, v1}, Lcom/lge/camera/util/ImageHandler;->getImage(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 2361
    const-string v0, "CameraApp"

    const-string v1, "GET PICTURE THUMB end"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2363
    .end local v8           #orientation:I
    :cond_4
    invoke-static {}, Lcom/lge/camera/util/BitmapManager;->instance()Lcom/lge/camera/util/BitmapManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/lge/camera/util/BitmapManager;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 2364
    const-string v0, "CameraApp"

    const-string v1, "GET VIDEO THUMB end"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 648
    iget v0, p0, Lcom/lge/camera/PostviewActivity;->mOrientation:I

    return v0
.end method

.method public getPostviewMenuState()I
    .locals 1

    .prologue
    .line 1732
    iget v0, p0, Lcom/lge/camera/PostviewActivity;->mPostviewMenuState:I

    return v0
.end method

.method public getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1705
    iget v0, p0, Lcom/lge/camera/PostviewActivity;->mApplicationMode:I

    if-nez v0, :cond_1

    .line 1706
    iget v0, p0, Lcom/lge/camera/PostviewActivity;->mCameraId:I

    if-ne v0, v1, :cond_0

    .line 1707
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mFrontCameraPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 1714
    :goto_0
    return-object v0

    .line 1709
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mBackCameraPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    goto :goto_0

    .line 1711
    :cond_1
    iget v0, p0, Lcom/lge/camera/PostviewActivity;->mCameraId:I

    if-ne v0, v1, :cond_2

    .line 1712
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mFrontCamcorderPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    goto :goto_0

    .line 1714
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mBackCamcorderPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    goto :goto_0
.end method

.method public getSampleSize()I
    .locals 9

    .prologue
    .line 928
    const/4 v4, 0x4

    .line 929
    .local v4, sampleSize:I
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v6

    const-string v7, "key_camera_picturesize"

    invoke-virtual {v6, v7}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v3

    .line 931
    .local v3, pictureSizePref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v3, :cond_0

    .line 932
    iget-object v6, p0, Lcom/lge/camera/PostviewActivity;->mShotMode:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/lge/camera/PostviewActivity;->mShotMode:Ljava/lang/String;

    const-string v7, "shotmode_continuous"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 933
    const/4 v4, 0x1

    .line 960
    :cond_0
    :goto_0
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Postview Activity : getSampleSize is = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    return v4

    .line 934
    :cond_1
    iget-object v6, p0, Lcom/lge/camera/PostviewActivity;->mShotMode:Ljava/lang/String;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/lge/camera/PostviewActivity;->mShotMode:Ljava/lang/String;

    const-string v7, "shotmode_panorama"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 935
    const/4 v5, 0x0

    .line 936
    .local v5, uri:Landroid/net/Uri;
    iget-object v6, p0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_3

    .line 937
    iget-object v6, p0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getSelectedIndex()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #uri:Landroid/net/Uri;
    check-cast v5, Landroid/net/Uri;

    .line 941
    .restart local v5       #uri:Landroid/net/Uri;
    :goto_1
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/lge/camera/util/BitmapManager;->getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/lge/camera/util/ImageManager;->getExifWidth(Ljava/lang/String;)I

    move-result v2

    .line 942
    .local v2, imageWidth:I
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/lge/camera/util/BitmapManager;->getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/lge/camera/util/ImageManager;->getExifHeight(Ljava/lang/String;)I

    move-result v0

    .line 944
    .local v0, imageHeight:I
    move v1, v2

    .line 945
    .local v1, imageLength:I
    if-lt v0, v2, :cond_2

    .line 946
    move v1, v0

    .line 949
    :cond_2
    const/16 v6, 0x320

    if-gt v1, v6, :cond_4

    .line 950
    const/4 v4, 0x1

    goto :goto_0

    .line 939
    .end local v0           #imageHeight:I
    .end local v1           #imageLength:I
    .end local v2           #imageWidth:I
    :cond_3
    iget-object v6, p0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #uri:Landroid/net/Uri;
    check-cast v5, Landroid/net/Uri;

    .restart local v5       #uri:Landroid/net/Uri;
    goto :goto_1

    .line 951
    .restart local v0       #imageHeight:I
    .restart local v1       #imageLength:I
    .restart local v2       #imageWidth:I
    :cond_4
    const/16 v6, 0xc80

    if-lt v1, v6, :cond_5

    .line 952
    const/4 v4, 0x4

    goto :goto_0

    .line 954
    :cond_5
    const/4 v4, 0x2

    goto :goto_0

    .line 957
    .end local v0           #imageHeight:I
    .end local v1           #imageLength:I
    .end local v2           #imageWidth:I
    .end local v5           #uri:Landroid/net/Uri;
    :cond_6
    invoke-virtual {v3}, Lcom/lge/camera/setting/ListPreference;->getExtraInfo()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_0
.end method

.method public getSelectedIndex()I
    .locals 1

    .prologue
    .line 3540
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mImageAdapter:Lcom/lge/camera/postview/ContShotThumbAdapter;

    if-eqz v0, :cond_0

    .line 3541
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mImageAdapter:Lcom/lge/camera/postview/ContShotThumbAdapter;

    invoke-virtual {v0}, Lcom/lge/camera/postview/ContShotThumbAdapter;->getSelectedIndex()I

    move-result v0

    .line 3543
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/lge/camera/PostviewActivity;->mSelectedIndex:I

    goto :goto_0
.end method

.method public getSelectedIndexs()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3554
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mImageAdapter:Lcom/lge/camera/postview/ContShotThumbAdapter;

    if-eqz v0, :cond_0

    .line 3555
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mImageAdapter:Lcom/lge/camera/postview/ContShotThumbAdapter;

    iget-object v1, p0, Lcom/lge/camera/PostviewActivity;->mSelectedIndexs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/lge/camera/postview/ContShotThumbAdapter;->setSelectedIndexs(Ljava/util/ArrayList;)V

    .line 3557
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mSelectedIndexs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSettingValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    .line 1719
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 1720
    .local v0, pref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v0, :cond_0

    .line 1721
    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 1723
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "not found"

    goto :goto_0
.end method

.method public getWindowOrientation()I
    .locals 7

    .prologue
    .line 666
    const-string v4, "window"

    invoke-virtual {p0, v4}, Lcom/lge/camera/PostviewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 667
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 668
    .local v3, rotation:I
    iget v2, p0, Lcom/lge/camera/PostviewActivity;->mOrientation:I

    .line 669
    .local v2, oldOrientation:I
    const/4 v1, 0x0

    .line 671
    .local v1, newOrientation:I
    packed-switch v3, :pswitch_data_0

    .line 685
    :goto_0
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getWindowOrientation:Old orientation = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", New orientation = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    return v1

    .line 673
    :pswitch_0
    const/4 v1, 0x1

    .line 674
    goto :goto_0

    .line 676
    :pswitch_1
    const/4 v1, 0x0

    .line 677
    goto :goto_0

    .line 679
    :pswitch_2
    const/4 v1, 0x3

    .line 680
    goto :goto_0

    .line 682
    :pswitch_3
    const/4 v1, 0x2

    goto :goto_0

    .line 671
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public inflateStub(I)Landroid/view/View;
    .locals 2
    .parameter "id"

    .prologue
    .line 510
    invoke-virtual {p0, p1}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 511
    .local v0, stub:Landroid/view/ViewStub;
    if-eqz v0, :cond_0

    .line 512
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    .line 514
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public inflateView(I)Landroid/view/View;
    .locals 2
    .parameter "resource"

    .prologue
    .line 519
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/lge/camera/PostviewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 520
    .local v0, li:Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public isTimeMachineShot()Z
    .locals 2

    .prologue
    .line 3888
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isTimeMachinShotSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mShotMode:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mShotMode:Ljava/lang/String;

    const-string v1, "shotmode_timemachine"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3890
    const/4 v0, 0x1

    .line 3892
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadCapturedImage(Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "uri"
    .parameter "degrees"

    .prologue
    const/4 v8, 0x0

    .line 910
    const-string v3, "CameraApp"

    const-string v4, "Load captured image:%s, degrees:%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v8

    const/4 v6, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    const/4 v0, 0x0

    .line 913
    .local v0, bmp:Landroid/graphics/Bitmap;
    iget v3, p0, Lcom/lge/camera/PostviewActivity;->mApplicationMode:I

    if-nez v3, :cond_0

    .line 914
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getSampleSize()I

    move-result v2

    .line 915
    .local v2, sampleSize:I
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v8, v2}, Lcom/lge/camera/util/ImageManager;->loadBitmap(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 919
    .end local v2           #sampleSize:I
    :goto_0
    if-nez v0, :cond_1

    .line 920
    const-string v3, "CameraApp"

    const-string v4, "LoadBitmap fail!"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    const/4 v3, 0x0

    .line 924
    :goto_1
    return-object v3

    .line 917
    :cond_0
    invoke-virtual {p0, p1}, Lcom/lge/camera/PostviewActivity;->getLastThumbnail(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 923
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/lge/camera/util/BitmapManager;->getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/camera/util/ImageManager;->getExifOrientation(Ljava/lang/String;)I

    move-result v1

    .line 924
    .local v1, orientation:I
    iget-object v3, p0, Lcom/lge/camera/PostviewActivity;->imageHandler:Lcom/lge/camera/util/ImageHandler;

    invoke-virtual {v3, v0, v1, v8}, Lcom/lge/camera/util/ImageHandler;->getImage(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_1
.end method

.method public loadSingleCapturedImages(Z)Z
    .locals 8
    .parameter "needRefresh"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 830
    iget-object v4, p0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_4

    .line 832
    invoke-direct {p0}, Lcom/lge/camera/PostviewActivity;->setFileNameLayout()V

    .line 834
    const v4, 0x7f090030

    invoke-virtual {p0, v4}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 835
    .local v3, postview:Landroid/widget/ImageView;
    invoke-virtual {p0, v3}, Lcom/lge/camera/PostviewActivity;->setImageViewClear(Landroid/widget/ImageView;)V

    .line 837
    iget-object v4, p0, Lcom/lge/camera/PostviewActivity;->mCapturedBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    if-nez p1, :cond_0

    .line 838
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->setLoadedPostview()V

    move v4, v5

    .line 869
    .end local v3           #postview:Landroid/widget/ImageView;
    :goto_0
    return v4

    .line 843
    .restart local v3       #postview:Landroid/widget/ImageView;
    :cond_0
    const/4 v1, 0x0

    .line 844
    .local v1, capturedImageUri:Landroid/net/Uri;
    :try_start_0
    iget-object v4, p0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v5, :cond_2

    .line 845
    iget-object v4, p0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getSelectedIndex()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/net/Uri;

    move-object v1, v0

    .line 849
    :goto_1
    iget-object v4, p0, Lcom/lge/camera/PostviewActivity;->mCapturedBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    .line 850
    iget-object v4, p0, Lcom/lge/camera/PostviewActivity;->mCapturedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 851
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/lge/camera/PostviewActivity;->mCapturedBitmap:Landroid/graphics/Bitmap;

    .line 853
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4}, Lcom/lge/camera/PostviewActivity;->loadCapturedImage(Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/camera/PostviewActivity;->mCapturedBitmap:Landroid/graphics/Bitmap;

    .line 854
    iget-object v4, p0, Lcom/lge/camera/PostviewActivity;->mCapturedBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_3

    move v4, v6

    .line 855
    goto :goto_0

    .line 847
    :cond_2
    iget-object v4, p0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/net/Uri;

    move-object v1, v0

    goto :goto_1

    .line 857
    :cond_3
    iget-object v4, p0, Lcom/lge/camera/PostviewActivity;->mCapturedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_2
    move v4, v5

    .line 865
    goto :goto_0

    .line 858
    :catch_0
    move-exception v2

    .line 859
    .local v2, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v4, "CameraApp"

    const-string v6, "ArrayIndexOutOfBoundsException!"

    invoke-static {v4, v6, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 860
    .end local v2           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_1
    move-exception v2

    .line 861
    .local v2, e:Ljava/lang/NullPointerException;
    const-string v4, "CameraApp"

    const-string v6, "NullPointerException!"

    invoke-static {v4, v6, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 862
    .end local v2           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v2

    .line 863
    .local v2, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v4, "CameraApp"

    const-string v6, "IndexOutOfBoundsException!"

    invoke-static {v4, v6, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 868
    .end local v1           #capturedImageUri:Landroid/net/Uri;
    .end local v2           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v3           #postview:Landroid/widget/ImageView;
    :cond_4
    const-string v4, "CameraApp"

    const-string v5, "mUriList.size() is 0 !!"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v6

    .line 869
    goto :goto_0
.end method

.method public makePostviewMenuItems(I)V
    .locals 24
    .parameter "menuType"

    .prologue
    .line 1739
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 1740
    .local v10, intent:Landroid/content/Intent;
    const/16 v19, 0x0

    .line 1741
    .local v19, postviewMenuList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v18, 0x0

    .line 1742
    .local v18, postviewMenuExtendList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v17, 0x0

    .line 1743
    .local v17, postviewIconList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1745
    .local v6, duplicateList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v22, 0x1

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/lge/camera/PostviewActivity;->clearShareAndSetAsMenuList(ZZ)V

    .line 1746
    const/16 v22, 0x1

    move/from16 v0, v22

    move/from16 v1, p1

    if-ne v0, v1, :cond_2

    .line 1747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/PostviewActivity;->menuListSetas:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    .line 1748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/PostviewActivity;->menuListExtendInfo:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    .line 1749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/PostviewActivity;->menuIconListSetas:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    .line 1756
    :cond_0
    :goto_0
    new-instance v21, Landroid/content/Intent;

    invoke-direct/range {v21 .. v21}, Landroid/content/Intent;-><init>()V

    .line 1757
    .local v21, smartShare:Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/PostviewActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .line 1758
    .local v16, packageManager:Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 1759
    .local v3, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v14, 0x0

    .line 1761
    .local v14, numActivities:I
    const-string v22, "android.intent.action.LGSMARTSHARE"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1762
    const/16 v22, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v20

    .line 1764
    .local v20, ri:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v10}, Lcom/lge/camera/PostviewActivity;->readMenuActivity(ILandroid/content/Intent;)Ljava/util/List;

    move-result-object v3

    .line 1765
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v22

    if-gtz v22, :cond_3

    .line 1854
    :cond_1
    :goto_1
    return-void

    .line 1750
    .end local v3           #activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v14           #numActivities:I
    .end local v16           #packageManager:Landroid/content/pm/PackageManager;
    .end local v20           #ri:Landroid/content/pm/ResolveInfo;
    .end local v21           #smartShare:Landroid/content/Intent;
    :cond_2
    if-nez p1, :cond_0

    .line 1751
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/PostviewActivity;->menuListShare:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    .line 1752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/PostviewActivity;->menuListExtendInfo:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    .line 1753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/PostviewActivity;->menuIconListShare:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    goto :goto_0

    .line 1769
    .restart local v3       #activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v14       #numActivities:I
    .restart local v16       #packageManager:Landroid/content/pm/PackageManager;
    .restart local v20       #ri:Landroid/content/pm/ResolveInfo;
    .restart local v21       #smartShare:Landroid/content/Intent;
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    .line 1770
    const/4 v13, 0x0

    .line 1771
    .local v13, labelImage:Ljava/lang/String;
    const/4 v12, 0x0

    .line 1772
    .local v12, labelApp:Ljava/lang/String;
    const/4 v8, 0x0

    .line 1774
    .local v8, info:Landroid/content/pm/ResolveInfo;
    if-eqz v19, :cond_1

    .line 1775
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    if-eq v7, v14, :cond_5

    .line 1776
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #info:Landroid/content/pm/ResolveInfo;
    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 1777
    .restart local v8       #info:Landroid/content/pm/ResolveInfo;
    if-eqz v8, :cond_4

    .line 1778
    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1781
    :cond_4
    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1775
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1785
    :cond_5
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportPushContorl()Z

    move-result v22

    if-nez v22, :cond_6

    .line 1786
    if-nez p1, :cond_6

    if-eqz v20, :cond_6

    .line 1787
    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v19

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1788
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v20

    invoke-interface {v3, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1789
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    .line 1793
    :cond_6
    invoke-static/range {v19 .. v19}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1795
    if-eqz v6, :cond_1

    .line 1797
    const/4 v7, 0x0

    :goto_3
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v7, v0, :cond_9

    .line 1798
    const/4 v11, 0x0

    .local v11, j:I
    :goto_4
    if-ge v11, v14, :cond_7

    .line 1799
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #info:Landroid/content/pm/ResolveInfo;
    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 1800
    .restart local v8       #info:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1801
    iget-object v0, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1803
    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 1804
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_8

    .line 1805
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1806
    move-object/from16 v0, v18

    invoke-virtual {v0, v7, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1797
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1798
    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 1814
    .end local v11           #j:I
    :cond_9
    const/4 v7, 0x0

    :goto_5
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v7, v0, :cond_c

    .line 1815
    const/4 v11, 0x0

    .restart local v11       #j:I
    :goto_6
    if-ge v11, v14, :cond_a

    .line 1816
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 1817
    .local v9, infoImage:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1818
    iget-object v0, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1820
    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_b

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 1821
    const/4 v15, 0x0

    .line 1822
    .local v15, optionIcon:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 1823
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1814
    .end local v9           #infoImage:Landroid/content/pm/ResolveInfo;
    .end local v15           #optionIcon:Landroid/graphics/drawable/Drawable;
    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 1815
    .restart local v9       #infoImage:Landroid/content/pm/ResolveInfo;
    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 1830
    .end local v9           #infoImage:Landroid/content/pm/ResolveInfo;
    .end local v11           #j:I
    :cond_c
    const/4 v4, 0x0

    .line 1831
    .local v4, compareString1:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1832
    .local v5, compareString2:Ljava/lang/String;
    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #compareString1:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 1833
    .restart local v4       #compareString1:Ljava/lang/String;
    const/4 v7, 0x1

    :goto_7
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v7, v0, :cond_e

    .line 1834
    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #compareString2:Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 1836
    .restart local v5       #compareString2:Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_d

    .line 1837
    const/4 v13, 0x0

    .line 1838
    add-int/lit8 v22, v7, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1839
    add-int/lit8 v22, v7, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1841
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    if-ne v7, v0, :cond_d

    .line 1842
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1843
    move-object/from16 v0, v18

    invoke-virtual {v0, v7, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1847
    :cond_d
    move-object v4, v5

    .line 1833
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 1850
    :cond_e
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1851
    const/4 v6, 0x0

    goto/16 :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1964
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult requestCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1965
    packed-switch p1, :pswitch_data_0

    .line 1977
    :cond_0
    :goto_0
    return-void

    .line 1968
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/camera/PostviewActivity;->setPostviewMenuState(I)V

    .line 1969
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1970
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->isTimeMachineShot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1971
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/camera/PostviewActivity;->timeMachineDeleteImagesWhenFinish(Z)V

    .line 1972
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->finish()V

    goto :goto_0

    .line 1965
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 540
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged : newConfig = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getWindowOrientation()I

    move-result v0

    iput v0, p0, Lcom/lge/camera/PostviewActivity;->mOrientation:I

    .line 542
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->stopTimeMachineAnimation()V

    .line 543
    invoke-direct {p0}, Lcom/lge/camera/PostviewActivity;->setupLayout()V

    .line 544
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->postviewShow()V

    .line 545
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->setFileName()V

    .line 546
    invoke-direct {p0}, Lcom/lge/camera/PostviewActivity;->updateLoadedThumbnailButton()V

    .line 547
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 548
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 182
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 183
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate()-start "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Model name:%s"

    new-array v6, v8, [Ljava/lang/Object;

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->configureWindow()V

    .line 187
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getWindowOrientation()I

    move-result v3

    iput v3, p0, Lcom/lge/camera/PostviewActivity;->mOrientation:I

    .line 188
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->setOrientationListener()V

    .line 189
    invoke-virtual {p0, v8}, Lcom/lge/camera/PostviewActivity;->enableOrientationListener(Z)V

    .line 191
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 192
    .local v1, outMetrics:Landroid/util/DisplayMetrics;
    const-string v3, "window"

    invoke-virtual {p0, v3}, Lcom/lge/camera/PostviewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 193
    .local v2, wm:Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 194
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Lcom/lge/camera/properties/CameraConstants;->setLcdSize(II)V

    .line 195
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->SetProjetCode()I

    .line 196
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->SetCarrierCode()I

    .line 198
    new-instance v3, Lcom/lge/camera/postview/PostViewMediaBroadCastReceiver;

    invoke-direct {v3, p0}, Lcom/lge/camera/postview/PostViewMediaBroadCastReceiver;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/lge/camera/PostviewActivity;->receiver:Lcom/lge/camera/postview/PostViewMediaBroadCastReceiver;

    .line 199
    iget-object v3, p0, Lcom/lge/camera/PostviewActivity;->receiver:Lcom/lge/camera/postview/PostViewMediaBroadCastReceiver;

    invoke-direct {p0, v3}, Lcom/lge/camera/PostviewActivity;->registerMediaReceiver(Lcom/lge/camera/postview/PostViewMediaBroadCastReceiver;)V

    .line 201
    invoke-direct {p0}, Lcom/lge/camera/PostviewActivity;->setupCaptureParams()V

    .line 203
    new-instance v0, Lcom/lge/camera/setting/PreferenceInflater;

    invoke-direct {v0, p0}, Lcom/lge/camera/setting/PreferenceInflater;-><init>(Landroid/content/Context;)V

    .line 204
    .local v0, inflater:Lcom/lge/camera/setting/PreferenceInflater;
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetFrontCameraPreferenceResource()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/lge/camera/setting/PreferenceInflater;->inflate(I)Lcom/lge/camera/setting/CameraPreference;

    move-result-object v3

    check-cast v3, Lcom/lge/camera/setting/PreferenceGroup;

    iput-object v3, p0, Lcom/lge/camera/PostviewActivity;->mFrontCameraPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 205
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetBackCameraPreferenceResource()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/lge/camera/setting/PreferenceInflater;->inflate(I)Lcom/lge/camera/setting/CameraPreference;

    move-result-object v3

    check-cast v3, Lcom/lge/camera/setting/PreferenceGroup;

    iput-object v3, p0, Lcom/lge/camera/PostviewActivity;->mBackCameraPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 206
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetFrontCamcorderPreferenceResource()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/lge/camera/setting/PreferenceInflater;->inflate(I)Lcom/lge/camera/setting/CameraPreference;

    move-result-object v3

    check-cast v3, Lcom/lge/camera/setting/PreferenceGroup;

    iput-object v3, p0, Lcom/lge/camera/PostviewActivity;->mFrontCamcorderPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 207
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetBackCamcorderPreferenceResource()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/lge/camera/setting/PreferenceInflater;->inflate(I)Lcom/lge/camera/setting/CameraPreference;

    move-result-object v3

    check-cast v3, Lcom/lge/camera/setting/PreferenceGroup;

    iput-object v3, p0, Lcom/lge/camera/PostviewActivity;->mBackCamcorderPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 209
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->isTimeMachineShot()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 210
    iput v9, p0, Lcom/lge/camera/PostviewActivity;->mTimeMachineViewMode:I

    .line 211
    invoke-direct {p0}, Lcom/lge/camera/PostviewActivity;->setupLayout()V

    .line 212
    iget-object v3, p0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 213
    iget-object v3, p0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lcom/lge/camera/PostviewActivity;->setSelectedIndex(I)V

    .line 215
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->postviewShow()V

    .line 220
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->setFileName()V

    .line 221
    iput-boolean v8, p0, Lcom/lge/camera/PostviewActivity;->bFromCreateProcess:Z

    .line 222
    const-string v3, "CameraApp"

    const-string v4, "onCreate()-end "

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    return-void

    .line 217
    :cond_1
    invoke-direct {p0}, Lcom/lge/camera/PostviewActivity;->setupLayout()V

    .line 218
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->postviewShow()V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    const/4 v0, 0x0

    .line 2392
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreateDialog : mDialog = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/PostviewActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mDialogId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lge/camera/PostviewActivity;->mDialogId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2394
    sparse-switch p1, :sswitch_data_0

    .line 2419
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 2420
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/lge/camera/PostviewActivity;->dialogKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 2422
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->stopTimeMachineAnimation()V

    .line 2423
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mDialog:Landroid/app/Dialog;

    :cond_1
    return-object v0

    .line 2397
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/lge/camera/PostviewActivity;->createDeletePopup(I)V

    goto :goto_0

    .line 2401
    :sswitch_1
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity;->menuListShare:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2402
    invoke-direct {p0, p1}, Lcom/lge/camera/PostviewActivity;->createSharedListPopup(I)V

    goto :goto_0

    .line 2408
    :sswitch_2
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity;->menuListSetas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2409
    invoke-direct {p0, p1}, Lcom/lge/camera/PostviewActivity;->createSetAsListPopup(I)V

    goto :goto_0

    .line 2415
    :sswitch_3
    invoke-direct {p0, p1}, Lcom/lge/camera/PostviewActivity;->createEnableGalleryPopup(I)V

    goto :goto_0

    .line 2394
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x8 -> :sswitch_0
        0x14 -> :sswitch_1
        0x15 -> :sswitch_2
        0x20 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 382
    const-string v4, "CameraApp"

    const-string v5, "Postview onDestroy()"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    invoke-virtual {p0, v7}, Lcom/lge/camera/PostviewActivity;->enableOrientationListener(Z)V

    .line 385
    invoke-virtual {p0, v7}, Lcom/lge/camera/PostviewActivity;->timeMachineDeleteImagesWhenFinish(Z)V

    .line 386
    const v4, 0x7f090036

    invoke-virtual {p0, v4}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Gallery;

    .line 387
    .local v0, g:Landroid/widget/Gallery;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v4

    if-lez v4, :cond_1

    .line 388
    invoke-virtual {v0}, Landroid/widget/Gallery;->getChildCount()I

    move-result v2

    .line 389
    .local v2, itemCount:I
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ThumbnailGalley item count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 391
    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 392
    .local v3, viewAt:Landroid/view/View;
    if-eqz v3, :cond_0

    instance-of v4, v3, Lcom/lge/camera/postview/ThumbnailGalleryItem;

    if-eqz v4, :cond_0

    .line 393
    check-cast v3, Lcom/lge/camera/postview/ThumbnailGalleryItem;

    .end local v3           #viewAt:Landroid/view/View;
    invoke-virtual {v3}, Lcom/lge/camera/postview/ThumbnailGalleryItem;->unbind()V

    .line 390
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 397
    .end local v1           #i:I
    .end local v2           #itemCount:I
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->saveSelectedIndexs()V

    .line 398
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->setSettingValueClear()V

    .line 399
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 400
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3647
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onKeyDown - keyCode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", event : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3649
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-eqz v2, :cond_1

    .line 3650
    const/16 v2, 0x18

    if-eq p1, v2, :cond_1

    const/16 v2, 0x19

    if-eq p1, v2, :cond_1

    .line 3736
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 3656
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 3724
    sget v2, Lcom/lge/camera/properties/ProjectVariables;->KEYCODE_HOT_KEY:I

    if-ne p1, v2, :cond_0

    .line 3725
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isB2Model()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3726
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    .line 3727
    goto :goto_0

    .line 3658
    :sswitch_1
    const-string v1, "CameraApp"

    const-string v2, "KEYCODE_MENU"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3662
    :sswitch_2
    const-string v2, "CameraApp"

    const-string v3, "KEYCODE_BACK"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3663
    iget-boolean v2, p0, Lcom/lge/camera/PostviewActivity;->mPause:Z

    if-eqz v2, :cond_2

    .line 3664
    const-string v0, "CameraApp"

    const-string v2, "KEYCODE_BACK - return, mediator is pausing..."

    invoke-static {v0, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 3665
    goto :goto_0

    .line 3668
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/PostviewActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_3

    move v0, v1

    .line 3669
    goto :goto_0

    .line 3671
    :cond_3
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    .line 3672
    goto :goto_0

    .line 3674
    :cond_4
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getPostviewMenuState()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    .line 3675
    invoke-virtual {p0, v0}, Lcom/lge/camera/PostviewActivity;->setPostviewMenuState(I)V

    .line 3678
    :cond_5
    iget v2, p0, Lcom/lge/camera/PostviewActivity;->mApplicationMode:I

    if-nez v2, :cond_7

    .line 3679
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getIsMultiSelectMode()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3680
    invoke-virtual {p0, v0}, Lcom/lge/camera/PostviewActivity;->displayCheckbox(Z)V

    .line 3681
    invoke-virtual {p0, v0}, Lcom/lge/camera/PostviewActivity;->setMenuDim(Z)V

    .line 3682
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getSelectedIndexs()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3683
    invoke-virtual {p0, v0}, Lcom/lge/camera/PostviewActivity;->setIsMultiSelectMode(Z)V

    move v0, v1

    .line 3684
    goto :goto_0

    .line 3687
    :cond_6
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mShotMode:Ljava/lang/String;

    const-string v2, "shotmode_timemachine"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3688
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mAnimationTimer:Ljava/util/Timer;

    if-eqz v0, :cond_7

    .line 3689
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->stopTimeMachineAnimation()V

    .line 3693
    :cond_7
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->finish()V

    move v0, v1

    .line 3694
    goto/16 :goto_0

    .line 3699
    :sswitch_3
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportVoluemHotKey()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3700
    if-eqz p2, :cond_9

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_9

    .line 3701
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    .line 3702
    goto/16 :goto_0

    .line 3704
    :cond_8
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->removeExitInteraction()V

    .line 3705
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->finish()V

    :cond_9
    move v0, v1

    .line 3708
    goto/16 :goto_0

    :sswitch_4
    move v0, v1

    .line 3718
    goto/16 :goto_0

    .line 3729
    :cond_a
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->removeExitInteraction()V

    .line 3730
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->finish()V

    move v0, v1

    .line 3731
    goto/16 :goto_0

    .line 3656
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x13 -> :sswitch_4
        0x14 -> :sswitch_4
        0x15 -> :sswitch_4
        0x16 -> :sswitch_4
        0x17 -> :sswitch_4
        0x18 -> :sswitch_3
        0x19 -> :sswitch_3
        0x1b -> :sswitch_4
        0x4f -> :sswitch_0
        0x50 -> :sswitch_4
        0x52 -> :sswitch_1
        0x54 -> :sswitch_4
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 3742
    sparse-switch p1, :sswitch_data_0

    .line 3752
    :goto_0
    :sswitch_0
    return v0

    .line 3745
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 3742
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_1
        0x19 -> :sswitch_1
        0x4f -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 317
    const-string v0, "CameraApp"

    const-string v1, "Postview onPause() - start"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iput-boolean v4, p0, Lcom/lge/camera/PostviewActivity;->mPause:Z

    .line 319
    iput-boolean v3, p0, Lcom/lge/camera/PostviewActivity;->setThumbImage:Z

    .line 321
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->stopTimeMachineAnimation()V

    .line 322
    invoke-virtual {p0, v3}, Lcom/lge/camera/PostviewActivity;->timeMachineDeleteImagesWhenFinish(Z)V

    .line 323
    invoke-virtual {p0, v3}, Lcom/lge/camera/PostviewActivity;->enableOrientationListener(Z)V

    .line 324
    invoke-direct {p0}, Lcom/lge/camera/PostviewActivity;->checkAndDisconnectCameraDevice()V

    .line 326
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 328
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/PostviewActivity;->mDialog:Landroid/app/Dialog;

    .line 329
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/camera/PostviewActivity;->mDialogId:I

    .line 331
    :cond_0
    invoke-direct {p0, v4, v4}, Lcom/lge/camera/PostviewActivity;->clearShareAndSetAsMenuList(ZZ)V

    .line 332
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->removeExitInteraction()V

    .line 333
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->removePostAllRunnables()V

    .line 335
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getIsMultiSelectMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->isTimeMachineShot()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 336
    invoke-virtual {p0, v3}, Lcom/lge/camera/PostviewActivity;->displayCheckbox(Z)V

    .line 337
    invoke-virtual {p0, v3}, Lcom/lge/camera/PostviewActivity;->setMenuDim(Z)V

    .line 339
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 340
    const-string v0, "CameraApp"

    const-string v1, "Postview onPause() - end"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 3
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 2375
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrepareDialog : mDialog = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDialogId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2377
    iput-object p2, p0, Lcom/lge/camera/PostviewActivity;->mDialog:Landroid/app/Dialog;

    .line 2378
    iput p1, p0, Lcom/lge/camera/PostviewActivity;->mDialogId:I

    .line 2389
    return-void
.end method

.method protected onResume()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 227
    const-string v4, "CameraApp"

    const-string v5, "onResume() - start"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-static {v7}, Lcom/lge/camera/util/Common;->setEnterCheckComplete(Z)V

    .line 232
    invoke-static {p0, v8}, Lcom/lge/camera/util/Common;->checkEnterApplication(Landroid/app/Activity;Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 233
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 234
    const-string v4, "CameraApp"

    const-string v5, "onResume()-end, checkEnterApplication"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-static {p0}, Lcom/lge/camera/util/Common;->checkCameraOut(Landroid/app/Activity;)V

    .line 313
    :goto_0
    return-void

    .line 238
    :cond_0
    sget-boolean v4, Lcom/lge/camera/properties/CameraConstants;->MEDIA_RECEIVER_FINISHED:Z

    if-eqz v4, :cond_1

    .line 239
    const-string v4, "CameraApp"

    const-string v5, "Destroy Postview when media ejected"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    sput-boolean v7, Lcom/lge/camera/properties/CameraConstants;->MEDIA_RECEIVER_FINISHED:Z

    .line 241
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 242
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->finish()V

    goto :goto_0

    .line 245
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v3, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 246
    .local v3, locale:Ljava/util/Locale;
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 247
    .local v2, lancode:Ljava/lang/String;
    invoke-static {}, Lcom/lge/camera/util/Common;->getCurrentDefaultFontIndex()I

    move-result v1

    .line 248
    .local v1, idxFont:I
    iget-object v4, p0, Lcom/lge/camera/PostviewActivity;->mCurrentLang:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/lge/camera/PostviewActivity;->mCurrentKoreanFont:I

    if-eq v4, v1, :cond_3

    .line 249
    :cond_2
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onResume()- finish, mCurrentLang:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/camera/PostviewActivity;->mCurrentLang:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,lancode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onResume()- finish, mCurrentKoreanFont:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/lge/camera/PostviewActivity;->mCurrentKoreanFont:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,idxFont:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 252
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->finish()V

    goto/16 :goto_0

    .line 256
    :cond_3
    invoke-static {p0}, Lcom/lge/camera/util/Common;->backlightControl(Landroid/app/Activity;)V

    .line 257
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/camera/util/Common;->setFmRadioOff(Landroid/content/Context;)V

    .line 258
    iput-boolean v7, p0, Lcom/lge/camera/PostviewActivity;->mPause:Z

    .line 261
    :try_start_0
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accelerometer_rotation"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/lge/camera/PostviewActivity;->mDisplayOrientationSetting:I

    .line 263
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DisplayOrientationSetting is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/lge/camera/PostviewActivity;->mDisplayOrientationSetting:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :goto_1
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->setOrientationListener()V

    .line 268
    invoke-virtual {p0, v8}, Lcom/lge/camera/PostviewActivity;->enableOrientationListener(Z)V

    .line 270
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isPostviewDeviceOpenModel()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 271
    invoke-direct {p0}, Lcom/lge/camera/PostviewActivity;->connectCameraDevice()V

    .line 274
    :cond_4
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->isTimeMachineShot()Z

    move-result v4

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/lge/camera/PostviewActivity;->mTimeMachineViewMode:I

    if-ne v4, v8, :cond_5

    .line 275
    iget-object v4, p0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v8, :cond_5

    .line 276
    iput v7, p0, Lcom/lge/camera/PostviewActivity;->mTimeMachineViewMode:I

    .line 280
    :cond_5
    invoke-virtual {p0, v7}, Lcom/lge/camera/PostviewActivity;->setPostviewMenuState(I)V

    .line 281
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 283
    iget-boolean v4, p0, Lcom/lge/camera/PostviewActivity;->bFromCreateProcess:Z

    if-eqz v4, :cond_8

    .line 284
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->isTimeMachineShot()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/lge/camera/PostviewActivity;->mAutoReview:Ljava/lang/String;

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Lcom/lge/camera/PostviewActivity;->mIsAttachIntent:Z

    if-nez v4, :cond_6

    .line 285
    iget-object v4, p0, Lcom/lge/camera/PostviewActivity;->mAutoReview:Ljava/lang/String;

    const-string v5, "on_delay_2sec"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 286
    const/16 v4, 0x7d0

    invoke-virtual {p0, v4}, Lcom/lge/camera/PostviewActivity;->exitInteraction(I)V

    .line 310
    :cond_6
    :goto_2
    iput-boolean v7, p0, Lcom/lge/camera/PostviewActivity;->bFromCreateProcess:Z

    .line 311
    const/16 v4, 0x64

    invoke-virtual {p0, v4}, Lcom/lge/camera/PostviewActivity;->updateReviewThumbnailButton(I)V

    .line 312
    const-string v4, "CameraApp"

    const-string v5, "Postview onResume() - end"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v4, "CameraApp"

    const-string v5, "SettingNotFoundException:"

    invoke-static {v4, v5, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 287
    .end local v0           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_7
    iget-object v4, p0, Lcom/lge/camera/PostviewActivity;->mAutoReview:Ljava/lang/String;

    const-string v5, "on_delay_5sec"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 288
    const/16 v4, 0x1388

    invoke-virtual {p0, v4}, Lcom/lge/camera/PostviewActivity;->exitInteraction(I)V

    goto :goto_2

    .line 294
    :cond_8
    iput-boolean v7, p0, Lcom/lge/camera/PostviewActivity;->bChangeFileName:Z

    .line 297
    iget v4, p0, Lcom/lge/camera/PostviewActivity;->mApplicationMode:I

    if-nez v4, :cond_a

    .line 298
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->checkValidateImage()V

    .line 303
    :goto_3
    iget-boolean v4, p0, Lcom/lge/camera/PostviewActivity;->bChangeFileName:Z

    if-eqz v4, :cond_9

    .line 304
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->setFileName()V

    .line 305
    iput-boolean v7, p0, Lcom/lge/camera/PostviewActivity;->bChangeFileName:Z

    .line 308
    :cond_9
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->postviewShow()V

    goto :goto_2

    .line 300
    :cond_a
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->checkValidateVideo()V

    goto :goto_3
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 370
    const-string v0, "CameraApp"

    const-string v1, "Postview onStart()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 372
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 376
    const-string v0, "CameraApp"

    const-string v1, "Postview onStop()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 378
    return-void
.end method

.method public postOnUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 3565
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mHandler:Lcom/lge/camera/util/MainHandler;

    if-eqz v0, :cond_0

    .line 3566
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mPostRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3567
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mHandler:Lcom/lge/camera/util/MainHandler;

    invoke-virtual {v0, p1}, Lcom/lge/camera/util/MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 3569
    :cond_0
    return-void
.end method

.method public postOnUiThread(Ljava/lang/Runnable;J)V
    .locals 1
    .parameter "action"
    .parameter "delay"

    .prologue
    .line 3572
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mHandler:Lcom/lge/camera/util/MainHandler;

    if-eqz v0, :cond_0

    .line 3573
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mPostRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3574
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mHandler:Lcom/lge/camera/util/MainHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/camera/util/MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3576
    :cond_0
    return-void
.end method

.method public postviewShow()V
    .locals 3

    .prologue
    .line 806
    const-string v1, "CameraApp"

    const-string v2, "TIME_CHECK show()"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    const v1, 0x7f09002e

    invoke-virtual {p0, v1}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 809
    .local v0, postView:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 810
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 813
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->isTimeMachineShot()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 814
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->showMultiShotGallery()V

    .line 827
    :cond_1
    :goto_0
    return-void

    .line 816
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity;->mShotMode:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/lge/camera/PostviewActivity;->mShotMode:Ljava/lang/String;

    const-string v2, "shotmode_continuous"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 817
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/lge/camera/PostviewActivity;->loadSingleCapturedImages(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 820
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity;->mCapturedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1}, Lcom/lge/camera/PostviewActivity;->setThumbImageUseCaptureImage(Landroid/graphics/Bitmap;)V

    .line 821
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity;->mCapturedBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v1}, Lcom/lge/camera/PostviewActivity;->checkFlip(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 824
    :cond_4
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->showMultiShotGallery()V

    goto :goto_0
.end method

.method public refreshContinuousGallery(IZ)V
    .locals 10
    .parameter "value"
    .parameter "useTimeMachineAnimation"

    .prologue
    .line 3338
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "refreshContinuousGallery: value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", useTimeMachine = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3341
    :try_start_0
    iget-object v6, p0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3343
    .local v3, imageListUriSize:I
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->isTimeMachineShot()Z

    move-result v6

    if-nez v6, :cond_0

    .line 3344
    const/4 p2, 0x0

    .line 3347
    :cond_0
    const v6, 0x7f090036

    invoke-virtual {p0, v6}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Gallery;

    .line 3350
    .local v1, g:Landroid/widget/Gallery;
    if-lez v3, :cond_4

    .line 3351
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_8

    .line 3352
    const-string v6, "THUMB_%d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 3353
    .local v4, tagKey:Ljava/lang/String;
    invoke-virtual {v1, v4}, Landroid/widget/Gallery;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lge/camera/postview/ThumbnailGalleryItem;

    .line 3355
    .local v5, tgi:Lcom/lge/camera/postview/ThumbnailGalleryItem;
    if-nez v5, :cond_2

    .line 3351
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3359
    :cond_2
    if-eqz p2, :cond_3

    if-ltz p1, :cond_5

    if-gt p1, v2, :cond_5

    .line 3360
    :cond_3
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/lge/camera/postview/ThumbnailGalleryItem;->setVisibility(I)V

    .line 3365
    :goto_2
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getIsMultiSelectMode()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 3366
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/lge/camera/postview/ThumbnailGalleryItem;->showCheckbox(Z)V

    .line 3367
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getSelectedIndexs()Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3368
    invoke-virtual {v5}, Lcom/lge/camera/postview/ThumbnailGalleryItem;->getChecked()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/lge/camera/postview/ThumbnailGalleryItem;->setCheck(Z)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 3392
    .end local v1           #g:Landroid/widget/Gallery;
    .end local v2           #i:I
    .end local v3           #imageListUriSize:I
    .end local v4           #tagKey:Ljava/lang/String;
    .end local v5           #tgi:Lcom/lge/camera/postview/ThumbnailGalleryItem;
    :catch_0
    move-exception v0

    .line 3393
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v6, "CameraApp"

    const-string v7, "ArrayIndexOutOfBoundsException!"

    invoke-static {v6, v7, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3399
    .end local v0           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_4
    :goto_3
    return-void

    .line 3362
    .restart local v1       #g:Landroid/widget/Gallery;
    .restart local v2       #i:I
    .restart local v3       #imageListUriSize:I
    .restart local v4       #tagKey:Ljava/lang/String;
    .restart local v5       #tgi:Lcom/lge/camera/postview/ThumbnailGalleryItem;
    :cond_5
    const/4 v6, 0x4

    :try_start_1
    invoke-virtual {v5, v6}, Lcom/lge/camera/postview/ThumbnailGalleryItem;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 3394
    .end local v1           #g:Landroid/widget/Gallery;
    .end local v2           #i:I
    .end local v3           #imageListUriSize:I
    .end local v4           #tagKey:Ljava/lang/String;
    .end local v5           #tgi:Lcom/lge/camera/postview/ThumbnailGalleryItem;
    :catch_1
    move-exception v0

    .line 3395
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v6, "CameraApp"

    const-string v7, "NullPointerException!"

    invoke-static {v6, v7, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 3371
    .end local v0           #e:Ljava/lang/NullPointerException;
    .restart local v1       #g:Landroid/widget/Gallery;
    .restart local v2       #i:I
    .restart local v3       #imageListUriSize:I
    .restart local v4       #tagKey:Ljava/lang/String;
    .restart local v5       #tgi:Lcom/lge/camera/postview/ThumbnailGalleryItem;
    :cond_6
    if-ne v2, p1, :cond_7

    .line 3372
    const/4 v6, 0x1

    :try_start_2
    invoke-virtual {v5, v6}, Lcom/lge/camera/postview/ThumbnailGalleryItem;->setCheck(Z)V
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 3396
    .end local v1           #g:Landroid/widget/Gallery;
    .end local v2           #i:I
    .end local v3           #imageListUriSize:I
    .end local v4           #tagKey:Ljava/lang/String;
    .end local v5           #tgi:Lcom/lge/camera/postview/ThumbnailGalleryItem;
    :catch_2
    move-exception v0

    .line 3397
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v6, "CameraApp"

    const-string v7, "IndexOutOfBoundsException!"

    invoke-static {v6, v7, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 3374
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v1       #g:Landroid/widget/Gallery;
    .restart local v2       #i:I
    .restart local v3       #imageListUriSize:I
    .restart local v4       #tagKey:Ljava/lang/String;
    .restart local v5       #tgi:Lcom/lge/camera/postview/ThumbnailGalleryItem;
    :cond_7
    const/4 v6, 0x0

    :try_start_3
    invoke-virtual {v5, v6}, Lcom/lge/camera/postview/ThumbnailGalleryItem;->setCheck(Z)V

    goto :goto_1

    .line 3379
    .end local v4           #tagKey:Ljava/lang/String;
    .end local v5           #tgi:Lcom/lge/camera/postview/ThumbnailGalleryItem;
    :cond_8
    if-eqz p2, :cond_9

    const/4 v6, -0x1

    if-eq p1, v6, :cond_4

    .line 3383
    :cond_9
    invoke-virtual {p0, p1}, Lcom/lge/camera/PostviewActivity;->setSelectedIndex(I)V

    .line 3385
    if-lez v3, :cond_a

    if-ge p1, v3, :cond_a

    .line 3386
    iget-object v6, p0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getSelectedIndex()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    iput-object v6, p0, Lcom/lge/camera/PostviewActivity;->mSavedUri:Landroid/net/Uri;

    .line 3389
    :cond_a
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/camera/PostviewActivity;->mSavedUri:Landroid/net/Uri;

    invoke-static {v6, v7}, Lcom/lge/camera/util/Common;->getNameWithoutExtension(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/lge/camera/PostviewActivity;->mSaveFileName:Ljava/lang/String;

    .line 3390
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->setFileName()V
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3
.end method

.method public refreshLoadCapturedImages()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 874
    iget-object v2, p0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 876
    .local v0, listSize:I
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshLoadCapturedImages : listSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    if-lez v0, :cond_0

    .line 878
    const v2, 0x7f090030

    invoke-virtual {p0, v2}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 879
    .local v1, postview:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getSelectedIndex()I

    move-result v2

    invoke-direct {p0, v1, v5, v2}, Lcom/lge/camera/PostviewActivity;->setCapturedImageView(Landroid/widget/ImageView;ZI)V

    .line 880
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 882
    .end local v1           #postview:Landroid/widget/ImageView;
    :cond_0
    return v5
.end method

.method public reloadAllLayout()V
    .locals 2

    .prologue
    .line 576
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mHandler:Lcom/lge/camera/util/MainHandler;

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mHandler:Lcom/lge/camera/util/MainHandler;

    iget-object v1, p0, Lcom/lge/camera/PostviewActivity;->mReloadAllLayout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/lge/camera/util/MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 580
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->setupLayoutMainBarAndPostviewMenu()V

    .line 581
    invoke-direct {p0}, Lcom/lge/camera/PostviewActivity;->setupPostview()V

    .line 582
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->postviewShow()V

    .line 583
    invoke-direct {p0}, Lcom/lge/camera/PostviewActivity;->updateLoadedThumbnailButton()V

    .line 584
    return-void
.end method

.method public removeExitInteraction()V
    .locals 2

    .prologue
    .line 3607
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mAutoReview:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mAutoReview:Ljava/lang/String;

    const-string v1, "on_delay_2sec"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mAutoReview:Ljava/lang/String;

    const-string v1, "on_delay_5sec"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3609
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mHandler:Lcom/lge/camera/util/MainHandler;

    if-eqz v0, :cond_1

    .line 3610
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mExitInteraction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/lge/camera/PostviewActivity;->removePostRunnable(Ljava/lang/Object;)V

    .line 3611
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mHandler:Lcom/lge/camera/util/MainHandler;

    iget-object v1, p0, Lcom/lge/camera/PostviewActivity;->mExitInteraction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/lge/camera/util/MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3614
    :cond_1
    return-void
.end method

.method public removePostAllRunnables()V
    .locals 4

    .prologue
    .line 3590
    iget-object v2, p0, Lcom/lge/camera/PostviewActivity;->mPostRunnables:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/PostviewActivity;->mHandler:Lcom/lge/camera/util/MainHandler;

    if-nez v2, :cond_1

    .line 3591
    :cond_0
    const-string v2, "CameraApp"

    const-string v3, "mPostRunnables is null"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3600
    :goto_0
    return-void

    .line 3595
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/PostviewActivity;->mPostRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3596
    .local v1, postRunnableSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 3597
    iget-object v3, p0, Lcom/lge/camera/PostviewActivity;->mHandler:Lcom/lge/camera/util/MainHandler;

    iget-object v2, p0, Lcom/lge/camera/PostviewActivity;->mPostRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v3, v2}, Lcom/lge/camera/util/MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3596
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3599
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/PostviewActivity;->mPostRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public removePostRunnable(Ljava/lang/Object;)V
    .locals 3
    .parameter "object"

    .prologue
    .line 3579
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity;->mPostRunnables:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 3580
    const-string v1, "CameraApp"

    const-string v2, "mPostRunnables is null"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3587
    :cond_0
    :goto_0
    return-void

    .line 3583
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity;->mPostRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 3584
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 3585
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity;->mPostRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method public renameForTimeMachineShot()V
    .locals 16

    .prologue
    .line 2828
    const-string v12, "CameraApp"

    const-string v13, "renameForTimeMachineShot-start"

    invoke-static {v12, v13}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2830
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/PostviewActivity;->mTimeMachineFileNameList:Ljava/util/ArrayList;

    if-eqz v12, :cond_1

    .line 2832
    const/4 v7, 0x0

    .line 2833
    .local v7, tempFilePath:Ljava/lang/String;
    const/4 v6, 0x0

    .line 2834
    .local v6, newFilePath:Ljava/lang/String;
    const/4 v8, 0x0

    .line 2835
    .local v8, tempFilename:Ljava/lang/String;
    const/4 v5, 0x0

    .line 2836
    .local v5, newFileName:Ljava/lang/String;
    const/4 v9, 0x0

    .line 2837
    .local v9, tempfile:Ljava/io/File;
    const/4 v3, 0x0

    .line 2838
    .local v3, newFile:Ljava/io/File;
    const/4 v11, 0x0

    .line 2840
    .local v11, uri:Landroid/net/Uri;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v12

    add-int/lit8 v2, v12, -0x1

    .local v2, index:I
    move-object v4, v3

    .end local v3           #newFile:Ljava/io/File;
    .local v4, newFile:Ljava/io/File;
    move-object v10, v9

    .line 2841
    .end local v9           #tempfile:Ljava/io/File;
    .local v10, tempfile:Ljava/io/File;
    :goto_0
    if-ltz v2, :cond_1

    .line 2842
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Landroid/net/Uri;

    move-object v11, v0

    .line 2843
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/PostviewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    invoke-static {v12, v11}, Lcom/lge/camera/util/Common;->getNameWithoutExtension(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    .line 2844
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/PostviewActivity;->mTimeMachineFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 2845
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/PostviewActivity;->mCurrentStorageDirectory:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".jpg"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2846
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/PostviewActivity;->mCurrentStorageDirectory:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".jpg"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2847
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_3

    .line 2848
    .end local v10           #tempfile:Ljava/io/File;
    .restart local v9       #tempfile:Ljava/io/File;
    :try_start_2
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_4

    .line 2850
    .end local v4           #newFile:Ljava/io/File;
    .restart local v3       #newFile:Ljava/io/File;
    :try_start_3
    const-string v12, "CameraApp"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Rename TMS tempFilePath = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2851
    const-string v12, "CameraApp"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Rename TMS newFilePath = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2853
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_0

    .line 2854
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {v9, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 2855
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/PostviewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/PostviewActivity;->mCurrentStorageDirectory:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".jpg"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v11, v13, v14}, Lcom/lge/camera/util/ImageManager;->changeImageTitle(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2

    .line 2858
    :cond_0
    add-int/lit8 v2, v2, -0x1

    move-object v4, v3

    .end local v3           #newFile:Ljava/io/File;
    .restart local v4       #newFile:Ljava/io/File;
    move-object v10, v9

    .end local v9           #tempfile:Ljava/io/File;
    .restart local v10       #tempfile:Ljava/io/File;
    goto/16 :goto_0

    .line 2860
    .end local v2           #index:I
    .end local v4           #newFile:Ljava/io/File;
    .end local v10           #tempfile:Ljava/io/File;
    .restart local v3       #newFile:Ljava/io/File;
    .restart local v9       #tempfile:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 2861
    .local v1, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_1
    const-string v12, "CameraApp"

    const-string v13, "ArrayIndexOutOfBoundsException!"

    invoke-static {v12, v13, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2862
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/PostviewActivity;->finish()V

    .line 2871
    .end local v1           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v3           #newFile:Ljava/io/File;
    .end local v5           #newFileName:Ljava/lang/String;
    .end local v6           #newFilePath:Ljava/lang/String;
    .end local v7           #tempFilePath:Ljava/lang/String;
    .end local v8           #tempFilename:Ljava/lang/String;
    .end local v9           #tempfile:Ljava/io/File;
    .end local v11           #uri:Landroid/net/Uri;
    :cond_1
    :goto_2
    const-string v12, "CameraApp"

    const-string v13, "renameForTimeMachineShot-end"

    invoke-static {v12, v13}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2872
    return-void

    .line 2863
    .restart local v3       #newFile:Ljava/io/File;
    .restart local v5       #newFileName:Ljava/lang/String;
    .restart local v6       #newFilePath:Ljava/lang/String;
    .restart local v7       #tempFilePath:Ljava/lang/String;
    .restart local v8       #tempFilename:Ljava/lang/String;
    .restart local v9       #tempfile:Ljava/io/File;
    .restart local v11       #uri:Landroid/net/Uri;
    :catch_1
    move-exception v1

    .line 2864
    .local v1, e:Ljava/lang/NullPointerException;
    :goto_3
    const-string v12, "CameraApp"

    const-string v13, "NullPointerException!"

    invoke-static {v12, v13, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2865
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/PostviewActivity;->finish()V

    goto :goto_2

    .line 2866
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v1

    .line 2867
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    :goto_4
    const-string v12, "CameraApp"

    const-string v13, "IndexOutOfBoundsException!"

    invoke-static {v12, v13, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2868
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/PostviewActivity;->finish()V

    goto :goto_2

    .line 2866
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v3           #newFile:Ljava/io/File;
    .end local v9           #tempfile:Ljava/io/File;
    .restart local v2       #index:I
    .restart local v4       #newFile:Ljava/io/File;
    .restart local v10       #tempfile:Ljava/io/File;
    :catch_3
    move-exception v1

    move-object v3, v4

    .end local v4           #newFile:Ljava/io/File;
    .restart local v3       #newFile:Ljava/io/File;
    move-object v9, v10

    .end local v10           #tempfile:Ljava/io/File;
    .restart local v9       #tempfile:Ljava/io/File;
    goto :goto_4

    .end local v3           #newFile:Ljava/io/File;
    .restart local v4       #newFile:Ljava/io/File;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4           #newFile:Ljava/io/File;
    .restart local v3       #newFile:Ljava/io/File;
    goto :goto_4

    .line 2863
    .end local v3           #newFile:Ljava/io/File;
    .end local v9           #tempfile:Ljava/io/File;
    .restart local v4       #newFile:Ljava/io/File;
    .restart local v10       #tempfile:Ljava/io/File;
    :catch_5
    move-exception v1

    move-object v3, v4

    .end local v4           #newFile:Ljava/io/File;
    .restart local v3       #newFile:Ljava/io/File;
    move-object v9, v10

    .end local v10           #tempfile:Ljava/io/File;
    .restart local v9       #tempfile:Ljava/io/File;
    goto :goto_3

    .end local v3           #newFile:Ljava/io/File;
    .restart local v4       #newFile:Ljava/io/File;
    :catch_6
    move-exception v1

    move-object v3, v4

    .end local v4           #newFile:Ljava/io/File;
    .restart local v3       #newFile:Ljava/io/File;
    goto :goto_3

    .line 2860
    .end local v3           #newFile:Ljava/io/File;
    .end local v9           #tempfile:Ljava/io/File;
    .restart local v4       #newFile:Ljava/io/File;
    .restart local v10       #tempfile:Ljava/io/File;
    :catch_7
    move-exception v1

    move-object v3, v4

    .end local v4           #newFile:Ljava/io/File;
    .restart local v3       #newFile:Ljava/io/File;
    move-object v9, v10

    .end local v10           #tempfile:Ljava/io/File;
    .restart local v9       #tempfile:Ljava/io/File;
    goto :goto_1

    .end local v3           #newFile:Ljava/io/File;
    .restart local v4       #newFile:Ljava/io/File;
    :catch_8
    move-exception v1

    move-object v3, v4

    .end local v4           #newFile:Ljava/io/File;
    .restart local v3       #newFile:Ljava/io/File;
    goto :goto_1
.end method

.method public saveLastPicture(Landroid/net/Uri;)V
    .locals 2
    .parameter "uri"

    .prologue
    .line 3621
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/lge/camera/util/Common;->saveLastPictureUri(Landroid/content/Context;Landroid/net/Uri;)V

    .line 3622
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/lge/camera/util/BitmapManager;->getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 3623
    .local v0, path:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/lge/camera/util/Common;->saveLastPicturePath(Landroid/content/Context;Ljava/lang/String;)V

    .line 3624
    return-void
.end method

.method public saveLastVideo(Lcom/lge/camera/Mediator;Landroid/net/Uri;)V
    .locals 2
    .parameter "mediator"
    .parameter "uri"

    .prologue
    .line 3627
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/lge/camera/util/Common;->saveLastVideoUri(Landroid/content/Context;Landroid/net/Uri;)V

    .line 3628
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/lge/camera/util/BitmapManager;->getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 3629
    .local v0, path:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/lge/camera/util/Common;->saveLastVideoPath(Landroid/content/Context;Ljava/lang/String;)V

    .line 3630
    return-void
.end method

.method public saveSelectedIndexs()V
    .locals 9

    .prologue
    .line 3499
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->isTimeMachineShot()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3520
    :cond_0
    return-void

    .line 3502
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getIsMultiSelectMode()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3503
    const-string v5, "CameraApp"

    const-string v6, "saveSelectedIndexs()"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3504
    const v5, 0x7f090036

    invoke-virtual {p0, v5}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Gallery;

    .line 3506
    .local v0, gallery:Landroid/widget/Gallery;
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getSelectedIndexs()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 3507
    iget-object v5, p0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3508
    .local v2, size:I
    if-lez v2, :cond_0

    .line 3509
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 3510
    const-string v5, "THUMB_%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 3511
    .local v3, tagKey:Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/widget/Gallery;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lge/camera/postview/ThumbnailGalleryItem;

    .line 3513
    .local v4, tgi:Lcom/lge/camera/postview/ThumbnailGalleryItem;
    if-eqz v4, :cond_2

    .line 3514
    invoke-virtual {v4}, Lcom/lge/camera/postview/ThumbnailGalleryItem;->getChecked()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3515
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getSelectedIndexs()Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3509
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setActivityOrientationRun(I)V
    .locals 5
    .parameter "delay"

    .prologue
    .line 599
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity;->mHandler:Lcom/lge/camera/util/MainHandler;

    if-eqz v1, :cond_0

    .line 600
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity;->mHandler:Lcom/lge/camera/util/MainHandler;

    iget-object v2, p0, Lcom/lge/camera/PostviewActivity;->mSetOrientationReload:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/lge/camera/util/MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 602
    iget v1, p0, Lcom/lge/camera/PostviewActivity;->mPreviewOrientation:I

    iget v2, p0, Lcom/lge/camera/PostviewActivity;->mOrientation:I

    if-ne v1, v2, :cond_1

    .line 603
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->reloadAllLayout()V

    .line 604
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity;->mSetOrientationReload:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 639
    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/lge/camera/PostviewActivity;->mPreviewOrientation:I

    .line 641
    :cond_0
    return-void

    .line 606
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getWindowOrientation()I

    move-result v0

    .line 607
    .local v0, currentWinOrientation:I
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mOrientation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lge/camera/PostviewActivity;->mOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", getWindowOrientation() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    iget v1, p0, Lcom/lge/camera/PostviewActivity;->mOrientation:I

    if-eq v1, v0, :cond_2

    .line 610
    iget v1, p0, Lcom/lge/camera/PostviewActivity;->mOrientation:I

    packed-switch v1, :pswitch_data_0

    .line 637
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity;->mHandler:Lcom/lge/camera/util/MainHandler;

    iget-object v2, p0, Lcom/lge/camera/PostviewActivity;->mSetOrientationReload:Ljava/lang/Runnable;

    int-to-long v3, p1

    invoke-virtual {v1, v2, v3, v4}, Lcom/lge/camera/util/MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 612
    :pswitch_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 613
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity;->mReloadAllLayout:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 614
    const/4 p1, 0x0

    goto :goto_1

    .line 618
    :pswitch_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 619
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity;->mReloadAllLayout:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 620
    const/4 p1, 0x0

    goto :goto_1

    .line 624
    :pswitch_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 625
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity;->mReloadAllLayout:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 626
    const/4 p1, 0x0

    goto :goto_1

    .line 630
    :pswitch_3
    if-nez v0, :cond_2

    .line 631
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity;->mReloadAllLayout:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 632
    const/4 p1, 0x0

    goto :goto_1

    .line 610
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public setFileName()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v4, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 776
    const v3, 0x7f090037

    invoke-virtual {p0, v3}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 777
    .local v2, tv:Landroid/widget/TextView;
    if-eqz v2, :cond_0

    .line 778
    const-string v1, ""

    .line 779
    .local v1, thumbInfo:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 781
    .local v0, imageListSize:I
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->isTimeMachineShot()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 782
    iget v3, p0, Lcom/lge/camera/PostviewActivity;->mTimeMachineViewMode:I

    if-ne v3, v6, :cond_1

    .line 783
    const-string v3, "(%d/%d)"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getSelectedIndex()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 784
    iget-object v3, p0, Lcom/lge/camera/PostviewActivity;->mSaveFileName:Ljava/lang/String;

    invoke-virtual {p0, v3, v1}, Lcom/lge/camera/PostviewActivity;->adjustFilenameForView(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    :goto_0
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 803
    .end local v0           #imageListSize:I
    .end local v1           #thumbInfo:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 786
    .restart local v0       #imageListSize:I
    .restart local v1       #thumbInfo:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/PostviewActivity;->mSaveFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 790
    :cond_2
    if-le v0, v6, :cond_3

    .line 791
    const-string v3, "(%d/%d)"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getSelectedIndex()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 792
    iget-object v3, p0, Lcom/lge/camera/PostviewActivity;->mSaveFileName:Ljava/lang/String;

    invoke-virtual {p0, v3, v1}, Lcom/lge/camera/PostviewActivity;->adjustFilenameForView(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    :goto_2
    iget-boolean v3, p0, Lcom/lge/camera/PostviewActivity;->mIsAttachIntent:Z

    if-eqz v3, :cond_4

    .line 797
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 794
    :cond_3
    iget-object v3, p0, Lcom/lge/camera/PostviewActivity;->mSaveFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 799
    :cond_4
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setGalleryThumbnailRect()V
    .locals 12

    .prologue
    .line 3836
    const/4 v7, 0x0

    .line 3837
    .local v7, thumbnailSize:I
    :try_start_0
    iget-object v8, p0, Lcom/lge/camera/PostviewActivity;->mThumbnailRect:Ljava/util/ArrayList;

    if-eqz v8, :cond_1

    .line 3838
    iget-object v8, p0, Lcom/lge/camera/PostviewActivity;->mThumbnailRect:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 3843
    if-nez v7, :cond_1

    .line 3844
    iget-object v8, p0, Lcom/lge/camera/PostviewActivity;->mThumbnailRect:Ljava/util/ArrayList;

    if-eqz v8, :cond_0

    .line 3845
    iget-object v8, p0, Lcom/lge/camera/PostviewActivity;->mThumbnailRect:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 3847
    :cond_0
    const v8, 0x7f090036

    invoke-virtual {p0, v8}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Gallery;

    .line 3848
    .local v1, g:Landroid/widget/Gallery;
    if-nez v1, :cond_2

    .line 3880
    .end local v1           #g:Landroid/widget/Gallery;
    :cond_1
    :goto_0
    return-void

    .line 3852
    .restart local v1       #g:Landroid/widget/Gallery;
    :cond_2
    iget-object v8, p0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3854
    .local v3, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 3855
    const-string v8, "THUMB_%d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 3856
    .local v4, tagKey:Ljava/lang/String;
    invoke-virtual {v1, v4}, Landroid/widget/Gallery;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lge/camera/postview/ThumbnailGalleryItem;

    .line 3858
    .local v6, tgi:Lcom/lge/camera/postview/ThumbnailGalleryItem;
    if-eqz v6, :cond_3

    .line 3859
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 3860
    .local v5, tempRect:Landroid/graphics/Rect;
    invoke-virtual {v6}, Lcom/lge/camera/postview/ThumbnailGalleryItem;->getTop()I

    move-result v8

    iput v8, v5, Landroid/graphics/Rect;->top:I

    .line 3861
    invoke-virtual {v6}, Lcom/lge/camera/postview/ThumbnailGalleryItem;->getLeft()I

    move-result v8

    iput v8, v5, Landroid/graphics/Rect;->left:I

    .line 3862
    invoke-virtual {v6}, Lcom/lge/camera/postview/ThumbnailGalleryItem;->getRight()I

    move-result v8

    iput v8, v5, Landroid/graphics/Rect;->right:I

    .line 3863
    invoke-virtual {v6}, Lcom/lge/camera/postview/ThumbnailGalleryItem;->getBottom()I

    move-result v8

    iput v8, v5, Landroid/graphics/Rect;->bottom:I

    .line 3865
    iget-object v8, p0, Lcom/lge/camera/PostviewActivity;->mThumbnailRect:Ljava/util/ArrayList;

    if-eqz v8, :cond_3

    .line 3866
    iget-object v8, p0, Lcom/lge/camera/PostviewActivity;->mThumbnailRect:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    .line 3854
    .end local v5           #tempRect:Landroid/graphics/Rect;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3873
    .end local v1           #g:Landroid/widget/Gallery;
    .end local v2           #i:I
    .end local v3           #size:I
    .end local v4           #tagKey:Ljava/lang/String;
    .end local v6           #tgi:Lcom/lge/camera/postview/ThumbnailGalleryItem;
    :catch_0
    move-exception v0

    .line 3874
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v8, "CameraApp"

    const-string v9, "ArrayIndexOutOfBoundsException!"

    invoke-static {v8, v9, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3875
    .end local v0           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_1
    move-exception v0

    .line 3876
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v8, "CameraApp"

    const-string v9, "NullPointerException!"

    invoke-static {v8, v9, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3877
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 3878
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v8, "CameraApp"

    const-string v9, "IndexOutOfBoundsException!"

    invoke-static {v8, v9, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setImageViewClear(Landroid/widget/ImageView;)V
    .locals 2
    .parameter "imageView"

    .prologue
    const/4 v1, 0x0

    .line 4264
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4265
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4266
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 4267
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 4268
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4270
    :cond_0
    return-void
.end method

.method public setIsMultiSelectMode(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 3534
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mImageAdapter:Lcom/lge/camera/postview/ContShotThumbAdapter;

    if-eqz v0, :cond_0

    .line 3535
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mImageAdapter:Lcom/lge/camera/postview/ContShotThumbAdapter;

    invoke-virtual {v0, p1}, Lcom/lge/camera/postview/ContShotThumbAdapter;->setIsMultiSelectMode(Z)V

    .line 3537
    :cond_0
    return-void
.end method

.method public setLoadedPostview()V
    .locals 2

    .prologue
    .line 532
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity;->mCapturedBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 533
    const v1, 0x7f090030

    invoke-virtual {p0, v1}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 534
    .local v0, postview:Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity;->mCapturedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 536
    .end local v0           #postview:Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method public setMenuDim(Z)V
    .locals 2
    .parameter "dim"

    .prologue
    const/4 v1, 0x0

    .line 1235
    if-eqz p1, :cond_0

    .line 1236
    const v0, -0x777778

    invoke-virtual {p0, p1, v1, v0}, Lcom/lge/camera/PostviewActivity;->setMenuDim(ZII)V

    .line 1239
    :goto_0
    return-void

    .line 1238
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/lge/camera/PostviewActivity;->setMenuDim(ZII)V

    goto :goto_0
.end method

.method public setMenuDim(ZII)V
    .locals 6
    .parameter "dim"
    .parameter "alpha"
    .parameter "color"

    .prologue
    .line 1242
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 1244
    .local v0, buttonEnable:Z
    :goto_0
    const v5, 0x7f090040

    invoke-virtual {p0, v5}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1245
    .local v1, send:Landroid/widget/Button;
    const v5, 0x7f090042

    invoke-virtual {p0, v5}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 1247
    .local v2, setAs:Landroid/widget/Button;
    const v5, 0x7f090041

    invoke-virtual {p0, v5}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lge/camera/components/RotateTextView;

    .line 1248
    .local v3, textSend:Lcom/lge/camera/components/RotateTextView;
    const v5, 0x7f090043

    invoke-virtual {p0, v5}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lge/camera/components/RotateTextView;

    .line 1250
    .local v4, textSetAs:Lcom/lge/camera/components/RotateTextView;
    invoke-virtual {v3, p3}, Lcom/lge/camera/components/RotateTextView;->setTextColor(I)V

    .line 1251
    invoke-virtual {v4, p3}, Lcom/lge/camera/components/RotateTextView;->setTextColor(I)V

    .line 1253
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1254
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1255
    return-void

    .line 1242
    .end local v0           #buttonEnable:Z
    .end local v1           #send:Landroid/widget/Button;
    .end local v2           #setAs:Landroid/widget/Button;
    .end local v3           #textSend:Lcom/lge/camera/components/RotateTextView;
    .end local v4           #textSetAs:Lcom/lge/camera/components/RotateTextView;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOrientationListener()V
    .locals 3

    .prologue
    .line 708
    const-string v0, "CameraApp"

    const-string v1, "setOrientationListener"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 712
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/PostviewActivity;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 714
    :cond_0
    invoke-static {}, Lcom/lge/camera/util/Common;->isScreenLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 715
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/camera/PostviewActivity;->mOrientation:I

    .line 717
    :cond_1
    new-instance v0, Lcom/lge/camera/PostviewActivity$5;

    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2}, Lcom/lge/camera/PostviewActivity$5;-><init>(Lcom/lge/camera/PostviewActivity;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/lge/camera/PostviewActivity;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 773
    return-void
.end method

.method public setPanelButton()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1279
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getIsMultiSelectMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1280
    invoke-virtual {p0, v1}, Lcom/lge/camera/PostviewActivity;->displayCheckbox(Z)V

    .line 1281
    invoke-virtual {p0, v1}, Lcom/lge/camera/PostviewActivity;->setMenuDim(Z)V

    .line 1287
    :goto_0
    iget v0, p0, Lcom/lge/camera/PostviewActivity;->mApplicationMode:I

    if-nez v0, :cond_2

    .line 1288
    const v0, 0x7f020190

    invoke-virtual {p0, v1, v0}, Lcom/lge/camera/PostviewActivity;->setSubButton(II)V

    .line 1293
    :goto_1
    iget-boolean v0, p0, Lcom/lge/camera/PostviewActivity;->mIsAttachIntent:Z

    if-eqz v0, :cond_0

    .line 1294
    const/4 v0, 0x2

    const v1, 0x7f02018c

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/PostviewActivity;->setSubButton(II)V

    .line 1296
    :cond_0
    return-void

    .line 1283
    :cond_1
    invoke-virtual {p0, v2}, Lcom/lge/camera/PostviewActivity;->displayCheckbox(Z)V

    .line 1284
    invoke-virtual {p0, v2}, Lcom/lge/camera/PostviewActivity;->setMenuDim(Z)V

    goto :goto_0

    .line 1290
    :cond_2
    const v0, 0x7f020191

    invoke-virtual {p0, v1, v0}, Lcom/lge/camera/PostviewActivity;->setSubButton(II)V

    goto :goto_1
.end method

.method public setPostviewMainViewVisible(I)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 644
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 645
    return-void
.end method

.method public setPostviewMenuState(I)V
    .locals 0
    .parameter "menuState"

    .prologue
    .line 1728
    iput p1, p0, Lcom/lge/camera/PostviewActivity;->mPostviewMenuState:I

    .line 1729
    return-void
.end method

.method public setSelectedIndex(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 3547
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mImageAdapter:Lcom/lge/camera/postview/ContShotThumbAdapter;

    if-eqz v0, :cond_0

    .line 3548
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mImageAdapter:Lcom/lge/camera/postview/ContShotThumbAdapter;

    invoke-virtual {v0, p1}, Lcom/lge/camera/postview/ContShotThumbAdapter;->setSelectedIndex(I)V

    .line 3550
    :cond_0
    iput p1, p0, Lcom/lge/camera/PostviewActivity;->mSelectedIndex:I

    .line 3551
    return-void
.end method

.method public setSettingValueClear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4273
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->receiver:Lcom/lge/camera/postview/PostViewMediaBroadCastReceiver;

    if-eqz v0, :cond_0

    .line 4274
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->receiver:Lcom/lge/camera/postview/PostViewMediaBroadCastReceiver;

    invoke-virtual {p0, v0}, Lcom/lge/camera/PostviewActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4275
    iput-object v1, p0, Lcom/lge/camera/PostviewActivity;->receiver:Lcom/lge/camera/postview/PostViewMediaBroadCastReceiver;

    .line 4277
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mCapturedBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 4278
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mCapturedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 4279
    iput-object v1, p0, Lcom/lge/camera/PostviewActivity;->mCapturedBitmap:Landroid/graphics/Bitmap;

    .line 4281
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mThumbImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 4282
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mThumbImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 4283
    iput-object v1, p0, Lcom/lge/camera/PostviewActivity;->mThumbImage:Landroid/graphics/Bitmap;

    .line 4285
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mImageAdapter:Lcom/lge/camera/postview/ContShotThumbAdapter;

    if-eqz v0, :cond_4

    .line 4286
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mImageAdapter:Lcom/lge/camera/postview/ContShotThumbAdapter;

    iget-object v0, v0, Lcom/lge/camera/postview/ContShotThumbAdapter;->mThumb:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 4287
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mImageAdapter:Lcom/lge/camera/postview/ContShotThumbAdapter;

    iget-object v0, v0, Lcom/lge/camera/postview/ContShotThumbAdapter;->mThumb:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4289
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mImageAdapter:Lcom/lge/camera/postview/ContShotThumbAdapter;

    invoke-virtual {v0}, Lcom/lge/camera/postview/ContShotThumbAdapter;->unbind()V

    .line 4290
    iput-object v1, p0, Lcom/lge/camera/PostviewActivity;->mImageAdapter:Lcom/lge/camera/postview/ContShotThumbAdapter;

    .line 4292
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mThumbnailRect:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 4293
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mThumbnailRect:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4294
    iput-object v1, p0, Lcom/lge/camera/PostviewActivity;->mThumbnailRect:Ljava/util/ArrayList;

    .line 4296
    :cond_5
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 4297
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4298
    iput-object v1, p0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    .line 4300
    :cond_6
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mTimeMachineFileNameList:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 4301
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mTimeMachineFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4302
    iput-object v1, p0, Lcom/lge/camera/PostviewActivity;->mTimeMachineFileNameList:Ljava/util/ArrayList;

    .line 4304
    :cond_7
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mToast:Lcom/lge/camera/postview/PostViewToast;

    if-eqz v0, :cond_8

    .line 4305
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mToast:Lcom/lge/camera/postview/PostViewToast;

    invoke-virtual {v0}, Lcom/lge/camera/postview/PostViewToast;->unbind()V

    .line 4306
    iput-object v1, p0, Lcom/lge/camera/PostviewActivity;->mToast:Lcom/lge/camera/postview/PostViewToast;

    .line 4308
    :cond_8
    iput-object v1, p0, Lcom/lge/camera/PostviewActivity;->mSavedUri:Landroid/net/Uri;

    .line 4309
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/PostviewActivity;->bConnectedDevice:Z

    .line 4310
    iput-object v1, p0, Lcom/lge/camera/PostviewActivity;->mHandler:Lcom/lge/camera/util/MainHandler;

    .line 4311
    iput-object v1, p0, Lcom/lge/camera/PostviewActivity;->mPostRunnables:Ljava/util/ArrayList;

    .line 4312
    iput-object v1, p0, Lcom/lge/camera/PostviewActivity;->imageHandler:Lcom/lge/camera/util/ImageHandler;

    .line 4313
    iput-object v1, p0, Lcom/lge/camera/PostviewActivity;->dialogKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 4314
    iput-object v1, p0, Lcom/lge/camera/PostviewActivity;->menuListShare:Ljava/util/ArrayList;

    .line 4315
    iput-object v1, p0, Lcom/lge/camera/PostviewActivity;->menuListSetas:Ljava/util/ArrayList;

    .line 4316
    iput-object v1, p0, Lcom/lge/camera/PostviewActivity;->menuIconListShare:Ljava/util/ArrayList;

    .line 4317
    iput-object v1, p0, Lcom/lge/camera/PostviewActivity;->menuIconListSetas:Ljava/util/ArrayList;

    .line 4318
    iput-object v1, p0, Lcom/lge/camera/PostviewActivity;->menuListExtendInfo:Ljava/util/ArrayList;

    .line 4320
    iput-object v1, p0, Lcom/lge/camera/PostviewActivity;->mShareButtonListener:Landroid/view/View$OnClickListener;

    .line 4321
    iput-object v1, p0, Lcom/lge/camera/PostviewActivity;->mPlayButtonListener:Landroid/view/View$OnClickListener;

    .line 4322
    iput-object v1, p0, Lcom/lge/camera/PostviewActivity;->mSetAsButtonListener:Landroid/view/View$OnClickListener;

    .line 4323
    iput-object v1, p0, Lcom/lge/camera/PostviewActivity;->mFinishListener:Landroid/view/View$OnClickListener;

    .line 4324
    iput-object v1, p0, Lcom/lge/camera/PostviewActivity;->mDeleteButtonListener:Landroid/view/View$OnClickListener;

    .line 4325
    iput-object v1, p0, Lcom/lge/camera/PostviewActivity;->mNewButtonListener:Landroid/view/View$OnClickListener;

    .line 4326
    iput-object v1, p0, Lcom/lge/camera/PostviewActivity;->mAttachButtonListener:Landroid/view/View$OnClickListener;

    .line 4327
    iput-object v1, p0, Lcom/lge/camera/PostviewActivity;->mMultiSelectButtonListener:Landroid/view/View$OnClickListener;

    .line 4328
    iput-object v1, p0, Lcom/lge/camera/PostviewActivity;->mTimeMachineSaveButtonListener:Landroid/view/View$OnClickListener;

    .line 4329
    iput-object v1, p0, Lcom/lge/camera/PostviewActivity;->mThumbnailButtonListener:Landroid/view/View$OnClickListener;

    .line 4331
    iput-object v1, p0, Lcom/lge/camera/PostviewActivity;->mExitInteraction:Ljava/lang/Runnable;

    .line 4332
    iput-object v1, p0, Lcom/lge/camera/PostviewActivity;->mReloadAllLayout:Ljava/lang/Runnable;

    .line 4333
    iput-object v1, p0, Lcom/lge/camera/PostviewActivity;->mSetOrientationReload:Ljava/lang/Runnable;

    .line 4334
    iput-object v1, p0, Lcom/lge/camera/PostviewActivity;->saveButtonDone:Ljava/lang/Runnable;

    .line 4335
    iput-object v1, p0, Lcom/lge/camera/PostviewActivity;->mThumbnailRect:Ljava/util/ArrayList;

    .line 4336
    iput-object v1, p0, Lcom/lge/camera/PostviewActivity;->mTimeMachineAnimationRunnable1:Ljava/lang/Runnable;

    .line 4337
    iput-object v1, p0, Lcom/lge/camera/PostviewActivity;->mTimeMachineAnimationRunnable2:Ljava/lang/Runnable;

    .line 4338
    iput-object v1, p0, Lcom/lge/camera/PostviewActivity;->timeMachineAnimationEndListener:Landroid/view/animation/Animation$AnimationListener;

    .line 4340
    iput-object v1, p0, Lcom/lge/camera/PostviewActivity;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 4341
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/camera/PostviewActivity;->mTimeMachineViewMode:I

    .line 4342
    iput-object v1, p0, Lcom/lge/camera/PostviewActivity;->mCamera:Landroid/hardware/Camera;

    .line 4343
    iput-object v1, p0, Lcom/lge/camera/PostviewActivity;->mFrontCameraPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 4344
    iput-object v1, p0, Lcom/lge/camera/PostviewActivity;->mBackCameraPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 4345
    iput-object v1, p0, Lcom/lge/camera/PostviewActivity;->mFrontCamcorderPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 4346
    iput-object v1, p0, Lcom/lge/camera/PostviewActivity;->mBackCamcorderPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 4347
    return-void
.end method

.method public setSubButton(II)V
    .locals 12
    .parameter "loc"
    .parameter "resId"

    .prologue
    const v11, 0x7f090049

    const v10, 0x7f090047

    const v9, 0x7f090045

    const/4 v8, 0x0

    .line 1318
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setSubButton "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1319
    invoke-virtual {p0, v9}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lge/camera/components/RotateImageButton;

    .line 1320
    .local v3, mSubButtonTop:Lcom/lge/camera/components/RotateImageButton;
    invoke-virtual {p0, v10}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/components/RotateImageButton;

    .line 1321
    .local v2, mSubButtonMiddle:Lcom/lge/camera/components/RotateImageButton;
    invoke-virtual {p0, v11}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateImageButton;

    .line 1323
    .local v1, mSubButtonBottom:Lcom/lge/camera/components/RotateImageButton;
    const v5, 0x7f090046

    invoke-direct {p0, v5, v9}, Lcom/lge/camera/PostviewActivity;->setTouchDelegate(II)V

    .line 1324
    const v5, 0x7f090048

    invoke-direct {p0, v5, v10}, Lcom/lge/camera/PostviewActivity;->setTouchDelegate(II)V

    .line 1325
    const v5, 0x7f09004a

    invoke-direct {p0, v5, v11}, Lcom/lge/camera/PostviewActivity;->setTouchDelegate(II)V

    .line 1326
    iget-boolean v5, p0, Lcom/lge/camera/PostviewActivity;->mIsAttachIntent:Z

    if-nez v5, :cond_0

    .line 1327
    const v5, 0x7f09004c

    const v6, 0x7f09004b

    invoke-direct {p0, v5, v6}, Lcom/lge/camera/PostviewActivity;->setTouchDelegate(II)V

    .line 1331
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1390
    :cond_1
    :goto_0
    return-void

    .line 1333
    :pswitch_0
    move-object v0, v3

    .line 1344
    .local v0, ib:Lcom/lge/camera/components/RotateImageButton;
    :goto_1
    if-eqz v0, :cond_1

    .line 1348
    sparse-switch p2, :sswitch_data_0

    .line 1376
    :goto_2
    invoke-virtual {v0, p2}, Lcom/lge/camera/components/RotateImageButton;->setBackgroundResource(I)V

    .line 1377
    if-nez p2, :cond_2

    .line 1378
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Lcom/lge/camera/components/RotateImageButton;->setVisibility(I)V

    .line 1388
    :goto_3
    invoke-virtual {v0, v8}, Lcom/lge/camera/components/RotateImageButton;->setFocusable(Z)V

    .line 1389
    invoke-virtual {v0, v8}, Lcom/lge/camera/components/RotateImageButton;->setPressed(Z)V

    goto :goto_0

    .line 1336
    .end local v0           #ib:Lcom/lge/camera/components/RotateImageButton;
    :pswitch_1
    move-object v0, v2

    .line 1337
    .restart local v0       #ib:Lcom/lge/camera/components/RotateImageButton;
    goto :goto_1

    .line 1339
    .end local v0           #ib:Lcom/lge/camera/components/RotateImageButton;
    :pswitch_2
    move-object v0, v1

    .line 1340
    .restart local v0       #ib:Lcom/lge/camera/components/RotateImageButton;
    goto :goto_1

    .line 1350
    :sswitch_0
    iget-object v5, p0, Lcom/lge/camera/PostviewActivity;->mDeleteButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5}, Lcom/lge/camera/components/RotateImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 1354
    :sswitch_1
    iget-object v5, p0, Lcom/lge/camera/PostviewActivity;->mMultiSelectButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5}, Lcom/lge/camera/components/RotateImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 1359
    :sswitch_2
    iget-object v5, p0, Lcom/lge/camera/PostviewActivity;->mNewButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5}, Lcom/lge/camera/components/RotateImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 1363
    :sswitch_3
    iget-object v5, p0, Lcom/lge/camera/PostviewActivity;->mAttachButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5}, Lcom/lge/camera/components/RotateImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 1367
    :sswitch_4
    iget-object v5, p0, Lcom/lge/camera/PostviewActivity;->mTimeMachineSaveButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5}, Lcom/lge/camera/components/RotateImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 1371
    :sswitch_5
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/lge/camera/components/RotateImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 1380
    :cond_2
    invoke-virtual {v0, v8}, Lcom/lge/camera/components/RotateImageButton;->setVisibility(I)V

    .line 1381
    const/16 v4, 0xff

    .line 1382
    .local v4, panelButtonAlpha:I
    iget v5, p0, Lcom/lge/camera/PostviewActivity;->mPanelAlpha:I

    const/16 v6, 0xff

    if-eq v5, v6, :cond_3

    .line 1383
    const/16 v4, 0xc9

    .line 1385
    :cond_3
    invoke-virtual {v0}, Lcom/lge/camera/components/RotateImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_3

    .line 1331
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1348
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_5
        0x7f02018c -> :sswitch_3
        0x7f02018d -> :sswitch_0
        0x7f02018f -> :sswitch_1
        0x7f020190 -> :sswitch_2
        0x7f020191 -> :sswitch_2
        0x7f020193 -> :sswitch_4
    .end sparse-switch
.end method

.method public setTextBigSize(Lcom/lge/camera/components/RotateTextView;)V
    .locals 3
    .parameter "rtv"

    .prologue
    .line 1226
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetHDmodel()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->IsDomesticModel()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1227
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1228
    .local v0, locale:Ljava/util/Locale;
    sget-object v1, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1229
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a000f

    invoke-static {v1, v2}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/lge/camera/components/RotateTextView;->setTextSize(I)V

    .line 1232
    .end local v0           #locale:Ljava/util/Locale;
    :cond_1
    return-void
.end method

.method public setThumbImageUseCaptureImage(Landroid/graphics/Bitmap;)V
    .locals 9
    .parameter "bmp"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2260
    const-string v5, "CameraApp"

    const-string v6, "setThumbImageUseCaptureImage-start"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2262
    iget-object v5, p0, Lcom/lge/camera/PostviewActivity;->mThumbImage:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_0

    .line 2263
    iget-object v5, p0, Lcom/lge/camera/PostviewActivity;->mThumbImage:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 2264
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/lge/camera/PostviewActivity;->mThumbImage:Landroid/graphics/Bitmap;

    .line 2267
    :cond_0
    const v5, 0x7f09004b

    invoke-virtual {p0, v5}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lge/camera/components/RotateImageView;

    .line 2268
    .local v4, riv:Lcom/lge/camera/components/RotateImageView;
    invoke-virtual {v4}, Lcom/lge/camera/components/RotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 2269
    .local v3, param:Landroid/view/ViewGroup$LayoutParams;
    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v4}, Lcom/lge/camera/components/RotateImageView;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v4}, Lcom/lge/camera/components/RotateImageView;->getPaddingRight()I

    move-result v6

    sub-int v2, v5, v6

    .line 2270
    .local v2, miniThumbWidth:I
    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v4}, Lcom/lge/camera/components/RotateImageView;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v4}, Lcom/lge/camera/components/RotateImageView;->getPaddingBottom()I

    move-result v6

    sub-int v1, v5, v6

    .line 2272
    .local v1, miniThumbHeight:I
    if-eqz p1, :cond_1

    .line 2273
    const/4 v0, 0x0

    .line 2274
    .local v0, b:Landroid/graphics/Bitmap;
    iget v5, p0, Lcom/lge/camera/PostviewActivity;->mCameraId:I

    if-ne v5, v8, :cond_2

    .line 2275
    iget-object v5, p0, Lcom/lge/camera/PostviewActivity;->imageHandler:Lcom/lge/camera/util/ImageHandler;

    invoke-virtual {v5, p1, v7, v7}, Lcom/lge/camera/util/ImageHandler;->getRotatedNotRecycle(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2279
    :goto_0
    invoke-static {v0, v2, v1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/camera/PostviewActivity;->mThumbImage:Landroid/graphics/Bitmap;

    .line 2280
    iput-boolean v8, p0, Lcom/lge/camera/PostviewActivity;->setThumbImage:Z

    .line 2282
    .end local v0           #b:Landroid/graphics/Bitmap;
    :cond_1
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setThumbImageUseCaptureImage-end:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/lge/camera/PostviewActivity;->setThumbImage:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2283
    return-void

    .line 2277
    .restart local v0       #b:Landroid/graphics/Bitmap;
    :cond_2
    move-object v0, p1

    goto :goto_0
.end method

.method public setupLayoutMainBarAndPostviewMenu()V
    .locals 10

    .prologue
    const/16 v9, 0xc

    const/16 v8, 0xb

    const/16 v7, 0xa

    const/16 v6, 0x9

    const/4 v5, 0x1

    .line 1056
    iget-boolean v4, p0, Lcom/lge/camera/PostviewActivity;->mIsAttachIntent:Z

    if-nez v4, :cond_0

    .line 1057
    const v4, 0x7f090044

    invoke-virtual {p0, v4}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1058
    .local v0, main_bar:Landroid/view/View;
    const v4, 0x7f09003f

    invoke-virtual {p0, v4}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1060
    .local v2, postview_menu:Landroid/view/View;
    if-eqz v0, :cond_0

    if-nez v2, :cond_1

    .line 1091
    .end local v0           #main_bar:Landroid/view/View;
    .end local v2           #postview_menu:Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 1064
    .restart local v0       #main_bar:Landroid/view/View;
    .restart local v2       #postview_menu:Landroid/view/View;
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1065
    .local v1, main_bar_param:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1067
    .local v3, postview_menu_param:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v1}, Lcom/lge/camera/util/Common;->ResetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 1068
    invoke-static {v3}, Lcom/lge/camera/util/Common;->ResetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 1070
    iget v4, p0, Lcom/lge/camera/PostviewActivity;->mOrientation:I

    packed-switch v4, :pswitch_data_0

    .line 1088
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1089
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1072
    :pswitch_0
    invoke-virtual {v1, v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1073
    invoke-virtual {v3, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1

    .line 1076
    :pswitch_1
    invoke-virtual {v1, v9, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1077
    invoke-virtual {v3, v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1

    .line 1080
    :pswitch_2
    invoke-virtual {v1, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1081
    invoke-virtual {v3, v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1

    .line 1084
    :pswitch_3
    invoke-virtual {v1, v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1085
    invoke-virtual {v3, v9, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1

    .line 1070
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setupPostviewLayout(II)V
    .locals 17
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1396
    const-string v1, "CameraApp"

    const-string v2, "setupPostviewLayout - start"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1397
    const v1, 0x7f09002f

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 1398
    .local v13, postviewLayout:Landroid/view/View;
    const v1, 0x7f090030

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 1400
    .local v8, contentLayout:Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1401
    .local v14, postviewParam:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1403
    .local v9, contentParam:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/PostviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0039

    invoke-static {v1, v2}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v3

    .line 1404
    .local v3, postviewWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/PostviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a003a

    invoke-static {v1, v2}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v12

    .line 1405
    .local v12, postviewHeight:I
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/PostviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0032

    invoke-static {v1, v2}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v11

    .line 1406
    .local v11, lcdWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/PostviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a003b

    invoke-static {v1, v2}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v5

    .line 1407
    .local v5, leftMargin:I
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/PostviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0045

    invoke-static {v1, v2}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v6

    .line 1409
    .local v6, panelWidth:I
    iput v3, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1410
    iput v12, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1411
    const/4 v1, -0x1

    iput v1, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1412
    const/4 v1, -0x1

    iput v1, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1415
    move/from16 v0, p1

    if-ge v3, v0, :cond_5

    .line 1416
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetXGAmodel()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1417
    const/16 v1, 0xff

    move-object/from16 v0, p0

    iput v1, v0, Lcom/lge/camera/PostviewActivity;->mPanelAlpha:I

    .line 1421
    :goto_0
    iput v11, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1422
    const/4 v1, 0x0

    iput v1, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1449
    :cond_0
    :goto_1
    const-string v1, "window"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/lge/camera/PostviewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    .line 1450
    .local v10, display:Landroid/view/Display;
    invoke-virtual {v10}, Landroid/view/Display;->getRotation()I

    move-result v15

    .line 1451
    .local v15, rotation:I
    if-eqz v15, :cond_1

    const/4 v1, 0x2

    if-ne v15, v1, :cond_2

    .line 1452
    :cond_1
    const-string v1, "CameraApp"

    const-string v2, "vertical in layout"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v16, v0

    .line 1454
    .local v16, temp:I
    iget v1, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1455
    move/from16 v0, v16

    iput v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1456
    iget v1, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v1, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1457
    const/4 v1, 0x0

    iput v1, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1459
    iget v0, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v16, v0

    .line 1460
    iget v1, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1461
    move/from16 v0, v16

    iput v0, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1464
    .end local v16           #temp:I
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/lge/camera/PostviewActivity;->mIsAttachIntent:Z

    if-eqz v1, :cond_9

    .line 1465
    const/16 v1, 0xd

    const/4 v2, 0x1

    invoke-virtual {v14, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1470
    :goto_2
    const v1, 0x7f090031

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1471
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1472
    .local v7, aniParam:Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1473
    iget v1, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1474
    const v1, 0x7f090031

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1477
    .end local v7           #aniParam:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    const/4 v2, 0x1

    move-object/from16 v1, p0

    move/from16 v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/lge/camera/PostviewActivity;->setTimeMachineButtonLayout(ZIIII)V

    .line 1479
    invoke-virtual {v13, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1480
    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1486
    return-void

    .line 1419
    .end local v10           #display:Landroid/view/Display;
    .end local v15           #rotation:I
    :cond_4
    const/16 v1, 0x1e

    move-object/from16 v0, p0

    iput v1, v0, Lcom/lge/camera/PostviewActivity;->mPanelAlpha:I

    goto/16 :goto_0

    .line 1424
    :cond_5
    const/16 v1, 0xff

    move-object/from16 v0, p0

    iput v1, v0, Lcom/lge/camera/PostviewActivity;->mPanelAlpha:I

    .line 1426
    sub-int v1, v3, v5

    move/from16 v0, p1

    if-ge v1, v0, :cond_6

    .line 1427
    iput v3, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1428
    const/4 v1, 0x0

    iput v1, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto/16 :goto_1

    .line 1430
    :cond_6
    sub-int v1, v3, v5

    iput v1, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1431
    move-object/from16 v0, p0

    iget v1, v0, Lcom/lge/camera/PostviewActivity;->mOrientation:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_7

    move-object/from16 v0, p0

    iget v1, v0, Lcom/lge/camera/PostviewActivity;->mOrientation:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_8

    .line 1433
    :cond_7
    iput v6, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1440
    :goto_3
    iget v1, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v0, p1

    if-le v1, v0, :cond_0

    iget v1, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v0, p2

    if-le v1, v0, :cond_0

    .line 1444
    move/from16 v0, p1

    iput v0, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1445
    move/from16 v0, p2

    iput v0, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_1

    .line 1435
    :cond_8
    iput v5, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_3

    .line 1467
    .restart local v10       #display:Landroid/view/Display;
    .restart local v15       #rotation:I
    :cond_9
    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v14, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_2
.end method

.method public showMenu()V
    .locals 8

    .prologue
    .line 1179
    const v5, 0x7f090040

    :try_start_0
    invoke-virtual {p0, v5}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1180
    .local v0, b:Landroid/widget/Button;
    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1181
    const v3, -0x777778

    .line 1185
    .local v3, textColor:I
    :goto_0
    const v5, 0x7f090041

    invoke-virtual {p0, v5}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/components/RotateTextView;

    .line 1186
    .local v2, rtv:Lcom/lge/camera/components/RotateTextView;
    iget v5, p0, Lcom/lge/camera/PostviewActivity;->mApplicationMode:I

    if-nez v5, :cond_1

    .line 1187
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0122

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/lge/camera/components/RotateTextView;->setText(Ljava/lang/String;)V

    .line 1188
    invoke-virtual {p0, v2}, Lcom/lge/camera/PostviewActivity;->setTextBigSize(Lcom/lge/camera/components/RotateTextView;)V

    .line 1194
    :goto_1
    invoke-virtual {v2}, Lcom/lge/camera/components/RotateTextView;->AdjustFontSize()V

    .line 1195
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/lge/camera/components/RotateTextView;->setVisibility(I)V

    .line 1196
    invoke-virtual {v2, v3}, Lcom/lge/camera/components/RotateTextView;->setTextColor(I)V

    .line 1198
    const v5, 0x7f090042

    invoke-virtual {p0, v5}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #b:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 1199
    .restart local v0       #b:Landroid/widget/Button;
    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1200
    const v3, -0x777778

    .line 1204
    :goto_2
    const v5, 0x7f090043

    invoke-virtual {p0, v5}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #rtv:Lcom/lge/camera/components/RotateTextView;
    check-cast v2, Lcom/lge/camera/components/RotateTextView;

    .line 1205
    .restart local v2       #rtv:Lcom/lge/camera/components/RotateTextView;
    iget v5, p0, Lcom/lge/camera/PostviewActivity;->mApplicationMode:I

    if-nez v5, :cond_3

    .line 1206
    const v5, 0x7f0b0123

    invoke-virtual {p0, v5}, Lcom/lge/camera/PostviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/lge/camera/components/RotateTextView;->setText(Ljava/lang/String;)V

    .line 1207
    invoke-virtual {p0, v2}, Lcom/lge/camera/PostviewActivity;->setTextBigSize(Lcom/lge/camera/components/RotateTextView;)V

    .line 1213
    :goto_3
    invoke-virtual {v2}, Lcom/lge/camera/components/RotateTextView;->AdjustFontSize()V

    .line 1214
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/lge/camera/components/RotateTextView;->setVisibility(I)V

    .line 1215
    invoke-virtual {v2, v3}, Lcom/lge/camera/components/RotateTextView;->setTextColor(I)V

    .line 1217
    const/4 v3, -0x1

    .line 1218
    const v5, 0x7f090037

    invoke-virtual {p0, v5}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1219
    .local v4, tv:Landroid/widget/TextView;
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1223
    .end local v0           #b:Landroid/widget/Button;
    .end local v2           #rtv:Lcom/lge/camera/components/RotateTextView;
    .end local v3           #textColor:I
    .end local v4           #tv:Landroid/widget/TextView;
    :goto_4
    return-void

    .line 1183
    .restart local v0       #b:Landroid/widget/Button;
    :cond_0
    const/4 v3, -0x1

    .restart local v3       #textColor:I
    goto :goto_0

    .line 1190
    .restart local v2       #rtv:Lcom/lge/camera/components/RotateTextView;
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0121

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/lge/camera/components/RotateTextView;->setText(Ljava/lang/String;)V

    .line 1191
    invoke-virtual {p0, v2}, Lcom/lge/camera/PostviewActivity;->setTextBigSize(Lcom/lge/camera/components/RotateTextView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1220
    .end local v0           #b:Landroid/widget/Button;
    .end local v2           #rtv:Lcom/lge/camera/components/RotateTextView;
    .end local v3           #textColor:I
    :catch_0
    move-exception v1

    .line 1221
    .local v1, ex:Ljava/lang/Exception;
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1202
    .end local v1           #ex:Ljava/lang/Exception;
    .restart local v0       #b:Landroid/widget/Button;
    .restart local v2       #rtv:Lcom/lge/camera/components/RotateTextView;
    .restart local v3       #textColor:I
    :cond_2
    const/4 v3, -0x1

    goto :goto_2

    .line 1209
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0122

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/lge/camera/components/RotateTextView;->setText(Ljava/lang/String;)V

    .line 1210
    invoke-virtual {p0, v2}, Lcom/lge/camera/PostviewActivity;->setTextBigSize(Lcom/lge/camera/components/RotateTextView;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public showMultiShotGallery()V
    .locals 20

    .prologue
    .line 2999
    const v1, 0x7f090036

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Gallery;

    .line 3002
    .local v10, g:Landroid/widget/Gallery;
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/widget/Gallery;->setFocusable(Z)V

    .line 3003
    const/high16 v1, 0x6

    invoke-virtual {v10, v1}, Landroid/widget/Gallery;->setDescendantFocusability(I)V

    .line 3005
    const v1, 0x7f09002e

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 3006
    .local v15, postviewLayout:Landroid/view/View;
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3008
    .local v16, postviewParam:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v10}, Landroid/widget/Gallery;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3009
    .local v11, gp:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/PostviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0002

    invoke-static {v1, v2}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v1

    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v1, v2

    iput v1, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 3010
    invoke-virtual {v10, v11}, Landroid/widget/Gallery;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3011
    const/4 v1, 0x4

    invoke-virtual {v10, v1}, Landroid/widget/Gallery;->setVisibility(I)V

    .line 3012
    const/4 v13, 0x0

    .line 3015
    .local v13, imageListSize:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    if-eqz v1, :cond_6

    .line 3016
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 3017
    const/4 v7, 0x0

    .line 3018
    .local v7, bmp:Landroid/graphics/Bitmap;
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showMultiShotGallery-start,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3020
    if-nez v13, :cond_0

    .line 3088
    .end local v7           #bmp:Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 3024
    .restart local v7       #bmp:Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/PostviewActivity;->getIsMultiSelectMode()Z

    move-result v5

    .line 3025
    .local v5, multiSelectMode:Z
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/PostviewActivity;->getSelectedIndex()I

    move-result v18

    .line 3027
    .local v18, selectedIndex:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/PostviewActivity;->mImageAdapter:Lcom/lge/camera/postview/ContShotThumbAdapter;

    if-eqz v1, :cond_2

    .line 3028
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/PostviewActivity;->mImageAdapter:Lcom/lge/camera/postview/ContShotThumbAdapter;

    iget-object v1, v1, Lcom/lge/camera/postview/ContShotThumbAdapter;->mThumb:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 3029
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/PostviewActivity;->mImageAdapter:Lcom/lge/camera/postview/ContShotThumbAdapter;

    iget-object v1, v1, Lcom/lge/camera/postview/ContShotThumbAdapter;->mThumb:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3031
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/PostviewActivity;->mImageAdapter:Lcom/lge/camera/postview/ContShotThumbAdapter;

    invoke-virtual {v1}, Lcom/lge/camera/postview/ContShotThumbAdapter;->unbind()V

    .line 3032
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/lge/camera/PostviewActivity;->mImageAdapter:Lcom/lge/camera/postview/ContShotThumbAdapter;

    .line 3035
    :cond_2
    new-instance v1, Lcom/lge/camera/postview/ContShotThumbAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/PostviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lge/camera/PostviewActivity;->mOrientation:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/camera/PostviewActivity;->mShotMode:Ljava/lang/String;

    invoke-direct/range {v1 .. v6}, Lcom/lge/camera/postview/ContShotThumbAdapter;-><init>(Landroid/content/Context;ZIZLjava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/lge/camera/PostviewActivity;->mImageAdapter:Lcom/lge/camera/postview/ContShotThumbAdapter;

    .line 3036
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/PostviewActivity;->mImageAdapter:Lcom/lge/camera/postview/ContShotThumbAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/PostviewActivity;->mSelectedIndexs:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/lge/camera/postview/ContShotThumbAdapter;->setSelectedIndexs(Ljava/util/ArrayList;)V

    .line 3037
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/PostviewActivity;->mImageAdapter:Lcom/lge/camera/postview/ContShotThumbAdapter;

    move/from16 v0, v18

    invoke-virtual {v1, v0}, Lcom/lge/camera/postview/ContShotThumbAdapter;->setSelectedIndex(I)V

    .line 3039
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/PostviewActivity;->getSampleSize()I

    move-result v17

    .line 3040
    .local v17, sampleSize:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    if-ge v12, v13, :cond_4

    .line 3041
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/PostviewActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-static {v2, v1}, Lcom/lge/camera/util/BitmapManager;->getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/camera/util/ImageManager;->getExifOrientation(Ljava/lang/String;)I

    move-result v14

    .line 3042
    .local v14, orientation:I
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/PostviewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    move/from16 v0, v17

    invoke-static {v2, v1, v3, v0}, Lcom/lge/camera/util/ImageManager;->loadBitmap(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 3043
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/PostviewActivity;->imageHandler:Lcom/lge/camera/util/ImageHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v7, v14, v2}, Lcom/lge/camera/util/ImageHandler;->getImage(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 3045
    if-eqz v7, :cond_3

    .line 3046
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/PostviewActivity;->mImageAdapter:Lcom/lge/camera/postview/ContShotThumbAdapter;

    iget-object v1, v1, Lcom/lge/camera/postview/ContShotThumbAdapter;->mThumb:Ljava/util/ArrayList;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/PostviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/camera/PostviewActivity;->imageHandler:Lcom/lge/camera/util/ImageHandler;

    const/4 v6, 0x0

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v4, v7, v6, v0}, Lcom/lge/camera/util/ImageHandler;->getImage(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3048
    const/4 v7, 0x0

    .line 3040
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 3052
    .end local v14           #orientation:I
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/lge/camera/PostviewActivity;->setMultiShotGalleryVisieble(Landroid/widget/Gallery;)V

    .line 3054
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/PostviewActivity;->mThumbnailRect:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/PostviewActivity;->mThumbnailRect:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 3055
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/PostviewActivity;->mThumbnailRect:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3058
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/PostviewActivity;->getSelectedIndex()I

    move-result v1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/PostviewActivity;->refreshContinuousGallery(IZ)V

    .line 3059
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/PostviewActivity;->refreshLoadCapturedImages()Z

    .line 3061
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 3063
    const/4 v1, 0x1

    if-le v13, v1, :cond_7

    .line 3064
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    add-int/lit8 v2, v13, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    .line 3069
    .local v8, current_uri:Landroid/net/Uri;
    :goto_2
    new-instance v1, Lcom/lge/camera/PostviewActivity$32;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v8}, Lcom/lge/camera/PostviewActivity$32;-><init>(Lcom/lge/camera/PostviewActivity;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/lge/camera/PostviewActivity;->postOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    .line 3087
    .end local v5           #multiSelectMode:Z
    .end local v7           #bmp:Landroid/graphics/Bitmap;
    .end local v8           #current_uri:Landroid/net/Uri;
    .end local v12           #i:I
    .end local v17           #sampleSize:I
    .end local v18           #selectedIndex:I
    :cond_6
    :goto_3
    const-string v1, "CameraApp"

    const-string v2, "showMultiShotGallery-end"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3066
    .restart local v5       #multiSelectMode:Z
    .restart local v7       #bmp:Landroid/graphics/Bitmap;
    .restart local v12       #i:I
    .restart local v17       #sampleSize:I
    .restart local v18       #selectedIndex:I
    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    .restart local v8       #current_uri:Landroid/net/Uri;
    goto :goto_2

    .line 3080
    .end local v5           #multiSelectMode:Z
    .end local v7           #bmp:Landroid/graphics/Bitmap;
    .end local v8           #current_uri:Landroid/net/Uri;
    .end local v12           #i:I
    .end local v17           #sampleSize:I
    .end local v18           #selectedIndex:I
    :catch_0
    move-exception v9

    .line 3081
    .local v9, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "CameraApp"

    const-string v2, "ArrayIndexOutOfBoundsException!"

    invoke-static {v1, v2, v9}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 3082
    .end local v9           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_1
    move-exception v9

    .line 3083
    .local v9, e:Ljava/lang/NullPointerException;
    const-string v1, "CameraApp"

    const-string v2, "NullPointerException!"

    invoke-static {v1, v2, v9}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 3084
    .end local v9           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v9

    .line 3085
    .local v9, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v1, "CameraApp"

    const-string v2, "IndexOutOfBoundsException!"

    invoke-static {v1, v2, v9}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public showTimeMachineShotAnimation(Landroid/view/animation/Animation$AnimationListener;Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 16
    .parameter "listener"
    .parameter "targetRect"
    .parameter "aniView"

    .prologue
    .line 4136
    const-string v14, "CameraApp"

    const-string v15, "showTimeMachineShotAnimation-start"

    invoke-static {v14, v15}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4138
    const v14, 0x7f09002f

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 4139
    .local v7, postviewLayout:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 4141
    .local v2, aniParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->clearAnimation()V

    .line 4144
    move-object/from16 v0, p2

    iget v14, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p2

    iget v15, v0, Landroid/graphics/Rect;->left:I

    sub-int v13, v14, v15

    .line 4145
    .local v13, targetWidth:I
    move-object/from16 v0, p2

    iget v14, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p2

    iget v15, v0, Landroid/graphics/Rect;->top:I

    sub-int v12, v14, v15

    .line 4146
    .local v12, targetHeight:I
    int-to-float v14, v13

    iget v15, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v15, v15

    div-float v9, v14, v15

    .line 4147
    .local v9, scaleX:F
    int-to-float v14, v12

    iget v15, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v15, v15

    div-float v10, v14, v15

    .line 4148
    .local v10, scaleY:F
    move-object/from16 v0, p2

    iget v14, v0, Landroid/graphics/Rect;->left:I

    iget v15, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v14, v15

    int-to-float v4, v14

    .line 4149
    .local v4, distX:F
    move-object/from16 v0, p2

    iget v14, v0, Landroid/graphics/Rect;->top:I

    iget v15, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v14, v15

    int-to-float v5, v14

    .line 4151
    .local v5, distY:F
    const/4 v14, 0x4

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    .line 4153
    const/4 v8, 0x0

    .line 4154
    .local v8, sa:Landroid/view/animation/ScaleAnimation;
    const/4 v11, 0x0

    .line 4155
    .local v11, ta:Landroid/view/animation/TranslateAnimation;
    const/4 v1, 0x0

    .line 4157
    .local v1, aa:Landroid/view/animation/AlphaAnimation;
    new-instance v8, Landroid/view/animation/ScaleAnimation;

    .end local v8           #sa:Landroid/view/animation/ScaleAnimation;
    const/high16 v14, 0x3f80

    const/high16 v15, 0x3f80

    invoke-direct {v8, v14, v9, v15, v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 4158
    .restart local v8       #sa:Landroid/view/animation/ScaleAnimation;
    new-instance v11, Landroid/view/animation/TranslateAnimation;

    .end local v11           #ta:Landroid/view/animation/TranslateAnimation;
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct {v11, v14, v4, v15, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 4159
    .restart local v11       #ta:Landroid/view/animation/TranslateAnimation;
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    .end local v1           #aa:Landroid/view/animation/AlphaAnimation;
    const/high16 v14, 0x3f80

    const/high16 v15, 0x3e80

    invoke-direct {v1, v14, v15}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 4161
    .restart local v1       #aa:Landroid/view/animation/AlphaAnimation;
    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v14, 0x1

    invoke-direct {v3, v14}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 4162
    .local v3, aniSet:Landroid/view/animation/AnimationSet;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/PostviewActivity;->timeMachineAnimationEndListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v3, v14}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 4163
    invoke-virtual {v3, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 4164
    invoke-virtual {v3, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 4165
    invoke-virtual {v3, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 4166
    const-wide/16 v14, 0x15e

    invoke-virtual {v3, v14, v15}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 4167
    new-instance v14, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v14}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v3, v14}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 4168
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4172
    .end local v1           #aa:Landroid/view/animation/AlphaAnimation;
    .end local v2           #aniParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3           #aniSet:Landroid/view/animation/AnimationSet;
    .end local v4           #distX:F
    .end local v5           #distY:F
    .end local v7           #postviewLayout:Landroid/view/View;
    .end local v8           #sa:Landroid/view/animation/ScaleAnimation;
    .end local v9           #scaleX:F
    .end local v10           #scaleY:F
    .end local v11           #ta:Landroid/view/animation/TranslateAnimation;
    .end local v12           #targetHeight:I
    .end local v13           #targetWidth:I
    :goto_0
    return-void

    .line 4169
    :catch_0
    move-exception v6

    .line 4170
    .local v6, e:Ljava/lang/NullPointerException;
    const-string v14, "CameraApp"

    const-string v15, "NullPointerException : "

    invoke-static {v14, v15, v6}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public startPostviewMenuItems(ILjava/lang/String;Ljava/lang/String;)V
    .locals 14
    .parameter "menuType"
    .parameter "menuItems"
    .parameter "menuExtendItems"

    .prologue
    .line 1877
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1879
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 1880
    .local v8, packageManager:Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 1881
    .local v1, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v7, 0x0

    .line 1883
    .local v7, numActivities:I
    if-nez p2, :cond_1

    .line 1884
    const v12, 0x7f0b0140

    invoke-virtual {p0, v12}, Lcom/lge/camera/PostviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/lge/camera/PostviewActivity;->toast(Ljava/lang/String;)V

    .line 1933
    :cond_0
    :goto_0
    return-void

    .line 1888
    :cond_1
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 1889
    .local v10, smartShare:Landroid/content/Intent;
    const/4 v9, 0x0

    .line 1890
    .local v9, ri:Landroid/content/pm/ResolveInfo;
    if-nez p1, :cond_2

    .line 1892
    const-string v12, "android.intent.action.LGSMARTSHARE"

    invoke-virtual {v10, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1893
    const/4 v12, 0x0

    invoke-virtual {v8, v10, v12}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v9

    .line 1895
    if-eqz v9, :cond_2

    invoke-virtual {v9, v8}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1896
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1897
    .local v11, uri:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iget-object v12, p0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1898
    const-string v12, "android.intent.extra.STREAM"

    invoke-virtual {v10, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1899
    const-string v12, "smartshare.type"

    const-string v13, "Camera"

    invoke-virtual {v10, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1900
    const-string v12, "smartshare.package.name"

    const-string v13, "com.lge.camera.CameraApp"

    invoke-virtual {v10, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1902
    invoke-direct {p0, p1, v10, v9}, Lcom/lge/camera/PostviewActivity;->startResolvedActivity(ILandroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    goto :goto_0

    .line 1907
    .end local v11           #uri:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_2
    invoke-direct {p0, p1, v4}, Lcom/lge/camera/PostviewActivity;->readMenuActivity(ILandroid/content/Intent;)Ljava/util/List;

    move-result-object v1

    .line 1908
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_0

    .line 1912
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    .line 1913
    const/4 v6, 0x0

    .line 1914
    .local v6, labelImage:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1916
    .local v5, labelExtendImage:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v7, :cond_0

    .line 1917
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 1918
    .local v3, infoImage:Landroid/content/pm/ResolveInfo;
    invoke-virtual {v3, v8}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1919
    iget-object v12, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v12, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1920
    if-eqz p3, :cond_3

    .line 1921
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1922
    invoke-direct {p0, p1, v4, v3}, Lcom/lge/camera/PostviewActivity;->startResolvedActivity(ILandroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    goto/16 :goto_0

    .line 1926
    :cond_3
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1927
    invoke-direct {p0, p1, v4, v3}, Lcom/lge/camera/PostviewActivity;->startResolvedActivity(ILandroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    goto/16 :goto_0

    .line 1916
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public startTimeMachineShotAnimation()V
    .locals 8

    .prologue
    .line 3896
    const-string v0, "CameraApp"

    const-string v2, "startAnimation-start"

    invoke-static {v0, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3899
    :try_start_0
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 3953
    :cond_0
    :goto_0
    return-void

    .line 3902
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/lge/camera/PostviewActivity;->mTimeMachineShotCount:I

    .line 3903
    iget v0, p0, Lcom/lge/camera/PostviewActivity;->mTimeMachineShotCount:I

    if-eqz v0, :cond_0

    .line 3906
    iget v0, p0, Lcom/lge/camera/PostviewActivity;->mTimeMachineShotCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lge/camera/PostviewActivity;->mTimerCount:I

    .line 3907
    iget v0, p0, Lcom/lge/camera/PostviewActivity;->mTimerCount:I

    if-gez v0, :cond_2

    .line 3908
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/PostviewActivity;->mTimerCount:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3950
    :catch_0
    move-exception v7

    .line 3951
    .local v7, e:Ljava/lang/NullPointerException;
    const-string v0, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NullPointerException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3911
    .end local v7           #e:Ljava/lang/NullPointerException;
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_3

    .line 3912
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3913
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/PostviewActivity;->mDialog:Landroid/app/Dialog;

    .line 3914
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/camera/PostviewActivity;->mDialogId:I

    .line 3915
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/camera/PostviewActivity;->setPostviewMenuState(I)V

    .line 3917
    :cond_3
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->setGalleryThumbnailRect()V

    .line 3918
    const/4 v0, -0x1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/lge/camera/PostviewActivity;->refreshContinuousGallery(IZ)V

    .line 3920
    sget v0, Lcom/lge/camera/properties/CameraConstants;->TIME_MACHINE_EFFECT:I

    if-nez v0, :cond_5

    .line 3921
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->anim:Landroid/view/animation/Animation;

    if-nez v0, :cond_4

    .line 3922
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f04000c

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/PostviewActivity;->anim:Landroid/view/animation/Animation;

    .line 3923
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->anim:Landroid/view/animation/Animation;

    if-nez v0, :cond_4

    .line 3924
    const-string v0, "CameraApp"

    const-string v2, "ShowTimeMachineEffect startAnimation() anim = null"

    invoke-static {v0, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3928
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->anim:Landroid/view/animation/Animation;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 3929
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->refreshLoadCapturedImages()Z

    .line 3931
    :cond_5
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lge/camera/PostviewActivity;->setClockAnimationView(Z)V

    .line 3932
    const/16 v6, 0xa28

    .line 3933
    .local v6, clockInterval:I
    invoke-virtual {p0, v6}, Lcom/lge/camera/PostviewActivity;->timeMachineClockMinuteAnimation(I)V

    .line 3934
    invoke-virtual {p0, v6}, Lcom/lge/camera/PostviewActivity;->timeMachineClockSecAnimation(I)V

    .line 3936
    new-instance v0, Ljava/util/Timer;

    const-string v2, "TimeMachine"

    invoke-direct {v0, v2}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/camera/PostviewActivity;->mAnimationTimer:Ljava/util/Timer;

    .line 3937
    new-instance v1, Lcom/lge/camera/PostviewActivity$35;

    invoke-direct {v1, p0}, Lcom/lge/camera/PostviewActivity$35;-><init>(Lcom/lge/camera/PostviewActivity;)V

    .line 3948
    .local v1, taskTimeMachine:Ljava/util/TimerTask;
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mAnimationTimer:Ljava/util/Timer;

    const-wide/16 v2, 0x64

    const-wide/16 v4, 0x1f4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public stopTimeMachineAnimation()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 4063
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->isTimeMachineShot()Z

    move-result v4

    if-nez v4, :cond_0

    .line 4064
    const-string v4, "CameraApp"

    const-string v5, "Shot mode is not a Time machine."

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4104
    :goto_0
    return-void

    .line 4068
    :cond_0
    iget-object v4, p0, Lcom/lge/camera/PostviewActivity;->mAnimationTimer:Ljava/util/Timer;

    if-eqz v4, :cond_7

    .line 4069
    iget-object v4, p0, Lcom/lge/camera/PostviewActivity;->mAnimationTimer:Ljava/util/Timer;

    if-eqz v4, :cond_1

    .line 4070
    iget-object v4, p0, Lcom/lge/camera/PostviewActivity;->mAnimationTimer:Ljava/util/Timer;

    invoke-virtual {v4}, Ljava/util/Timer;->purge()I

    .line 4071
    iget-object v4, p0, Lcom/lge/camera/PostviewActivity;->mAnimationTimer:Ljava/util/Timer;

    invoke-virtual {v4}, Ljava/util/Timer;->cancel()V

    .line 4072
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/lge/camera/PostviewActivity;->mAnimationTimer:Ljava/util/Timer;

    .line 4073
    invoke-virtual {p0, v6}, Lcom/lge/camera/PostviewActivity;->setSelectedIndex(I)V

    .line 4075
    :cond_1
    const v4, 0x7f090034

    invoke-virtual {p0, v4}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 4076
    .local v1, clockMinuteView:Landroid/widget/ImageView;
    if-eqz v1, :cond_2

    .line 4077
    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 4079
    :cond_2
    const v4, 0x7f090035

    invoke-virtual {p0, v4}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 4080
    .local v2, clockSecView:Landroid/widget/ImageView;
    if-eqz v2, :cond_3

    .line 4081
    invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 4083
    :cond_3
    invoke-direct {p0, v6}, Lcom/lge/camera/PostviewActivity;->setClockAnimationView(Z)V

    .line 4084
    const v4, 0x7f090031

    invoke-virtual {p0, v4}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 4085
    .local v0, aniView:Landroid/widget/ImageView;
    if-eqz v0, :cond_4

    .line 4086
    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 4087
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4088
    invoke-virtual {p0, v0}, Lcom/lge/camera/PostviewActivity;->setImageViewClear(Landroid/widget/ImageView;)V

    .line 4091
    :cond_4
    const v4, 0x7f090030

    invoke-virtual {p0, v4}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 4092
    .local v3, imageView:Landroid/view/View;
    if-eqz v3, :cond_5

    .line 4093
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 4096
    :cond_5
    iget-object v4, p0, Lcom/lge/camera/PostviewActivity;->mImageAdapter:Lcom/lge/camera/postview/ContShotThumbAdapter;

    if-eqz v4, :cond_6

    .line 4097
    iget-object v4, p0, Lcom/lge/camera/PostviewActivity;->mImageAdapter:Lcom/lge/camera/postview/ContShotThumbAdapter;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/lge/camera/postview/ContShotThumbAdapter;->setThumbnailVisible(Z)V

    .line 4099
    :cond_6
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getSelectedIndex()I

    move-result v4

    invoke-virtual {p0, v4, v6}, Lcom/lge/camera/PostviewActivity;->refreshContinuousGallery(IZ)V

    .line 4100
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->refreshLoadCapturedImages()Z

    .line 4102
    .end local v0           #aniView:Landroid/widget/ImageView;
    .end local v1           #clockMinuteView:Landroid/widget/ImageView;
    .end local v2           #clockSecView:Landroid/widget/ImageView;
    .end local v3           #imageView:Landroid/view/View;
    :cond_7
    iput v6, p0, Lcom/lge/camera/PostviewActivity;->mTimerCount:I

    .line 4103
    iput v6, p0, Lcom/lge/camera/PostviewActivity;->mTimeMachineShotCount:I

    goto :goto_0
.end method

.method public timeMachineClockMinuteAnimation(I)V
    .locals 11
    .parameter "clockInterval"

    .prologue
    .line 4205
    iget v1, p0, Lcom/lge/camera/PostviewActivity;->mTimerCount:I

    if-gez v1, :cond_1

    .line 4232
    :cond_0
    :goto_0
    return-void

    .line 4209
    :cond_1
    const/4 v9, 0x0

    .line 4210
    .local v9, fromDegree:I
    const/16 v10, -0x1e

    .line 4212
    .local v10, toDegree:I
    :try_start_0
    new-instance v0, Landroid/view/animation/RotateAnimation;

    int-to-float v1, v9

    int-to-float v2, v10

    const/4 v3, 0x1

    const/high16 v4, 0x3f00

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 4215
    .local v0, ra:Landroid/view/animation/RotateAnimation;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 4216
    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 4217
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 4218
    const v1, 0x7f090034

    invoke-virtual {p0, v1}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 4219
    .local v7, clockView:Landroid/widget/ImageView;
    if-eqz v7, :cond_0

    .line 4220
    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 4222
    .end local v0           #ra:Landroid/view/animation/RotateAnimation;
    .end local v7           #clockView:Landroid/widget/ImageView;
    :catch_0
    move-exception v8

    .line 4223
    .local v8, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "CameraApp"

    const-string v2, "ArrayIndexOutOfBoundsException!"

    invoke-static {v1, v2, v8}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4224
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->stopTimeMachineAnimation()V

    goto :goto_0

    .line 4225
    .end local v8           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_1
    move-exception v8

    .line 4226
    .local v8, e:Ljava/lang/NullPointerException;
    const-string v1, "CameraApp"

    const-string v2, "NullPointerException!"

    invoke-static {v1, v2, v8}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4227
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->stopTimeMachineAnimation()V

    goto :goto_0

    .line 4228
    .end local v8           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v8

    .line 4229
    .local v8, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v1, "CameraApp"

    const-string v2, "IndexOutOfBoundsException!"

    invoke-static {v1, v2, v8}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4230
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->stopTimeMachineAnimation()V

    goto :goto_0
.end method

.method public timeMachineClockSecAnimation(I)V
    .locals 11
    .parameter "clockInterval"

    .prologue
    .line 4235
    iget v1, p0, Lcom/lge/camera/PostviewActivity;->mTimerCount:I

    if-gez v1, :cond_1

    .line 4261
    :cond_0
    :goto_0
    return-void

    .line 4239
    :cond_1
    const/4 v9, 0x0

    .line 4240
    .local v9, fromDegree:I
    const/16 v10, -0x168

    .line 4242
    .local v10, toDegree:I
    :try_start_0
    new-instance v0, Landroid/view/animation/RotateAnimation;

    int-to-float v1, v9

    int-to-float v2, v10

    const/4 v3, 0x1

    const/high16 v4, 0x3f00

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 4245
    .local v0, ra:Landroid/view/animation/RotateAnimation;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 4246
    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 4247
    const v1, 0x7f090035

    invoke-virtual {p0, v1}, Lcom/lge/camera/PostviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 4248
    .local v7, clockView:Landroid/widget/ImageView;
    if-eqz v7, :cond_0

    .line 4249
    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 4251
    .end local v0           #ra:Landroid/view/animation/RotateAnimation;
    .end local v7           #clockView:Landroid/widget/ImageView;
    :catch_0
    move-exception v8

    .line 4252
    .local v8, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "CameraApp"

    const-string v2, "ArrayIndexOutOfBoundsException!"

    invoke-static {v1, v2, v8}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4253
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->stopTimeMachineAnimation()V

    goto :goto_0

    .line 4254
    .end local v8           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_1
    move-exception v8

    .line 4255
    .local v8, e:Ljava/lang/NullPointerException;
    const-string v1, "CameraApp"

    const-string v2, "NullPointerException!"

    invoke-static {v1, v2, v8}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4256
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->stopTimeMachineAnimation()V

    goto :goto_0

    .line 4257
    .end local v8           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v8

    .line 4258
    .local v8, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v1, "CameraApp"

    const-string v2, "IndexOutOfBoundsException!"

    invoke-static {v1, v2, v8}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4259
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->stopTimeMachineAnimation()V

    goto :goto_0
.end method

.method public timeMachineDeleteImagesWhenFinish(Z)V
    .locals 6
    .parameter "useSelectIndex"

    .prologue
    const/4 v5, 0x1

    .line 403
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->isTimeMachineShot()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/lge/camera/PostviewActivity;->mTimeMachineDeleteDone:Z

    if-nez v2, :cond_1

    .line 404
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MenuState() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getPostviewMenuState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", selected Index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getSelectedIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getPostviewMenuState()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getPostviewMenuState()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 408
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v5, :cond_1

    .line 409
    iget-object v2, p0, Lcom/lge/camera/PostviewActivity;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 410
    .local v1, uriListSize:I
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getSelectedIndexs()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 411
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getSelectedIndex()I

    move-result v0

    .line 412
    .local v0, selectIndex:I
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getSelectedIndexs()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    const/4 v2, 0x0

    invoke-virtual {p0, v5, v2}, Lcom/lge/camera/PostviewActivity;->deleteSelectedImages(ZZ)I

    .line 414
    iput-boolean v5, p0, Lcom/lge/camera/PostviewActivity;->mTimeMachineDeleteDone:Z

    .line 418
    .end local v0           #selectIndex:I
    .end local v1           #uriListSize:I
    :cond_1
    return-void

    .line 411
    .restart local v1       #uriListSize:I
    :cond_2
    add-int/lit8 v0, v1, -0x1

    goto :goto_0
.end method

.method public toast(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 3789
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mToast:Lcom/lge/camera/postview/PostViewToast;

    if-eqz v0, :cond_0

    .line 3790
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity;->mToast:Lcom/lge/camera/postview/PostViewToast;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/camera/postview/PostViewToast;->cancel(Z)V

    .line 3791
    new-instance v0, Lcom/lge/camera/PostviewActivity$34;

    invoke-direct {v0, p0, p1}, Lcom/lge/camera/PostviewActivity$34;-><init>(Lcom/lge/camera/PostviewActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lge/camera/PostviewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3799
    :cond_0
    return-void
.end method

.method public translateTimeMachineShotAnimation(Landroid/view/animation/Animation$AnimationListener;Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 4
    .parameter "listener"
    .parameter "targetRect"
    .parameter "aniView"

    .prologue
    .line 4120
    const-string v2, "CameraApp"

    const-string v3, "showTimeMachineShotAnimation-start"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4122
    :try_start_0
    invoke-virtual {p3}, Landroid/view/View;->clearAnimation()V

    .line 4123
    const/4 v2, 0x4

    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4125
    invoke-virtual {p0}, Lcom/lge/camera/PostviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f04000d

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 4126
    .local v1, translateTimeMachineAnimation:Landroid/view/animation/Animation;
    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 4127
    iget-object v2, p0, Lcom/lge/camera/PostviewActivity;->timeMachineAnimationEndListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 4128
    invoke-virtual {p3, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4132
    .end local v1           #translateTimeMachineAnimation:Landroid/view/animation/Animation;
    :goto_0
    return-void

    .line 4129
    :catch_0
    move-exception v0

    .line 4130
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "CameraApp"

    const-string v3, "NullPointerException : "

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public updateReviewThumbnailButton(I)V
    .locals 3
    .parameter "delay"

    .prologue
    .line 2286
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateReviewThumbnailButton : setThumbImage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lge/camera/PostviewActivity;->setThumbImage:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2288
    iget-boolean v0, p0, Lcom/lge/camera/PostviewActivity;->mIsAttachIntent:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/lge/camera/PostviewActivity;->setThumbImage:Z

    if-eqz v0, :cond_1

    .line 2289
    :cond_0
    invoke-direct {p0}, Lcom/lge/camera/PostviewActivity;->updateLoadedThumbnailButton()V

    .line 2322
    :goto_0
    return-void

    .line 2293
    :cond_1
    new-instance v0, Lcom/lge/camera/PostviewActivity$21;

    invoke-direct {v0, p0}, Lcom/lge/camera/PostviewActivity$21;-><init>(Lcom/lge/camera/PostviewActivity;)V

    invoke-virtual {p0, v0}, Lcom/lge/camera/PostviewActivity;->postOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
