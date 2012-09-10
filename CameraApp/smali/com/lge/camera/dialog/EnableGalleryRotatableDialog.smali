.class public Lcom/lge/camera/dialog/EnableGalleryRotatableDialog;
.super Lcom/lge/camera/dialog/RotateDialog;
.source "EnableGalleryRotatableDialog.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/lge/camera/dialog/RotateDialog;-><init>(Lcom/lge/camera/Mediator;)V

    .line 25
    return-void
.end method


# virtual methods
.method public create()V
    .locals 15

    .prologue
    .line 28
    const-string v1, ""

    .line 31
    .local v1, appName:Ljava/lang/String;
    :try_start_0
    iget-object v11, p0, Lcom/lge/camera/dialog/RotateDialog;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v11}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    iget-object v12, p0, Lcom/lge/camera/dialog/RotateDialog;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v12}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const-string v13, "com.android.gallery3d"

    const/16 v14, 0x2000

    invoke-virtual {v12, v13, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    iget-object v11, p0, Lcom/lge/camera/dialog/RotateDialog;->mMediator:Lcom/lge/camera/Mediator;

    const v12, 0x7f03001a

    invoke-virtual {v11, v12}, Lcom/lge/camera/Mediator;->inflateView(I)Landroid/view/View;

    move-result-object v10

    .line 40
    .local v10, v:Landroid/view/View;
    const v11, 0x7f0900b3

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 41
    .local v5, inLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 42
    .local v7, param:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v11, p0, Lcom/lge/camera/dialog/RotateDialog;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v11}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0033

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    iput v11, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 43
    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    const v11, 0x7f0900b6

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 46
    .local v8, titleIcon:Landroid/widget/ImageView;
    const/16 v11, 0x8

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 48
    const v11, 0x7f0900b7

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 49
    .local v9, titleText:Landroid/widget/TextView;
    const v11, 0x7f09009d

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 50
    .local v6, messageText:Landroid/widget/TextView;
    const v11, 0x7f0900bd

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 51
    .local v3, btnOk:Landroid/widget/Button;
    const v11, 0x7f0900bc

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 52
    .local v2, btnCancel:Landroid/widget/Button;
    const v11, 0x7f0b0269

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(I)V

    .line 53
    iget-object v11, p0, Lcom/lge/camera/dialog/RotateDialog;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v11}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b0267

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v1, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    const v11, 0x7f0b0020

    invoke-virtual {v3, v11}, Landroid/widget/Button;->setText(I)V

    .line 55
    const v11, 0x7f0b002a

    invoke-virtual {v2, v11}, Landroid/widget/Button;->setText(I)V

    .line 58
    invoke-super {p0, v10}, Lcom/lge/camera/dialog/RotateDialog;->create(Landroid/view/View;)V

    .line 60
    new-instance v11, Lcom/lge/camera/dialog/EnableGalleryRotatableDialog$1;

    invoke-direct {v11, p0}, Lcom/lge/camera/dialog/EnableGalleryRotatableDialog$1;-><init>(Lcom/lge/camera/dialog/EnableGalleryRotatableDialog;)V

    invoke-virtual {v3, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    new-instance v11, Lcom/lge/camera/dialog/EnableGalleryRotatableDialog$2;

    invoke-direct {v11, p0}, Lcom/lge/camera/dialog/EnableGalleryRotatableDialog$2;-><init>(Lcom/lge/camera/dialog/EnableGalleryRotatableDialog;)V

    invoke-virtual {v2, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    return-void

    .line 33
    .end local v2           #btnCancel:Landroid/widget/Button;
    .end local v3           #btnOk:Landroid/widget/Button;
    .end local v5           #inLayout:Landroid/widget/LinearLayout;
    .end local v6           #messageText:Landroid/widget/TextView;
    .end local v7           #param:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v8           #titleIcon:Landroid/widget/ImageView;
    .end local v9           #titleText:Landroid/widget/TextView;
    .end local v10           #v:Landroid/view/View;
    :catch_0
    move-exception v4

    .line 35
    .local v4, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0
.end method
