.class public Lcom/android/settings_ex/AccountPreference;
.super Landroid/preference/Preference;
.source "AccountPreference.java"


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAuthorities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mProviderIcon:Landroid/graphics/drawable/Drawable;

.field private mProviderIconView:Landroid/widget/ImageView;

.field private mStatus:I

.field private mSyncStatusIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "context"
    .parameter "account"
    .parameter "icon"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/accounts/Account;",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p2, p0, Lcom/android/settings_ex/AccountPreference;->mAccount:Landroid/accounts/Account;

    iput-object p4, p0, Lcom/android/settings_ex/AccountPreference;->mAuthorities:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/settings_ex/AccountPreference;->mProviderIcon:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f040005

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/AccountPreference;->setWidgetLayoutResource(I)V

    iget-object v0, p0, Lcom/android/settings_ex/AccountPreference;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/AccountPreference;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/AccountPreference;->setPersistent(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/AccountPreference;->setSyncStatus(I)V

    iget-object v0, p0, Lcom/android/settings_ex/AccountPreference;->mProviderIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/AccountPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private getSyncContentDescription(I)Ljava/lang/String;
    .locals 4
    .parameter "status"

    .prologue
    const v3, 0x7f0805ff

    .line 136
    packed-switch p1, :pswitch_data_0

    .line 144
    const-string v0, "AccountPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sync status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings_ex/AccountPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 138
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/AccountPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0805fd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 140
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings_ex/AccountPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0805fe

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 142
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings_ex/AccountPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 136
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getSyncStatusIcon(I)I
    .locals 4
    .parameter "status"

    .prologue
    .line 113
    packed-switch p1, :pswitch_data_0

    .line 129
    const v0, 0x7f02011a

    .line 130
    .local v0, res:I
    const-string v1, "AccountPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown sync status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :goto_0
    return v0

    .line 115
    .end local v0           #res:I
    :pswitch_0
    const v0, 0x7f020116

    .line 116
    .restart local v0       #res:I
    goto :goto_0

    .line 118
    .end local v0           #res:I
    :pswitch_1
    const v0, 0x7f020118

    .line 119
    .restart local v0       #res:I
    goto :goto_0

    .line 121
    .end local v0           #res:I
    :pswitch_2
    const v0, 0x7f02011a

    .line 122
    .restart local v0       #res:I
    goto :goto_0

    .line 125
    .end local v0           #res:I
    :pswitch_3
    const/4 v0, -0x1

    .line 126
    .restart local v0       #res:I
    goto :goto_0

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 2
    .parameter "other"

    .prologue
    instance-of v0, p1, Lcom/android/settings_ex/AccountPreference;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/AccountPreference;->getOrder()I

    move-result v0

    invoke-virtual {p1}, Landroid/preference/Preference;->getOrder()I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings_ex/AccountPreference;->getOrder()I

    move-result v0

    invoke-virtual {p1}, Landroid/preference/Preference;->getOrder()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/AccountPreference;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    check-cast p1, Lcom/android/settings_ex/AccountPreference;

    .end local p1
    iget-object v1, p1, Lcom/android/settings_ex/AccountPreference;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    check-cast p1, Landroid/preference/Preference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/AccountPreference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public getAccount()Landroid/accounts/Account;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/AccountPreference;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method public getAuthorities()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/AccountPreference;->mAuthorities:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 72
    const v0, 0x7f0b000c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/AccountPreference;->mSyncStatusIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/settings_ex/AccountPreference;->mSyncStatusIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/settings_ex/AccountPreference;->mStatus:I

    invoke-direct {p0, v1}, Lcom/android/settings_ex/AccountPreference;->getSyncStatusIcon(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/settings_ex/AccountPreference;->mSyncStatusIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/settings_ex/AccountPreference;->mStatus:I

    invoke-direct {p0, v1}, Lcom/android/settings_ex/AccountPreference;->getSyncContentDescription(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 75
    return-void
.end method

.method public setProviderIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "icon"

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/AccountPreference;->mProviderIcon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/settings_ex/AccountPreference;->mProviderIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/AccountPreference;->mProviderIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setSyncStatus(I)V
    .locals 2
    .parameter "status"

    .prologue
    iput p1, p0, Lcom/android/settings_ex/AccountPreference;->mStatus:I

    iget-object v0, p0, Lcom/android/settings_ex/AccountPreference;->mSyncStatusIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/AccountPreference;->mSyncStatusIcon:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/android/settings_ex/AccountPreference;->getSyncStatusIcon(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 90
    :cond_0
    return-void
.end method
