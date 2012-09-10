.class public Lcom/lge/camera/components/Switcher;
.super Lcom/lge/camera/components/RotateImageButton;
.source "Switcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/components/Switcher$OnSwitchListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/lge/camera/components/Switcher$OnSwitchListener;

.field private mSwitch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/lge/camera/components/RotateImageButton;-><init>(Landroid/content/Context;)V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/components/Switcher;->mSwitch:Z

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/components/RotateImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/components/Switcher;->mSwitch:Z

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/camera/components/RotateImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/components/Switcher;->mSwitch:Z

    .line 55
    return-void
.end method


# virtual methods
.method public performClick()Z
    .locals 2

    .prologue
    .line 63
    invoke-super {p0}, Lcom/lge/camera/components/RotateImageButton;->performClick()Z

    move-result v0

    .line 64
    .local v0, result:Z
    invoke-virtual {p0}, Lcom/lge/camera/components/Switcher;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/components/Switcher;->mListener:Lcom/lge/camera/components/Switcher$OnSwitchListener;

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/lge/camera/components/Switcher;->mListener:Lcom/lge/camera/components/Switcher$OnSwitchListener;

    invoke-interface {v1, p0}, Lcom/lge/camera/components/Switcher$OnSwitchListener;->onSwitcherClick(Lcom/lge/camera/components/Switcher;)V

    .line 67
    :cond_0
    return v0
.end method

.method public setOnSwitchListener(Lcom/lge/camera/components/Switcher$OnSwitchListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/lge/camera/components/Switcher;->mListener:Lcom/lge/camera/components/Switcher$OnSwitchListener;

    .line 59
    return-void
.end method

.method public setSwitch(Z)V
    .locals 1
    .parameter "onOff"

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/lge/camera/components/Switcher;->mSwitch:Z

    if-ne v0, p1, :cond_0

    .line 91
    :goto_0
    return-void

    .line 88
    :cond_0
    iput-boolean p1, p0, Lcom/lge/camera/components/Switcher;->mSwitch:Z

    .line 89
    invoke-virtual {p0}, Lcom/lge/camera/components/Switcher;->invalidate()V

    goto :goto_0
.end method

.method public setSwitcherImage(II)V
    .locals 1
    .parameter "orientation"
    .parameter "mode"

    .prologue
    .line 94
    if-nez p2, :cond_0

    .line 95
    const v0, 0x7f0201ac

    invoke-virtual {p0, v0}, Lcom/lge/camera/components/Switcher;->setBackgroundResource(I)V

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    const v0, 0x7f0201ad

    invoke-virtual {p0, v0}, Lcom/lge/camera/components/Switcher;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public unbind()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    iput-object v1, p0, Lcom/lge/camera/components/Switcher;->mListener:Lcom/lge/camera/components/Switcher$OnSwitchListener;

    .line 72
    invoke-virtual {p0}, Lcom/lge/camera/components/Switcher;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 73
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 75
    invoke-virtual {p0, v1}, Lcom/lge/camera/components/Switcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/components/Switcher;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 80
    invoke-virtual {p0, v1}, Lcom/lge/camera/components/Switcher;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    :cond_1
    return-void
.end method
