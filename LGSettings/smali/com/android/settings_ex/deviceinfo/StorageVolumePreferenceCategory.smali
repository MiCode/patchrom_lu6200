.class public Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;
.super Landroid/preference/PreferenceCategory;
.source "StorageVolumePreferenceCategory.java"

# interfaces
.implements Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;,
        Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;
    }
.end annotation


# static fields
.field static final sBUACategoryInfos:[Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

.field static final sCategoryInfos:[Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

.field static final sMediaCategories:[Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;

.field public static final sPathsExcludedForMisc:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAllowFormat:Z

.field private mColors:[I

.field private mFormatPreference:Landroid/preference/Preference;

.field private mMeasurement:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

.field private mMountTogglePreference:Landroid/preference/Preference;

.field private mPreferences:[Landroid/preference/Preference;

.field private mResources:Landroid/content/res/Resources;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageVolume:Landroid/os/storage/StorageVolume;

.field private mUpdateHandler:Landroid/os/Handler;

.field private mUsageBarPreference:Lcom/android/settings_ex/deviceinfo/UsageBarPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 94
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    new-instance v1, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    const v2, 0x7f080352

    invoke-direct {v1, v2, v5}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;-><init>(II)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    const v2, 0x7f080354

    const v3, 0x7f0d0006

    invoke-direct {v1, v2, v3}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;-><init>(II)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    const v2, 0x7f080357

    const v3, 0x7f0d0008

    invoke-direct {v1, v2, v3}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;-><init>(II)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    const v2, 0x7f080358

    const v3, 0x7f0d0009

    invoke-direct {v1, v2, v3}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;-><init>(II)V

    aput-object v1, v0, v8

    new-instance v1, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    const v2, 0x7f080356

    const v3, 0x7f0d0007

    invoke-direct {v1, v2, v3}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;-><init>(II)V

    aput-object v1, v0, v9

    const/4 v1, 0x5

    new-instance v2, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    const v3, 0x7f080359

    const v4, 0x7f0d000a

    invoke-direct {v2, v3, v4}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    const v3, 0x7f080351

    const v4, 0x7f0d0005

    invoke-direct {v2, v3, v4}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;-><init>(II)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->sCategoryInfos:[Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    .line 104
    new-array v0, v8, [Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    new-instance v1, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    const v2, 0x7f080352

    invoke-direct {v1, v2, v5}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;-><init>(II)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    const v2, 0x7f080351

    const v3, 0x7f0d0005

    invoke-direct {v1, v2, v3}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;-><init>(II)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    const v2, 0x7f080963

    invoke-direct {v1, v2, v5}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;-><init>(II)V

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->sBUACategoryInfos:[Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    .line 110
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->sPathsExcludedForMisc:Ljava/util/Set;

    .line 131
    new-array v0, v6, [Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;

    new-instance v1, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;

    new-array v2, v8, [Ljava/lang/String;

    sget-object v3, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    aput-object v3, v2, v5

    sget-object v3, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    aput-object v3, v2, v7

    sget-object v3, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-direct {v1, v6, v2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;-><init>(I[Ljava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    sget-object v3, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    aput-object v3, v2, v5

    sget-object v3, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    aput-object v3, v2, v7

    sget-object v3, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    aput-object v3, v2, v6

    sget-object v3, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    aput-object v3, v2, v8

    sget-object v3, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    aput-object v3, v2, v9

    invoke-direct {v1, v8, v2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;-><init>(I[Ljava/lang/String;)V

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->sMediaCategories:[Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;

    .line 141
    sget-object v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->sPathsExcludedForMisc:Ljava/util/Set;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 144
    sget-object v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->sPathsExcludedForMisc:Ljava/util/Set;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Android"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;Landroid/os/storage/StorageVolume;Landroid/os/storage/StorageManager;Z)V
    .locals 1
    .parameter "context"
    .parameter "resources"
    .parameter "storageVolume"
    .parameter "storageManager"
    .parameter "isPrimary"

    .prologue
    .line 185
    invoke-direct {p0, p1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 154
    new-instance v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$1;-><init>(Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;

    .line 186
    iput-object p2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    .line 187
    iput-object p3, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    .line 188
    iput-object p4, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 189
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/os/storage/StorageVolume;->getDescription()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 191
    invoke-static {p1, p3, p5}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->getInstance(Landroid/content/Context;Landroid/os/storage/StorageVolume;Z)Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMeasurement:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    .line 192
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMeasurement:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->setReceiver(Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementReceiver;)V

    .line 195
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mAllowFormat:Z

    .line 199
    return-void

    .line 189
    :cond_0
    const v0, 0x7f08095a

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 195
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static createRectShape(III)Landroid/graphics/drawable/ShapeDrawable;
    .locals 2
    .parameter "width"
    .parameter "height"
    .parameter "color"

    .prologue
    .line 487
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 488
    .local v0, shape:Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 489
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 490
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 491
    return-object v0
.end method

.method private formatSize(J)Ljava/lang/String;
    .locals 1
    .parameter "size"

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isServiceProvisioned(Landroid/app/Activity;)Z
    .locals 13
    .parameter "mActivity"

    .prologue
    const/4 v4, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 654
    const-string v10, "content://com.lge.cloudprovider/storage/cloud"

    .line 655
    .local v10, uri:Ljava/lang/String;
    const/16 v9, 0x64

    .line 656
    .local v9, serviceCode:I
    const/4 v8, 0x0

    .line 657
    .local v8, isProvisioned:Z
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 658
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v11, [Ljava/lang/String;

    const-string v3, "is_provisioned"

    aput-object v3, v2, v12

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "code="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 662
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p1, v6}, Landroid/app/Activity;->startManagingCursor(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 667
    :goto_0
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 668
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 669
    const-string v1, "is_provisioned"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v11, :cond_1

    move v8, v11

    .line 671
    :cond_0
    :goto_1
    return v8

    .line 663
    :catch_0
    move-exception v7

    .line 664
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v7           #e:Ljava/lang/Exception;
    :cond_1
    move v8, v12

    .line 669
    goto :goto_1
.end method

.method private measure()V
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMeasurement:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->invalidate()V

    .line 466
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMeasurement:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->measure()V

    .line 467
    return-void
.end method

.method private resetPreferences()V
    .locals 4

    .prologue
    .line 248
    sget-object v2, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->sCategoryInfos:[Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    array-length v1, v2

    .line 250
    .local v1, numberOfCategories:I
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 251
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 252
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 251
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 254
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 259
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 260
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 261
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 260
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 263
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 264
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v2, :cond_2

    .line 265
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 268
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 269
    return-void
.end method

.method private updateBUAPreference(JJZ)V
    .locals 7
    .parameter "storageSpace"
    .parameter "availableSpace"
    .parameter "isAlreadySubscribed"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 680
    if-nez p5, :cond_0

    .line 681
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 682
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    aget-object v2, v2, v5

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 683
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    aget-object v2, v2, v6

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 694
    :goto_0
    return-void

    .line 685
    :cond_0
    sub-long v0, p1, p3

    .line 686
    .local v0, usedSize:J
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    invoke-virtual {v2}, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;->clear()V

    .line 687
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    long-to-float v3, v0

    long-to-float v4, p1

    div-float/2addr v3, v4

    const v4, -0x777778

    invoke-virtual {v2, v3, v4}, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;->addEntry(FI)V

    .line 688
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    invoke-virtual {v2}, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;->commit()V

    .line 689
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    aget-object v2, v2, v5

    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 690
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    aget-object v2, v2, v6

    invoke-direct {p0, p3, p4}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updatePreference(JJI)V
    .locals 3
    .parameter "size"
    .parameter "totalSize"
    .parameter "category"

    .prologue
    .line 455
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 456
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    aget-object v0, v0, p5

    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 457
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    long-to-float v1, p1

    long-to-float v2, p3

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mColors:[I

    aget v2, v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;->addEntry(FI)V

    .line 462
    :cond_0
    :goto_0
    return-void

    .line 459
    :cond_1
    const/4 v0, 0x6

    if-eq p5, v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    aget-object v0, v0, p5

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private updatePreferencesFromState()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const v4, 0x7f08035d

    const/4 v8, 0x6

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 272
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->resetPreferences()V

    .line 274
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 278
    .local v1, state:Ljava/lang/String;
    :goto_0
    const-string v0, ""

    .line 279
    .local v0, readOnly:Ljava/lang/String;
    const-string v2, "mounted_ro"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 280
    const-string v1, "mounted"

    .line 281
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f080361

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 287
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const-string v2, "unmounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 291
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 294
    :cond_2
    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 295
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    aget-object v2, v2, v8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 298
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f08035a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 299
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f080953

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 301
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v2, :cond_3

    .line 302
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 339
    :cond_3
    :goto_1
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v2, :cond_c

    .line 340
    invoke-static {}, Lcom/android/settings_ex/MDMSettingsAdapter;->getInstance()Lcom/android/settings_ex/MDMSettingsAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v2, v9, v3, v4}, Lcom/android/settings_ex/MDMSettingsAdapter;->setEraseSdMenu(Landroid/content/ComponentName;Landroid/preference/Preference;Landroid/os/storage/StorageVolume;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 355
    :cond_4
    :goto_2
    return-void

    .line 274
    .end local v0           #readOnly:Ljava/lang/String;
    .end local v1           #state:Ljava/lang/String;
    :cond_5
    const-string v1, "mounted"

    goto/16 :goto_0

    .line 306
    .restart local v0       #readOnly:Ljava/lang/String;
    .restart local v1       #state:Ljava/lang/String;
    :cond_6
    const-string v2, "unmounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "nofs"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "unmountable"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 308
    :cond_7
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 309
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f080954

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v2, :cond_8

    .line 313
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 328
    :cond_8
    :goto_3
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    if-eqz v2, :cond_9

    .line 329
    invoke-static {}, Lcom/android/settings_ex/MDMSettingsAdapter;->getInstance()Lcom/android/settings_ex/MDMSettingsAdapter;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "mMountSDcard"

    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v2, v9, v3, v4, v5}, Lcom/android/settings_ex/MDMSettingsAdapter;->setExternalMemoryEnableMenu(Landroid/content/ComponentName;Landroid/content/Context;Ljava/lang/String;Landroid/preference/Preference;)Z

    .line 332
    :cond_9
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 333
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    aget-object v2, v2, v6

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 334
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    aget-object v2, v2, v8

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 318
    :cond_a
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v2, :cond_b

    .line 319
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 322
    :cond_b
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 323
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 324
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f080955

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 345
    :cond_c
    iget-boolean v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mAllowFormat:Z

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v2

    if-nez v2, :cond_d

    .line 346
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v2, :cond_4

    .line 347
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 348
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    const v3, 0x7f080951

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_2

    .line 351
    :cond_d
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-eqz v2, :cond_4

    .line 352
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    const v3, 0x7f080952

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_2
.end method


# virtual methods
.method protected cloudEnable()Z
    .locals 3

    .prologue
    .line 697
    const/4 v1, 0x0

    .line 698
    .local v1, result:Z
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 699
    .local v0, mPackageManager:Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_0

    .line 700
    const-string v2, "com.lge.cloudservice.enabled"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    .line 702
    :cond_0
    return v1
.end method

.method protected getCloudStorageInfo(Landroid/app/Activity;)V
    .locals 26
    .parameter "mActivity"

    .prologue
    .line 584
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->cloudEnable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 585
    const-wide/16 v13, 0x0

    .line 586
    .local v13, mStorageSpace:J
    const-wide/16 v9, 0x0

    .line 587
    .local v9, mAvailableSpace:J
    const/4 v11, 0x0

    .line 588
    .local v11, isAlreadySubscribed:Z
    const/16 v21, 0x1

    .line 589
    .local v21, isAvailableNetwork:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v6, "connectivity"

    invoke-virtual {v2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/ConnectivityManager;

    .line 590
    .local v18, cm:Landroid/net/ConnectivityManager;
    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v25

    .line 591
    .local v25, network_WIFI:Landroid/net/NetworkInfo;
    invoke-virtual/range {v25 .. v25}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v23

    .line 592
    .local v23, isWifiConn:Z
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v24

    .line 593
    .local v24, network_Mobile:Landroid/net/NetworkInfo;
    invoke-virtual/range {v24 .. v24}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v22

    .line 594
    .local v22, isMobileConn:Z
    if-nez v23, :cond_0

    if-nez v22, :cond_0

    .line 595
    const/16 v21, 0x0

    .line 597
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->isServiceProvisioned(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 598
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    const/4 v6, 0x2

    aget-object v2, v2, v6

    const v6, 0x7f080962

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setTitle(I)V

    .line 599
    const/4 v11, 0x1

    .line 600
    if-eqz v21, :cond_2

    .line 601
    new-instance v20, Landroid/content/Intent;

    const-string v2, "com.lge.cloudservice.intent.action.STORAGE"

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 602
    .local v20, intent:Landroid/content/Intent;
    const-string v2, "application"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 603
    const-string v2, "request"

    const-string v6, "getusage"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 604
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 606
    const-string v2, "content://com.lge.cloudprovider/storage/cloud"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 607
    .local v3, uri:Landroid/net/Uri;
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "total_space"

    aput-object v6, v4, v2

    const/4 v2, 0x1

    const-string v6, "available_space"

    aput-object v6, v4, v2

    .line 608
    .local v4, cols:[Ljava/lang/String;
    const-string v5, "code = \'100\'"

    .line 609
    .local v5, where:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 610
    .local v19, cursor:Landroid/database/Cursor;
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 611
    if-eqz v19, :cond_4

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_4

    .line 612
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    .line 613
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 614
    .end local v13           #mStorageSpace:J
    .local v7, mStorageSpace:J
    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    :goto_0
    move-object/from16 v6, p0

    .line 616
    invoke-direct/range {v6 .. v11}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->updateBUAPreference(JJZ)V

    .line 627
    .end local v3           #uri:Landroid/net/Uri;
    .end local v4           #cols:[Ljava/lang/String;
    .end local v5           #where:Ljava/lang/String;
    .end local v7           #mStorageSpace:J
    .end local v9           #mAvailableSpace:J
    .end local v11           #isAlreadySubscribed:Z
    .end local v18           #cm:Landroid/net/ConnectivityManager;
    .end local v19           #cursor:Landroid/database/Cursor;
    .end local v20           #intent:Landroid/content/Intent;
    .end local v21           #isAvailableNetwork:Z
    .end local v22           #isMobileConn:Z
    .end local v23           #isWifiConn:Z
    .end local v24           #network_Mobile:Landroid/net/NetworkInfo;
    .end local v25           #network_WIFI:Landroid/net/NetworkInfo;
    :cond_1
    :goto_1
    return-void

    .line 618
    .restart local v9       #mAvailableSpace:J
    .restart local v11       #isAlreadySubscribed:Z
    .restart local v13       #mStorageSpace:J
    .restart local v18       #cm:Landroid/net/ConnectivityManager;
    .restart local v21       #isAvailableNetwork:Z
    .restart local v22       #isMobileConn:Z
    .restart local v23       #isWifiConn:Z
    .restart local v24       #network_Mobile:Landroid/net/NetworkInfo;
    .restart local v25       #network_WIFI:Landroid/net/NetworkInfo;
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getCloudStorageInfoDB(Landroid/app/Activity;)V

    goto :goto_1

    .line 621
    :cond_3
    const/4 v11, 0x0

    .line 622
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    const/4 v6, 0x2

    aget-object v2, v2, v6

    const v6, 0x7f080963

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setTitle(I)V

    move-object/from16 v12, p0

    move-wide v15, v9

    move/from16 v17, v11

    .line 623
    invoke-direct/range {v12 .. v17}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->updateBUAPreference(JJZ)V

    goto :goto_1

    .restart local v3       #uri:Landroid/net/Uri;
    .restart local v4       #cols:[Ljava/lang/String;
    .restart local v5       #where:Ljava/lang/String;
    .restart local v19       #cursor:Landroid/database/Cursor;
    .restart local v20       #intent:Landroid/content/Intent;
    :cond_4
    move-wide v7, v13

    .end local v13           #mStorageSpace:J
    .restart local v7       #mStorageSpace:J
    goto :goto_0
.end method

.method protected getCloudStorageInfoDB(Landroid/app/Activity;)V
    .locals 13
    .parameter "mActivity"

    .prologue
    .line 630
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->cloudEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    const-wide/16 v11, 0x0

    .line 632
    .local v11, mStorageSpace:J
    const-wide/16 v7, 0x0

    .line 633
    .local v7, mAvailableSpace:J
    const/4 v9, 0x0

    .line 634
    .local v9, isAlreadySubscribed:Z
    invoke-direct {p0, p1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->isServiceProvisioned(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 635
    const/4 v9, 0x1

    .line 637
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    const/4 v4, 0x2

    aget-object v0, v0, v4

    const v4, 0x7f080962

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setTitle(I)V

    .line 638
    const-string v0, "content://com.lge.cloudprovider/storage/cloud"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 639
    .local v1, uri:Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "total_space"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v4, "available_space"

    aput-object v4, v2, v0

    .line 640
    .local v2, cols:[Ljava/lang/String;
    const-string v3, "code = \'100\'"

    .line 641
    .local v3, where:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 642
    .local v10, cursor:Landroid/database/Cursor;
    invoke-virtual {p1, v10}, Landroid/app/Activity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 643
    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 644
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 645
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 646
    .end local v11           #mStorageSpace:J
    .local v5, mStorageSpace:J
    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .end local v1           #uri:Landroid/net/Uri;
    .end local v2           #cols:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v10           #cursor:Landroid/database/Cursor;
    :goto_0
    move-object v4, p0

    .line 649
    invoke-direct/range {v4 .. v9}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->updateBUAPreference(JJZ)V

    .line 651
    .end local v5           #mStorageSpace:J
    .end local v7           #mAvailableSpace:J
    .end local v9           #isAlreadySubscribed:Z
    :cond_0
    return-void

    .restart local v7       #mAvailableSpace:J
    .restart local v9       #isAlreadySubscribed:Z
    .restart local v11       #mStorageSpace:J
    :cond_1
    move-wide v5, v11

    .end local v11           #mStorageSpace:J
    .restart local v5       #mStorageSpace:J
    goto :goto_0
.end method

.method public getStorageVolume()Landroid/os/storage/StorageVolume;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method public init()V
    .locals 8

    .prologue
    .line 202
    new-instance v5, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    .line 204
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const/high16 v6, 0x7f0e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v4, v5

    .line 205
    .local v4, width:I
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0e0001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v0, v5

    .line 207
    .local v0, height:I
    sget-object v5, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->sCategoryInfos:[Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    array-length v2, v5

    .line 208
    .local v2, numberOfCategories:I
    new-array v5, v2, [Landroid/preference/Preference;

    iput-object v5, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    .line 209
    new-array v5, v2, [I

    iput-object v5, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mColors:[I

    .line 210
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 211
    new-instance v3, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 212
    .local v3, preference:Landroid/preference/Preference;
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    aput-object v3, v5, v1

    .line 213
    sget-object v5, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->sCategoryInfos:[Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    aget-object v5, v5, v1

    iget v5, v5, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;->mTitle:I

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setTitle(I)V

    .line 214
    const v5, 0x7f080353

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setSummary(I)V

    .line 215
    if-eqz v1, :cond_0

    .line 217
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mColors:[I

    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    sget-object v7, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->sCategoryInfos:[Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    aget-object v7, v7, v1

    iget v7, v7, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;->mColor:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    aput v6, v5, v1

    .line 218
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mColors:[I

    aget v5, v5, v1

    invoke-static {v4, v0, v5}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->createRectShape(III)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 210
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 222
    .end local v3           #preference:Landroid/preference/Preference;
    :cond_1
    new-instance v5, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    .line 223
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    const v6, 0x7f08035a

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setTitle(I)V

    .line 224
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    const v6, 0x7f080953

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(I)V

    .line 226
    iget-boolean v5, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mAllowFormat:Z

    if-eqz v5, :cond_2

    .line 227
    new-instance v5, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    .line 228
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 229
    const-string v5, "hsmodel"

    const-string v6, "sdcard"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    const v6, 0x7f08035f

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setTitle(I)V

    .line 237
    :cond_2
    :goto_1
    return-void

    .line 231
    :cond_3
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v5

    if-nez v5, :cond_2

    .line 232
    const-string v5, "hsmodel"

    const-string v6, "internal"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    const v6, 0x7f080950

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setTitle(I)V

    goto :goto_1
.end method

.method protected initForBUA(Landroid/app/Activity;)V
    .locals 8
    .parameter "activity"

    .prologue
    .line 558
    new-instance v5, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    .line 560
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const/high16 v6, 0x7f0e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v4, v5

    .line 561
    .local v4, width:I
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0e0001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v0, v5

    .line 563
    .local v0, height:I
    const v5, 0x7f080961

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->setTitle(I)V

    .line 564
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 566
    sget-object v5, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->sBUACategoryInfos:[Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    array-length v2, v5

    .line 567
    .local v2, numberOfBUACategories:I
    new-array v5, v2, [Landroid/preference/Preference;

    iput-object v5, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    .line 568
    new-array v5, v2, [I

    iput-object v5, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mColors:[I

    .line 569
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 570
    new-instance v3, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 571
    .local v3, preference:Landroid/preference/Preference;
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    aput-object v3, v5, v1

    .line 572
    sget-object v5, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->sBUACategoryInfos:[Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    aget-object v5, v5, v1

    iget v5, v5, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;->mTitle:I

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setTitle(I)V

    .line 573
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 575
    if-eqz v1, :cond_0

    const/4 v5, 0x2

    if-eq v1, v5, :cond_0

    .line 576
    const v5, 0x7f080353

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setSummary(I)V

    .line 577
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mColors:[I

    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mResources:Landroid/content/res/Resources;

    sget-object v7, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->sBUACategoryInfos:[Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;

    aget-object v7, v7, v1

    iget v7, v7, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$CategoryInfo;->mColor:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    aput v6, v5, v1

    .line 578
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mColors:[I

    aget v5, v5, v1

    invoke-static {v4, v0, v5}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->createRectShape(III)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 569
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 582
    .end local v3           #preference:Landroid/preference/Preference;
    :cond_1
    return-void
.end method

.method public intentForClick(Landroid/preference/Preference;)Landroid/content/Intent;
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 517
    const/4 v0, 0x0

    .line 522
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mFormatPreference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_1

    .line 523
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 524
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/settings_ex/MediaFormat;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 525
    const-string v1, "storage_volume"

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 554
    :cond_0
    :goto_0
    return-object v0

    .line 526
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    aget-object v1, v1, v3

    if-ne p1, v1, :cond_2

    .line 527
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 528
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/settings_ex/Settings$ManageApplicationsActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 530
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    if-ne p1, v1, :cond_3

    .line 531
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW_DOWNLOADS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.app.DownloadManager.extra_sortBySize"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 533
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    if-ne p1, v1, :cond_4

    .line 534
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 535
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.lge.music"

    const-string v3, "com.lge.music.MusicBrowserActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 536
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 539
    :cond_4
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    if-ne p1, v1, :cond_5

    .line 540
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 545
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.gallery3d"

    const-string v3, "com.android.gallery3d.app.Gallery"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 546
    :cond_5
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    if-ne p1, v1, :cond_0

    .line 547
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 548
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMeasurement:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    invoke-virtual {v2}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->getMiscSize()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 549
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 550
    const-string v1, "storage_volume"

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_0
.end method

.method public mountToggleClicked(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preference"

    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMountTogglePreference:Landroid/preference/Preference;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMediaScannerFinished()V
    .locals 0

    .prologue
    .line 479
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 480
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMeasurement:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    invoke-virtual {v0}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->cleanUp()V

    .line 484
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMeasurement:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->setReceiver(Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementReceiver;)V

    .line 471
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 472
    return-void
.end method

.method public onStorageStateChanged()V
    .locals 0

    .prologue
    .line 475
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->measure()V

    .line 476
    return-void
.end method

.method public updateApproximate(JJJ)V
    .locals 7
    .parameter "totalSize"
    .parameter "availSize"
    .parameter "mReservedSize"

    .prologue
    .line 358
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 359
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    const/4 v5, 0x6

    aget-object v4, v4, v5

    invoke-direct {p0, p3, p4}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 361
    sub-long v2, p1, p5

    .line 362
    .local v2, withoutReservedTotalSize:J
    sub-long v0, v2, p3

    .line 364
    .local v0, usedSize:J
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    invoke-virtual {v4}, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;->clear()V

    .line 365
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    long-to-float v5, v0

    long-to-float v6, v2

    div-float/2addr v5, v6

    const v6, -0x777778

    invoke-virtual {v4, v5, v6}, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;->addEntry(FI)V

    .line 366
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    invoke-virtual {v4}, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;->commit()V

    .line 368
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->updatePreferencesFromState()V

    .line 369
    return-void
.end method

.method public updateApproximate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 500
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 501
    .local v0, message:Landroid/os/Message;
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 502
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 503
    return-void
.end method

.method public updateExact(JJJJJ[JJ)V
    .locals 27
    .parameter "totalSize"
    .parameter "availSize"
    .parameter "appsSize"
    .parameter "downloadsSize"
    .parameter "miscSize"
    .parameter "mediaSizes"
    .parameter "mReservedSize"

    .prologue
    .line 373
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    invoke-virtual {v2}, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;->clear()V

    .line 375
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mPreferences:[Landroid/preference/Preference;

    const/4 v7, 0x0

    aget-object v2, v2, v7

    invoke-direct/range {p0 .. p2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->formatSize(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 376
    sub-long v5, p1, p12

    .line 382
    .local v5, withoutReservedTotalSize:J
    const/16 v24, 0x0

    .line 383
    .local v24, isAddedExternalSDcard:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMeasurement:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    invoke-virtual {v2}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->isExternalSDCard()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v2

    array-length v2, v2

    const/4 v7, 0x1

    if-le v2, v7, :cond_1

    .line 384
    sub-long v25, v5, p3

    .line 385
    .local v25, usedSize:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    move-wide/from16 v0, v25

    long-to-float v7, v0

    long-to-float v13, v5

    div-float/2addr v7, v13

    const v13, -0x777778

    invoke-virtual {v2, v7, v13}, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;->addEntry(FI)V

    .line 386
    const-wide/16 p5, 0x0

    .line 387
    const-wide/16 p7, 0x0

    .line 388
    const-wide/16 p9, 0x0

    .line 389
    const/16 v24, 0x1

    .line 394
    .end local v25           #usedSize:J
    :goto_0
    const-wide/16 v19, 0x0

    .line 396
    .local v19, forDataMediaPartition:J
    const-wide/16 v21, 0x0

    .line 398
    .local v21, forExcludedDataMediaPartition:J
    const-wide/16 v10, 0x0

    .line 399
    .local v10, excludedTotalSize:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMeasurement:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    invoke-virtual {v2}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->isExternalSDCard()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v2

    array-length v2, v2

    const/4 v7, 0x1

    if-le v2, v7, :cond_2

    .line 400
    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-wide/from16 v3, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(JJI)V

    .line 417
    :goto_1
    const-wide/16 v3, 0x0

    .line 418
    .local v3, totalMediaSize:J
    const/16 v23, 0x0

    .local v23, i:I
    :goto_2
    sget-object v2, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->sMediaCategories:[Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;

    array-length v2, v2

    move/from16 v0, v23

    if-ge v0, v2, :cond_0

    .line 419
    if-eqz v24, :cond_4

    .line 420
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMeasurement:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    invoke-virtual {v2}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->isExternalSDCard()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 421
    const-wide/16 v3, 0x0

    .line 422
    const/4 v7, 0x2

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(JJI)V

    .line 423
    const/4 v7, 0x3

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(JJI)V

    .line 434
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mMeasurement:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    invoke-virtual {v2}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->isExternalSDCard()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v2

    array-length v2, v2

    const/4 v7, 0x1

    if-le v2, v7, :cond_5

    .line 436
    const/16 v18, 0x4

    move-object/from16 v13, p0

    move-wide/from16 v14, p7

    move-wide/from16 v16, v5

    invoke-direct/range {v13 .. v18}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(JJI)V

    .line 437
    const/16 v18, 0x5

    move-object/from16 v13, p0

    move-wide/from16 v14, p9

    move-wide/from16 v16, v5

    invoke-direct/range {v13 .. v18}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(JJI)V

    .line 438
    const/16 v18, 0x6

    move-object/from16 v13, p0

    move-wide/from16 v14, p3

    move-wide/from16 v16, v5

    invoke-direct/range {v13 .. v18}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(JJI)V

    .line 451
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUsageBarPreference:Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    invoke-virtual {v2}, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;->commit()V

    .line 452
    return-void

    .line 391
    .end local v3           #totalMediaSize:J
    .end local v10           #excludedTotalSize:J
    .end local v19           #forDataMediaPartition:J
    .end local v21           #forExcludedDataMediaPartition:J
    .end local v23           #i:I
    :cond_1
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 403
    .restart local v10       #excludedTotalSize:J
    .restart local v19       #forDataMediaPartition:J
    .restart local v21       #forExcludedDataMediaPartition:J
    :cond_2
    const/16 v23, 0x0

    .restart local v23       #i:I
    :goto_4
    move-object/from16 v0, p11

    array-length v2, v0

    move/from16 v0, v23

    if-ge v0, v2, :cond_3

    .line 404
    aget-wide v13, p11, v23

    add-long v19, v19, v13

    .line 403
    add-int/lit8 v23, v23, 0x1

    goto :goto_4

    .line 407
    :cond_3
    add-long v13, p5, p7

    add-long v13, v13, p9

    add-long v13, v13, p3

    add-long v19, v19, v13

    .line 413
    sub-long v21, v5, v19

    .line 414
    sub-long v10, v5, v21

    .line 415
    const/4 v12, 0x1

    move-object/from16 v7, p0

    move-wide/from16 v8, p5

    invoke-direct/range {v7 .. v12}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(JJI)V

    goto/16 :goto_1

    .line 427
    .restart local v3       #totalMediaSize:J
    :cond_4
    sget-object v2, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->sMediaCategories:[Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;

    aget-object v2, v2, v23

    iget v12, v2, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;->mCategory:I

    .line 428
    .local v12, category:I
    aget-wide v8, p11, v23

    .local v8, size:J
    move-object/from16 v7, p0

    .line 429
    invoke-direct/range {v7 .. v12}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(JJI)V

    .line 430
    add-long/2addr v3, v8

    .line 418
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_2

    .line 441
    .end local v8           #size:J
    .end local v12           #category:I
    :cond_5
    const-string v2, "DCM"

    const-string v7, "ro.build.target_operator"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 442
    const-wide/32 v13, 0xa00000

    sub-long p3, p3, v13

    .line 443
    const-wide/16 v13, 0x0

    cmp-long v2, p3, v13

    if-gez v2, :cond_6

    .line 444
    const-wide/16 p3, 0x0

    .line 447
    :cond_6
    const/16 v18, 0x4

    move-object/from16 v13, p0

    move-wide/from16 v14, p7

    move-wide/from16 v16, v10

    invoke-direct/range {v13 .. v18}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(JJI)V

    .line 448
    const/16 v18, 0x5

    move-object/from16 v13, p0

    move-wide/from16 v14, p9

    move-wide/from16 v16, v10

    invoke-direct/range {v13 .. v18}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(JJI)V

    .line 449
    const/16 v18, 0x6

    move-object/from16 v13, p0

    move-wide/from16 v14, p3

    move-wide/from16 v16, v10

    invoke-direct/range {v13 .. v18}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->updatePreference(JJI)V

    goto :goto_3
.end method

.method public updateExact(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 507
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 508
    .local v0, message:Landroid/os/Message;
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 509
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 510
    return-void
.end method
