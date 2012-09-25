.class public Lcom/android/settings_ex/accounts/ManageAccountsSettings;
.super Lcom/android/settings_ex/accounts/AccountPreferenceBase;
.source "ManageAccountsSettings.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;
.implements Lcom/android/settings_ex/DialogCreatable;


# instance fields
.field private final MANAGE_ACCOUNTS_BUA_PLUS_KEY:Ljava/lang/String;

.field private accountsGroup:Landroid/preference/PreferenceGroup;

.field private generalAccountsCategory:Landroid/preference/PreferenceCategory;

.field private isMyPhoneBook:Z

.field private lgAccountsCategory:Landroid/preference/PreferenceCategory;

.field private mAuthorities:[Ljava/lang/String;

.field private mAutoSyncSwitch:Landroid/widget/Switch;

.field private mDialogFragment:Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;

.field private mErrorInfoView:Landroid/widget/TextView;

.field private mManageAccountsBuaPlus:Landroid/preference/Preference;

.field private vzwAccountsCategory:Landroid/preference/PreferenceCategory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;-><init>()V

    .line 97
    const-string v0, "manageAccountsBUAPlus"

    iput-object v0, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->MANAGE_ACCOUNTS_BUA_PLUS_KEY:Ljava/lang/String;

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->isMyPhoneBook:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/accounts/ManageAccountsSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->removeEmptyCategories()V

    return-void
.end method

.method private appIsEnabled()Z
    .locals 5

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 253
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 256
    .local v1, info:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    const-string v3, "com.lge.cloudvmm"

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 260
    iget-boolean v3, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    :goto_0
    return v3

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private cloudEnable()Z
    .locals 5

    .prologue
    .line 645
    const/4 v1, 0x0

    .line 646
    .local v1, result:Z
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 647
    .local v0, pm:Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_0

    .line 648
    const-string v2, "BUA+"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pm.hasSystemFeature(com.lge.cloudservice.enabled); : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "com.lge.cloudservice.enabled"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    const-string v2, "com.lge.cloudservice.enabled"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    .line 653
    :cond_0
    return v1
.end method

.method private confirmDialog()V
    .locals 4

    .prologue
    .line 265
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08094f

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08044e

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/android/settings_ex/accounts/ManageAccountsSettings$3;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings$3;-><init>(Lcom/android/settings_ex/accounts/ManageAccountsSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08044f

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/android/settings_ex/accounts/ManageAccountsSettings$2;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings$2;-><init>(Lcom/android/settings_ex/accounts/ManageAccountsSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0809f1

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 287
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 288
    return-void
.end method

.method private getMyPhonebookName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 700
    const/4 v0, 0x0

    .line 701
    .local v0, str:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "myphonebook_FN"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 702
    if-nez v0, :cond_0

    .line 703
    const-string v0, "MyPhonebook"

    .line 705
    :cond_0
    return-object v0
.end method

.method private isAABAccount(Lcom/android/settings_ex/AccountPreference;)Z
    .locals 2
    .parameter "accountPref"

    .prologue
    .line 446
    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ATT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/settings_ex/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v1, "com.att.aab"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    invoke-virtual {p1}, Lcom/android/settings_ex/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/settings_ex/AccountPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 448
    invoke-virtual {p1}, Lcom/android/settings_ex/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->setSummary(Landroid/accounts/Account;Lcom/android/settings_ex/AccountPreference;)V

    .line 449
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/android/settings_ex/AccountPreference;->setSyncStatus(I)V

    .line 450
    const/4 v0, 0x1

    .line 452
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNotLGAccount(Ljava/lang/String;)Z
    .locals 1
    .parameter "accountType"

    .prologue
    .line 519
    const-string v0, "com.lge.myphonebook"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    const/4 v0, 0x0

    .line 522
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isVisibleAccounts(Landroid/accounts/Account;)Z
    .locals 4
    .parameter "account"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 527
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v3, "com.mobileleader.sync"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 546
    :cond_0
    :goto_0
    return v0

    .line 529
    :cond_1
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v3, "com.lge.sync"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 531
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v3, "com.att.aab"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ATT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 533
    :cond_2
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v3, "com.fusionone.account"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 534
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "i_vzw"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 535
    goto :goto_0

    .line 539
    :cond_3
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v3, "com.lge.myphonebook"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->showMyPhoneBookAccount()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 540
    iput-boolean v1, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->isMyPhoneBook:Z

    :cond_4
    move v0, v1

    .line 546
    goto :goto_0

    .line 541
    :cond_5
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v3, "com.lge.myphonebook"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->showMyPhoneBookAccount()Z

    move-result v2

    if-nez v2, :cond_4

    .line 542
    iput-boolean v0, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->isMyPhoneBook:Z

    goto :goto_0
.end method

.method private removeEmptyCategories()V
    .locals 4

    .prologue
    .line 605
    const/4 v1, 0x1

    .line 606
    .local v1, updateFromInit:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->accountsGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 607
    iget-object v2, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->accountsGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    instance-of v2, v2, Lcom/android/settings_ex/AccountPreference;

    if-eqz v2, :cond_2

    .line 608
    const/4 v1, 0x0

    .line 613
    :cond_0
    if-nez v1, :cond_3

    .line 614
    const-string v2, "hsmodel"

    const-string v3, "updateFromMid"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    iget-object v2, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->accountsGroup:Landroid/preference/PreferenceGroup;

    iget-object v3, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->lgAccountsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 616
    iget-object v2, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->accountsGroup:Landroid/preference/PreferenceGroup;

    iget-object v3, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->generalAccountsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 636
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->cloudEnable()Z

    move-result v2

    if-nez v2, :cond_6

    .line 637
    iget-object v2, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->accountsGroup:Landroid/preference/PreferenceGroup;

    iget-object v3, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->vzwAccountsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 641
    :goto_2
    return-void

    .line 606
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 618
    :cond_3
    const-string v2, "hsmodel"

    const-string v3, "updateFrominit"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    iget-object v2, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->accountsGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 620
    iget-object v2, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->accountsGroup:Landroid/preference/PreferenceGroup;

    iget-object v3, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->generalAccountsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 621
    iget-object v2, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->accountsGroup:Landroid/preference/PreferenceGroup;

    iget-object v3, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->lgAccountsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 622
    iget-object v2, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->lgAccountsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v2

    if-nez v2, :cond_5

    .line 623
    const/4 v0, 0x0

    :goto_3
    iget-object v2, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->generalAccountsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 624
    iget-object v2, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->accountsGroup:Landroid/preference/PreferenceGroup;

    iget-object v3, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->generalAccountsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 623
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 626
    :cond_4
    iget-object v2, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->accountsGroup:Landroid/preference/PreferenceGroup;

    iget-object v3, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->lgAccountsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 627
    iget-object v2, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->accountsGroup:Landroid/preference/PreferenceGroup;

    iget-object v3, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->generalAccountsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 629
    :cond_5
    iget-object v2, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->generalAccountsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 630
    iget-object v2, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->accountsGroup:Landroid/preference/PreferenceGroup;

    iget-object v3, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->generalAccountsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 639
    :cond_6
    iget-object v2, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->accountsGroup:Landroid/preference/PreferenceGroup;

    iget-object v3, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->vzwAccountsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_2
.end method

.method private resetPreferences()V
    .locals 2

    .prologue
    .line 589
    iget-object v0, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->lgAccountsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 590
    iget-object v0, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->generalAccountsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 591
    iget-object v0, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->accountsGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 593
    iget-object v0, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->accountsGroup:Landroid/preference/PreferenceGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 594
    iget-object v0, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->accountsGroup:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->generalAccountsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 595
    iget-object v0, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->accountsGroup:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->lgAccountsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 596
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->cloudEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->accountsGroup:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->vzwAccountsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 601
    :goto_0
    return-void

    .line 599
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->accountsGroup:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->vzwAccountsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private setMyPhoneBookAccount(Lcom/android/settings_ex/AccountPreference;)V
    .locals 2
    .parameter "accountPref"

    .prologue
    .line 457
    invoke-virtual {p1}, Lcom/android/settings_ex/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v1, "com.lge.myphonebook"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->isMyPhoneBook:Z

    if-eqz v0, :cond_0

    .line 458
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->getMyPhonebookName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings_ex/AccountPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 459
    invoke-virtual {p1}, Lcom/android/settings_ex/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->setSummary(Landroid/accounts/Account;Lcom/android/settings_ex/AccountPreference;)V

    .line 463
    :cond_0
    return-void
.end method

.method private setSummary(Landroid/accounts/Account;Lcom/android/settings_ex/AccountPreference;)V
    .locals 3
    .parameter "account"
    .parameter "preference"

    .prologue
    .line 556
    const-string v1, ""

    .line 558
    .local v1, providerName:Ljava/lang/String;
    :try_start_0
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 565
    :goto_0
    invoke-virtual {p2, v1}, Lcom/android/settings_ex/AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 566
    return-void

    .line 559
    :catch_0
    move-exception v0

    .line 560
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 561
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 562
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setTitle(Lcom/android/settings_ex/AccountPreference;)V
    .locals 1
    .parameter "preference"

    .prologue
    .line 550
    invoke-virtual {p1}, Lcom/android/settings_ex/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings_ex/AccountPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 552
    return-void
.end method

.method private showMyPhoneBookAccount()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 710
    .line 712
    const-string v0, "com.lge.myphonebook.db.provider.MyPhonebookProvider"

    .line 713
    const-string v0, "content://com.lge.myphonebook.db.provider.MyPhonebookProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 714
    const-string v1, "show_account"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 715
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 716
    if-eqz v1, :cond_0

    .line 718
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move v0, v6

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_1

    .line 719
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 718
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 724
    :catch_0
    move-exception v0

    .line 725
    :try_start_1
    const-string v2, "AccountSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception Msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 727
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 730
    :cond_0
    :goto_1
    return v6

    .line 721
    :cond_1
    if-eqz v0, :cond_2

    .line 722
    const/4 v0, 0x1

    .line 727
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v6, v0

    .line 728
    goto :goto_1

    .line 727
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    move v0, v6

    goto :goto_2
.end method

.method private startAccountSettings(Lcom/android/settings_ex/AccountPreference;)V
    .locals 7
    .parameter

    .prologue
    .line 293
    invoke-virtual {p1}, Lcom/android/settings_ex/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v1, "com.att.aab"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.STARTLGAAB"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 309
    :goto_0
    return-void

    .line 297
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings_ex/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v1, "com.lge.myphonebook"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    const-string v0, "hsmodel"

    const-string v1, "intent for TMO_1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.TMO_SYNCML_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 302
    :cond_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 303
    const-string v0, "account"

    invoke-virtual {p1}, Lcom/android/settings_ex/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 304
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings_ex/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f080600

    invoke-virtual {p1}, Lcom/android/settings_ex/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v4

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v6, 0x1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0
.end method

.method private updateSyncStatus(Landroid/preference/PreferenceGroup;Landroid/content/SyncInfo;Ljava/util/HashSet;)Z
    .locals 9
    .parameter "prefGroup"
    .parameter "currentSync"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/PreferenceGroup;",
            "Landroid/content/SyncInfo;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 370
    .local p3, userFacing:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 371
    .local v1, anySyncFailed:Z
    const-string v6, "hsmodel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "count : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const/4 v3, 0x0

    .local v3, i:I
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    .local v2, count:I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 374
    invoke-virtual {p1, v3}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    .line 375
    .local v4, pref:Landroid/preference/Preference;
    instance-of v6, v4, Lcom/android/settings_ex/AccountPreference;

    if-eqz v6, :cond_1

    move-object v0, v4

    .line 376
    check-cast v0, Lcom/android/settings_ex/AccountPreference;

    .line 377
    .local v0, accountPref:Lcom/android/settings_ex/AccountPreference;
    invoke-direct {p0, v0, p2, p3}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->updateSyncStatus(Lcom/android/settings_ex/AccountPreference;Landroid/content/SyncInfo;Ljava/util/HashSet;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 378
    const/4 v1, 0x1

    .line 373
    .end local v0           #accountPref:Lcom/android/settings_ex/AccountPreference;
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 380
    :cond_1
    instance-of v6, v4, Landroid/preference/PreferenceGroup;

    if-eqz v6, :cond_0

    move-object v5, v4

    .line 381
    check-cast v5, Landroid/preference/PreferenceGroup;

    .line 382
    .local v5, subGroup:Landroid/preference/PreferenceGroup;
    invoke-direct {p0, v5, p2, p3}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->updateSyncStatus(Landroid/preference/PreferenceGroup;Landroid/content/SyncInfo;Ljava/util/HashSet;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 383
    const/4 v1, 0x1

    goto :goto_1

    .line 387
    .end local v4           #pref:Landroid/preference/Preference;
    .end local v5           #subGroup:Landroid/preference/PreferenceGroup;
    :cond_2
    return v1
.end method

.method private updateSyncStatus(Lcom/android/settings_ex/AccountPreference;Landroid/content/SyncInfo;Ljava/util/HashSet;)Z
    .locals 17
    .parameter "accountPref"
    .parameter "currentSync"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings_ex/AccountPreference;",
            "Landroid/content/SyncInfo;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 391
    .local p3, userFacing:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/settings_ex/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    .line 393
    .local v1, account:Landroid/accounts/Account;
    invoke-direct/range {p0 .. p1}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->isAABAccount(Lcom/android/settings_ex/AccountPreference;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 394
    const/4 v11, 0x0

    .line 441
    :goto_0
    return v11

    .line 395
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->setMyPhoneBookAccount(Lcom/android/settings_ex/AccountPreference;)V

    .line 397
    const/4 v9, 0x0

    .line 398
    .local v9, syncCount:I
    const/4 v11, 0x0

    .line 399
    .local v11, syncIsFailing:Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/settings_ex/AccountPreference;->getAuthorities()Ljava/util/ArrayList;

    move-result-object v3

    .line 400
    .local v3, authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v3, :cond_6

    .line 401
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 402
    .local v4, authority:Ljava/lang/String;
    invoke-static {v1, v4}, Landroid/content/ContentResolver;->getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncStatusInfo;

    move-result-object v8

    .line 403
    .local v8, status:Landroid/content/SyncStatusInfo;
    invoke-static {v1, v4}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-static {v1, v4}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v13

    if-lez v13, :cond_2

    const/4 v10, 0x1

    .line 406
    .local v10, syncEnabled:Z
    :goto_2
    invoke-static {v1, v4}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v5

    .line 407
    .local v5, authorityIsPending:Z
    if-eqz p2, :cond_3

    move-object/from16 v0, p2

    iget-object v13, v0, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    new-instance v13, Landroid/accounts/Account;

    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    iget-object v14, v14, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v15, v0, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    iget-object v15, v15, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {v13, v14, v15}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    const/4 v2, 0x1

    .line 411
    .local v2, activelySyncing:Z
    :goto_3
    if-eqz v8, :cond_4

    if-eqz v10, :cond_4

    iget-wide v13, v8, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-eqz v13, :cond_4

    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Landroid/content/SyncStatusInfo;->getLastFailureMesgAsInt(I)I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_4

    const/4 v7, 0x1

    .line 416
    .local v7, lastSyncFailed:Z
    :goto_4
    if-eqz v7, :cond_1

    if-nez v2, :cond_1

    if-nez v5, :cond_1

    .line 417
    const/4 v11, 0x1

    .line 419
    :cond_1
    if-eqz v10, :cond_5

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    const/4 v13, 0x1

    :goto_5
    add-int/2addr v9, v13

    .line 420
    goto :goto_1

    .line 403
    .end local v2           #activelySyncing:Z
    .end local v5           #authorityIsPending:Z
    .end local v7           #lastSyncFailed:Z
    .end local v10           #syncEnabled:Z
    :cond_2
    const/4 v10, 0x0

    goto :goto_2

    .line 407
    .restart local v5       #authorityIsPending:Z
    .restart local v10       #syncEnabled:Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    .line 411
    .restart local v2       #activelySyncing:Z
    :cond_4
    const/4 v7, 0x0

    goto :goto_4

    .line 419
    .restart local v7       #lastSyncFailed:Z
    :cond_5
    const/4 v13, 0x0

    goto :goto_5

    .line 422
    .end local v2           #activelySyncing:Z
    .end local v4           #authority:Ljava/lang/String;
    .end local v5           #authorityIsPending:Z
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #lastSyncFailed:Z
    .end local v8           #status:Landroid/content/SyncStatusInfo;
    .end local v10           #syncEnabled:Z
    :cond_6
    const-string v13, "AccountSettings"

    const/4 v14, 0x2

    invoke-static {v13, v14}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 423
    const-string v13, "AccountSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "no syncadapters found for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_7
    const/4 v12, 0x1

    .line 427
    .local v12, syncStatus:I
    if-eqz v11, :cond_9

    .line 428
    const/4 v12, 0x2

    .line 437
    :cond_8
    :goto_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/android/settings_ex/AccountPreference;->setSyncStatus(I)V

    .line 439
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mErrorInfoView:Landroid/widget/TextView;

    if-eqz v11, :cond_b

    const/4 v13, 0x0

    :goto_7
    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 429
    :cond_9
    if-nez v9, :cond_a

    .line 430
    const-string v13, "hsmodel"

    const-string v14, "disabled"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const/4 v12, 0x1

    goto :goto_6

    .line 432
    :cond_a
    if-lez v9, :cond_8

    .line 433
    const-string v13, "hsmodel"

    const-string v14, "enabled"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    const/4 v12, 0x0

    goto :goto_6

    .line 439
    :cond_b
    const/16 v13, 0x8

    goto :goto_7
.end method


# virtual methods
.method public bridge synthetic getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 13
    .parameter "accounts"

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    if-nez v11, :cond_0

    .line 516
    :goto_0
    return-void

    .line 467
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->resetPreferences()V

    .line 469
    const/4 v3, 0x0

    .local v3, i:I
    array-length v7, p1

    .local v7, n:I
    :goto_1
    if-ge v3, v7, :cond_7

    .line 470
    aget-object v0, p1, v3

    .line 473
    .local v0, account:Landroid/accounts/Account;
    invoke-direct {p0, v0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->isVisibleAccounts(Landroid/accounts/Account;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 469
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 476
    :cond_2
    iget-object v11, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 478
    .local v2, auths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x1

    .line 479
    .local v10, showAccount:Z
    iget-object v11, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    if-eqz v11, :cond_3

    if-eqz v2, :cond_3

    .line 480
    const/4 v10, 0x0

    .line 481
    iget-object v1, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_3
    if-ge v4, v6, :cond_3

    aget-object v9, v1, v4

    .line 482
    .local v9, requestedAuthority:Ljava/lang/String;
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 483
    const/4 v10, 0x1

    .line 490
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v6           #len$:I
    .end local v9           #requestedAuthority:Ljava/lang/String;
    :cond_3
    if-eqz v10, :cond_1

    .line 491
    iget-object v11, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 492
    .local v5, icon:Landroid/graphics/drawable/Drawable;
    new-instance v8, Lcom/android/settings_ex/AccountPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v8, v11, v0, v5, v2}, Lcom/android/settings_ex/AccountPreference;-><init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/util/ArrayList;)V

    .line 495
    .local v8, preference:Lcom/android/settings_ex/AccountPreference;
    iget-object v11, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v12, "com.lge."

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    iget-object v11, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->isNotLGAccount(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 496
    iget-object v11, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v12, "com.lge.android."

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 497
    const/4 v11, 0x2

    invoke-virtual {v8, v11}, Lcom/android/settings_ex/AccountPreference;->setOrder(I)V

    .line 498
    invoke-direct {p0, v8}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->setTitle(Lcom/android/settings_ex/AccountPreference;)V

    .line 503
    :goto_4
    iget-object v11, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->lgAccountsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v11, v8}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_2

    .line 481
    .end local v5           #icon:Landroid/graphics/drawable/Drawable;
    .end local v8           #preference:Lcom/android/settings_ex/AccountPreference;
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v4       #i$:I
    .restart local v6       #len$:I
    .restart local v9       #requestedAuthority:Ljava/lang/String;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 500
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v6           #len$:I
    .end local v9           #requestedAuthority:Ljava/lang/String;
    .restart local v5       #icon:Landroid/graphics/drawable/Drawable;
    .restart local v8       #preference:Lcom/android/settings_ex/AccountPreference;
    :cond_5
    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Lcom/android/settings_ex/AccountPreference;->setOrder(I)V

    .line 501
    invoke-direct {p0, v0, v8}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->setSummary(Landroid/accounts/Account;Lcom/android/settings_ex/AccountPreference;)V

    goto :goto_4

    .line 505
    :cond_6
    invoke-direct {p0, v0, v8}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->setSummary(Landroid/accounts/Account;Lcom/android/settings_ex/AccountPreference;)V

    .line 506
    iget-object v11, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->generalAccountsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v11, v8}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_2

    .line 514
    .end local v0           #account:Landroid/accounts/Account;
    .end local v2           #auths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5           #icon:Landroid/graphics/drawable/Drawable;
    .end local v8           #preference:Lcom/android/settings_ex/AccountPreference;
    .end local v10           #showAccount:Z
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->onSyncStateUpdated()V

    .line 515
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->removeEmptyCategories()V

    goto/16 :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 166
    invoke-super {p0, p1}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 182
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 183
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->getView()Landroid/view/View;

    move-result-object v2

    .line 185
    .local v2, view:Landroid/view/View;
    const v3, 0x7f0b000e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mErrorInfoView:Landroid/widget/TextView;

    .line 186
    iget-object v3, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mErrorInfoView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 188
    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Landroid/widget/Switch;

    .line 191
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 193
    .local v1, padding:I
    iget-object v3, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 194
    iget-object v3, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Landroid/widget/Switch;

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 195
    iget-object v3, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Landroid/widget/Switch;

    new-instance v4, Lcom/android/settings_ex/accounts/ManageAccountsSettings$1;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings$1;-><init>(Lcom/android/settings_ex/accounts/ManageAccountsSettings;)V

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 204
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "authorities"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    .line 206
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->updateAuthDescriptions()V

    .line 207
    return-void
.end method

.method public onAddAccountClicked()V
    .locals 3

    .prologue
    .line 583
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 584
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "authorities"

    iget-object v2, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 585
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->startActivity(Landroid/content/Intent;)V

    .line 586
    return-void
.end method

.method protected onAuthDescriptionsUpdated()V
    .locals 4

    .prologue
    .line 572
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->accountsGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 573
    iget-object v3, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->accountsGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 574
    .local v2, pref:Landroid/preference/Preference;
    instance-of v3, v2, Lcom/android/settings_ex/AccountPreference;

    if-eqz v3, :cond_0

    .line 575
    iget-object v3, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->accountsGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/AccountPreference;

    .line 576
    .local v0, accountPref:Lcom/android/settings_ex/AccountPreference;
    invoke-virtual {v0}, Lcom/android/settings_ex/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/AccountPreference;->setProviderIcon(Landroid/graphics/drawable/Drawable;)V

    .line 577
    invoke-virtual {v0}, Lcom/android/settings_ex/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 572
    .end local v0           #accountPref:Lcom/android/settings_ex/AccountPreference;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 580
    .end local v2           #pref:Landroid/preference/Preference;
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->onCreate(Landroid/os/Bundle;)V

    .line 112
    const v0, 0x7f060023

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->addPreferencesFromResource(I)V

    .line 114
    const-string v0, "accountGroup"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->accountsGroup:Landroid/preference/PreferenceGroup;

    .line 115
    iget-object v0, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->accountsGroup:Landroid/preference/PreferenceGroup;

    const-string v1, "lgAccountsCategory"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->lgAccountsCategory:Landroid/preference/PreferenceCategory;

    .line 116
    iget-object v0, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->accountsGroup:Landroid/preference/PreferenceGroup;

    const-string v1, "generalAccountsCategory"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->generalAccountsCategory:Landroid/preference/PreferenceCategory;

    .line 117
    iget-object v0, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->accountsGroup:Landroid/preference/PreferenceGroup;

    const-string v1, "backupAssistantCategory"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->vzwAccountsCategory:Landroid/preference/PreferenceCategory;

    .line 118
    const-string v0, "manageAccountsBUAPlus"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mManageAccountsBuaPlus:Landroid/preference/Preference;

    .line 141
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->setHasOptionsMenu(Z)V

    .line 142
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x0

    .line 322
    const/4 v1, 0x1

    const v2, 0x7f080602

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 323
    .local v0, addAccountItem:Landroid/view/MenuItem;
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 325
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 160
    const v1, 0x7f040057

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 161
    .local v0, view:Landroid/view/View;
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 329
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 330
    .local v0, itemId:I
    if-ne v0, v1, :cond_0

    .line 331
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->onAddAccountClicked()V

    .line 334
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic onPause()V
    .locals 0

    .prologue
    .line 74
    invoke-super {p0}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->onPause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferences"
    .parameter "preference"

    .prologue
    .line 220
    instance-of v1, p2, Lcom/android/settings_ex/AccountPreference;

    if-eqz v1, :cond_0

    .line 221
    check-cast p2, Lcom/android/settings_ex/AccountPreference;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->startAccountSettings(Lcom/android/settings_ex/AccountPreference;)V

    .line 246
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 228
    .restart local p2
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mManageAccountsBuaPlus:Landroid/preference/Preference;

    if-ne p2, v1, :cond_2

    .line 230
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->appIsEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 232
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 233
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.lge.cloudvmm"

    const-string v3, "com.lge.cloudvmm.ApplicationGateActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 235
    const/high16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 236
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 237
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 240
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->confirmDialog()V

    goto :goto_0

    .line 244
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public bridge synthetic onResume()V
    .locals 0

    .prologue
    .line 74
    invoke-super {p0}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 6

    .prologue
    const/16 v4, 0x10

    const/4 v5, -0x2

    .line 146
    invoke-super {p0}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->onStart()V

    .line 147
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 148
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, p0, v2, v3}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 149
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 151
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Landroid/widget/Switch;

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const/16 v4, 0x15

    invoke-direct {v3, v5, v5, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 155
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    .line 211
    invoke-super {p0}, Lcom/android/settings_ex/accounts/AccountPreferenceBase;->onStop()V

    .line 212
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 213
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 214
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 215
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 216
    return-void
.end method

.method protected onSyncStateUpdated()V
    .locals 10

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    if-nez v7, :cond_0

    .line 367
    :goto_0
    return-void

    .line 343
    :cond_0
    iget-object v7, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Landroid/widget/Switch;

    if-eqz v7, :cond_1

    .line 344
    iget-object v7, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Landroid/widget/Switch;

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/Switch;->setChecked(Z)V

    .line 346
    sget-boolean v7, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Landroid/widget/Switch;

    if-eqz v7, :cond_1

    .line 347
    invoke-static {}, Lcom/android/settings_ex/MDMSettingsAdapter;->getInstance()Lcom/android/settings_ex/MDMSettingsAdapter;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Landroid/widget/Switch;

    invoke-virtual {v7, v8, v9}, Lcom/android/settings_ex/MDMSettingsAdapter;->setAutoMasterSynceEnableMenu(Landroid/content/ComponentName;Landroid/widget/Switch;)Z

    .line 352
    :cond_1
    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSync()Landroid/content/SyncInfo;

    move-result-object v1

    .line 357
    .local v1, currentSync:Landroid/content/SyncInfo;
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v5

    .line 358
    .local v5, syncAdapters:[Landroid/content/SyncAdapterType;
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 359
    .local v6, userFacing:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, k:I
    array-length v3, v5

    .local v3, n:I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 360
    aget-object v4, v5, v2

    .line 361
    .local v4, sa:Landroid/content/SyncAdapterType;
    invoke-virtual {v4}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 362
    iget-object v7, v4, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 359
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 366
    .end local v4           #sa:Landroid/content/SyncAdapterType;
    :cond_3
    iget-object v7, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->accountsGroup:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v7, v1, v6}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->updateSyncStatus(Landroid/preference/PreferenceGroup;Landroid/content/SyncInfo;Ljava/util/HashSet;)Z

    move-result v0

    .line 367
    .local v0, anySyncFailed:Z
    goto :goto_0
.end method

.method public showDialog(I)V
    .locals 3
    .parameter "dialogId"

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mDialogFragment:Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 314
    const-string v0, "AccountSettings"

    const-string v1, "Old dialog fragment not null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_0
    new-instance v0, Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/android/settings_ex/DialogCreatable;I)V

    iput-object v0, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mDialogFragment:Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 317
    iget-object v0, p0, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->mDialogFragment:Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/SettingsPreferenceFragment$SettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 318
    return-void
.end method
