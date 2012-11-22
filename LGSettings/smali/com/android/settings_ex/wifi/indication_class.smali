.class public Lcom/android/settings_ex/wifi/indication_class;
.super Landroid/widget/LinearLayout;
.source "indication_class.java"


# instance fields
.field private indication_LinearLayout:Landroid/widget/LinearLayout;

.field private mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;)V
    .locals 3
    .parameter "inputActivity"
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 27
    :try_start_0
    new-instance v1, Landroid/app/Activity;

    invoke-direct {v1}, Landroid/app/Activity;-><init>()V

    iput-object v1, p0, Lcom/android/settings_ex/wifi/indication_class;->mActivity:Landroid/app/Activity;

    iput-object p1, p0, Lcom/android/settings_ex/wifi/indication_class;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/indication_class;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0b019a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings_ex/wifi/indication_class;->indication_LinearLayout:Landroid/widget/LinearLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Indication_class"

    const-string v2, "indication Fail: IOException3"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method


# virtual methods
.method public updatePageIndicator(II)V
    .locals 9
    .parameter "Page_Max"
    .parameter "Page_count"

    .prologue
    .line 86
    :try_start_0
    new-instance v4, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v5, p0, Lcom/android/settings_ex/wifi/indication_class;->indication_LinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    .local v4, margin:Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    add-int/lit8 v5, p1, 0x1

    if-ge v1, v5, :cond_2

    new-instance v2, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/settings_ex/wifi/indication_class;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .local v2, indicationImg:Landroid/widget/ImageView;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x2

    invoke-direct {v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 91
    .local v3, lp:Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 93
    if-ne v1, p2, :cond_1

    .line 95
    const v5, 0x7f020134

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 100
    :goto_1
    const/16 v5, 0x8

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 101
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    const/16 v5, 0x8

    const/16 v6, 0x8

    const/16 v7, 0x8

    const/16 v8, 0x8

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v5, p0, Lcom/android/settings_ex/wifi/indication_class;->indication_LinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const v5, 0x7f020133

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 107
    .end local v1           #i:I
    .end local v2           #indicationImg:Landroid/widget/ImageView;
    .end local v3           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v4           #margin:Landroid/view/ViewGroup$MarginLayoutParams;
    :catch_0
    move-exception v0

    .line 108
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "Indication_class"

    const-string v6, "indication Fail: IOException1"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    return-void
.end method

.method public updatePageIndicator(Landroid/view/ViewGroup;Landroid/view/View;II)V
    .locals 11
    .parameter "vg"
    .parameter "inputView"
    .parameter "Page_Max"
    .parameter "Page_count"

    .prologue
    .line 39
    move-object v4, p2

    .line 41
    .local v4, layout:Landroid/view/View;
    const v7, 0x7f0b019a

    :try_start_0
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 42
    .local v3, indication_LinearLayout:Landroid/widget/LinearLayout;
    if-eqz v3, :cond_2

    .line 44
    new-instance v6, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    .local v6, margin:Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v6, :cond_2

    .line 47
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    add-int/lit8 v7, p3, 0x1

    if-ge v1, v7, :cond_2

    .line 49
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 51
    .local v2, indicationImg:Landroid/widget/ImageView;
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x2

    invoke-direct {v5, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 52
    .local v5, lp:Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v2, :cond_0

    if-eqz v5, :cond_0

    .line 54
    if-ne v1, p4, :cond_1

    .line 56
    const v7, 0x7f020134

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 61
    :goto_1
    const/16 v7, 0x8

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 62
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    const/16 v7, 0x8

    const/16 v8, 0x8

    const/16 v9, 0x8

    const/16 v10, 0x8

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 64
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 47
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    :cond_1
    const v7, 0x7f020133

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 77
    .end local v1           #i:I
    .end local v2           #indicationImg:Landroid/widget/ImageView;
    .end local v3           #indication_LinearLayout:Landroid/widget/LinearLayout;
    .end local v5           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v6           #margin:Landroid/view/ViewGroup$MarginLayoutParams;
    :catch_0
    move-exception v0

    .line 78
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "Indication_class"

    const-string v8, "indication Fail: IOException2"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    return-void
.end method
