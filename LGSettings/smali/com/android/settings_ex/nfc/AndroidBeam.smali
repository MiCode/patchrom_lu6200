.class public Lcom/android/settings_ex/nfc/AndroidBeam;
.super Landroid/app/Fragment;
.source "AndroidBeam.java"


# instance fields
.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mNfcEnabler:Lcom/android/settings_ex/nfc/LGNfcEnabler;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 121
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/16 v6, 0x10

    const/4 v8, 0x1

    const/4 v7, -0x2

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .local v0, activity:Landroid/app/Activity;
    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;

    .line 62
    instance-of v3, v0, Landroid/preference/PreferenceActivity;

    if-eqz v3, :cond_2

    move-object v2, v0

    .line 63
    check-cast v2, Landroid/preference/PreferenceActivity;

    .line 64
    .local v2, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v3

    if-nez v3, :cond_2

    .line 65
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .local v1, padding:I
    iget-object v3, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/Switch;->setPadding(IIII)V

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    invoke-static {}, Lcom/android/settings_ex/Utils;->hasFeatureNfcP2P()Z

    move-result v3

    if-eq v8, v3, :cond_1

    invoke-static {}, Lcom/android/settings_ex/Utils;->hasI30NfcSetting()Z

    move-result v3

    if-ne v8, v3, :cond_3

    .line 76
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const v4, 0x7f0801f1

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setTitle(I)V

    .line 82
    .end local v1           #padding:I
    .end local v2           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_2
    :goto_0
    return-void

    .line 78
    .restart local v1       #padding:I
    .restart local v2       #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_3
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const v4, 0x7f0801f7

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const v9, 0x7f0b0017

    const v8, 0x7f0b0016

    const v7, 0x7f0b0012

    const/4 v6, 0x1

    .line 88
    const v4, 0x7f040009

    const/4 v5, 0x0

    invoke-virtual {p1, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mView:Landroid/view/View;

    invoke-static {}, Lcom/android/settings_ex/Utils;->hasFeatureNfcP2P()Z

    move-result v4

    if-eq v6, v4, :cond_0

    invoke-static {}, Lcom/android/settings_ex/Utils;->hasI30NfcSetting()Z

    move-result v4

    if-ne v6, v4, :cond_3

    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mView:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    .local v2, grp:Landroid/view/ViewGroup;
    const v4, 0x7f0b001b

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 95
    .local v0, P2P:Landroid/widget/LinearLayout;
    iget-object v4, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mView:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 97
    .local v1, beam:Landroid/widget/LinearLayout;
    invoke-static {}, Lcom/android/settings_ex/Utils;->hasFeatureNfcP2P()Z

    move-result v4

    if-ne v6, v4, :cond_2

    .line 98
    const v4, 0x7f0b0018

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .local v3, tv:Landroid/widget/TextView;
    const v4, 0x7f08020c

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    new-instance v4, Lcom/android/settings_ex/nfc/LGNfcEnabler;

    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-direct {v4, v5, v6, v0, v1}, Lcom/android/settings_ex/nfc/LGNfcEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    iput-object v4, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mNfcEnabler:Lcom/android/settings_ex/nfc/LGNfcEnabler;

    .line 116
    .end local v0           #P2P:Landroid/widget/LinearLayout;
    .end local v1           #beam:Landroid/widget/LinearLayout;
    .end local v2           #grp:Landroid/view/ViewGroup;
    .end local v3           #tv:Landroid/widget/TextView;
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mView:Landroid/view/View;

    invoke-direct {p0, v4}, Lcom/android/settings_ex/nfc/AndroidBeam;->initView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mView:Landroid/view/View;

    return-object v4

    .restart local v0       #P2P:Landroid/widget/LinearLayout;
    .restart local v1       #beam:Landroid/widget/LinearLayout;
    .restart local v2       #grp:Landroid/view/ViewGroup;
    :cond_2
    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    new-instance v4, Lcom/android/settings_ex/nfc/LGNfcEnabler;

    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-direct {v4, v5, v6, v1}, Lcom/android/settings_ex/nfc/LGNfcEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;Landroid/widget/LinearLayout;)V

    iput-object v4, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mNfcEnabler:Lcom/android/settings_ex/nfc/LGNfcEnabler;

    goto :goto_0

    .line 107
    .end local v0           #P2P:Landroid/widget/LinearLayout;
    .end local v1           #beam:Landroid/widget/LinearLayout;
    .end local v2           #grp:Landroid/view/ViewGroup;
    :cond_3
    iget-object v4, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mView:Landroid/view/View;

    instance-of v4, v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    iget-object v2, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mView:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    .restart local v2       #grp:Landroid/view/ViewGroup;
    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    new-instance v4, Lcom/android/settings_ex/nfc/LGNfcEnabler;

    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/AndroidBeam;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-direct {v4, v5, v6}, Lcom/android/settings_ex/nfc/LGNfcEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v4, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mNfcEnabler:Lcom/android/settings_ex/nfc/LGNfcEnabler;

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mNfcEnabler:Lcom/android/settings_ex/nfc/LGNfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/nfc/LGNfcEnabler;->pause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings_ex/nfc/AndroidBeam;->mNfcEnabler:Lcom/android/settings_ex/nfc/LGNfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/nfc/LGNfcEnabler;->resume()V

    return-void
.end method
