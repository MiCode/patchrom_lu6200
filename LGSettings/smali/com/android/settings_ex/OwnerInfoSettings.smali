.class public Lcom/android/settings_ex/OwnerInfoSettings;
.super Landroid/app/Fragment;
.source "OwnerInfoSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private dbValue:I

.field private mCancelButton:Landroid/widget/Button;

.field private mEditText:Landroid/widget/EditText;

.field private mSaveButton:Landroid/widget/Button;

.field private mView:Landroid/view/View;

.field private scroll:Landroid/widget/ScrollView;

.field textWatcherInput:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Lcom/android/settings_ex/OwnerInfoSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/OwnerInfoSettings$2;-><init>(Lcom/android/settings_ex/OwnerInfoSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/OwnerInfoSettings;->textWatcherInput:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/OwnerInfoSettings;)Landroid/widget/ScrollView;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/OwnerInfoSettings;->scroll:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/OwnerInfoSettings;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method private initView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    invoke-virtual {p0}, Lcom/android/settings_ex/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 75
    .local v1, res:Landroid/content/ContentResolver;
    const-string v2, "lock_screen_owner_info"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, info:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mView:Landroid/view/View;

    const v3, 0x7f0b003a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    iput-object v2, p0, Lcom/android/settings_ex/OwnerInfoSettings;->scroll:Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mView:Landroid/view/View;

    const v3, 0x7f0b0104

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;

    .line 85
    const v2, 0x7f0b0045

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mCancelButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0b0105

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mSaveButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/settings_ex/OwnerInfoSettings;->textWatcherInput:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v2, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;

    new-instance v3, Lcom/android/settings_ex/OwnerInfoSettings$1;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/OwnerInfoSettings$1;-><init>(Lcom/android/settings_ex/OwnerInfoSettings;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 128
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/settings_ex/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 146
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/OwnerInfoSettings;->saveToDb()V

    invoke-virtual {p0}, Lcom/android/settings_ex/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f08023f

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/settings_ex/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :sswitch_1
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/settings_ex/OwnerInfoSettings;->dbValue:I

    invoke-virtual {p0}, Lcom/android/settings_ex/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 147
    :sswitch_data_0
    .sparse-switch
        0x7f0b0045 -> :sswitch_1
        0x7f0b0105 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    invoke-virtual {p0}, Lcom/android/settings_ex/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "SKT"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings_ex/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings_ex/OwnerInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080870

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 68
    :cond_0
    :goto_0
    const v0, 0x7f040060

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/OwnerInfoSettings;->initView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mView:Landroid/view/View;

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings_ex/OwnerInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0806cb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 132
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 133
    return-void
.end method

.method saveToDb()V
    .locals 3

    .prologue
    invoke-virtual {p0}, Lcom/android/settings_ex/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 137
    .local v1, res:Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/android/settings_ex/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, info:Ljava/lang/String;
    const-string v2, "lock_screen_owner_info"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 139
    return-void
.end method
