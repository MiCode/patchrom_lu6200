.class public Lcom/android/settings_ex/accounts/ChooseAccountActivitySetupWizard;
.super Lcom/android/settings_ex/accounts/ChooseAccountActivity;
.source "ChooseAccountActivitySetupWizard.java"


# instance fields
.field public TAG:Ljava/lang/String;

.field addAccountSettings:Lcom/android/settings_ex/accounts/AddAccountSettings;

.field private mBackButton:Landroid/widget/Button;

.field private mDescMessage:Landroid/widget/TextView;

.field private mIndication_class:Lcom/android/settings_ex/wifi/indication_class;

.field private mNextButton:Landroid/widget/Button;

.field targetProduct:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/ChooseAccountActivity;-><init>()V

    .line 46
    const-string v0, "ChooseAccountSetup"

    iput-object v0, p0, Lcom/android/settings_ex/accounts/ChooseAccountActivitySetupWizard;->TAG:Ljava/lang/String;

    .line 49
    const-string v0, "ro.build.product"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/accounts/ChooseAccountActivitySetupWizard;->targetProduct:Ljava/lang/String;

    .line 52
    new-instance v0, Lcom/android/settings_ex/accounts/AddAccountSettings;

    invoke-direct {v0}, Lcom/android/settings_ex/accounts/AddAccountSettings;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/accounts/ChooseAccountActivitySetupWizard;->addAccountSettings:Lcom/android/settings_ex/accounts/AddAccountSettings;

    return-void
.end method

