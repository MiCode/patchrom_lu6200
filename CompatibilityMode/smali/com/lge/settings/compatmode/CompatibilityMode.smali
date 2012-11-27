.class public Lcom/lge/settings/compatmode/CompatibilityMode;
.super Landroid/app/ListActivity;
.source "CompatibilityMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/settings/compatmode/CompatibilityMode$AppData;,
        Lcom/lge/settings/compatmode/CompatibilityMode$PackageListItemCache;,
        Lcom/lge/settings/compatmode/CompatibilityMode$PackageConfigListItemAdapter;
    }
.end annotation


# instance fields
.field private mActivityManager:Landroid/app/IActivityManager;

.field private mAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/settings/compatmode/CompatibilityMode$AppData;",
            ">;"
        }
    .end annotation
.end field

.field private mMatrixCursor:Landroid/database/MatrixCursor;

.field private final mPackageAdd:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 48
    iput-object v0, p0, Lcom/lge/settings/compatmode/CompatibilityMode;->mActivityManager:Landroid/app/IActivityManager;

    .line 49
    iput-object v0, p0, Lcom/lge/settings/compatmode/CompatibilityMode;->mMatrixCursor:Landroid/database/MatrixCursor;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/settings/compatmode/CompatibilityMode;->mAppList:Ljava/util/ArrayList;

    .line 253
    new-instance v0, Lcom/lge/settings/compatmode/CompatibilityMode$1;

    invoke-direct {v0, p0}, Lcom/lge/settings/compatmode/CompatibilityMode$1;-><init>(Lcom/lge/settings/compatmode/CompatibilityMode;)V

    iput-object v0, p0, Lcom/lge/settings/compatmode/CompatibilityMode;->mPackageAdd:Landroid/content/BroadcastReceiver;

    .line 268
    return-void
.end method

.method static synthetic access$000(Lcom/lge/settings/compatmode/CompatibilityMode;)Landroid/app/IActivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lge/settings/compatmode/CompatibilityMode;->mActivityManager:Landroid/app/IActivityManager;

    return-object v0
.end method

.method static synthetic access$002(Lcom/lge/settings/compatmode/CompatibilityMode;Landroid/app/IActivityManager;)Landroid/app/IActivityManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/lge/settings/compatmode/CompatibilityMode;->mActivityManager:Landroid/app/IActivityManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/lge/settings/compatmode/CompatibilityMode;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/lge/settings/compatmode/CompatibilityMode;->makingList()V

    return-void
.end method

