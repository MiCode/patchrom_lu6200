.class public Lcom/android/settings_ex/ProgressCategoryServiceDiscovery;
.super Lcom/android/settings_ex/ProgressCategoryBase;
.source "ProgressCategoryServiceDiscovery.java"


# instance fields
.field private mProgress:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/ProgressCategoryBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/ProgressCategoryServiceDiscovery;->mProgress:Z

    const v0, 0x7f04007b

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ProgressCategoryServiceDiscovery;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/android/settings_ex/ProgressCategoryBase;->onBindView(Landroid/view/View;)V

    const v4, 0x7f0b0131

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 43
    .local v1, textView:Landroid/widget/TextView;
    const v4, 0x7f0b0132

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .local v0, progressBar:Landroid/view/View;
    const v4, 0x7f0800c3

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/android/settings_ex/ProgressCategoryServiceDiscovery;->mProgress:Z

    if-ne v4, v5, :cond_0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-boolean v4, p0, Lcom/android/settings_ex/ProgressCategoryServiceDiscovery;->mProgress:Z

    if-eqz v4, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 56
    return-void

    .line 51
    :cond_0
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v2, v3

    .line 53
    goto :goto_1
.end method

.method public setProgress(Z)V
    .locals 0
    .parameter "progressOn"

    .prologue
    iput-boolean p1, p0, Lcom/android/settings_ex/ProgressCategoryServiceDiscovery;->mProgress:Z

    invoke-virtual {p0}, Lcom/android/settings_ex/ProgressCategoryServiceDiscovery;->notifyChanged()V

    return-void
.end method
