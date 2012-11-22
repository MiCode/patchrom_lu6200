.class public Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmDataDisableFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2039
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings_ex/DataUsageSummary;)V
    .locals 3
    .parameter "parent"

    .prologue
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;

    invoke-direct {v0}, Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;-><init>()V

    .local v0, dialog:Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmDataDisable"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .local v2, context:Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x1010355

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f080142

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 2057
    .local v1, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v3

    .line 2059
    .local v3, enabled:Z
    const-string v4, "SKT"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v6, v4, :cond_1

    if-ne v6, v3, :cond_0

    const v4, 0x7f080879

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    invoke-static {v6}, Lcom/android/settings_ex/DataUsageSummary;->access$3602(Z)Z

    :goto_0
    const v4, 0x104000a

    new-instance v5, Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment$1;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment$1;-><init>(Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2089
    const/high16 v4, 0x104

    new-instance v5, Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment$2;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment$2;-><init>(Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment$3;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment$3;-><init>(Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    :cond_0
    const v4, 0x7f080878

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/settings_ex/DataUsageSummary;->access$3602(Z)Z

    goto :goto_0

    :cond_1
    const v4, 0x7f08064e

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    invoke-static {v6}, Lcom/android/settings_ex/DataUsageSummary;->access$3602(Z)Z

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .parameter "dialog"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/DataUsageSummary;

    .local v0, target:Lcom/android/settings_ex/DataUsageSummary;
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings_ex/DataUsageSummary;->access$3600()Z

    move-result v1

    if-ne v3, v1, :cond_2

    #calls: Lcom/android/settings_ex/DataUsageSummary;->isPositiveResult()Z
    invoke-static {}, Lcom/android/settings_ex/DataUsageSummary;->access$3800()Z

    move-result v1

    if-nez v1, :cond_1

    #calls: Lcom/android/settings_ex/DataUsageSummary;->setMobileDataEnabled(Z)V
    invoke-static {v0, v3}, Lcom/android/settings_ex/DataUsageSummary;->access$1200(Lcom/android/settings_ex/DataUsageSummary;Z)V

    :goto_0
    #calls: Lcom/android/settings_ex/DataUsageSummary;->setConfirmDialogShowed(Z)V
    invoke-static {v2}, Lcom/android/settings_ex/DataUsageSummary;->access$1300(Z)V

    #calls: Lcom/android/settings_ex/DataUsageSummary;->setPositiveResult(Z)V
    invoke-static {v2}, Lcom/android/settings_ex/DataUsageSummary;->access$3700(Z)V

    invoke-static {v2}, Lcom/android/settings_ex/DataUsageSummary;->access$3602(Z)Z

    :cond_0
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    #calls: Lcom/android/settings_ex/DataUsageSummary;->updateBody()V
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->access$100(Lcom/android/settings_ex/DataUsageSummary;)V

    return-void

    :cond_1
    #calls: Lcom/android/settings_ex/DataUsageSummary;->setMobileDataEnabled(Z)V
    invoke-static {v0, v2}, Lcom/android/settings_ex/DataUsageSummary;->access$1200(Lcom/android/settings_ex/DataUsageSummary;Z)V

    goto :goto_0

    :cond_2
    #calls: Lcom/android/settings_ex/DataUsageSummary;->isPositiveResult()Z
    invoke-static {}, Lcom/android/settings_ex/DataUsageSummary;->access$3800()Z

    move-result v1

    if-nez v1, :cond_3

    #calls: Lcom/android/settings_ex/DataUsageSummary;->setMobileDataEnabled(Z)V
    invoke-static {v0, v2}, Lcom/android/settings_ex/DataUsageSummary;->access$1200(Lcom/android/settings_ex/DataUsageSummary;Z)V

    goto :goto_0

    :cond_3
    #calls: Lcom/android/settings_ex/DataUsageSummary;->setMobileDataEnabled(Z)V
    invoke-static {v0, v3}, Lcom/android/settings_ex/DataUsageSummary;->access$1200(Lcom/android/settings_ex/DataUsageSummary;Z)V

    goto :goto_0
.end method
