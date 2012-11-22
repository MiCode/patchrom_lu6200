.class public Lcom/android/settings_ex/RingtoneEntryAdapter;
.super Landroid/widget/ArrayAdapter;
.source "RingtoneEntryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/RingtoneEntryAdapter$RingtoneEntryItem;,
        Lcom/android/settings_ex/RingtoneEntryAdapter$RingtoneSectionItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settings_ex/RingtoneItem;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field ei:Lcom/android/settings_ex/RingtoneEntryAdapter$RingtoneEntryItem;

.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/RingtoneItem;",
            ">;"
        }
    .end annotation
.end field

.field private vi:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 1
    .parameter "context"
    .parameter "resource"
    .parameter "items"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p1, p0, Lcom/android/settings_ex/RingtoneEntryAdapter;->context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/settings_ex/RingtoneEntryAdapter;->items:Ljava/util/ArrayList;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings_ex/RingtoneEntryAdapter;->vi:Landroid/view/LayoutInflater;

    .line 71
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    .line 76
    const/4 p2, 0x0

    .line 77
    const/4 v4, 0x0

    .line 79
    .local v4, v:Landroid/view/View;
    iget-object v5, p0, Lcom/android/settings_ex/RingtoneEntryAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/RingtoneItem;

    .local v0, i:Lcom/android/settings_ex/RingtoneItem;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/settings_ex/RingtoneItem;->isSection()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v2, v0

    check-cast v2, Lcom/android/settings_ex/RingtoneEntryAdapter$RingtoneSectionItem;

    .local v2, si:Lcom/android/settings_ex/RingtoneEntryAdapter$RingtoneSectionItem;
    iget-object v5, p0, Lcom/android/settings_ex/RingtoneEntryAdapter;->vi:Landroid/view/LayoutInflater;

    const v6, 0x7f04008f

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 85
    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    invoke-virtual {v4, v7}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 87
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setLongClickable(Z)V

    .line 89
    const v5, 0x7f0b0179

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 90
    .local v1, sectionView:Landroid/widget/TextView;
    invoke-virtual {v2}, Lcom/android/settings_ex/RingtoneEntryAdapter$RingtoneSectionItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .end local v0           #i:Lcom/android/settings_ex/RingtoneItem;
    .end local v1           #sectionView:Landroid/widget/TextView;
    .end local v2           #si:Lcom/android/settings_ex/RingtoneEntryAdapter$RingtoneSectionItem;
    :cond_0
    :goto_0
    return-object v4

    .restart local v0       #i:Lcom/android/settings_ex/RingtoneItem;
    :cond_1
    check-cast v0, Lcom/android/settings_ex/RingtoneEntryAdapter$RingtoneEntryItem;

    .end local v0           #i:Lcom/android/settings_ex/RingtoneItem;
    iput-object v0, p0, Lcom/android/settings_ex/RingtoneEntryAdapter;->ei:Lcom/android/settings_ex/RingtoneEntryAdapter$RingtoneEntryItem;

    iget-object v5, p0, Lcom/android/settings_ex/RingtoneEntryAdapter;->vi:Landroid/view/LayoutInflater;

    const v6, 0x7f04008e

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 94
    const v5, 0x7f0b0178

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .local v3, title:Landroid/widget/TextView;
    if-eqz v3, :cond_0

    iget-object v5, p0, Lcom/android/settings_ex/RingtoneEntryAdapter;->ei:Lcom/android/settings_ex/RingtoneEntryAdapter$RingtoneEntryItem;

    iget-object v5, v5, Lcom/android/settings_ex/RingtoneEntryAdapter$RingtoneEntryItem;->title:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
