.class public Lcom/lge/camera/dialog/EulaPopupRotatableDialog;
.super Lcom/lge/camera/dialog/RotateDialog;
.source "EulaPopupRotatableDialog.java"


# instance fields
.field checkboxText:Landroid/widget/CheckBox;

.field mDoNotShowAgain:Z


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 1
    .parameter "mediator"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/lge/camera/dialog/RotateDialog;-><init>(Lcom/lge/camera/Mediator;)V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/dialog/EulaPopupRotatableDialog;->mDoNotShowAgain:Z

    .line 25
    return-void
.end method


# virtual methods
.method public create()V
    .locals 7

    .prologue
    .line 29
    iget-object v5, p0, Lcom/lge/camera/dialog/RotateDialog;->mMediator:Lcom/lge/camera/Mediator;

    const v6, 0x7f03001b

    invoke-virtual {v5, v6}, Lcom/lge/camera/Mediator;->inflateView(I)Landroid/view/View;

    move-result-object v4

    .line 30
    .local v4, v:Landroid/view/View;
    const v5, 0x7f0900b7

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 31
    .local v3, titleText:Landroid/widget/TextView;
    const v5, 0x7f09009d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 32
    .local v2, messageText:Landroid/widget/TextView;
    const v5, 0x7f0900bd

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 33
    .local v1, btnOk:Landroid/widget/Button;
    const v5, 0x7f0900bc

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 34
    .local v0, btnCancel:Landroid/widget/Button;
    const v5, 0x7f0900bf

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/lge/camera/dialog/EulaPopupRotatableDialog;->checkboxText:Landroid/widget/CheckBox;

    .line 36
    const v5, 0x7f0b01d2

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 37
    const v5, 0x7f0b01d4

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 38
    iget-object v5, p0, Lcom/lge/camera/dialog/EulaPopupRotatableDialog;->checkboxText:Landroid/widget/CheckBox;

    const v6, 0x7f0b01d3

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setText(I)V

    .line 39
    const v5, 0x7f0b0020

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(I)V

    .line 40
    const v5, 0x7f0b002a

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    .line 41
    iget-object v5, p0, Lcom/lge/camera/dialog/EulaPopupRotatableDialog;->checkboxText:Landroid/widget/CheckBox;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 43
    iget-object v5, p0, Lcom/lge/camera/dialog/EulaPopupRotatableDialog;->checkboxText:Landroid/widget/CheckBox;

    new-instance v6, Lcom/lge/camera/dialog/EulaPopupRotatableDialog$1;

    invoke-direct {v6, p0}, Lcom/lge/camera/dialog/EulaPopupRotatableDialog$1;-><init>(Lcom/lge/camera/dialog/EulaPopupRotatableDialog;)V

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 53
    invoke-super {p0, v4}, Lcom/lge/camera/dialog/RotateDialog;->create(Landroid/view/View;)V

    .line 55
    new-instance v5, Lcom/lge/camera/dialog/EulaPopupRotatableDialog$2;

    invoke-direct {v5, p0}, Lcom/lge/camera/dialog/EulaPopupRotatableDialog$2;-><init>(Lcom/lge/camera/dialog/EulaPopupRotatableDialog;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    new-instance v5, Lcom/lge/camera/dialog/EulaPopupRotatableDialog$3;

    invoke-direct {v5, p0}, Lcom/lge/camera/dialog/EulaPopupRotatableDialog$3;-><init>(Lcom/lge/camera/dialog/EulaPopupRotatableDialog;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    return-void
.end method
