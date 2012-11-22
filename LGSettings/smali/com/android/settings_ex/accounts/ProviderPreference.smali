.class public Lcom/android/settings_ex/accounts/ProviderPreference;
.super Landroid/preference/Preference;
.source "ProviderPreference.java"


# instance fields
.field private accountName:Ljava/lang/String;

.field private checkedAccount:Landroid/graphics/drawable/Drawable;

.field private context:Landroid/content/Context;

.field private mAccountType:Ljava/lang/String;

.field private mCheckAccount:Landroid/widget/ImageView;

.field private mProviderIcon:Landroid/graphics/drawable/Drawable;

.field private mProviderIconView:Landroid/widget/ImageView;

.field private mProviderName:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "context"
    .parameter "accountType"
    .parameter "icon"
    .parameter "providerName"

    .prologue
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/accounts/ProviderPreference;->accountName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings_ex/accounts/ProviderPreference;->mAccountType:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings_ex/accounts/ProviderPreference;->mProviderIcon:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Lcom/android/settings_ex/accounts/ProviderPreference;->mProviderName:Ljava/lang/CharSequence;

    const v0, 0x7f040086

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accounts/ProviderPreference;->setLayoutResource(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accounts/ProviderPreference;->setPersistent(Z)V

    invoke-virtual {p0, p4}, Lcom/android/settings_ex/accounts/ProviderPreference;->setTitle(Ljava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/android/settings_ex/accounts/ProviderPreference;->context:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "accountType"
    .parameter "icon"
    .parameter "providerName"
    .parameter "accountName"

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings_ex/accounts/ProviderPreference;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    iput-object p5, p0, Lcom/android/settings_ex/accounts/ProviderPreference;->accountName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 3
    .parameter "other"

    .prologue
    instance-of v1, p1, Lcom/android/settings_ex/accounts/ProviderPreference;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .end local p1
    :goto_0
    return v1

    .restart local p1
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/ProviderPreference;->getOrder()I

    move-result v1

    invoke-virtual {p1}, Landroid/preference/Preference;->getOrder()I

    move-result v2

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/ProviderPreference;->getOrder()I

    move-result v1

    invoke-virtual {p1}, Landroid/preference/Preference;->getOrder()I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_0

    .line 89
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/accounts/ProviderPreference;->mProviderName:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, providerName:Ljava/lang/String;
    check-cast p1, Lcom/android/settings_ex/accounts/ProviderPreference;

    .end local p1
    iget-object v1, p1, Lcom/android/settings_ex/accounts/ProviderPreference;->mProviderName:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    check-cast p1, Landroid/preference/Preference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/accounts/ProviderPreference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/accounts/ProviderPreference;->mAccountType:Ljava/lang/String;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 64
    const v0, 0x7f0b0146

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/accounts/ProviderPreference;->mProviderIconView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/settings_ex/accounts/ProviderPreference;->mProviderIconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings_ex/accounts/ProviderPreference;->mProviderIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/settings_ex/accounts/ProviderPreference;->mProviderName:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accounts/ProviderPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings_ex/accounts/ProviderPreference;->accountName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/accounts/ProviderPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/accounts/ProviderPreference;->checkedAccount:Landroid/graphics/drawable/Drawable;

    .line 70
    const v0, 0x7f0b0147

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/accounts/ProviderPreference;->mCheckAccount:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/settings_ex/accounts/ProviderPreference;->mCheckAccount:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings_ex/accounts/ProviderPreference;->checkedAccount:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
