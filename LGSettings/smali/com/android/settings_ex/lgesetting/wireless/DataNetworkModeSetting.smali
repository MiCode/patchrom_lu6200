.class public Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;
.super Landroid/app/Activity;
.source "DataNetworkModeSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger;,
        Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$Finisher;
    }
.end annotation


# static fields
.field private static final ENABLE_POPUP_WHEN_BOOT:Z

.field private static final HAVE_MODE_DIALOG_CANCEL_BUTTON:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private ContentQueryMapMobileData:Landroid/content/ContentQueryMap;

.field private NoClick:Z

.field private mFinisher:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$Finisher;

.field private mIsBootable:Z

.field private mIsCancelable:Z

.field private mModeDialogCancelable:Z

.field private mModeManager:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;

.field private mOnSearchKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private mPendingDialogTrigger:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger;

.field private mStatusBar:Landroid/app/StatusBarManager;

.field private mValueDisplay:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;

.field private mValueSelected:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;

.field private mViewDelegate:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;

.field private userInput:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->TAG:Ljava/lang/String;

    .line 51
    sget-boolean v0, Lcom/android/settings_ex/lgesetting/Utils;->COUNTRY_OPERATOR_LGUPLUS:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/settings_ex/lgesetting/Utils;->COUNTRY_OPERATOR_KT:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->HAVE_MODE_DIALOG_CANCEL_BUTTON:Z

    .line 58
    sget-boolean v0, Lcom/android/settings_ex/lgesetting/Utils;->COUNTRY_OPERATOR_SKT:Z

    sput-boolean v0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->ENABLE_POPUP_WHEN_BOOT:Z

    return-void

    .line 51
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 74
    iput-boolean v3, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->userInput:Z

    .line 75
    iput-boolean v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->NoClick:Z

    .line 77
    new-instance v0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$Finisher;

    invoke-direct {v0, p0, v2}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$Finisher;-><init>(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$1;)V

    iput-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mFinisher:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$Finisher;

    .line 78
    new-instance v0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger;

    invoke-direct {v0, p0, v2}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger;-><init>(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$1;)V

    iput-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mPendingDialogTrigger:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger;

    .line 81
    iput-boolean v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mModeDialogCancelable:Z

    .line 85
    iput-object v2, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mStatusBar:Landroid/app/StatusBarManager;

    .line 88
    new-instance v0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;

    invoke-direct {v0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mValueSelected:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;

    .line 89
    new-instance v0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;

    invoke-direct {v0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mValueDisplay:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;

    .line 91
    new-instance v0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$1;-><init>(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;)V

    iput-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mOnSearchKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 107
    iput-boolean v3, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mIsBootable:Z

    .line 108
    iput-boolean v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mIsCancelable:Z

    .line 553
    return-void
.end method

.method private SetMobileDataObserver()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 635
    invoke-virtual {p0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?)"

    new-array v4, v9, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "mobile_data"

    aput-object v8, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 640
    .local v6, MobileDataCursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 641
    sget-object v0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->TAG:Ljava/lang/String;

    const-string v1, "SetMobileDataObserver create"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    new-instance v0, Landroid/content/ContentQueryMap;

    const-string v1, "name"

    invoke-direct {v0, v6, v1, v9, v2}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->ContentQueryMapMobileData:Landroid/content/ContentQueryMap;

    .line 644
    new-instance v7, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$8;

    invoke-direct {v7, p0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$8;-><init>(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;)V

    .line 661
    .local v7, MobileDataObserver:Ljava/util/Observer;
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->ContentQueryMapMobileData:Landroid/content/ContentQueryMap;

    invoke-virtual {v0, v7}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 663
    .end local v7           #MobileDataObserver:Ljava/util/Observer;
    :cond_0
    return-void
.end method

.method static synthetic access$1100()Z
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->ENABLE_POPUP_WHEN_BOOT:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->NoClick:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->userInput:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->userInput:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;)Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mViewDelegate:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;)Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mModeManager:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mIsCancelable:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;)Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mValueSelected:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;)Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mValueSelected:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;)Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mValueDisplay:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;)Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mValueDisplay:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;

    return-object p1
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private shouldConsumeKey(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "aKeyCode"
    .parameter "aKeyEvent"

    .prologue
    .line 484
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x54

    if-ne p1, v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mModeDialogCancelable:Z

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 486
    const/4 v0, 0x1

    .line 488
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 177
    sget-object v0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->TAG:Ljava/lang/String;

    const-string v1, "onConfigurationChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 179
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 117
    sget-object v3, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->TAG:Ljava/lang/String;

    const-string v5, "onCreate()"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 121
    const-string v3, "statusbar"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    iput-object v3, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mStatusBar:Landroid/app/StatusBarManager;

    .line 125
    invoke-virtual {p0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v5, "cancelable"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, cancelable:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 127
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string v5, "TRUE"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mModeDialogCancelable:Z

    .line 131
    :cond_0
    iget-boolean v3, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mModeDialogCancelable:Z

    if-nez v3, :cond_1

    .line 132
    sget-object v3, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->TAG:Ljava/lang/String;

    const-string v5, ">> Not cancelable"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v5, "preferred_mode"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, preferredMode:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 145
    new-instance v3, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mModeManager:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;

    .line 146
    sget-object v3, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">> mode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mModeManager:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;

    invoke-virtual {v6, v4}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;->getMode(Z)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :goto_1
    iget-boolean v3, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mIsBootable:Z

    if-eqz v3, :cond_2

    .line 155
    iget-object v3, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mModeManager:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;

    iput v4, v3, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;->mMode:I

    .line 159
    invoke-virtual {p0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 160
    .local v0, attrs:Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x100

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->extend:I

    .line 161
    invoke-virtual {p0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 165
    .end local v0           #attrs:Landroid/view/WindowManager$LayoutParams;
    :cond_2
    new-instance v3, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegate;

    iget-object v4, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mModeManager:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;

    invoke-direct {v3, p0, v4}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegate;-><init>(Landroid/app/Activity;Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;)V

    iput-object v3, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mViewDelegate:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;

    .line 169
    iget-boolean v3, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mModeDialogCancelable:Z

    if-eqz v3, :cond_3

    .line 170
    invoke-direct {p0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->SetMobileDataObserver()V

    .line 174
    :cond_3
    return-void

    .line 127
    .end local v2           #preferredMode:Ljava/lang/String;
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 148
    .restart local v2       #preferredMode:Ljava/lang/String;
    :cond_5
    sget-object v3, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">> preferredMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance v3, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v3, p0, v5}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mModeManager:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 12
    .parameter "id"

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x2

    const/high16 v8, 0x1

    .line 291
    const/4 v2, 0x0

    .line 292
    .local v2, dialog:Landroid/app/Dialog;
    move-object v6, p0

    .line 294
    .local v6, onKeyListener:Landroid/content/DialogInterface$OnKeyListener;
    const/4 v7, 0x1

    if-ne p1, v7, :cond_3

    .line 295
    invoke-virtual {p0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f0400c7

    invoke-virtual {v7, v8, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 296
    .local v3, dialogView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f0400c5

    invoke-virtual {v7, v8, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 297
    .local v4, dialogViewTitle:Landroid/view/View;
    iget-boolean v7, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mModeDialogCancelable:Z

    if-eqz v7, :cond_0

    .line 308
    :cond_0
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v4}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mFinisher:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$Finisher;

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f08044e

    new-instance v9, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$3;

    invoke-direct {v9, p0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$3;-><init>(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 324
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    sget-boolean v7, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->HAVE_MODE_DIALOG_CANCEL_BUTTON:Z

    if-eqz v7, :cond_1

    iget-boolean v7, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mModeDialogCancelable:Z

    if-eqz v7, :cond_1

    .line 325
    const v7, 0x7f08081d

    iget-object v8, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mFinisher:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$Finisher;

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 327
    :cond_1
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 332
    iget-object v7, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mPendingDialogTrigger:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$PendingDialogTrigger;

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 334
    iget-object v7, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mViewDelegate:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;

    invoke-virtual {v7}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;->createAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 335
    .local v0, adapter:Landroid/widget/ListAdapter;
    const v7, 0x102000a

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    .line 336
    .local v5, list:Landroid/widget/ListView;
    invoke-virtual {v5, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 339
    iget-object v7, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mViewDelegate:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;

    invoke-virtual {v7}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;->getSelectedMode()Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mValueDisplay:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;

    .line 340
    iget-object v7, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mValueDisplay:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;

    iput-object v7, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mValueSelected:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;

    .line 341
    sget-object v7, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initial Selected mode ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mValueSelected:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;

    iget v9, v9, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;->mMode:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " option ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mValueSelected:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;

    iget v9, v9, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;->mOption:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    sget-object v7, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initial Display mode ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mValueDisplay:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;

    iget v9, v9, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;->mMode:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " option ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mValueDisplay:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;

    iget v9, v9, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;->mOption:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-virtual {v5, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 347
    new-instance v7, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$4;

    invoke-direct {v7, p0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$4;-><init>(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;)V

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 355
    iget-boolean v7, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mIsCancelable:Z

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 356
    iget-boolean v7, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mIsCancelable:Z

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 452
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    .end local v3           #dialogView:Landroid/view/View;
    .end local v4           #dialogViewTitle:Landroid/view/View;
    .end local v5           #list:Landroid/widget/ListView;
    :goto_0
    if-eqz v2, :cond_2

    :cond_2
    move-object v7, v2

    .line 480
    :goto_1
    return-object v7

    .line 358
    :cond_3
    const/4 v7, 0x2

    if-ne p1, v7, :cond_4

    .line 360
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x1080027

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f08081e

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0807fc

    iget-object v9, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mFinisher:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$Finisher;

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mFinisher:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$Finisher;

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 367
    iget-object v7, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mFinisher:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$Finisher;

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 369
    :cond_4
    and-int v7, p1, v9

    if-ne v7, v9, :cond_5

    .line 370
    iget-object v7, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mViewDelegate:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;

    const v8, -0x20001

    and-int/2addr v8, p1

    iget-object v9, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mFinisher:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$Finisher;

    iget-object v10, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mFinisher:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$Finisher;

    iget-object v11, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mFinisher:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$Finisher;

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;->createPostDescriptionDialog(ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v2

    .line 371
    iget-object v7, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mFinisher:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$Finisher;

    invoke-virtual {v2, v7}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 373
    :cond_5
    and-int v7, p1, v8

    if-ne v7, v8, :cond_6

    .line 375
    iget-object v7, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mViewDelegate:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;

    const v8, -0x10001

    and-int/2addr v8, p1

    new-instance v9, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$5;

    invoke-direct {v9, p0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$5;-><init>(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;)V

    new-instance v10, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$6;

    invoke-direct {v10, p0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$6;-><init>(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;)V

    new-instance v11, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$7;

    invoke-direct {v11, p0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$7;-><init>(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;)V

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;->createPreDescriptionDialog(ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v2

    goto :goto_0

    .line 427
    :cond_6
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v7

    goto :goto_1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "aView"
    .parameter "aPosition"
    .parameter "aId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, aAdapter:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/high16 v5, 0x1

    .line 511
    iget-object v2, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mViewDelegate:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;

    invoke-virtual {v2, p3}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;->getAdapterItem(I)Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;

    move-result-object v1

    .line 512
    .local v1, item:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->NoClick:Z

    .line 513
    invoke-virtual {v1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;->isCheckable()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;->isSelected()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {v1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 514
    :cond_1
    sget-object v2, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->TAG:Ljava/lang/String;

    const-string v3, "alread selected or disabled, exit"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :goto_0
    return-void

    .line 519
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mViewDelegate:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;

    invoke-virtual {v2, v1, v5}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;->getPreDescriptionDialogId(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;I)I

    move-result v0

    .line 520
    .local v0, id:I
    sget-object v2, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onItemClick  id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "aPosition = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    if-eq v0, v5, :cond_3

    .line 523
    iget-object v2, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mViewDelegate:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;

    invoke-virtual {v2, p3}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;->updateViewOnItemClick(I)Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mValueDisplay:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;

    .line 524
    sget-object v2, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onItemClick SelectedMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mValueSelected:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;

    iget v4, v4, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;->mMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " SelectedOption = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mValueSelected:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;

    iget v4, v4, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;->mOption:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    sget-object v2, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onItemClick DisplayedMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mValueDisplay:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;

    iget v4, v4, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;->mMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " DisplayedOption = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mValueDisplay:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;

    iget v4, v4, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;->mOption:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->showDialog(I)V

    goto/16 :goto_0

    .line 530
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mViewDelegate:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;

    invoke-virtual {v2, p3}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;->updateViewOnItemClick(I)Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mValueDisplay:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;

    .line 531
    iget-object v2, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mValueDisplay:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;

    iput-object v2, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mValueSelected:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;

    goto/16 :goto_0
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "aDialog"
    .parameter "aKeyCode"
    .parameter "aKeyEvent"

    .prologue
    .line 499
    invoke-direct {p0, p2, p3}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->shouldConsumeKey(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    const/4 v0, 0x1

    .line 502
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "aKeyCode"
    .parameter "aKeyEvent"

    .prologue
    .line 492
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->shouldConsumeKey(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    const/4 v0, 0x1

    .line 495
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 253
    sget-object v0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->TAG:Ljava/lang/String;

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-boolean v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mIsCancelable:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mStatusBar:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mStatusBar:Landroid/app/StatusBarManager;

    invoke-virtual {v0, v2}, Landroid/app/StatusBarManager;->disable(I)V

    .line 260
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 266
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mStatusBar:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mStatusBar:Landroid/app/StatusBarManager;

    invoke-virtual {v0, v2}, Landroid/app/StatusBarManager;->disable(I)V

    .line 268
    sget-object v0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->TAG:Ljava/lang/String;

    const-string v1, "StatusBarManager.DISABLE_NONE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mIsBootable:Z

    if-nez v0, :cond_2

    .line 278
    iget-boolean v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mModeDialogCancelable:Z

    if-eqz v0, :cond_2

    .line 280
    invoke-virtual {p0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->finish()V

    .line 287
    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/high16 v4, 0x1

    const/4 v3, 0x1

    .line 190
    sget-object v0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->TAG:Ljava/lang/String;

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 194
    iget-boolean v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mIsCancelable:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mStatusBar:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mStatusBar:Landroid/app/StatusBarManager;

    invoke-virtual {v0, v4}, Landroid/app/StatusBarManager;->disable(I)V

    .line 198
    :cond_0
    sget-boolean v0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->ENABLE_POPUP_WHEN_BOOT:Z

    if-eqz v0, :cond_1

    .line 199
    sget-object v0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume() ENABLE_POPUP_WHEN_BOOT ==> SKT, NoClick = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->NoClick:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-boolean v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->NoClick:Z

    if-eqz v0, :cond_1

    .line 201
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->removeDialog(I)V

    .line 202
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->showDialog(I)V

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mStatusBar:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_2

    .line 246
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mStatusBar:Landroid/app/StatusBarManager;

    invoke-virtual {v0, v4}, Landroid/app/StatusBarManager;->disable(I)V

    .line 247
    sget-object v0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->TAG:Ljava/lang/String;

    const-string v1, "StatusBarManager.DISABLE_EXPAND"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_2
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 182
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 183
    sget-boolean v0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->ENABLE_POPUP_WHEN_BOOT:Z

    if-nez v0, :cond_0

    .line 184
    sget-object v0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->TAG:Ljava/lang/String;

    const-string v1, "onStart() showDialog ==> LGT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->showDialog(I)V

    .line 187
    :cond_0
    return-void
.end method

.method protected setIsBootable()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mIsBootable:Z

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mIsCancelable:Z

    .line 113
    return-void
.end method
