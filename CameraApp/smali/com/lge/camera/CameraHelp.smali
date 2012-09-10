.class public Lcom/lge/camera/CameraHelp;
.super Landroid/app/Activity;
.source "CameraHelp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/CameraHelp$HelpMenuMediaBroadCastReceiver;,
        Lcom/lge/camera/CameraHelp$HelpHandler;
    }
.end annotation


# static fields
.field private static final MSG_SHOW_ITEM:I


# instance fields
.field private delayTimeToMoveSelectedItem:I

.field private isScrolled:Z

.field private mCameraId:I

.field private final mHandler:Landroid/os/Handler;

.field private mHelpAdapter:Lcom/lge/camera/adapter/HelpItemAdapter;

.field private mHelpListView:Landroid/widget/ListView;

.field private mHelpMode:I

.field private mKeyString:Ljava/lang/String;

.field receiver:Lcom/lge/camera/CameraHelp$HelpMenuMediaBroadCastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    new-instance v0, Lcom/lge/camera/CameraHelp$HelpHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lge/camera/CameraHelp$HelpHandler;-><init>(Lcom/lge/camera/CameraHelp;Lcom/lge/camera/CameraHelp$1;)V

    iput-object v0, p0, Lcom/lge/camera/CameraHelp;->mHandler:Landroid/os/Handler;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/CameraHelp;->isScrolled:Z

    .line 49
    const/16 v0, 0x12c

    iput v0, p0, Lcom/lge/camera/CameraHelp;->delayTimeToMoveSelectedItem:I

    .line 31
    return-void
.end method

