.class public Lcom/android/settings_ex/PreferenceVirtualDisabler;
.super Ljava/lang/Object;
.source "PreferenceVirtualDisabler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/PreferenceVirtualDisabler$OnPreferenceClickListener;
    }
.end annotation


# static fields
.field public static final ENABLED_PRESSED:[I

.field public static final PRESSED:[I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCustomTextColor:[Landroid/content/res/ColorStateList;

.field private mOnClickListener:Lcom/android/settings_ex/PreferenceVirtualDisabler$OnPreferenceClickListener;

.field private mOrgMoreBackground:Landroid/graphics/drawable/Drawable;

.field private mOrgMoreImage:Landroid/graphics/drawable/Drawable;

.field private mOrgTextColor:[Landroid/content/res/ColorStateList;

.field private mPreference:Landroid/preference/Preference;

.field private mVirtualDisabledMoreBackground:Landroid/graphics/drawable/Drawable;

.field private mVirtualDisabledMoreImage:Landroid/graphics/drawable/Drawable;

.field private mVirtualDisabledSummaryColorState:Landroid/content/res/ColorStateList;

.field private mVirtualDisabledTitleColorState:Landroid/content/res/ColorStateList;

.field private mVirtualEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    const-class v0, Lcom/android/settings_ex/PreferenceVirtualDisabler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/PreferenceVirtualDisabler;->TAG:Ljava/lang/String;

    .line 30
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings_ex/PreferenceVirtualDisabler;->ENABLED_PRESSED:[I

    .line 31
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a7

    aput v2, v0, v1

    sput-object v0, Lcom/android/settings_ex/PreferenceVirtualDisabler;->PRESSED:[I

    return-void

    .line 30
    :array_0
    .array-data 0x4
        0xa7t 0x0t 0x1t 0x1t
        0x9et 0x0t 0x1t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/preference/Preference;)V
    .locals 3
    .parameter "aPref"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-array v0, v2, [Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/android/settings_ex/PreferenceVirtualDisabler;->mOrgTextColor:[Landroid/content/res/ColorStateList;

    .line 34
    new-array v0, v2, [Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/android/settings_ex/PreferenceVirtualDisabler;->mCustomTextColor:[Landroid/content/res/ColorStateList;

    .line 36
    iput-object v1, p0, Lcom/android/settings_ex/PreferenceVirtualDisabler;->mOrgMoreBackground:Landroid/graphics/drawable/Drawable;

    .line 37
    iput-object v1, p0, Lcom/android/settings_ex/PreferenceVirtualDisabler;->mOrgMoreImage:Landroid/graphics/drawable/Drawable;

    .line 38
    iput-object v1, p0, Lcom/android/settings_ex/PreferenceVirtualDisabler;->mVirtualDisabledMoreBackground:Landroid/graphics/drawable/Drawable;

    .line 39
    iput-object v1, p0, Lcom/android/settings_ex/PreferenceVirtualDisabler;->mVirtualDisabledMoreImage:Landroid/graphics/drawable/Drawable;

    .line 55
    iput-object v1, p0, Lcom/android/settings_ex/PreferenceVirtualDisabler;->mVirtualDisabledTitleColorState:Landroid/content/res/ColorStateList;

    .line 56
    iput-object v1, p0, Lcom/android/settings_ex/PreferenceVirtualDisabler;->mVirtualDisabledSummaryColorState:Landroid/content/res/ColorStateList;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/PreferenceVirtualDisabler;->mVirtualEnabled:Z

    .line 59
    iput-object v1, p0, Lcom/android/settings_ex/PreferenceVirtualDisabler;->mOnClickListener:Lcom/android/settings_ex/PreferenceVirtualDisabler$OnPreferenceClickListener;

    .line 61
    iput-object v1, p0, Lcom/android/settings_ex/PreferenceVirtualDisabler;->mPreference:Landroid/preference/Preference;

    .line 65
    iput-object p1, p0, Lcom/android/settings_ex/PreferenceVirtualDisabler;->mPreference:Landroid/preference/Preference;

    .line 66
    iget-object v0, p0, Lcom/android/settings_ex/PreferenceVirtualDisabler;->mPreference:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/PreferenceVirtualDisabler;->getWidgetLayoutResource()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 67
    invoke-virtual {p1}, Landroid/preference/Preference;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/PreferenceVirtualDisabler;->mVirtualEnabled:Z

    .line 68
    return-void
.end method

.method private getVirtualDisabledSummaryColorState()Landroid/content/res/ColorStateList;
    .locals 9

    .prologue
    const v8, 0x1060025

    const/4 v4, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 181
    iget-object v1, p0, Lcom/android/settings_ex/PreferenceVirtualDisabler;->mVirtualDisabledSummaryColorState:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/android/settings_ex/PreferenceVirtualDisabler;->mPreference:Landroid/preference/Preference;

    invoke-virtual {v1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 183
    .local v0, res:Landroid/content/res/Resources;
    new-instance v1, Landroid/content/res/ColorStateList;

    new-array v2, v4, [[I

    sget-object v3, Lcom/android/settings_ex/PreferenceVirtualDisabler;->ENABLED_PRESSED:[I

    aput-object v3, v2, v5

    sget-object v3, Lcom/android/settings_ex/PreferenceVirtualDisabler;->PRESSED:[I

    aput-object v3, v2, v6

    new-array v3, v5, [I

    aput-object v3, v2, v7

    new-array v3, v4, [I

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    aput v4, v3, v5

    const v4, 0x1060026

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    aput v4, v3, v6

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    aput v4, v3, v7

    invoke-direct {v1, v2, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v1, p0, Lcom/android/settings_ex/PreferenceVirtualDisabler;->mVirtualDisabledSummaryColorState:Landroid/content/res/ColorStateList;

    .line 188
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/PreferenceVirtualDisabler;->mVirtualDisabledSummaryColorState:Landroid/content/res/ColorStateList;

    return-object v1
.end method

.method private getVirtualDisabledTitleColorState()Landroid/content/res/ColorStateList;
    .locals 8

    .prologue
    const/4 v4, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 170
    iget-object v1, p0, Lcom/android/settings_ex/PreferenceVirtualDisabler;->mVirtualDisabledTitleColorState:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/android/settings_ex/PreferenceVirtualDisabler;->mPreference:Landroid/preference/Preference;

    invoke-virtual {v1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 172
    .local v0, res:Landroid/content/res/Resources;
    new-instance v1, Landroid/content/res/ColorStateList;

    new-array v2, v4, [[I

    sget-object v3, Lcom/android/settings_ex/PreferenceVirtualDisabler;->ENABLED_PRESSED:[I

    aput-object v3, v2, v5

    sget-object v3, Lcom/android/settings_ex/PreferenceVirtualDisabler;->PRESSED:[I

    aput-object v3, v2, v6

    new-array v3, v5, [I

    aput-object v3, v2, v7

    new-array v3, v4, [I

    const v4, 0x1060021

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    aput v4, v3, v5

    const v4, 0x106001f

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    aput v4, v3, v6

    const v4, 0x7f0d0003

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    aput v4, v3, v7

    invoke-direct {v1, v2, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v1, p0, Lcom/android/settings_ex/PreferenceVirtualDisabler;->mVirtualDisabledTitleColorState:Landroid/content/res/ColorStateList;

    .line 177
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/PreferenceVirtualDisabler;->mVirtualDisabledTitleColorState:Landroid/content/res/ColorStateList;

    return-object v1
.end method

.method private setCustomTextColor(ILandroid/content/res/ColorStateList;)V
    .locals 1
    .parameter "aColorIndex"
    .parameter "aColorState"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/settings_ex/PreferenceVirtualDisabler;->mCustomTextColor:[Landroid/content/res/ColorStateList;

    aput-object p2, v0, p1

    .line 167
    return-void
.end method


# virtual methods
.method protected getMoreId()I
    .locals 1

    .prologue
    .line 77
    const v0, 0x7f0b0141

    return v0
.end method

.method protected getWidgetLayoutResource()I
    .locals 1

    .prologue
    .line 72
    const v0, 0x7f040080

    return v0
.end method

.method public isVirtualEnabled()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/android/settings_ex/PreferenceVirtualDisabler;->mVirtualEnabled:Z

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 9
    .parameter "aView"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 98
    iget-object v6, p0, Lcom/android/settings_ex/PreferenceVirtualDisabler;->mCustomTextColor:[Landroid/content/res/ColorStateList;

    aget-object v6, v6, v7

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/settings_ex/PreferenceVirtualDisabler;->mOrgTextColor:[Landroid/content/res/ColorStateList;

    aget-object v5, v6, v7

    .line 99
    .local v5, titleColor:Landroid/content/res/ColorStateList;
    :goto_0
    iget-object v6, p0, Lcom/android/settings_ex/PreferenceVirtualDisabler;->mCustomTextColor:[Landroid/content/res/ColorStateList;

    aget-object v6, v6, v8

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/settings_ex/PreferenceVirtualDisabler;->mOrgTextColor:[Landroid/content/res/ColorStateList;

    aget-object v3, v6, v8

    .line 103
    .local v3, summaryColor:Landroid/content/res/ColorStateList;
    :goto_1
    if-eqz v5, :cond_0

    .line 104
    const v6, 0x1020016

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 105
    .local v4, title:Landroid/widget/TextView;
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 108
    .end local v4           #title:Landroid/widget/TextView;
    :cond_0
    if-eqz v3, :cond_1

    .line 109
    const v6, 0x1020010

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 110
    .local v2, summary:Landroid/widget/TextView;
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 113
    .end local v2           #summary:Landroid/widget/TextView;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/PreferenceVirtualDisabler;->getMoreId()I

    move-result v1

    .line 114
    .local v1, moreId:I
    if-eqz v1, :cond_2

    .line 115
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 116
    .local v0, more:Landroid/widget/ImageView;
    iget-boolean v6, p0, Lcom/android/settings_ex/PreferenceVirtualDisabler;->mVirtualEnabled:Z

    if-eqz v6, :cond_5

    .line 117
    iget-object v6, p0, Lcom/android/settings_ex/PreferenceVirtualDisabler;->mOrgMoreBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 118
    iget-object v6, p0, Lcom/android/settings_ex/PreferenceVirtualDisabler;->mOrgMoreImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 124
    .end local v0           #more:Landroid/widget/ImageView;
    :cond_2
    :goto_2
    return-void

    .line 98
    .end local v1           #moreId:I
    .end local v3           #summaryColor:Landroid/content/res/ColorStateList;
    .end local v5           #titleColor:Landroid/content/res/ColorStateList;
    :cond_3
    iget-object v6, p0, Lcom/android/settings_ex/PreferenceVirtualDisabler;->mCustomTextColor:[Landroid/content/res/ColorStateList;

    aget-object v5, v6, v7

    goto :goto_0

    .line 99
    .restart local v5       #titleColor:Landroid/content/res/ColorStateList;
    :cond_4
    iget-object v6, p0, Lcom/android/settings_ex/PreferenceVirtualDisabler;->mCustomTextColor:[Landroid/content/res/ColorStateList;

    aget-object v3, v6, v8

    goto :goto_1

    .line 120
    .restart local v0       #more:Landroid/widget/ImageView;
    .restart local v1       #moreId:I
    .restart local v3       #summaryColor:Landroid/content/res/ColorStateList;
    :cond_5
    iget-object v6, p0, Lcom/android/settings_ex/PreferenceVirtualDisabler;->mVirtualDisabledMoreBackground:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/android/settings_ex/PreferenceVirtualDisabler;->mOrgMoreBackground:Landroid/graphics/drawable/Drawable;

    :goto_3
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 121
    iget-object v6, p0, Lcom/android/settings_ex/PreferenceVirtualDisabler;->mVirtualDisabledMoreImage:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/android/settings_ex/PreferenceVirtualDisabler;->mOrgMoreImage:Landroid/graphics/drawable/Drawable;

    :goto_4
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 120
    :cond_6
    iget-object v6, p0, Lcom/android/settings_ex/PreferenceVirtualDisabler;->mVirtualDisabledMoreBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    .line 121
    :cond_7
    iget-object v6, p0, Lcom/android/settings_ex/PreferenceVirtualDisabler;->mVirtualDisabledMoreImage:Landroid/graphics/drawable/Drawable;

    goto :goto_4
.end method

.method protected onCreateView(Landroid/view/View;)Landroid/view/View;
    .locals 7
    .parameter "view"

    .prologue
    .line 129
    const v4, 0x1020016

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 130
    .local v3, title:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/settings_ex/PreferenceVirtualDisabler;->mOrgTextColor:[Landroid/content/res/ColorStateList;

    const/4 v5, 0x0

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v6

    aput-object v6, v4, v5

    .line 132
    const v4, 0x1020010

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 133
    .local v2, summary:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/settings_ex/PreferenceVirtualDisabler;->mOrgTextColor:[Landroid/content/res/ColorStateList;

    const/4 v5, 0x1

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v6

    aput-object v6, v4, v5

    .line 135
    invoke-virtual {p0}, Lcom/android/settings_ex/PreferenceVirtualDisabler;->getMoreId()I

    move-result v1

    .line 136
    .local v1, moreId:I
    if-eqz v1, :cond_0

    .line 137
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 139
    .local v0, more:Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/PreferenceVirtualDisabler;->mOrgMoreBackground:Landroid/graphics/drawable/Drawable;

    .line 140
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/PreferenceVirtualDisabler;->mOrgMoreImage:Landroid/graphics/drawable/Drawable;

    .line 145
    .end local v0           #more:Landroid/widget/ImageView;
    :cond_0
    return-object p1
.end method

.method protected onPreferenceClick()Z
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings_ex/PreferenceVirtualDisabler;->mOnClickListener:Lcom/android/settings_ex/PreferenceVirtualDisabler$OnPreferenceClickListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ex/PreferenceVirtualDisabler;->mVirtualEnabled:Z

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/settings_ex/PreferenceVirtualDisabler;->mOnClickListener:Lcom/android/settings_ex/PreferenceVirtualDisabler$OnPreferenceClickListener;

    iget-object v1, p0, Lcom/android/settings_ex/PreferenceVirtualDisabler;->mPreference:Landroid/preference/Preference;

    invoke-interface {v0, v1}, Lcom/android/settings_ex/PreferenceVirtualDisabler$OnPreferenceClickListener;->onPreferenceClick(Landroid/preference/Preference;)V

    .line 91
    const/4 v0, 0x1

    .line 93
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVirtualDisabledOnClickListener(Lcom/android/settings_ex/PreferenceVirtualDisabler$OnPreferenceClickListener;)V
    .locals 0
    .parameter "aOnClickListener"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/settings_ex/PreferenceVirtualDisabler;->mOnClickListener:Lcom/android/settings_ex/PreferenceVirtualDisabler$OnPreferenceClickListener;

    .line 83
    return-void
.end method

.method public setVirtualEnabled(Z)V
    .locals 3
    .parameter "aEnabled"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 150
    if-eqz p1, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/settings_ex/PreferenceVirtualDisabler;->mPreference:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 153
    :cond_0
    iput-boolean p1, p0, Lcom/android/settings_ex/PreferenceVirtualDisabler;->mVirtualEnabled:Z

    .line 154
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/PreferenceVirtualDisabler;->mOrgTextColor:[Landroid/content/res/ColorStateList;

    aget-object v0, v0, v1

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/android/settings_ex/PreferenceVirtualDisabler;->setCustomTextColor(ILandroid/content/res/ColorStateList;)V

    .line 156
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/settings_ex/PreferenceVirtualDisabler;->mOrgTextColor:[Landroid/content/res/ColorStateList;

    aget-object v0, v0, v2

    :goto_1
    invoke-direct {p0, v2, v0}, Lcom/android/settings_ex/PreferenceVirtualDisabler;->setCustomTextColor(ILandroid/content/res/ColorStateList;)V

    .line 158
    return-void

    .line 154
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/PreferenceVirtualDisabler;->getVirtualDisabledTitleColorState()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 156
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/PreferenceVirtualDisabler;->getVirtualDisabledSummaryColorState()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_1
.end method
