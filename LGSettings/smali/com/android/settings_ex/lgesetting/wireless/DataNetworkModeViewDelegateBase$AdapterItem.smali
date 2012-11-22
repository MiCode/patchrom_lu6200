.class public Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;
.super Ljava/lang/Object;
.source "DataNetworkModeViewDelegateBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdapterItem"
.end annotation


# instance fields
.field private mCheckable:Z

.field private mDescription:Ljava/lang/String;

.field private mEnabled:Z

.field private mLabel:Ljava/lang/String;

.field private mOnUpdateListener:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$OnUpdateViewListener;

.field private mPosition:I

.field private mSelected:Z

.field private mUnselectedWhenDisabled:Z

.field private mValue:I

.field final synthetic this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;ILjava/lang/String;ILjava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter "aPosition"
    .parameter "aLabel"
    .parameter "aValue"
    .parameter "aDescription"
    .parameter "aCheckable"

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;->mEnabled:Z

    iput p2, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;->mPosition:I

    iput-object p3, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;->mLabel:Ljava/lang/String;

    iput p4, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;->mValue:I

    iput-object p5, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;->mDescription:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;->mCheckable:Z

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;->mPosition:I

    return v0
.end method

.method public getResourceId()I
    .locals 1

    .prologue
    .line 279
    const v0, 0x7f0400c8

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;->mValue:I

    return v0
.end method

.method public isCheckable()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;->mCheckable:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;->mEnabled:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;->mSelected:Z

    return v0
.end method

.method public isUnselectedWhenDisabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;->mUnselectedWhenDisabled:Z

    return v0
.end method

.method public onUpdateView(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;)V
    .locals 1
    .parameter "aItem"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;->mOnUpdateListener:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$OnUpdateViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;->mOnUpdateListener:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$OnUpdateViewListener;

    invoke-interface {v0, p1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$OnUpdateViewListener;->onUpdateView(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;)V

    :cond_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .parameter "aSelected"

    .prologue
    iput-boolean p1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase$AdapterItem;->mSelected:Z

    return-void
.end method