.method static synthetic access$102(Lcom/lge/camera/CameraHelp;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/lge/camera/CameraHelp;->isScrolled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/lge/camera/CameraHelp;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lge/camera/CameraHelp;->mKeyString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/camera/CameraHelp;)Lcom/lge/camera/adapter/HelpItemAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lge/camera/CameraHelp;->mHelpAdapter:Lcom/lge/camera/adapter/HelpItemAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/camera/CameraHelp;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lge/camera/CameraHelp;->mHelpListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private registerMediaReceiver(Lcom/lge/camera/CameraHelp$HelpMenuMediaBroadCastReceiver;)V
    .locals 2
    .parameter "receiver"

    .prologue
    .line 160
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 161
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    const-string v1, "android.intent.action.MEDIA_NOFS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    const-string v1, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/CameraHelp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 176
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .parameter "newConfig"

    .prologue
    .line 218
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Help onConfigurationChanged ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/lge/camera/CameraHelp;->isScrolled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-boolean v2, p0, Lcom/lge/camera/CameraHelp;->isScrolled:Z

    if-nez v2, :cond_0

    .line 220
    iget-object v2, p0, Lcom/lge/camera/CameraHelp;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    iget v4, p0, Lcom/lge/camera/CameraHelp;->delayTimeToMoveSelectedItem:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 222
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 223
    .local v0, outMetrics:Landroid/util/DisplayMetrics;
    const-string v2, "window"

    invoke-virtual {p0, v2}, Lcom/lge/camera/CameraHelp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 224
    .local v1, wm:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 225
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Lcom/lge/camera/properties/CameraConstants;->setLcdSize(II)V

    .line 227
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 228
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x0

    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 56
    .local v2, outMetrics:Landroid/util/DisplayMetrics;
    const-string v6, "window"

    invoke-virtual {p0, v6}, Lcom/lge/camera/CameraHelp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 57
    .local v5, wm:Landroid/view/WindowManager;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 58
    iget v6, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v7, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v6, v7}, Lcom/lge/camera/properties/CameraConstants;->setLcdSize(II)V

    .line 60
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/lge/camera/CameraHelp;->requestWindowFeature(I)Z

    .line 62
    new-instance v6, Lcom/lge/camera/CameraHelp$HelpMenuMediaBroadCastReceiver;

    invoke-direct {v6, p0, p0}, Lcom/lge/camera/CameraHelp$HelpMenuMediaBroadCastReceiver;-><init>(Lcom/lge/camera/CameraHelp;Landroid/app/Activity;)V

    iput-object v6, p0, Lcom/lge/camera/CameraHelp;->receiver:Lcom/lge/camera/CameraHelp$HelpMenuMediaBroadCastReceiver;

    .line 63
    iget-object v6, p0, Lcom/lge/camera/CameraHelp;->receiver:Lcom/lge/camera/CameraHelp$HelpMenuMediaBroadCastReceiver;

    invoke-direct {p0, v6}, Lcom/lge/camera/CameraHelp;->registerMediaReceiver(Lcom/lge/camera/CameraHelp$HelpMenuMediaBroadCastReceiver;)V

    .line 65
    invoke-virtual {p0}, Lcom/lge/camera/CameraHelp;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 67
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "helpMode"

    invoke-virtual {v1, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/lge/camera/CameraHelp;->mHelpMode:I

    .line 68
    const-string v6, "HelpIndex"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/lge/camera/CameraHelp;->mKeyString:Ljava/lang/String;

    .line 69
    const-string v6, "CameraId"

    invoke-virtual {v1, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/lge/camera/CameraHelp;->mCameraId:I

    .line 71
    const v6, 0x7f03000b

    invoke-virtual {p0, v6}, Lcom/lge/camera/CameraHelp;->setContentView(I)V

    .line 73
    new-instance v6, Lcom/lge/camera/adapter/HelpItemAdapter;

    invoke-virtual {p0}, Lcom/lge/camera/CameraHelp;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    iget v8, p0, Lcom/lge/camera/CameraHelp;->mHelpMode:I

    iget v9, p0, Lcom/lge/camera/CameraHelp;->mCameraId:I

    invoke-direct {v6, v7, v8, v9}, Lcom/lge/camera/adapter/HelpItemAdapter;-><init>(Landroid/content/Context;II)V

    iput-object v6, p0, Lcom/lge/camera/CameraHelp;->mHelpAdapter:Lcom/lge/camera/adapter/HelpItemAdapter;

    .line 74
    const v6, 0x7f09005c

    invoke-virtual {p0, v6}, Lcom/lge/camera/CameraHelp;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    iput-object v6, p0, Lcom/lge/camera/CameraHelp;->mHelpListView:Landroid/widget/ListView;

    .line 75
    iget-object v6, p0, Lcom/lge/camera/CameraHelp;->mHelpListView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/lge/camera/CameraHelp;->mHelpAdapter:Lcom/lge/camera/adapter/HelpItemAdapter;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 77
    iput-boolean v10, p0, Lcom/lge/camera/CameraHelp;->isScrolled:Z

    .line 78
    iget-object v6, p0, Lcom/lge/camera/CameraHelp;->mHelpListView:Landroid/widget/ListView;

    new-instance v7, Lcom/lge/camera/CameraHelp$1;

    invoke-direct {v7, p0}, Lcom/lge/camera/CameraHelp$1;-><init>(Lcom/lge/camera/CameraHelp;)V

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 92
    const/4 v4, 0x0

    .line 93
    .local v4, version_name:Ljava/lang/String;
    const/4 v3, 0x0

    .line 95
    .local v3, title_version:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/lge/camera/CameraHelp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {p0}, Lcom/lge/camera/CameraHelp;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget-object v4, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 96
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VersionName is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_0
    iget v6, p0, Lcom/lge/camera/CameraHelp;->mHelpMode:I

    if-nez v6, :cond_0

    .line 120
    const v6, 0x7f0b014b

    invoke-virtual {p0, v6}, Lcom/lge/camera/CameraHelp;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 125
    :goto_1
    const v6, 0x7f09005b

    invoke-virtual {p0, v6}, Lcom/lge/camera/CameraHelp;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v6, p0, Lcom/lge/camera/CameraHelp;->mHelpListView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/lge/camera/CameraHelp;->mHelpAdapter:Lcom/lge/camera/adapter/HelpItemAdapter;

    iget-object v8, p0, Lcom/lge/camera/CameraHelp;->mKeyString:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/lge/camera/adapter/HelpItemAdapter;->getItemPosition(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setSelection(I)V

    .line 129
    const/4 v6, 0x4

    invoke-virtual {p0, v6, v1}, Lcom/lge/camera/CameraHelp;->setResult(ILandroid/content/Intent;)V

    .line 130
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "CameraApp"

    const-string v7, "VersionName is not found, "

    invoke-static {v6, v7, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 122
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const v6, 0x7f0b019c

    invoke-virtual {p0, v6}, Lcom/lge/camera/CameraHelp;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 151
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 152
    iget-object v0, p0, Lcom/lge/camera/CameraHelp;->receiver:Lcom/lge/camera/CameraHelp$HelpMenuMediaBroadCastReceiver;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/lge/camera/CameraHelp;->receiver:Lcom/lge/camera/CameraHelp$HelpMenuMediaBroadCastReceiver;

    invoke-virtual {p0, v0}, Lcom/lge/camera/CameraHelp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/CameraHelp;->receiver:Lcom/lge/camera/CameraHelp$HelpMenuMediaBroadCastReceiver;

    .line 156
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 134
    const-string v0, "CameraApp"

    const-string v1, "onResume()-start "

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/lge/camera/util/Common;->setEnterCheckComplete(Z)V

    .line 137
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/lge/camera/util/Common;->checkEnterApplication(Landroid/app/Activity;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 139
    const-string v0, "CameraApp"

    const-string v1, "onResume()-end,  checkEnterApplication"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-static {p0}, Lcom/lge/camera/util/Common;->checkCameraOut(Landroid/app/Activity;)V

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 146
    const-string v0, "CameraApp"

    const-string v1, "onResume()-end "

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
