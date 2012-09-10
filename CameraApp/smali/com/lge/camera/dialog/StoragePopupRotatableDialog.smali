.class public Lcom/lge/camera/dialog/StoragePopupRotatableDialog;
.super Lcom/lge/camera/dialog/RotateDialog;
.source "StoragePopupRotatableDialog.java"


# instance fields
.field private messageId:I


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 1
    .parameter "mediator"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/lge/camera/dialog/RotateDialog;-><init>(Lcom/lge/camera/Mediator;)V

    .line 29
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/camera/dialog/StoragePopupRotatableDialog;->messageId:I

    .line 34
    return-void
.end method

.method private OnPositiveButtonClick(Lcom/lge/camera/Mediator;)V
    .locals 2
    .parameter "mediator"

    .prologue
    .line 73
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->IsEMMCmemory()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lge/camera/dialog/StoragePopupRotatableDialog;->messageId:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 75
    const-string v0, "key_storage"

    invoke-virtual {p1, v0}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getEmmcName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    const-string v0, "key_storage"

    const-string v1, "external memory"

    invoke-virtual {p1, v0, v1}, Lcom/lge/camera/Mediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 80
    :goto_0
    const-string v0, "com.lge.camera.command.setting.SetStorage"

    invoke-virtual {p1, v0}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;)V

    .line 82
    :cond_0
    return-void

    .line 78
    :cond_1
    const-string v0, "key_storage"

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getEmmcName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/lge/camera/Mediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/lge/camera/dialog/StoragePopupRotatableDialog;Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/lge/camera/dialog/StoragePopupRotatableDialog;->OnPositiveButtonClick(Lcom/lge/camera/Mediator;)V

    return-void
.end method

