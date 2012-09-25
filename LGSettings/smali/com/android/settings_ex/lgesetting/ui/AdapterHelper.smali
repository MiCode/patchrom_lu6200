.class public abstract Lcom/android/settings_ex/lgesetting/ui/AdapterHelper;
.super Landroid/widget/ArrayAdapter;
.source "AdapterHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/lgesetting/ui/AdapterHelper$BaseViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ITEM:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter",
        "<TITEM;>;"
    }
.end annotation


# instance fields
.field private mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "aContext"
    .parameter "aResourceId"

    .prologue
    .line 22
    .local p0, this:Lcom/android/settings_ex/lgesetting/ui/AdapterHelper;,"Lcom/android/settings_ex/lgesetting/ui/AdapterHelper<TITEM;>;"
    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 24
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings_ex/lgesetting/ui/AdapterHelper;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I[Ljava/lang/Object;)V
    .locals 1
    .parameter "aContext"
    .parameter "aResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I[TITEM;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, this:Lcom/android/settings_ex/lgesetting/ui/AdapterHelper;,"Lcom/android/settings_ex/lgesetting/ui/AdapterHelper<TITEM;>;"
    .local p3, aArrayList:[Ljava/lang/Object;,"[TITEM;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 29
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings_ex/lgesetting/ui/AdapterHelper;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 30
    return-void
.end method


# virtual methods
.method protected abstract bindView(ILandroid/view/View;Lcom/android/settings_ex/lgesetting/ui/AdapterHelper$BaseViewHolder;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/View;",
            "Lcom/android/settings_ex/lgesetting/ui/AdapterHelper",
            "<TITEM;>.BaseViewHolder;)V"
        }
    .end annotation
.end method

.method protected getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 54
    .local p0, this:Lcom/android/settings_ex/lgesetting/ui/AdapterHelper;,"Lcom/android/settings_ex/lgesetting/ui/AdapterHelper<TITEM;>;"
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/ui/AdapterHelper;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 38
    .local p0, this:Lcom/android/settings_ex/lgesetting/ui/AdapterHelper;,"Lcom/android/settings_ex/lgesetting/ui/AdapterHelper<TITEM;>;"
    const/4 v0, 0x0

    .line 40
    .local v0, viewHolder:Lcom/android/settings_ex/lgesetting/ui/AdapterHelper$BaseViewHolder;,"Lcom/android/settings_ex/lgesetting/ui/AdapterHelper<TITEM;>.BaseViewHolder;"
    if-nez p2, :cond_0

    .line 41
    invoke-virtual {p0, p1, p3}, Lcom/android/settings_ex/lgesetting/ui/AdapterHelper;->newView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 42
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settings_ex/lgesetting/ui/AdapterHelper;->newViewHolder(ILandroid/view/View;Landroid/view/ViewGroup;)Lcom/android/settings_ex/lgesetting/ui/AdapterHelper$BaseViewHolder;

    move-result-object v0

    .line 43
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 48
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/settings_ex/lgesetting/ui/AdapterHelper;->bindView(ILandroid/view/View;Lcom/android/settings_ex/lgesetting/ui/AdapterHelper$BaseViewHolder;)V

    .line 50
    return-object p2

    .line 45
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #viewHolder:Lcom/android/settings_ex/lgesetting/ui/AdapterHelper$BaseViewHolder;,"Lcom/android/settings_ex/lgesetting/ui/AdapterHelper<TITEM;>.BaseViewHolder;"
    check-cast v0, Lcom/android/settings_ex/lgesetting/ui/AdapterHelper$BaseViewHolder;

    .restart local v0       #viewHolder:Lcom/android/settings_ex/lgesetting/ui/AdapterHelper$BaseViewHolder;,"Lcom/android/settings_ex/lgesetting/ui/AdapterHelper<TITEM;>.BaseViewHolder;"
    goto :goto_0
.end method

.method protected abstract newView(ILandroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected abstract newViewHolder(ILandroid/view/View;Landroid/view/ViewGroup;)Lcom/android/settings_ex/lgesetting/ui/AdapterHelper$BaseViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/View;",
            "Landroid/view/ViewGroup;",
            ")",
            "Lcom/android/settings_ex/lgesetting/ui/AdapterHelper",
            "<TITEM;>.BaseViewHolder;"
        }
    .end annotation
.end method
