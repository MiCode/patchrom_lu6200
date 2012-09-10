.class public Lcom/lge/camera/setting/ListPreference;
.super Lcom/lge/camera/setting/CameraPreference;
.source "ListPreference.java"


# instance fields
.field private mDefaultValue:Ljava/lang/String;

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryCommand:Ljava/lang/String;

.field private mEntryIconResources:[I

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mExtraInfos:[Ljava/lang/CharSequence;

.field private mExtraInfos2:[Ljava/lang/CharSequence;

.field private mExtraInfos3:[Ljava/lang/CharSequence;

.field private mIndicatorIconResources:[I

.field private mKeepLastValue:Z

.field private final mKey:Ljava/lang/String;

.field private mLoaded:Z

.field private mMenuCommand:Ljava/lang/String;

.field private mMenuIconResources:[I

.field private mMenuViewId:I

.field private mPersist:Z

.field private mSaveSettingEnabled:Z

.field private mSubMenuCount:I

.field private mSubMenuIds:[I

.field private final mTitle:Ljava/lang/String;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/CameraPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    iput-boolean v11, p0, Lcom/lge/camera/setting/ListPreference;->mLoaded:Z

    .line 43
    iput-boolean v11, p0, Lcom/lge/camera/setting/ListPreference;->mKeepLastValue:Z

    .line 45
    iput-boolean v12, p0, Lcom/lge/camera/setting/ListPreference;->mSaveSettingEnabled:Z

    .line 50
    sget-object v9, Lcom/lge/camera/R$styleable;->ListPreference:[I

    invoke-virtual {p1, p2, v9, v11, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 53
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/lge/camera/util/Util;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iput-object v9, p0, Lcom/lge/camera/setting/ListPreference;->mKey:Ljava/lang/String;

    .line 54
    invoke-virtual {v0, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/lge/camera/setting/ListPreference;->mTitle:Ljava/lang/String;

    .line 55
    const/4 v9, 0x6

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/lge/camera/setting/ListPreference;->mDefaultValue:Ljava/lang/String;

    .line 56
    const/4 v9, 0x7

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/lge/camera/setting/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 57
    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/lge/camera/setting/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 59
    const/16 v9, 0x9

    invoke-virtual {v0, v9, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 60
    .local v3, iconsResId:I
    if-eqz v3, :cond_0

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 62
    .local v4, iconsTypedArray:Landroid/content/res/TypedArray;
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    .line 63
    .local v1, arrayLength:I
    new-array v9, v1, [I

    iput-object v9, p0, Lcom/lge/camera/setting/ListPreference;->mEntryIconResources:[I

    .line 64
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 65
    iget-object v9, p0, Lcom/lge/camera/setting/ListPreference;->mEntryIconResources:[I

    invoke-virtual {v4, v2, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    aput v10, v9, v2

    .line 64
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 69
    .end local v1           #arrayLength:I
    .end local v2           #i:I
    .end local v4           #iconsTypedArray:Landroid/content/res/TypedArray;
    :cond_0
    const/16 v9, 0xa

    invoke-virtual {v0, v9, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 70
    .local v6, subMenuIds:I
    if-eqz v6, :cond_1

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 72
    .local v7, subMenuIdsTypedArray:Landroid/content/res/TypedArray;
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->length()I

    move-result v9

    iput v9, p0, Lcom/lge/camera/setting/ListPreference;->mSubMenuCount:I

    .line 73
    iget v9, p0, Lcom/lge/camera/setting/ListPreference;->mSubMenuCount:I

    new-array v9, v9, [I

    iput-object v9, p0, Lcom/lge/camera/setting/ListPreference;->mSubMenuIds:[I

    .line 74
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1
    iget v9, p0, Lcom/lge/camera/setting/ListPreference;->mSubMenuCount:I

    if-ge v2, v9, :cond_1

    .line 75
    iget-object v9, p0, Lcom/lge/camera/setting/ListPreference;->mSubMenuIds:[I

    invoke-virtual {v7, v2, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    aput v10, v9, v2

    .line 74
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 79
    .end local v2           #i:I
    .end local v7           #subMenuIdsTypedArray:Landroid/content/res/TypedArray;
    :cond_1
    const/4 v9, 0x3

    invoke-virtual {v0, v9, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 80
    .local v5, selectedIconsResId:I
    if-eqz v5, :cond_2

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 82
    .local v8, ta:Landroid/content/res/TypedArray;
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    .line 83
    .restart local v1       #arrayLength:I
    new-array v9, v1, [I

    iput-object v9, p0, Lcom/lge/camera/setting/ListPreference;->mMenuIconResources:[I

    .line 84
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2
    if-ge v2, v1, :cond_2

    .line 85
    iget-object v9, p0, Lcom/lge/camera/setting/ListPreference;->mMenuIconResources:[I

    invoke-virtual {v8, v2, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    aput v10, v9, v2

    .line 84
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 89
    .end local v1           #arrayLength:I
    .end local v2           #i:I
    .end local v8           #ta:Landroid/content/res/TypedArray;
    :cond_2
    const/4 v9, 0x5

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/lge/camera/setting/ListPreference;->mEntryCommand:Ljava/lang/String;

    .line 90
    const/4 v9, 0x4

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/lge/camera/setting/ListPreference;->mMenuCommand:Ljava/lang/String;

    .line 92
    const/4 v9, 0x2

    invoke-virtual {v0, v9, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    iput v9, p0, Lcom/lge/camera/setting/ListPreference;->mMenuViewId:I

    .line 94
    const/16 v9, 0xc

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/lge/camera/setting/ListPreference;->setExtraInfos([Ljava/lang/CharSequence;)V

    .line 95
    const/16 v9, 0xe

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/lge/camera/setting/ListPreference;->setExtraInfos2([Ljava/lang/CharSequence;)V

    .line 96
    const/16 v9, 0xf

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/lge/camera/setting/ListPreference;->setExtraInfos3([Ljava/lang/CharSequence;)V

    .line 98
    const/16 v9, 0xd

    invoke-virtual {v0, v9, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, p0, Lcom/lge/camera/setting/ListPreference;->mPersist:Z

    .line 100
    const/16 v9, 0xb

    invoke-virtual {v0, v9, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 101
    if-eqz v3, :cond_3

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 103
    .restart local v4       #iconsTypedArray:Landroid/content/res/TypedArray;
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    .line 104
    .restart local v1       #arrayLength:I
    new-array v9, v1, [I

    iput-object v9, p0, Lcom/lge/camera/setting/ListPreference;->mIndicatorIconResources:[I

    .line 105
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3
    if-ge v2, v1, :cond_3

    .line 106
    iget-object v9, p0, Lcom/lge/camera/setting/ListPreference;->mIndicatorIconResources:[I

    invoke-virtual {v4, v2, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    aput v10, v9, v2

    .line 105
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 122
    .end local v1           #arrayLength:I
    .end local v2           #i:I
    .end local v4           #iconsTypedArray:Landroid/content/res/TypedArray;
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 123
    return-void
.end method


# virtual methods
.method public filterUnsupported(Ljava/util/List;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 330
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 331
    .local v0, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 333
    .local v1, entryValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const-string v5, "CameraApp"

    const-string v6, "Preference ---------------------------------------------------------"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 335
    const-string v6, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Preference Device support item ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "%02d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "]\t\t: ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "]"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 337
    :cond_0
    const-string v5, "CameraApp"

    const-string v6, "Preference ---------------------------------------------------------"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const/4 v2, 0x0

    iget-object v5, p0, Lcom/lge/camera/setting/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v3, v5

    .local v3, len:I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 340
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Preference XML Defined values/entries\t: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/camera/setting/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] / ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/camera/setting/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v5, p0, Lcom/lge/camera/setting/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_1

    .line 343
    iget-object v5, p0, Lcom/lge/camera/setting/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object v5, v5, v2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    iget-object v5, p0, Lcom/lge/camera/setting/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v5, v5, v2

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 347
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 349
    .local v4, size:I
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Preference supported entries count ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const-string v5, "CameraApp"

    const-string v6, "Preference ---------------------------------------------------------"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    new-array v5, v4, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/CharSequence;

    iput-object v5, p0, Lcom/lge/camera/setting/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 352
    new-array v5, v4, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/CharSequence;

    iput-object v5, p0, Lcom/lge/camera/setting/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 353
    return-void
.end method

.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 3
    .parameter "value"

    .prologue
    .line 300
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v2, p0, Lcom/lge/camera/setting/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v1, v2

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 302
    iget-object v2, p0, Lcom/lge/camera/setting/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v2, v2, v0

    invoke-static {v2, p1}, Lcom/lge/camera/util/Util;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 306
    .end local v0           #i:I
    :goto_1
    return v0

    .line 300
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 306
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/lge/camera/setting/ListPreference;->mMenuCommand:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/lge/camera/setting/ListPreference;->mDefaultValue:Ljava/lang/String;

    return-object v0
.end method

.method public getEntries()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/lge/camera/setting/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEntry()Ljava/lang/String;
    .locals 2

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 313
    .local v0, index:I
    if-gez v0, :cond_0

    .line 314
    const-string v1, ""

    .line 316
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/lge/camera/setting/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getEntryCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/lge/camera/setting/ListPreference;->mEntryCommand:Ljava/lang/String;

    return-object v0
.end method

.method public getEntryIconResources()[I
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/lge/camera/setting/ListPreference;->mEntryIconResources:[I

    return-object v0
.end method

.method public getEntryValues()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/lge/camera/setting/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getExtraInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 226
    .local v0, index:I
    if-gez v0, :cond_0

    .line 227
    const-string v1, ""

    .line 229
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/lge/camera/setting/ListPreference;->mExtraInfos:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getExtraInfo2()Ljava/lang/String;
    .locals 2

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 236
    .local v0, index:I
    if-gez v0, :cond_0

    .line 237
    const-string v1, ""

    .line 239
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/lge/camera/setting/ListPreference;->mExtraInfos2:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getExtraInfo3()Ljava/lang/String;
    .locals 2

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 246
    .local v0, index:I
    if-gez v0, :cond_0

    .line 247
    const-string v1, ""

    .line 249
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/lge/camera/setting/ListPreference;->mExtraInfos3:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getExtraInfos()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/lge/camera/setting/ListPreference;->mExtraInfos:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getExtraInfos2()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/lge/camera/setting/ListPreference;->mExtraInfos2:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getExtraInfos3()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/lge/camera/setting/ListPreference;->mExtraInfos3:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getIndicatorIconResource()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 167
    iget-object v2, p0, Lcom/lge/camera/setting/ListPreference;->mIndicatorIconResources:[I

    if-eqz v2, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 169
    .local v0, index:I
    if-gez v0, :cond_1

    .line 175
    .end local v0           #index:I
    :cond_0
    :goto_0
    return v1

    .line 172
    .restart local v0       #index:I
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/setting/ListPreference;->mIndicatorIconResources:[I

    aget v1, v1, v0

    goto :goto_0
.end method

.method public getIndicatorIconResources()[I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 158
    iget-object v0, p0, Lcom/lge/camera/setting/ListPreference;->mIndicatorIconResources:[I

    if-nez v0, :cond_0

    .line 159
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lge/camera/setting/ListPreference;->mIndicatorIconResources:[I

    .line 160
    iget-object v0, p0, Lcom/lge/camera/setting/ListPreference;->mIndicatorIconResources:[I

    aput v1, v0, v1

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/setting/ListPreference;->mIndicatorIconResources:[I

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/lge/camera/setting/ListPreference;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getMenuIconResources()[I
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/lge/camera/setting/ListPreference;->mMenuIconResources:[I

    return-object v0
.end method

.method public getMenuViewId()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/lge/camera/setting/ListPreference;->mMenuViewId:I

    return v0
.end method

.method public getSubMenuCount()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/lge/camera/setting/ListPreference;->mSubMenuCount:I

    return v0
.end method

.method public getSubMenuIds()[I
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/lge/camera/setting/ListPreference;->mSubMenuIds:[I

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/lge/camera/setting/ListPreference;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/lge/camera/setting/ListPreference;->mLoaded:Z

    if-nez v0, :cond_1

    .line 270
    iget-boolean v0, p0, Lcom/lge/camera/setting/ListPreference;->mPersist:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/lge/camera/setting/ListPreference;->mKeepLastValue:Z

    if-eqz v0, :cond_2

    .line 271
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/setting/ListPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/setting/ListPreference;->mKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/lge/camera/setting/ListPreference;->mDefaultValue:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/setting/ListPreference;->mValue:Ljava/lang/String;

    .line 272
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/setting/ListPreference;->mKeepLastValue:Z

    .line 278
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/setting/ListPreference;->mLoaded:Z

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/setting/ListPreference;->mValue:Ljava/lang/String;

    return-object v0

    .line 275
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/setting/ListPreference;->mDefaultValue:Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/camera/setting/ListPreference;->mValue:Ljava/lang/String;

    .line 276
    iget-object v0, p0, Lcom/lge/camera/setting/ListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/lge/camera/setting/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public keepLastValue()V
    .locals 1

    .prologue
    .line 356
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/setting/ListPreference;->mKeepLastValue:Z

    .line 357
    return-void
.end method

.method protected persistStringValue(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/lge/camera/setting/ListPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 321
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lcom/lge/camera/setting/ListPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 322
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 323
    return-void
.end method

.method public reloadValue()V
    .locals 1

    .prologue
    .line 326
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/setting/ListPreference;->mLoaded:Z

    .line 327
    return-void
.end method

.method public setDefaultValue(Ljava/lang/String;)V
    .locals 0
    .parameter "defValue"

    .prologue
    .line 187
    iput-object p1, p0, Lcom/lge/camera/setting/ListPreference;->mDefaultValue:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "entries"

    .prologue
    .line 191
    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array p1, v0, [Ljava/lang/CharSequence;

    .end local p1
    :cond_0
    iput-object p1, p0, Lcom/lge/camera/setting/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 192
    return-void
.end method

.method public setEntryValues([Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "values"

    .prologue
    .line 195
    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array p1, v0, [Ljava/lang/CharSequence;

    .end local p1
    :cond_0
    iput-object p1, p0, Lcom/lge/camera/setting/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 196
    return-void
.end method

.method public setExtraInfos([Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "extraInfos"

    .prologue
    .line 199
    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array p1, v0, [Ljava/lang/CharSequence;

    .end local p1
    :cond_0
    iput-object p1, p0, Lcom/lge/camera/setting/ListPreference;->mExtraInfos:[Ljava/lang/CharSequence;

    .line 200
    return-void
.end method

.method public setExtraInfos2([Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "extraInfos"

    .prologue
    .line 203
    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array p1, v0, [Ljava/lang/CharSequence;

    .end local p1
    :cond_0
    iput-object p1, p0, Lcom/lge/camera/setting/ListPreference;->mExtraInfos2:[Ljava/lang/CharSequence;

    .line 204
    return-void
.end method

.method public setExtraInfos3([Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "extraInfos"

    .prologue
    .line 207
    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array p1, v0, [Ljava/lang/CharSequence;

    .end local p1
    :cond_0
    iput-object p1, p0, Lcom/lge/camera/setting/ListPreference;->mExtraInfos3:[Ljava/lang/CharSequence;

    .line 208
    return-void
.end method

.method public setSaveSettingEnabled(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 265
    iput-boolean p1, p0, Lcom/lge/camera/setting/ListPreference;->mSaveSettingEnabled:Z

    .line 266
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 284
    invoke-virtual {p0, p1}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/setting/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 285
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 287
    :cond_0
    iput-object p1, p0, Lcom/lge/camera/setting/ListPreference;->mValue:Ljava/lang/String;

    .line 288
    iget-boolean v0, p0, Lcom/lge/camera/setting/ListPreference;->mSaveSettingEnabled:Z

    if-eqz v0, :cond_1

    .line 289
    invoke-virtual {p0, p1}, Lcom/lge/camera/setting/ListPreference;->persistStringValue(Ljava/lang/String;)V

    .line 291
    :cond_1
    return-void
.end method

.method public setValueIndex(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 294
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/lge/camera/setting/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/setting/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/camera/setting/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method
