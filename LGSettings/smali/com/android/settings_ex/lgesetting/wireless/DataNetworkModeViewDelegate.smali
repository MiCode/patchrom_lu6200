.class public Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegate;
.super Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;
.source "DataNetworkModeViewDelegate.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegate;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegate;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;)V
    .locals 0
    .parameter "aActivity"
    .parameter "aManager"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;-><init>(Landroid/content/Context;Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;)V

    .line 22
    return-void
.end method


# virtual methods
.method public createPostDescriptionDialog(ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 1
    .parameter "aMode"
    .parameter "aDefaultOnOkClickListener"
    .parameter "aDefaultOnCancelClickListener"
    .parameter "aDefaultOnCancelListener"

    .prologue
    .line 75
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public createPreDescriptionDialog(ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 9
    .parameter "aId"
    .parameter "aDefaultOnOkClickListener"
    .parameter "aDefaultOnCancelClickListener"
    .parameter "aDefaultOnCancelListener"

    .prologue
    const v8, 0x7f08094f

    const v7, 0x7f0807fc

    const v6, 0x1010355

    .line 30
    add-int/lit8 v2, p1, -0x1

    .line 31
    .local v2, position:I
    const/4 v0, 0x0

    .line 32
    .local v0, dialog:Landroid/app/Dialog;
    invoke-virtual {p0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegate;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;

    .line 33
    .local v1, item:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;
    invoke-virtual {v1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;->getValue()I

    move-result v3

    .line 35
    .local v3, value:I
    invoke-virtual {v1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;->isCheckable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 37
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegate;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v7, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, p4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 57
    :goto_0
    return-object v0

    .line 47
    :cond_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegate;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v7, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0807fa

    invoke-virtual {v4, v5, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, p4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0
.end method

.method protected getPreDescriptionDialogId(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;)I
    .locals 1
    .parameter "aItem"

    .prologue
    .line 63
    invoke-virtual {p1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;->isCheckable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    const/4 v0, 0x0

    .line 66
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;->getPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onCreateItem(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;)V
    .locals 0
    .parameter "aItem"

    .prologue
    .line 85
    return-void
.end method
