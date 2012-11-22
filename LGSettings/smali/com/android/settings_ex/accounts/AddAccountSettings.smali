.class public Lcom/android/settings_ex/accounts/AddAccountSettings;
.super Landroid/app/Activity;
.source "AddAccountSettings.java"


# instance fields
.field private isFinishedNormally:Z

.field private isTriedLogin:Z

.field private mAddAccountCalled:Z

.field private mCallback:Landroid/accounts/AccountManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v1, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->isTriedLogin:Z

    iput-boolean v1, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->isFinishedNormally:Z

    new-instance v0, Lcom/android/settings_ex/accounts/AddAccountSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/accounts/AddAccountSettings$1;-><init>(Lcom/android/settings_ex/accounts/AddAccountSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mCallback:Landroid/accounts/AccountManagerCallback;

    iput-boolean v1, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mAddAccountCalled:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/accounts/AddAccountSettings;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings_ex/accounts/AddAccountSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->isFinishedNormally:Z

    return p1
.end method

.method private addAccount(Ljava/lang/String;)V
    .locals 9
    .parameter "accountType"

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    iput-boolean v8, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->isTriedLogin:Z

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .local v4, addAccountOptions:Landroid/os/Bundle;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    const-string v0, "pendingIntent"

    iget-object v1, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v6, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mCallback:Landroid/accounts/AccountManagerCallback;

    move-object v1, p1

    move-object v3, v2

    move-object v5, p0

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    iput-boolean v8, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mAddAccountCalled:Z

    return-void
.end method

.method private selectReturnedIntent(Landroid/content/Intent;)Z
    .locals 5
    .parameter "data"

    .prologue
    const/4 v1, 0x1

    const/4 v4, -0x1

    .line 238
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 240
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NEXT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "AccountSettings"

    const-string v3, "Next click"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.lge.setupwizard_flowcontroller.Next"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v4, v0}, Lcom/android/settings_ex/accounts/AddAccountSettings;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AddAccountSettings;->finish()V

    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BACK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "AccountSettings"

    const-string v3, "Back click"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.lge.setupwizard_flowcontroller.Back"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v4, v0}, Lcom/android/settings_ex/accounts/AddAccountSettings;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AddAccountSettings;->finish()V

    goto :goto_0

    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private selectStartActivity()Landroid/content/Intent;
    .locals 5

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AddAccountSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 196
    if-eqz v0, :cond_0

    const-string v2, "SetupWizard"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    :goto_0
    const-string v2, "AccountSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSetupWizard : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings_ex/accounts/ChooseAccountActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_1
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AddAccountSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v2, "indication_max"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "indication_page"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    move v1, v2

    .line 219
    :goto_2
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/settings_ex/accounts/ChooseAccountActivitySetupWizard;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 221
    const-string v3, "SetupWizard"

    const-string v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    const-string v3, "indication_max"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 224
    const-string v1, "indication_page"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object v0, v2

    .line 225
    goto :goto_1

    .line 228
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings_ex/accounts/ChooseAccountActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-nez p2, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/settings_ex/accounts/AddAccountSettings;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AddAccountSettings;->finish()V

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    invoke-direct {p0, p3}, Lcom/android/settings_ex/accounts/AddAccountSettings;->selectReturnedIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    const-string v0, "selected_account"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/accounts/AddAccountSettings;->addAccount(Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    if-eqz p1, :cond_0

    .line 102
    const-string v3, "AddAccountCalled"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mAddAccountCalled:Z

    .line 103
    const-string v3, "AccountSettings"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "AccountSettings"

    const-string v4, "restored"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v3, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mAddAccountCalled:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AddAccountSettings;->finish()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AddAccountSettings;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "authorities"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, authorities:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AddAccountSettings;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "account_types"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, accountTypes:[Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/AddAccountSettings;->selectStartActivity()Landroid/content/Intent;

    move-result-object v2

    .local v2, intent:Landroid/content/Intent;
    if-eqz v1, :cond_2

    const-string v3, "authorities"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    if-eqz v0, :cond_3

    const-string v3, "account_types"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/settings_ex/accounts/AddAccountSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AddAccountSettings;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 162
    .local v1, setupWizardExtras:Landroid/os/Bundle;
    if-eqz v1, :cond_1

    const-string v2, "SetupWizard"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, isSetupWizard:Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_2

    iget-boolean v2, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->isTriedLogin:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->isFinishedNormally:Z

    if-nez v2, :cond_0

    const-string v2, "hsmodel"

    const-string v3, "for proper finish"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/AddAccountSettings;->finish()V

    :cond_0
    :goto_1
    return-void

    .end local v0           #isSetupWizard:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0       #isSetupWizard:Ljava/lang/String;
    :cond_2
    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    const-string v2, "AccountSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSetupWizard : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "AddAccountCalled"

    iget-boolean v1, p0, Lcom/android/settings_ex/accounts/AddAccountSettings;->mAddAccountCalled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "AccountSettings"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AccountSettings"

    const-string v1, "saved"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    return-void
.end method
