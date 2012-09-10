.class public Lcom/lge/camera/dialog/GeoTagRotatableDialog;
.super Lcom/lge/camera/dialog/RotateDialog;
.source "GeoTagRotatableDialog.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/lge/camera/dialog/RotateDialog;-><init>(Lcom/lge/camera/Mediator;)V

    .line 18
    return-void
.end method


# virtual methods
.method public create()V
    .locals 7

    .prologue
    .line 22
    iget-object v5, p0, Lcom/lge/camera/dialog/RotateDialog;->mMediator:Lcom/lge/camera/Mediator;

    const v6, 0x7f03001a

    invoke-virtual {v5, v6}, Lcom/lge/camera/Mediator;->inflateView(I)Landroid/view/View;

    move-result-object v4

    .line 23
    .local v4, v:Landroid/view/View;
    const v5, 0x7f0900b7

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 24
    .local v3, titleText:Landroid/widget/TextView;
    const v5, 0x7f09009d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 25
    .local v2, messageText:Landroid/widget/TextView;
    const v5, 0x7f0900bd

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 26
    .local v1, btnOk:Landroid/widget/Button;
    const v5, 0x7f0900bc

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 27
    .local v0, btnCancel:Landroid/widget/Button;
    const v5, 0x7f0b0264

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 28
    const v5, 0x7f0b0265

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 29
    const v5, 0x7f0b0033

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(I)V

    .line 30
    const v5, 0x7f0b002a

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    .line 32
    invoke-super {p0, v4}, Lcom/lge/camera/dialog/RotateDialog;->create(Landroid/view/View;)V

    .line 34
    new-instance v5, Lcom/lge/camera/dialog/GeoTagRotatableDialog$1;

    invoke-direct {v5, p0}, Lcom/lge/camera/dialog/GeoTagRotatableDialog$1;-><init>(Lcom/lge/camera/dialog/GeoTagRotatableDialog;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    new-instance v5, Lcom/lge/camera/dialog/GeoTagRotatableDialog$2;

    invoke-direct {v5, p0}, Lcom/lge/camera/dialog/GeoTagRotatableDialog$2;-><init>(Lcom/lge/camera/dialog/GeoTagRotatableDialog;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    return-void
.end method
