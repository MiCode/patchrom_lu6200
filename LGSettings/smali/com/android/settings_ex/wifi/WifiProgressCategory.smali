.class public Lcom/android/settings_ex/wifi/WifiProgressCategory;
.super Lcom/android/settings_ex/ProgressCategoryBase;
.source "WifiProgressCategory.java"


# static fields
.field private static mProgress:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings_ex/wifi/WifiProgressCategory;->mProgress:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/ProgressCategoryBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const v0, 0x7f04007b

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiProgressCategory;->setLayoutResource(I)V

    .line 40
    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/android/settings_ex/ProgressCategoryBase;->onBindView(Landroid/view/View;)V

    .line 45
    const v2, 0x7f0b0131

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 46
    .local v1, textView:Landroid/widget/TextView;
    const v2, 0x7f0b0132

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 48
    .local v0, progressBar:Landroid/view/View;
    sget-boolean v2, Lcom/android/settings_ex/wifi/WifiProgressCategory;->mProgress:Z

    if-eqz v2, :cond_0

    .line 49
    const v2, 0x7f0800c3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 59
    :goto_0
    sget-boolean v2, Lcom/android/settings_ex/wifi/WifiProgressCategory;->mProgress:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 80
    return-void

    .line 51
    :cond_0
    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 59
    :cond_1
    const/4 v2, 0x4

    goto :goto_1
.end method

.method public setProgress(Z)V
    .locals 0
    .parameter "progressOn"

    .prologue
    .line 84
    sput-boolean p1, Lcom/android/settings_ex/wifi/WifiProgressCategory;->mProgress:Z

    .line 85
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiProgressCategory;->notifyChanged()V

    .line 86
    return-void
.end method
