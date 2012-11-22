.class public Lcom/android/settings_ex/DataUsageSummary$AppDetailsFragment;
.super Landroid/app/Fragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppDetailsFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1720
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings_ex/DataUsageSummary;[ILjava/lang/CharSequence;)V
    .locals 4
    .parameter "parent"
    .parameter "uids"
    .parameter "label"

    .prologue
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->isAdded()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, args:Landroid/os/Bundle;
    const-string v3, "uids"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    new-instance v1, Lcom/android/settings_ex/DataUsageSummary$AppDetailsFragment;

    invoke-direct {v1}, Lcom/android/settings_ex/DataUsageSummary$AppDetailsFragment;-><init>()V

    .local v1, fragment:Lcom/android/settings_ex/DataUsageSummary$AppDetailsFragment;
    invoke-virtual {v1, v0}, Lcom/android/settings_ex/DataUsageSummary$AppDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3}, Lcom/android/settings_ex/DataUsageSummary$AppDetailsFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 1734
    .local v2, ft:Landroid/app/FragmentTransaction;
    const-string v3, "appDetails"

    invoke-virtual {v2, v1, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1735
    const-string v3, "appDetails"

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1736
    invoke-virtual {v2, p2}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    .line 1737
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method


# virtual methods
.method public onStart()V
    .locals 3

    .prologue
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary$AppDetailsFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/DataUsageSummary;

    .local v0, target:Lcom/android/settings_ex/DataUsageSummary;
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary$AppDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "uids"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    #setter for: Lcom/android/settings_ex/DataUsageSummary;->mAppDetailUids:[I
    invoke-static {v0, v1}, Lcom/android/settings_ex/DataUsageSummary;->access$3302(Lcom/android/settings_ex/DataUsageSummary;[I)[I

    #calls: Lcom/android/settings_ex/DataUsageSummary;->updateBody()V
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->access$100(Lcom/android/settings_ex/DataUsageSummary;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary$AppDetailsFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/DataUsageSummary;

    .local v0, target:Lcom/android/settings_ex/DataUsageSummary;
    const/4 v1, 0x0

    #setter for: Lcom/android/settings_ex/DataUsageSummary;->mAppDetailUids:[I
    invoke-static {v0, v1}, Lcom/android/settings_ex/DataUsageSummary;->access$3302(Lcom/android/settings_ex/DataUsageSummary;[I)[I

    #calls: Lcom/android/settings_ex/DataUsageSummary;->updateBody()V
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->access$100(Lcom/android/settings_ex/DataUsageSummary;)V

    return-void
.end method