.method private isSNSAvailable()Z
    .locals 8

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/ChooseAccountActivitySetupWizard;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 123
    .local v4, pkg:Landroid/content/pm/PackageManager;
    const/16 v5, 0x2000

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 125
    .local v0, appinfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 126
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 127
    .local v3, pi:Landroid/content/pm/PackageInfo;
    iget-object v1, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 128
    .local v1, appname:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings_ex/accounts/ChooseAccountActivitySetupWizard;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "appname = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const-string v5, "com.lge.sns"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 131
    iget-object v5, p0, Lcom/android/settings_ex/accounts/ChooseAccountActivitySetupWizard;->TAG:Ljava/lang/String;

    const-string v6, "isSNSAvailable true - Twitter"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/4 v5, 0x1

    .line 136
    .end local v1           #appname:Ljava/lang/String;
    .end local v3           #pi:Landroid/content/pm/PackageInfo;
    :goto_1
    return v5

    .line 125
    .restart local v1       #appname:Ljava/lang/String;
    .restart local v3       #pi:Landroid/content/pm/PackageInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 135
    .end local v1           #appname:Ljava/lang/String;
    .end local v3           #pi:Landroid/content/pm/PackageInfo;
    :cond_1
    iget-object v5, p0, Lcom/android/settings_ex/accounts/ChooseAccountActivitySetupWizard;->TAG:Ljava/lang/String;

    const-string v6, "isSNSAvailable false"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const/4 v5, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected isVisibleAccount(Ljava/lang/String;)Z
    .locals 4
    .parameter "accountType"

    .prologue
    .line 142
    iget-object v1, p0, Lcom/android/settings_ex/accounts/ChooseAccountActivitySetupWizard;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isVisibleAccount : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-super {p0, p1}, Lcom/android/settings_ex/accounts/ChooseAccountActivity;->isVisibleAccount(Ljava/lang/String;)Z

    move-result v0

    .line 146
    .local v0, bResult:Z
    const-string v1, "com.lge.android.finance.sync"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 147
    :cond_0
    const-string v1, "com.lge.android.weather.sync"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 148
    :cond_1
    const-string v1, "com.lge.android.news.sync"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    .line 149
    :cond_2
    const-string v1, "com.lge.android.todayplus.sync"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    .line 151
    :cond_3
    const-string v1, "com.lge.sns.myspace"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    .line 154
    :cond_4
    const-string v1, "com.android.nttdocomo"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x0

    .line 157
    :cond_5
    const-string v1, "com.kddi.ast.auoneid"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x0

    .line 158
    :cond_6
    const-string v1, "com.kddi.ast.au"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x0

    .line 159
    :cond_7
    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 56
    iget-object v4, p0, Lcom/android/settings_ex/accounts/ChooseAccountActivitySetupWizard;->targetProduct:Ljava/lang/String;

    const-string v5, "p2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 58
    const v4, 0x20a01c2

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/accounts/ChooseAccountActivitySetupWizard;->setTheme(I)V

    .line 60
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/accounts/ChooseAccountActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/ChooseAccountActivitySetupWizard;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 63
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 64
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 65
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/ChooseAccountActivitySetupWizard;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02004d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    :cond_1
    const v4, 0x7f040008

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/accounts/ChooseAccountActivitySetupWizard;->setContentView(I)V

    .line 69
    new-instance v4, Lcom/android/settings_ex/wifi/indication_class;

    invoke-direct {v4, p0, p0}, Lcom/android/settings_ex/wifi/indication_class;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings_ex/accounts/ChooseAccountActivitySetupWizard;->mIndication_class:Lcom/android/settings_ex/wifi/indication_class;

    .line 71
    iget-object v4, p0, Lcom/android/settings_ex/accounts/ChooseAccountActivitySetupWizard;->mIndication_class:Lcom/android/settings_ex/wifi/indication_class;

    if-eqz v4, :cond_2

    .line 73
    const/4 v2, 0x0

    .local v2, max:I
    const/4 v3, 0x0

    .line 74
    .local v3, page_num:I
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/ChooseAccountActivitySetupWizard;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 75
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_2

    .line 77
    const-string v4, "indication_max"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 78
    const-string v4, "indication_page"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 79
    iget-object v4, p0, Lcom/android/settings_ex/accounts/ChooseAccountActivitySetupWizard;->mIndication_class:Lcom/android/settings_ex/wifi/indication_class;

    invoke-virtual {v4, v2, v3}, Lcom/android/settings_ex/wifi/indication_class;->updatePageIndicator(II)V

    .line 83
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #max:I
    .end local v3           #page_num:I
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/ChooseAccountActivitySetupWizard;->isSNSAvailable()Z

    move-result v4

    if-nez v4, :cond_3

    .line 85
    const v4, 0x7f08092a

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/accounts/ChooseAccountActivitySetupWizard;->setTitle(I)V

    .line 86
    const v4, 0x7f0b0010

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/accounts/ChooseAccountActivitySetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ex/accounts/ChooseAccountActivitySetupWizard;->mDescMessage:Landroid/widget/TextView;

    .line 87
    iget-object v4, p0, Lcom/android/settings_ex/accounts/ChooseAccountActivitySetupWizard;->mDescMessage:Landroid/widget/TextView;

    const v5, 0x7f0808b3

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/accounts/ChooseAccountActivitySetupWizard;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    :cond_3
    const v4, 0x7f0b0008

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/accounts/ChooseAccountActivitySetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settings_ex/accounts/ChooseAccountActivitySetupWizard;->mBackButton:Landroid/widget/Button;

    .line 91
    iget-object v4, p0, Lcom/android/settings_ex/accounts/ChooseAccountActivitySetupWizard;->mBackButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/settings_ex/accounts/ChooseAccountActivitySetupWizard$1;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/accounts/ChooseAccountActivitySetupWizard$1;-><init>(Lcom/android/settings_ex/accounts/ChooseAccountActivitySetupWizard;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    const v4, 0x7f0b0009

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/accounts/ChooseAccountActivitySetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settings_ex/accounts/ChooseAccountActivitySetupWizard;->mNextButton:Landroid/widget/Button;

    .line 100
    iget-object v4, p0, Lcom/android/settings_ex/accounts/ChooseAccountActivitySetupWizard;->mNextButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/settings_ex/accounts/ChooseAccountActivitySetupWizard$2;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/accounts/ChooseAccountActivitySetupWizard$2;-><init>(Lcom/android/settings_ex/accounts/ChooseAccountActivitySetupWizard;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 111
    packed-switch p1, :pswitch_data_0

    .line 117
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/accounts/ChooseAccountActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 113
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/accounts/ChooseAccountActivitySetupWizard;->mBackButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 115
    const/4 v0, 0x0

    goto :goto_0

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
