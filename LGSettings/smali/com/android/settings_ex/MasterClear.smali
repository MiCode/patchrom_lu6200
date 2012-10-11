.class public Lcom/android/settings_ex/MasterClear;
.super Landroid/app/Fragment;
.source "MasterClear.java"


# instance fields
.field private mContentView:Landroid/view/View;

.field private mExternalStorage:Landroid/widget/CheckBox;

.field private mExternalStorageContainer:Landroid/view/View;

.field private mInitiateButton:Landroid/widget/Button;

.field private final mInitiateListener:Landroid/view/View$OnClickListener;

.field private mSDCardStorageVolume:Landroid/os/storage/StorageVolume;

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 71
    iput-object v0, p0, Lcom/android/settings_ex/MasterClear;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 72
    iput-object v0, p0, Lcom/android/settings_ex/MasterClear;->mSDCardStorageVolume:Landroid/os/storage/StorageVolume;

    .line 132
    new-instance v0, Lcom/android/settings_ex/MasterClear$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/MasterClear$1;-><init>(Lcom/android/settings_ex/MasterClear;)V

    iput-object v0, p0, Lcom/android/settings_ex/MasterClear;->mInitiateListener:Landroid/view/View$OnClickListener;

    .line 370
    new-instance v0, Lcom/android/settings_ex/MasterClear$4;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/MasterClear$4;-><init>(Lcom/android/settings_ex/MasterClear;)V

    iput-object v0, p0, Lcom/android/settings_ex/MasterClear;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/MasterClear;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/settings_ex/MasterClear;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/MasterClear;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/settings_ex/MasterClear;->showFinalConfirmation()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/MasterClear;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings_ex/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/MasterClear;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/settings_ex/MasterClear;->updateSDCardView()V

    return-void
.end method