.method private makingList()V
    .locals 24

    .prologue
    .line 67
    invoke-virtual/range {p0 .. p0}, Lcom/lge/settings/compatmode/CompatibilityMode;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 69
    .local v15, pm:Landroid/content/pm/PackageManager;
    new-instance v19, Landroid/database/MatrixCursor;

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "_id"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    const-string v22, "packagename"

    aput-object v22, v20, v21

    const/16 v21, 0x2

    const-string v22, "appname"

    aput-object v22, v20, v21

    invoke-direct/range {v19 .. v20}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/settings/compatmode/CompatibilityMode;->mMatrixCursor:Landroid/database/MatrixCursor;

    .line 71
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :try_start_1
    new-instance v13, Landroid/content/Intent;

    const-string v19, "android.intent.action.MAIN"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v13, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 74
    .local v13, mainIntent:Landroid/content/Intent;
    const-string v19, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v15, v13, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v12

    .line 77
    .local v12, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v19, "android.intent.category.HOME"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v15, v13, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    .line 80
    .local v9, homelist:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v4, 0x0

    .line 85
    .local v4, _id:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v10, v0, :cond_5

    .line 86
    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/ResolveInfo;

    .line 87
    .local v16, rInfo:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v14, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 88
    .local v14, packageName:Ljava/lang/String;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 90
    .local v7, appName:Ljava/lang/String;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x80

    move/from16 v19, v0

    if-nez v19, :cond_3

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x1

    if-nez v19, :cond_3

    .line 93
    const/4 v11, 0x0

    .local v11, j:I
    :goto_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v10, v0, :cond_1

    .line 94
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/ResolveInfo;

    .line 95
    .local v17, rInfo_h:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 96
    const-string v19, "CompatibilityMode"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Home is detected "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 102
    .end local v17           #rInfo_h:Landroid/content/pm/ResolveInfo;
    :cond_1
    const-string v19, "android.permission.SET_WALLPAPER"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0, v14}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v19

    if-eqz v19, :cond_2

    const-string v19, "android.permission.BIND_WALLPAPER"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0, v14}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v19

    if-nez v19, :cond_4

    .line 105
    :cond_2
    const-string v19, "CompatibilityMode"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "this application can set wallpaper : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .end local v11           #j:I
    :cond_3
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 109
    .restart local v11       #j:I
    :cond_4
    if-eqz v14, :cond_3

    .line 111
    new-instance v6, Lcom/lge/settings/compatmode/CompatibilityMode$AppData;

    invoke-direct {v6}, Lcom/lge/settings/compatmode/CompatibilityMode$AppData;-><init>()V

    .line 112
    .local v6, appData:Lcom/lge/settings/compatmode/CompatibilityMode$AppData;
    iput-object v7, v6, Lcom/lge/settings/compatmode/CompatibilityMode$AppData;->appName:Ljava/lang/String;

    .line 113
    iput-object v14, v6, Lcom/lge/settings/compatmode/CompatibilityMode$AppData;->packageName:Ljava/lang/String;

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/settings/compatmode/CompatibilityMode;->mAppList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 135
    .end local v4           #_id:I
    .end local v6           #appData:Lcom/lge/settings/compatmode/CompatibilityMode$AppData;
    .end local v7           #appName:Ljava/lang/String;
    .end local v9           #homelist:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v10           #i:I
    .end local v11           #j:I
    .end local v12           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v13           #mainIntent:Landroid/content/Intent;
    .end local v14           #packageName:Ljava/lang/String;
    .end local v16           #rInfo:Landroid/content/pm/ResolveInfo;
    :catchall_0
    move-exception v19

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v19
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 137
    :catch_0
    move-exception v8

    .line 138
    .local v8, e:Ljava/lang/Exception;
    const-string v19, "CompatibilityMode"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "exception occurred "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .end local v8           #e:Ljava/lang/Exception;
    :goto_3
    new-instance v5, Lcom/lge/settings/compatmode/CompatibilityMode$PackageConfigListItemAdapter;

    const v19, 0x7f030001

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/settings/compatmode/CompatibilityMode;->mMatrixCursor:Landroid/database/MatrixCursor;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/lge/settings/compatmode/CompatibilityMode$PackageConfigListItemAdapter;-><init>(Lcom/lge/settings/compatmode/CompatibilityMode;Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 141
    .local v5, adapter:Lcom/lge/settings/compatmode/CompatibilityMode$PackageConfigListItemAdapter;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/lge/settings/compatmode/CompatibilityMode;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 142
    return-void

    .line 119
    .end local v5           #adapter:Lcom/lge/settings/compatmode/CompatibilityMode$PackageConfigListItemAdapter;
    .restart local v4       #_id:I
    .restart local v9       #homelist:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v10       #i:I
    .restart local v12       #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v13       #mainIntent:Landroid/content/Intent;
    :cond_5
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/settings/compatmode/CompatibilityMode;->mAppList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 120
    .local v18, total:I
    if-eqz v18, :cond_6

    .line 123
    const/4 v10, 0x0

    :goto_4
    move/from16 v0, v18

    if-ge v10, v0, :cond_6

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/settings/compatmode/CompatibilityMode;->mMatrixCursor:Landroid/database/MatrixCursor;

    move-object/from16 v20, v0

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v19, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v21, v19

    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/settings/compatmode/CompatibilityMode;->mAppList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    add-int/lit8 v23, v10, 0x1

    sub-int v23, v18, v23

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/lge/settings/compatmode/CompatibilityMode$AppData;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/lge/settings/compatmode/CompatibilityMode$AppData;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    aput-object v19, v21, v22

    const/16 v22, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/settings/compatmode/CompatibilityMode;->mAppList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    add-int/lit8 v23, v10, 0x1

    sub-int v23, v18, v23

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/lge/settings/compatmode/CompatibilityMode$AppData;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/lge/settings/compatmode/CompatibilityMode$AppData;->appName:Ljava/lang/String;

    move-object/from16 v19, v0

    aput-object v19, v21, v22

    invoke-virtual/range {v20 .. v21}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 132
    add-int/lit8 v4, v4, 0x1

    .line 123
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 135
    :cond_6
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3
.end method

.method private registerBReceiver()V
    .locals 2

    .prologue
    .line 246
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 247
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 248
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 249
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 250
    iget-object v1, p0, Lcom/lge/settings/compatmode/CompatibilityMode;->mPackageAdd:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/lge/settings/compatmode/CompatibilityMode;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 251
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/lge/settings/compatmode/CompatibilityMode;->setContentView(I)V

    .line 57
    iget-object v0, p0, Lcom/lge/settings/compatmode/CompatibilityMode;->mActivityManager:Landroid/app/IActivityManager;

    if-nez v0, :cond_0

    .line 58
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/settings/compatmode/CompatibilityMode;->mActivityManager:Landroid/app/IActivityManager;

    .line 61
    :cond_0
    invoke-direct {p0}, Lcom/lge/settings/compatmode/CompatibilityMode;->registerBReceiver()V

    .line 62
    invoke-direct {p0}, Lcom/lge/settings/compatmode/CompatibilityMode;->makingList()V

    .line 63
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 239
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 240
    iget-object v0, p0, Lcom/lge/settings/compatmode/CompatibilityMode;->mPackageAdd:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/lge/settings/compatmode/CompatibilityMode;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 241
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/settings/compatmode/CompatibilityMode;->mMatrixCursor:Landroid/database/MatrixCursor;

    .line 242
    return-void
.end method
