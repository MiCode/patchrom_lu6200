.class public abstract Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;
.super Ljava/lang/Object;
.source "DataNetworkModeViewDelegateBase.java"

# interfaces
.implements Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$Adapter;,
        Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;,
        Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$OnUpdateViewListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$Adapter;

.field private mContext:Landroid/content/Context;

.field private mModeManager:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;)V
    .locals 0
    .parameter "aContext"
    .parameter "aManager"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;->mModeManager:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;

    return-void
.end method


# virtual methods
.method public createAdapter()Landroid/widget/ListAdapter;
    .locals 14

    .prologue
    new-instance v1, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$Adapter;

    iget-object v3, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;->mContext:Landroid/content/Context;

    const v4, 0x7f0400c8

    invoke-direct {v1, p0, v3, v4}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$Adapter;-><init>(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;->mAdapter:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$Adapter;

    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .local v11, resources:Landroid/content/res/Resources;
    const v1, 0x7f090003

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v10

    .line 93
    .local v10, modes:[I
    const v1, 0x7f090004

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v12

    .line 94
    .local v12, types:[I
    const/4 v8, 0x0

    .line 95
    .local v8, labels:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 96
    .local v7, descriptions:[Ljava/lang/String;
    const-string v1, "LGU"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    const-string v1, "LG-LU5400"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    const v1, 0x7f090002

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 99
    const v1, 0x7f090007

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 109
    :goto_0
    array-length v9, v8

    .line 110
    .local v9, length:I
    const/4 v2, 0x0

    .local v2, index:I
    :goto_1
    if-ge v2, v9, :cond_3

    new-instance v0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;

    aget-object v3, v8, v2

    aget v4, v10, v2

    aget-object v5, v7, v2

    aget v1, v12, v2

    const/4 v6, 0x1

    if-ne v1, v6, :cond_2

    const/4 v6, 0x1

    :goto_2
    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;-><init>(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;ILjava/lang/String;ILjava/lang/String;Z)V

    .local v0, item:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;->onCreateItem(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;)V

    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;->mAdapter:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$Adapter;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$Adapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0           #item:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;
    .end local v2           #index:I
    .end local v9           #length:I
    :cond_0
    const v1, 0x7f090001

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 102
    const v1, 0x7f090006

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 105
    :cond_1
    const/high16 v1, 0x7f09

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 106
    const v1, 0x7f090005

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 111
    .restart local v2       #index:I
    .restart local v9       #length:I
    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    :cond_3
    new-instance v13, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;

    invoke-direct {v13}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;-><init>()V

    .local v13, updateValue:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;
    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;->mModeManager:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;->getMode(Z)I

    move-result v1

    iput v1, v13, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;->mMode:I

    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;->mModeManager:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;->getMode(Z)I

    move-result v1

    iput v1, v13, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;->mOption:I

    invoke-virtual {p0, v13}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;->updateView(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;)V

    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;->mAdapter:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$Adapter;

    return-object v1
.end method

.method public abstract createPostDescriptionDialog(ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
.end method

.method public abstract createPreDescriptionDialog(ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
.end method

.method protected getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;->mAdapter:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$Adapter;

    return-object v0
.end method

.method public getAdapterItem(I)Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;
    .locals 1
    .parameter "aPosition"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;->mAdapter:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$Adapter;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;

    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected abstract getPreDescriptionDialogId(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;)I
.end method

.method public getPreDescriptionDialogId(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;I)I
    .locals 1
    .parameter "aItem"
    .parameter "aBaseId"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;->getPreDescriptionDialogId(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;)I

    move-result v0

    or-int/2addr v0, p2

    return v0
.end method

.method public getSelectedMode()Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;
    .locals 6

    .prologue
    new-instance v3, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;

    invoke-direct {v3}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;-><init>()V

    .local v3, mValue:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;
    iget-object v4, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;->mAdapter:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$Adapter;

    invoke-virtual {v4}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$Adapter;->getCount()I

    move-result v0

    .line 76
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v4, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;->mAdapter:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$Adapter;

    invoke-virtual {v4, v1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;

    .local v2, item:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;
    invoke-virtual {v2}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;->isCheckable()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;->getValue()I

    move-result v4

    iput v4, v3, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;->mOption:I

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, v3, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;->mMode:I

    invoke-virtual {v2}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;->getValue()I

    move-result v5

    or-int/2addr v4, v5

    iput v4, v3, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;->mMode:I

    goto :goto_1

    .end local v2           #item:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;
    :cond_2
    return-object v3
.end method

.method protected abstract onCreateItem(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;)V
.end method

.method public updateView(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;)V
    .locals 10
    .parameter "newValue"

    .prologue
    iget v0, p1, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;->mMode:I

    .local v0, connectionMode:I
    iget v4, p1, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;->mOption:I

    .local v4, option:I
    const-string v7, "DataNetworkModeViewDelegateBase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateView connectionMode ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "option = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;->mAdapter:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$Adapter;

    invoke-virtual {v7}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$Adapter;->getCount()I

    move-result v1

    .local v1, count:I
    const/4 v2, 0x0

    .local v2, index:I
    :goto_0
    if-ge v2, v1, :cond_2

    iget-object v7, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;->mAdapter:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$Adapter;

    invoke-virtual {v7, v2}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;

    .local v3, item:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;
    invoke-virtual {v3}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;->getValue()I

    move-result v6

    .local v6, value:I
    const/4 v5, 0x0

    .local v5, selected:Z
    invoke-virtual {v3}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;->isCheckable()Z

    move-result v7

    if-eqz v7, :cond_1

    if-ne v6, v4, :cond_0

    const/4 v5, 0x1

    :cond_0
    :goto_1
    invoke-virtual {v3, v5}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;->setSelected(Z)V

    invoke-virtual {v3, v3}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;->onUpdateView(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-ne v6, v0, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    .end local v3           #item:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;
    .end local v5           #selected:Z
    .end local v6           #value:I
    :cond_2
    iget-object v7, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;->mAdapter:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$Adapter;

    invoke-virtual {v7}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$Adapter;->notifyDataSetChanged()V

    .line 162
    return-void
.end method

.method public updateViewOnItemClick(I)Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;
    .locals 8
    .parameter "aPosition"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;->mAdapter:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$Adapter;

    invoke-virtual {v5, p1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;

    .local v4, selectedItem:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;
    invoke-virtual {v4}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;->isCheckable()Z

    move-result v0

    .local v0, checkableChanged:Z
    iget-object v5, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;->mAdapter:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$Adapter;

    invoke-virtual {v5}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$Adapter;->getCount()I

    move-result v1

    .line 170
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, index:I
    :goto_0
    if-ge v2, v1, :cond_5

    iget-object v5, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;->mAdapter:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$Adapter;

    invoke-virtual {v5, v2}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;

    .local v3, item:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;
    invoke-virtual {v3}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    if-ne v3, v4, :cond_4

    if-eqz v0, :cond_3

    invoke-virtual {v3}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;->isSelected()Z

    move-result v5

    if-nez v5, :cond_2

    move v5, v6

    :goto_1
    invoke-virtual {v3, v5}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;->setSelected(Z)V

    :cond_0
    :goto_2
    invoke-virtual {v3, v3}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;->onUpdateView(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v5, v7

    goto :goto_1

    :cond_3
    invoke-virtual {v3, v6}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;->setSelected(Z)V

    goto :goto_2

    :cond_4
    if-nez v0, :cond_1

    invoke-virtual {v3}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;->isCheckable()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3, v7}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;->setSelected(Z)V

    goto :goto_2

    .end local v3           #item:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;
    :cond_5
    iget-object v5, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;->mAdapter:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$Adapter;

    invoke-virtual {v5}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$Adapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;->getSelectedMode()Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;

    move-result-object v5

    return-object v5
.end method