.method private getMessage(Lcom/lge/camera/Mediator;)Ljava/lang/String;
    .locals 11
    .parameter "mediator"

    .prologue
    const v10, 0x7f0b0050

    const/4 v9, 0x3

    const/4 v8, 0x1

    .line 85
    const-string v5, "CameraApp"

    const-string v6, "getMessage"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getStorageController()Lcom/lge/camera/controller/StorageController;

    move-result-object v4

    .line 87
    .local v4, storageController:Lcom/lge/camera/controller/StorageController;
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 89
    .local v3, r:Landroid/content/res/Resources;
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->IsEMMCmemory()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 90
    invoke-virtual {v4}, Lcom/lge/camera/controller/StorageController;->getCurrentStorage()I

    move-result v2

    .line 91
    .local v2, currentStorage:I
    const/4 v0, 0x1

    .line 92
    .local v0, anotherStorage:I
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getMessage currentStorage="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    if-ne v2, v8, :cond_0

    .line 95
    const/4 v0, 0x0

    .line 101
    :goto_0
    invoke-virtual {v4, v0}, Lcom/lge/camera/controller/StorageController;->getStorageState(I)Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, anotherStorageStat:Ljava/lang/String;
    invoke-virtual {v4, v1}, Lcom/lge/camera/controller/StorageController;->isStorageReady(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 103
    iput v8, p0, Lcom/lge/camera/dialog/StoragePopupRotatableDialog;->messageId:I

    .line 104
    invoke-direct {p0, v3, v2, v0}, Lcom/lge/camera/dialog/StoragePopupRotatableDialog;->getMessageType1(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object v5

    .line 122
    .end local v0           #anotherStorage:I
    .end local v1           #anotherStorageStat:Ljava/lang/String;
    .end local v2           #currentStorage:I
    :goto_1
    return-object v5

    .line 97
    .restart local v0       #anotherStorage:I
    .restart local v2       #currentStorage:I
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 109
    .restart local v1       #anotherStorageStat:Ljava/lang/String;
    :cond_1
    invoke-virtual {v4, v0}, Lcom/lge/camera/controller/StorageController;->isEnoughWorkingStorage(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 110
    iput v9, p0, Lcom/lge/camera/dialog/StoragePopupRotatableDialog;->messageId:I

    .line 111
    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 116
    :cond_2
    const/4 v5, 0x2

    iput v5, p0, Lcom/lge/camera/dialog/StoragePopupRotatableDialog;->messageId:I

    .line 117
    invoke-direct {p0, v3, v2, v0}, Lcom/lge/camera/dialog/StoragePopupRotatableDialog;->getMessageType2(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 120
    .end local v0           #anotherStorage:I
    .end local v1           #anotherStorageStat:Ljava/lang/String;
    .end local v2           #currentStorage:I
    :cond_3
    iput v9, p0, Lcom/lge/camera/dialog/StoragePopupRotatableDialog;->messageId:I

    .line 122
    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method private getMessageType1(Landroid/content/res/Resources;II)Ljava/lang/String;
    .locals 2
    .parameter "r"
    .parameter "currentStorage"
    .parameter "anotherStorage"

    .prologue
    .line 127
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 128
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getEmmcName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "internal memory"

    if-ne v0, v1, :cond_0

    .line 129
    const v0, 0x7f0b0052

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 134
    :goto_0
    return-object v0

    .line 131
    :cond_0
    const v0, 0x7f0b0053

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 134
    :cond_1
    const v0, 0x7f0b0054

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getMessageType2(Landroid/content/res/Resources;II)Ljava/lang/String;
    .locals 2
    .parameter "r"
    .parameter "currentStorage"
    .parameter "anotherStorage"

    .prologue
    .line 139
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 140
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getEmmcName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "internal memory"

    if-ne v0, v1, :cond_0

    .line 141
    const v0, 0x7f0b0055

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 149
    :goto_0
    return-object v0

    .line 143
    :cond_0
    const v0, 0x7f0b0056

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 146
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getEmmcName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "internal memory"

    if-ne v0, v1, :cond_2

    .line 147
    const v0, 0x7f0b0057

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 149
    :cond_2
    const v0, 0x7f0b0058

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public create()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 37
    iget-object v9, p0, Lcom/lge/camera/dialog/RotateDialog;->mMediator:Lcom/lge/camera/Mediator;

    const v10, 0x7f03001a

    invoke-virtual {v9, v10}, Lcom/lge/camera/Mediator;->inflateView(I)Landroid/view/View;

    move-result-object v8

    .line 38
    .local v8, v:Landroid/view/View;
    const v9, 0x7f0900b7

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 39
    .local v7, titleText:Landroid/widget/TextView;
    const v9, 0x7f09009d

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 40
    .local v4, messageText:Landroid/widget/TextView;
    const v9, 0x7f0900bd

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 41
    .local v1, btnOk:Landroid/widget/Button;
    const v9, 0x7f0900bc

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 42
    .local v0, btnCancel:Landroid/widget/Button;
    const v9, 0x7f0900ba

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 45
    .local v2, button_layout:Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 46
    .local v5, params:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v9, 0x1

    iput v9, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 47
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 49
    const v9, 0x7f020176

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 51
    const v9, 0x7f0b0045

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(I)V

    .line 52
    iget-object v9, p0, Lcom/lge/camera/dialog/RotateDialog;->mMediator:Lcom/lge/camera/Mediator;

    invoke-direct {p0, v9}, Lcom/lge/camera/dialog/StoragePopupRotatableDialog;->getMessage(Lcom/lge/camera/Mediator;)Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, message:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 54
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {v4}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/widget/ScrollView;

    .line 56
    .local v6, scrollView:Landroid/widget/ScrollView;
    invoke-virtual {v6, v11, v11}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 59
    .end local v6           #scrollView:Landroid/widget/ScrollView;
    :cond_0
    iget-object v9, p0, Lcom/lge/camera/dialog/RotateDialog;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v9}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f0b0020

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 61
    new-instance v9, Lcom/lge/camera/dialog/StoragePopupRotatableDialog$1;

    invoke-direct {v9, p0}, Lcom/lge/camera/dialog/StoragePopupRotatableDialog$1;-><init>(Lcom/lge/camera/dialog/StoragePopupRotatableDialog;)V

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    invoke-super {p0, v8}, Lcom/lge/camera/dialog/RotateDialog;->create(Landroid/view/View;)V

    .line 70
    return-void
.end method
