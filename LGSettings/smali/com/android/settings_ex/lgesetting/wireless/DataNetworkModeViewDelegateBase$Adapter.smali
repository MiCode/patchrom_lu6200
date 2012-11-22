.class public Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$Adapter;
.super Lcom/android/settings_ex/lgesetting/ui/AdapterHelper;
.source "DataNetworkModeViewDelegateBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$Adapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings_ex/lgesetting/ui/AdapterHelper",
        "<",
        "Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter "aContext"
    .parameter "aResourceId"

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$Adapter;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;

    invoke-direct {p0, p2, p3}, Lcom/android/settings_ex/lgesetting/ui/AdapterHelper;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method protected bindView(ILandroid/view/View;Lcom/android/settings_ex/lgesetting/ui/AdapterHelper$BaseViewHolder;)V
    .locals 8
    .parameter "aPosition"
    .parameter "aConvertView"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/View;",
            "Lcom/android/settings_ex/lgesetting/ui/AdapterHelper",
            "<",
            "Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;",
            ">.BaseViewHolder;)V"
        }
    .end annotation

    .prologue
    .local p3, aViewHolder:Lcom/android/settings_ex/lgesetting/ui/AdapterHelper$BaseViewHolder;,"Lcom/android/settings_ex/lgesetting/ui/AdapterHelper<Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;>.BaseViewHolder;"
    const/16 v7, 0x8

    const/4 v6, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;

    .local v1, item:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;
    invoke-virtual {v1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;->isEnabled()Z

    move-result v0

    .local v0, enabled:Z
    invoke-virtual {p2, v0}, Landroid/view/View;->setEnabled(Z)V

    move-object v3, p3

    check-cast v3, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$Adapter$ViewHolder;

    .local v3, vh:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$Adapter$ViewHolder;
    iget-object v4, v3, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$Adapter$ViewHolder;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v3, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$Adapter$ViewHolder;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$Adapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 314
    .local v2, resources:Landroid/content/res/Resources;
    if-eqz v0, :cond_0

    .line 318
    const-string v4, "#FFFFFF"

    .line 326
    :cond_0
    invoke-virtual {v1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;->isCheckable()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v3, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$Adapter$ViewHolder;->mRadioShapeCheckBox:Landroid/widget/RadioButton;

    invoke-virtual {v4, v7}, Landroid/widget/RadioButton;->setVisibility(I)V

    iget-object v4, v3, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$Adapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    invoke-virtual {v1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$Adapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;->isSelected()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_0
    iget-object v4, v3, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$Adapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    :goto_1
    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;->isUnselectedWhenDisabled()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v3, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$Adapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_2
    iget-object v4, v3, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$Adapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;->isSelected()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_3
    iget-object v4, v3, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$Adapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v4, v3, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$Adapter$ViewHolder;->mRadioShapeCheckBox:Landroid/widget/RadioButton;

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setVisibility(I)V

    invoke-virtual {v1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v3, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$Adapter$ViewHolder;->mRadioShapeCheckBox:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;->isSelected()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 349
    :goto_2
    iget-object v4, v3, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$Adapter$ViewHolder;->mRadioShapeCheckBox:Landroid/widget/RadioButton;

    invoke-virtual {v4, v0}, Landroid/widget/RadioButton;->setEnabled(Z)V

    goto :goto_1

    .line 344
    :cond_4
    invoke-virtual {v1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;->isUnselectedWhenDisabled()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, v3, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$Adapter$ViewHolder;->mRadioShapeCheckBox:Landroid/widget/RadioButton;

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_2

    :cond_5
    iget-object v4, v3, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$Adapter$ViewHolder;->mRadioShapeCheckBox:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;->isSelected()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_2
.end method

.method protected newView(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "aPosition"
    .parameter "aParent"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;

    .local v0, item:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;
    invoke-virtual {p0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$Adapter;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;->getResourceId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method protected newViewHolder(ILandroid/view/View;Landroid/view/ViewGroup;)Lcom/android/settings_ex/lgesetting/ui/AdapterHelper$BaseViewHolder;
    .locals 2
    .parameter "aPosition"
    .parameter "aConvertView"
    .parameter "aParent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/View;",
            "Landroid/view/ViewGroup;",
            ")",
            "Lcom/android/settings_ex/lgesetting/ui/AdapterHelper",
            "<",
            "Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;",
            ">.BaseViewHolder;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$Adapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$Adapter$ViewHolder;-><init>(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$Adapter;)V

    .local v0, viewHolder:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$Adapter$ViewHolder;
    const v1, 0x7f0b0107

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$Adapter$ViewHolder;->mLabel:Landroid/widget/TextView;

    .line 361
    const v1, 0x7f0b0251

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, v0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$Adapter$ViewHolder;->mRadioShapeCheckBox:Landroid/widget/RadioButton;

    .line 362
    const v1, 0x7f0b0250

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, v0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$Adapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    .line 364
    return-object v0
.end method