.method private establishInitialState()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v6, 0x0

    .line 154
    iget-object v5, p0, Lcom/android/settings_ex/MasterClear;->mContentView:Landroid/view/View;

    const v7, 0x7f0b00fd

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/settings_ex/MasterClear;->mInitiateButton:Landroid/widget/Button;

    .line 155
    iget-object v5, p0, Lcom/android/settings_ex/MasterClear;->mInitiateButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/settings_ex/MasterClear;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v5, p0, Lcom/android/settings_ex/MasterClear;->mContentView:Landroid/view/View;

    const v7, 0x7f0b00f9

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    .line 157
    iget-object v5, p0, Lcom/android/settings_ex/MasterClear;->mContentView:Landroid/view/View;

    const v7, 0x7f0b00fa

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/android/settings_ex/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    .line 166
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v4

    .line 167
    .local v4, isExtStorageEmulated:Z
    if-nez v4, :cond_0

    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-direct {p0}, Lcom/android/settings_ex/MasterClear;->isExtStorageEncrypted()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 169
    :cond_0
    iget-object v5, p0, Lcom/android/settings_ex/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 171
    iget-object v5, p0, Lcom/android/settings_ex/MasterClear;->mContentView:Landroid/view/View;

    const v7, 0x7f0b00f8

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 172
    .local v3, externalOption:Landroid/view/View;
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 174
    iget-object v5, p0, Lcom/android/settings_ex/MasterClear;->mContentView:Landroid/view/View;

    const v7, 0x7f0b00f5

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 175
    .local v2, externalAlsoErased:Landroid/view/View;
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 179
    iget-object v7, p0, Lcom/android/settings_ex/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    if-nez v4, :cond_2

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {v7, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 190
    .end local v2           #externalAlsoErased:Landroid/view/View;
    .end local v3           #externalOption:Landroid/view/View;
    :goto_1
    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v6, "p2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 191
    iget-object v5, p0, Lcom/android/settings_ex/MasterClear;->mContentView:Landroid/view/View;

    const v6, 0x7f0b00fb

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 192
    .local v0, EraseSDCardText1:Landroid/widget/TextView;
    const v5, 0x7f080950

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 193
    iget-object v5, p0, Lcom/android/settings_ex/MasterClear;->mContentView:Landroid/view/View;

    const v6, 0x7f0b00fc

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 194
    .local v1, EraseSDCardText2:Landroid/widget/TextView;
    const v5, 0x7f080951

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 197
    .end local v0           #EraseSDCardText1:Landroid/widget/TextView;
    .end local v1           #EraseSDCardText2:Landroid/widget/TextView;
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/MasterClear;->loadAccountList()V

    .line 198
    invoke-direct {p0}, Lcom/android/settings_ex/MasterClear;->updateSDCardView()V

    .line 199
    return-void

    .restart local v2       #externalAlsoErased:Landroid/view/View;
    .restart local v3       #externalOption:Landroid/view/View;
    :cond_2
    move v5, v6

    .line 179
    goto :goto_0

    .line 181
    .end local v2           #externalAlsoErased:Landroid/view/View;
    .end local v3           #externalOption:Landroid/view/View;
    :cond_3
    iget-object v5, p0, Lcom/android/settings_ex/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    new-instance v6, Lcom/android/settings_ex/MasterClear$2;

    invoke-direct {v6, p0}, Lcom/android/settings_ex/MasterClear$2;-><init>(Lcom/android/settings_ex/MasterClear;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method private getStorageVolumeForSD()Landroid/os/storage/StorageVolume;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 352
    iget-object v4, p0, Lcom/android/settings_ex/MasterClear;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v4, :cond_0

    .line 353
    invoke-virtual {p0}, Lcom/android/settings_ex/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v6, "storage"

    invoke-virtual {v4, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageManager;

    iput-object v4, p0, Lcom/android/settings_ex/MasterClear;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 354
    iget-object v4, p0, Lcom/android/settings_ex/MasterClear;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v6, p0, Lcom/android/settings_ex/MasterClear;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v4, v6}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 357
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/MasterClear;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v4}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 358
    .local v3, storageVolumes:[Landroid/os/storage/StorageVolume;
    if-nez v3, :cond_2

    move-object v2, v5

    .line 367
    :cond_1
    :goto_0
    return-object v2

    .line 360
    :cond_2
    array-length v1, v3

    .line 361
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 362
    aget-object v2, v3, v0

    .line 363
    .local v2, storageVolume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v4

    const/4 v6, 0x1

    if-eq v4, v6, :cond_1

    .line 361
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v2           #storageVolume:Landroid/os/storage/StorageVolume;
    :cond_3
    move-object v2, v5

    .line 367
    goto :goto_0
.end method

.method private isExtStorageEncrypted()Z
    .locals 2

    .prologue
    .line 202
    const-string v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, state:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadAccountList()V
    .locals 25

    .prologue
    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f0b00f6

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 208
    .local v7, accountsLabel:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f0b00f7

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 209
    .local v10, contents:Landroid/widget/LinearLayout;
    invoke-virtual {v10}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v11

    .line 213
    .local v11, context:Landroid/content/Context;
    invoke-static {v11}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v20

    .line 214
    .local v20, mgr:Landroid/accounts/AccountManager;
    invoke-virtual/range {v20 .. v20}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v6

    .line 215
    .local v6, accounts:[Landroid/accounts/Account;
    array-length v4, v6

    .line 216
    .local v4, N:I
    if-nez v4, :cond_0

    .line 217
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 218
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 279
    :goto_0
    return-void

    .line 222
    :cond_0
    const-string v22, "layout_inflater"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/LayoutInflater;

    .line 225
    .local v17, inflater:Landroid/view/LayoutInflater;
    invoke-static {v11}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v13

    .line 226
    .local v13, descs:[Landroid/accounts/AuthenticatorDescription;
    array-length v3, v13

    .line 228
    .local v3, M:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_1
    if-ge v15, v4, :cond_7

    .line 229
    aget-object v5, v6, v15

    .line 230
    .local v5, account:Landroid/accounts/Account;
    iget-object v0, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "com.fusionone.account"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 228
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 233
    :cond_1
    const/4 v12, 0x0

    .line 234
    .local v12, desc:Landroid/accounts/AuthenticatorDescription;
    const/16 v19, 0x0

    .local v19, j:I
    :goto_3
    move/from16 v0, v19

    if-ge v0, v3, :cond_2

    .line 235
    iget-object v0, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v22, v0

    aget-object v23, v13, v19

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 236
    aget-object v12, v13, v19

    .line 240
    :cond_2
    if-nez v12, :cond_4

    .line 241
    const-string v22, "MasterClear"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "No descriptor for account name="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-object v0, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " type="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-object v0, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 234
    :cond_3
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 245
    :cond_4
    const/16 v16, 0x0

    .line 247
    .local v16, icon:Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v0, v12, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v8

    .line 248
    .local v8, authContext:Landroid/content/Context;
    if-eqz v8, :cond_5

    iget v0, v12, Landroid/accounts/AuthenticatorDescription;->iconId:I

    move/from16 v22, v0

    if-eqz v22, :cond_5

    .line 249
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    iget v0, v12, Landroid/accounts/AuthenticatorDescription;->iconId:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .line 265
    .end local v8           #authContext:Landroid/content/Context;
    :cond_5
    :goto_4
    const v22, 0x7f04005c

    const/16 v23, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v10, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 267
    .local v9, child:Landroid/widget/LinearLayout;
    const v22, 0x7f0b0031

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 268
    .local v21, tv:Landroid/widget/TextView;
    iget-object v0, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    const v22, 0x7f0b0039

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    .line 271
    .local v18, iv:Landroid/widget/ImageView;
    if-eqz v16, :cond_6

    .line 272
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 274
    :cond_6
    invoke-virtual {v10, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 250
    .end local v9           #child:Landroid/widget/LinearLayout;
    .end local v18           #iv:Landroid/widget/ImageView;
    .end local v21           #tv:Landroid/widget/TextView;
    :catch_0
    move-exception v14

    .line 251
    .local v14, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v22, "MasterClear"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "No icon for account type "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-object v0, v12, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 277
    .end local v5           #account:Landroid/accounts/Account;
    .end local v12           #desc:Landroid/accounts/AuthenticatorDescription;
    .end local v14           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v16           #icon:Landroid/graphics/drawable/Drawable;
    .end local v19           #j:I
    :cond_7
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 278
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 4
    .parameter "request"

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/android/settings_ex/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 82
    .local v0, res:Landroid/content/res/Resources;
    new-instance v1, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    const v2, 0x7f0803ac

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f080a03

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method private showFinalConfirmation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 106
    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "USC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 108
    const-string v1, "com.android.settings_ex"

    const-string v2, "com.android.settings_ex.Settings$MasterClearConfirm"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    iget-object v1, p0, Lcom/android/settings_ex/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    const-string v1, "erase_sd"

    iget-object v2, p0, Lcom/android/settings_ex/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 114
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/MasterClear;->startActivity(Landroid/content/Intent;)V

    .line 125
    :goto_1
    return-void

    .line 112
    :cond_1
    const-string v1, "erase_sd"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 116
    :cond_2
    new-instance v1, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 117
    const-class v0, Lcom/android/settings_ex/MasterClearConfirm;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 118
    const v0, 0x7f0803af

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 119
    iget-object v0, p0, Lcom/android/settings_ex/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 120
    invoke-virtual {v1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "erase_sd"

    iget-object v3, p0, Lcom/android/settings_ex/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 123
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings_ex/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/preference/PreferenceActivity;->onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z

    goto :goto_1

    .line 122
    :cond_3
    invoke-virtual {v1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "erase_sd"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2
.end method

.method private updateSDCardView()V
    .locals 7

    .prologue
    .line 315
    iget-object v5, p0, Lcom/android/settings_ex/MasterClear;->mSDCardStorageVolume:Landroid/os/storage/StorageVolume;

    if-nez v5, :cond_0

    .line 316
    invoke-direct {p0}, Lcom/android/settings_ex/MasterClear;->getStorageVolumeForSD()Landroid/os/storage/StorageVolume;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/MasterClear;->mSDCardStorageVolume:Landroid/os/storage/StorageVolume;

    .line 318
    :cond_0
    iget-object v5, p0, Lcom/android/settings_ex/MasterClear;->mSDCardStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settings_ex/MasterClear;->mSDCardStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 319
    iget-object v5, p0, Lcom/android/settings_ex/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 321
    iget-object v5, p0, Lcom/android/settings_ex/MasterClear;->mContentView:Landroid/view/View;

    const v6, 0x7f0b00f8

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 322
    .local v2, externalOption:Landroid/view/View;
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 324
    iget-object v5, p0, Lcom/android/settings_ex/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    new-instance v6, Lcom/android/settings_ex/MasterClear$3;

    invoke-direct {v6, p0}, Lcom/android/settings_ex/MasterClear$3;-><init>(Lcom/android/settings_ex/MasterClear;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    .end local v2           #externalOption:Landroid/view/View;
    :cond_1
    const-string v4, ""

    .line 334
    .local v4, state:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings_ex/MasterClear;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings_ex/MasterClear;->mSDCardStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v5, :cond_2

    .line 335
    iget-object v5, p0, Lcom/android/settings_ex/MasterClear;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v6, p0, Lcom/android/settings_ex/MasterClear;->mSDCardStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 337
    :cond_2
    const/4 v3, 0x0

    .line 338
    .local v3, mountSDCard:Z
    const-string v5, "mounted"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 339
    const/4 v3, 0x0

    .line 343
    :goto_0
    iget-object v5, p0, Lcom/android/settings_ex/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 344
    iget-object v5, p0, Lcom/android/settings_ex/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    invoke-virtual {v5, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 345
    iget-object v5, p0, Lcom/android/settings_ex/MasterClear;->mContentView:Landroid/view/View;

    const v6, 0x7f0b00fb

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 346
    .local v0, EraseSDCardText1:Landroid/widget/TextView;
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 347
    iget-object v5, p0, Lcom/android/settings_ex/MasterClear;->mContentView:Landroid/view/View;

    const v6, 0x7f0b00fc

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 348
    .local v1, EraseSDCardText2:Landroid/widget/TextView;
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 349
    return-void

    .line 341
    .end local v0           #EraseSDCardText1:Landroid/widget/TextView;
    .end local v1           #EraseSDCardText2:Landroid/widget/TextView;
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 90
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 92
    const/16 v0, 0x37

    if-eq p1, v0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 98
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 99
    invoke-direct {p0}, Lcom/android/settings_ex/MasterClear;->showFinalConfirmation()V

    goto :goto_0

    .line 101
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/MasterClear;->establishInitialState()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 284
    const v0, 0x7f04005b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/MasterClear;->mContentView:Landroid/view/View;

    .line 286
    invoke-virtual {p0}, Lcom/android/settings_ex/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {p0}, Lcom/android/settings_ex/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0803a1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 290
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/MasterClear;->establishInitialState()V

    .line 291
    iget-object v0, p0, Lcom/android/settings_ex/MasterClear;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/settings_ex/MasterClear;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/MasterClear;->mStorageListener:Landroid/os/storage/StorageEventListener;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/settings_ex/MasterClear;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings_ex/MasterClear;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 299
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 300
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 306
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_0

    .line 307
    invoke-static {}, Lcom/android/settings_ex/MDMSettingsAdapter;->getInstance()Lcom/android/settings_ex/MDMSettingsAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/settings_ex/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/MasterClear;->mInitiateButton:Landroid/widget/Button;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings_ex/MDMSettingsAdapter;->setFactoryResetButton(Landroid/content/ComponentName;Landroid/content/Context;Landroid/widget/Button;)V

    .line 310
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 311
    return-void
.end method
