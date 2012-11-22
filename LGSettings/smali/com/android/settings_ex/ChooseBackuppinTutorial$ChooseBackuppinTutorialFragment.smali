.class public Lcom/android/settings_ex/ChooseBackuppinTutorial$ChooseBackuppinTutorialFragment;
.super Landroid/app/Fragment;
.source "ChooseBackuppinTutorial.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ChooseBackuppinTutorial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseBackuppinTutorialFragment"
.end annotation


# instance fields
.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mNextButton:Landroid/view/View;

.field private mSkipButton:Landroid/view/View;

.field private pinAnimaion:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 64
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/ChooseBackuppinTutorial$ChooseBackuppinTutorialFragment;->mCurConfig:Landroid/content/res/Configuration;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/settings_ex/ChooseBackuppinTutorial$ChooseBackuppinTutorialFragment;->mSkipButton:Landroid/view/View;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseBackuppinTutorial$ChooseBackuppinTutorialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseBackuppinTutorial$ChooseBackuppinTutorialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/ChooseBackuppinTutorial$ChooseBackuppinTutorialFragment;->mNextButton:Landroid/view/View;

    if-ne p1, v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseBackuppinTutorial$ChooseBackuppinTutorialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings_ex/ChooseBackupPinX3;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseBackuppinTutorial$ChooseBackuppinTutorialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "PASSWORD_EXPIRE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "PASSWORD_EXPIRE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ChooseBackuppinTutorial$ChooseBackuppinTutorialFragment;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseBackuppinTutorial$ChooseBackuppinTutorialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseBackuppinTutorial$ChooseBackuppinTutorialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 87
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 92
    const v6, 0x7f040022

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 93
    .local v5, view:Landroid/view/View;
    const v6, 0x7f0b0009

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/ChooseBackuppinTutorial$ChooseBackuppinTutorialFragment;->mNextButton:Landroid/view/View;

    iget-object v6, p0, Lcom/android/settings_ex/ChooseBackuppinTutorial$ChooseBackuppinTutorialFragment;->mNextButton:Landroid/view/View;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x7f0b0007

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/ChooseBackuppinTutorial$ChooseBackuppinTutorialFragment;->mSkipButton:Landroid/view/View;

    iget-object v6, p0, Lcom/android/settings_ex/ChooseBackuppinTutorial$ChooseBackuppinTutorialFragment;->mSkipButton:Landroid/view/View;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x7f0b0046

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/ChooseBackuppinTutorial$ChooseBackuppinTutorialFragment;->pinAnimaion:Landroid/view/View;

    iget-object v6, p0, Lcom/android/settings_ex/ChooseBackuppinTutorial$ChooseBackuppinTutorialFragment;->mCurConfig:Landroid/content/res/Configuration;

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseBackuppinTutorial$ChooseBackuppinTutorialFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020153

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 104
    .local v0, frame1:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseBackuppinTutorial$ChooseBackuppinTutorialFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020151

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .local v1, frame2:Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    const/16 v4, 0x3e8

    .local v4, resonableDuration:I
    new-instance v3, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .local v3, mAnimation:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v3, v0, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v3, v1, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    iget-object v6, p0, Lcom/android/settings_ex/ChooseBackuppinTutorial$ChooseBackuppinTutorialFragment;->pinAnimaion:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    sget-boolean v6, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseBackuppinTutorial$ChooseBackuppinTutorialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 126
    .local v2, intent:Landroid/content/Intent;
    const-string v6, "PASSWORD_EXPIRE"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseBackuppinTutorial$ChooseBackuppinTutorialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseBackuppinTutorial$ChooseBackuppinTutorialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/high16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    .line 133
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    return-object v5

    .line 108
    .end local v0           #frame1:Landroid/graphics/drawable/BitmapDrawable;
    .end local v1           #frame2:Landroid/graphics/drawable/BitmapDrawable;
    .end local v3           #mAnimation:Landroid/graphics/drawable/AnimationDrawable;
    .end local v4           #resonableDuration:I
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseBackuppinTutorial$ChooseBackuppinTutorialFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020154

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 109
    .restart local v0       #frame1:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseBackuppinTutorial$ChooseBackuppinTutorialFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020152

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .restart local v1       #frame2:Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_0
.end method
