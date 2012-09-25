.class public Lcom/android/settings_ex/MediaFormat;
.super Landroid/app/Activity;
.source "MediaFormat.java"


# instance fields
.field private mFinalButton:Landroid/widget/Button;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;

.field private mFinalTextView:Landroid/widget/TextView;

.field private mFinalView:Landroid/view/View;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInitialTextView:Landroid/widget/TextView;

.field private mInitialView:Landroid/view/View;

.field private mInitiateButton:Landroid/widget/Button;

.field private mInitiateListener:Landroid/view/View$OnClickListener;

.field private mStorageVolume:Landroid/os/storage/StorageVolume;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 58
    new-instance v0, Lcom/android/settings_ex/MediaFormat$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/MediaFormat$1;-><init>(Lcom/android/settings_ex/MediaFormat;)V

    iput-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mFinalClickListener:Landroid/view/View$OnClickListener;

    .line 110
    new-instance v0, Lcom/android/settings_ex/MediaFormat$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/MediaFormat$2;-><init>(Lcom/android/settings_ex/MediaFormat;)V

    iput-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/MediaFormat;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/settings_ex/MediaFormat;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/MediaFormat;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings_ex/MediaFormat;->establishFinalConfirmationState()V

    return-void
.end method

.method private establishFinalConfirmationState()V
    .locals 4

    .prologue
    const v3, 0x7f0b00ff

    .line 122
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mFinalView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04005e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mFinalView:Landroid/view/View;

    .line 124
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mFinalView:Landroid/view/View;

    const v1, 0x7f0b0100

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mFinalButton:Landroid/widget/Button;

    .line 126
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mFinalButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings_ex/MediaFormat;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mFinalView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mFinalTextView:Landroid/widget/TextView;

    .line 131
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mFinalTextView:Landroid/widget/TextView;

    const v1, 0x7f080957

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 136
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mFinalView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/MediaFormat;->setContentView(Landroid/view/View;)V

    .line 137
    return-void

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mFinalView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mFinalTextView:Landroid/widget/TextView;

    .line 134
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mFinalTextView:Landroid/widget/TextView;

    const v1, 0x7f080959

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private establishInitialState()V
    .locals 5

    .prologue
    const v4, 0x7f0b0101

    const v3, 0x7f080950

    .line 152
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mInitialView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04005f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mInitialView:Landroid/view/View;

    .line 154
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mInitialView:Landroid/view/View;

    const v1, 0x7f0b0102

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mInitiateButton:Landroid/widget/Button;

    .line 156
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mInitiateButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings_ex/MediaFormat;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 161
    const-string v0, "hsmodel"

    const-string v1, "mediaformat, internal"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/MediaFormat;->setTitle(I)V

    .line 163
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mInitiateButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 164
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mInitialView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mInitialTextView:Landroid/widget/TextView;

    .line 165
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mInitialTextView:Landroid/widget/TextView;

    const v1, 0x7f080956

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 174
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mInitialView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/MediaFormat;->setContentView(Landroid/view/View;)V

    .line 175
    return-void

    .line 167
    :cond_1
    const-string v0, "hsmodel"

    const-string v1, "mediaformat, sdcard"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mInitiateButton:Landroid/widget/Button;

    const v1, 0x7f0803b3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 170
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mInitialView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mInitialTextView:Landroid/widget/TextView;

    .line 171
    iget-object v0, p0, Lcom/android/settings_ex/MediaFormat;->mInitialTextView:Landroid/widget/TextView;

    const v1, 0x7f080958

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 3
    .parameter "request"

    .prologue
    .line 80
    new-instance v0, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    const v1, 0x7f0803b6

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/MediaFormat;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f0803b7

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/MediaFormat;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 88
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 90
    const/16 v0, 0x37

    if-eq p1, v0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 96
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 97
    invoke-direct {p0}, Lcom/android/settings_ex/MediaFormat;->establishFinalConfirmationState()V

    goto :goto_0

    .line 98
    :cond_1
    if-nez p2, :cond_2

    .line 99
    invoke-virtual {p0}, Lcom/android/settings_ex/MediaFormat;->finish()V

    goto :goto_0

    .line 101
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/MediaFormat;->establishInitialState()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedState"

    .prologue
    const/4 v2, 0x0

    .line 179
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 180
    iput-object v2, p0, Lcom/android/settings_ex/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    .line 183
    invoke-virtual {p0}, Lcom/android/settings_ex/MediaFormat;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 185
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 186
    const-string v1, "storage_volume"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageVolume;

    iput-object v1, p0, Lcom/android/settings_ex/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    .line 188
    :cond_0
    iput-object v2, p0, Lcom/android/settings_ex/MediaFormat;->mInitialView:Landroid/view/View;

    .line 189
    iput-object v2, p0, Lcom/android/settings_ex/MediaFormat;->mFinalView:Landroid/view/View;

    .line 190
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/MediaFormat;->mInflater:Landroid/view/LayoutInflater;

    .line 192
    invoke-direct {p0}, Lcom/android/settings_ex/MediaFormat;->establishInitialState()V

    .line 193
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 201
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 203
    invoke-virtual {p0}, Lcom/android/settings_ex/MediaFormat;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    invoke-direct {p0}, Lcom/android/settings_ex/MediaFormat;->establishInitialState()V

    .line 206
    :cond_0
    return-void
.end method
