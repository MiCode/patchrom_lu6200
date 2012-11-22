.class public Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$Adapter$ViewHolder;
.super Lcom/android/settings_ex/lgesetting/ui/AdapterHelper$BaseViewHolder;
.source "DataNetworkModeViewDelegateBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$Adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ViewHolder"
.end annotation


# instance fields
.field mCheckBox:Landroid/widget/CheckBox;

.field mLabel:Landroid/widget/TextView;

.field mRadioShapeCheckBox:Landroid/widget/RadioButton;

.field final synthetic this$1:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$Adapter;


# direct methods
.method protected constructor <init>(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$Adapter;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$Adapter$ViewHolder;->this$1:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$Adapter;

    invoke-direct {p0, p1}, Lcom/android/settings_ex/lgesetting/ui/AdapterHelper$BaseViewHolder;-><init>(Lcom/android/settings_ex/lgesetting/ui/AdapterHelper;)V

    return-void
.end method
