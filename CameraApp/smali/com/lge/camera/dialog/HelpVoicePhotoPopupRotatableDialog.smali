.class public Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;
.super Lcom/lge/camera/dialog/RotateDialog;
.source "HelpVoicePhotoPopupRotatableDialog.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/lge/camera/dialog/RotateDialog;-><init>(Lcom/lge/camera/Mediator;)V

    .line 22
    return-void
.end method


# virtual methods
.method public create()V
    .locals 10

    .prologue
    .line 26
    iget-object v8, p0, Lcom/lge/camera/dialog/RotateDialog;->mMediator:Lcom/lge/camera/Mediator;

    const v9, 0x7f03001c

    invoke-virtual {v8, v9}, Lcom/lge/camera/Mediator;->inflateView(I)Landroid/view/View;

    move-result-object v5

    .line 27
    .local v5, v:Landroid/view/View;
    const v8, 0x7f0900b7

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 28
    .local v4, titleText:Landroid/widget/TextView;
    const v8, 0x7f09009d

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 29
    .local v2, messageText:Landroid/widget/TextView;
    const v8, 0x7f0900c0

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 30
    .local v1, messageImage:Landroid/widget/ImageView;
    const v8, 0x7f0900bd

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 32
    .local v0, btnOk:Landroid/widget/Button;
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useCheeseShutterTitle()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/lge/camera/dialog/RotateDialog;->mMediator:Lcom/lge/camera/Mediator;

    const v9, 0x7f0b00f7

    invoke-virtual {v8, v9}, Lcom/lge/camera/Mediator;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 35
    .local v3, title:Ljava/lang/String;
    :goto_0
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object v8, p0, Lcom/lge/camera/dialog/RotateDialog;->mMediator:Lcom/lge/camera/Mediator;

    const v9, 0x7f0b00f5

    invoke-virtual {v8, v9}, Lcom/lge/camera/Mediator;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 38
    .local v6, voiceShutterMsg:Ljava/lang/String;
    iget-object v8, p0, Lcom/lge/camera/dialog/RotateDialog;->mMediator:Lcom/lge/camera/Mediator;

    const v9, 0x7f0b00f3

    invoke-virtual {v8, v9}, Lcom/lge/camera/Mediator;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 40
    .local v7, word:Ljava/lang/String;
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->voiceShutterKind()I

    move-result v8

    if-nez v8, :cond_0

    .line 41
    iget-object v8, p0, Lcom/lge/camera/dialog/RotateDialog;->mMediator:Lcom/lge/camera/Mediator;

    const v9, 0x7f0b00f4

    invoke-virtual {v8, v9}, Lcom/lge/camera/Mediator;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 44
    :cond_0
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v7, v8, v9

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    const v8, 0x7f0200ad

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 46
    const v8, 0x7f0b0020

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setText(I)V

    .line 48
    invoke-super {p0, v5}, Lcom/lge/camera/dialog/RotateDialog;->create(Landroid/view/View;)V

    .line 50
    new-instance v8, Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog$1;

    invoke-direct {v8, p0}, Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog$1;-><init>(Lcom/lge/camera/dialog/HelpVoicePhotoPopupRotatableDialog;)V

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    return-void

    .line 32
    .end local v3           #title:Ljava/lang/String;
    .end local v6           #voiceShutterMsg:Ljava/lang/String;
    .end local v7           #word:Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Lcom/lge/camera/dialog/RotateDialog;->mMediator:Lcom/lge/camera/Mediator;

    const v9, 0x7f0b00f2

    invoke-virtual {v8, v9}, Lcom/lge/camera/Mediator;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
