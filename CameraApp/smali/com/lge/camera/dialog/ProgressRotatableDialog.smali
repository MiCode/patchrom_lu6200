.class public Lcom/lge/camera/dialog/ProgressRotatableDialog;
.super Lcom/lge/camera/dialog/RotateDialog;
.source "ProgressRotatableDialog.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/lge/camera/dialog/RotateDialog;-><init>(Lcom/lge/camera/Mediator;)V

    .line 12
    return-void
.end method


# virtual methods
.method public create()V
    .locals 3

    .prologue
    .line 16
    iget-object v1, p0, Lcom/lge/camera/dialog/RotateDialog;->mMediator:Lcom/lge/camera/Mediator;

    const v2, 0x7f030016

    invoke-virtual {v1, v2}, Lcom/lge/camera/Mediator;->inflateView(I)Landroid/view/View;

    move-result-object v0

    .line 17
    .local v0, v:Landroid/view/View;
    invoke-super {p0, v0}, Lcom/lge/camera/dialog/RotateDialog;->create(Landroid/view/View;)V

    .line 18
    return-void
.end method
