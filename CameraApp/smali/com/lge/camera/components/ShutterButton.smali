.class public Lcom/lge/camera/components/ShutterButton;
.super Lcom/lge/camera/components/RotateImageButton;
.source "ShutterButton.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/components/ShutterButton$OnShutterButtonLongPressListener;,
        Lcom/lge/camera/components/ShutterButton$OnShutterButtonListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/lge/camera/components/ShutterButton$OnShutterButtonListener;

.field private mLongPressListener:Lcom/lge/camera/components/ShutterButton$OnShutterButtonLongPressListener;

.field private mOldPressed:Z

.field private mShutterButtonClicked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/lge/camera/components/RotateImageButton;-><init>(Landroid/content/Context;)V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/components/ShutterButton;->mShutterButtonClicked:Z

    .line 58
    invoke-virtual {p0, p0}, Lcom/lge/camera/components/ShutterButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/components/RotateImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/components/ShutterButton;->mShutterButtonClicked:Z

    .line 63
    invoke-virtual {p0, p0}, Lcom/lge/camera/components/ShutterButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/camera/components/RotateImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/components/ShutterButton;->mShutterButtonClicked:Z

    .line 68
    invoke-virtual {p0, p0}, Lcom/lge/camera/components/ShutterButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/components/ShutterButton;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/lge/camera/components/ShutterButton;->callShutterButtonFocus(Z)V

    return-void
.end method

.method private callShutterButtonFocus(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/lge/camera/components/ShutterButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/components/ShutterButton;->mListener:Lcom/lge/camera/components/ShutterButton$OnShutterButtonListener;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/lge/camera/components/ShutterButton;->mListener:Lcom/lge/camera/components/ShutterButton$OnShutterButtonListener;

    invoke-interface {v0, p0, p1}, Lcom/lge/camera/components/ShutterButton$OnShutterButtonListener;->onShutterButtonFocus(Lcom/lge/camera/components/ShutterButton;Z)V

    .line 127
    if-nez p1, :cond_0

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/components/ShutterButton;->mShutterButtonClicked:Z

    .line 131
    :cond_0
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 84
    invoke-super {p0}, Lcom/lge/camera/components/RotateImageButton;->drawableStateChanged()V

    .line 85
    invoke-virtual {p0}, Lcom/lge/camera/components/ShutterButton;->isPressed()Z

    move-result v0

    .line 89
    .local v0, pressed:Z
    iget-boolean v1, p0, Lcom/lge/camera/components/ShutterButton;->mOldPressed:Z

    if-eq v0, v1, :cond_0

    .line 90
    if-nez v0, :cond_1

    .line 112
    new-instance v1, Lcom/lge/camera/components/ShutterButton$1;

    invoke-direct {v1, p0, v0}, Lcom/lge/camera/components/ShutterButton$1;-><init>(Lcom/lge/camera/components/ShutterButton;Z)V

    invoke-virtual {p0, v1}, Lcom/lge/camera/components/ShutterButton;->post(Ljava/lang/Runnable;)Z

    .line 120
    :goto_0
    iput-boolean v0, p0, Lcom/lge/camera/components/ShutterButton;->mOldPressed:Z

    .line 122
    :cond_0
    return-void

    .line 118
    :cond_1
    invoke-direct {p0, v0}, Lcom/lge/camera/components/ShutterButton;->callShutterButtonFocus(Z)V

    goto :goto_0
.end method

.method public isShutterButtonClicked()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/lge/camera/components/ShutterButton;->mShutterButtonClicked:Z

    return v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 158
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportShutterButtonBurst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 165
    :cond_0
    :goto_0
    return v1

    .line 162
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/components/ShutterButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/components/ShutterButton;->mLongPressListener:Lcom/lge/camera/components/ShutterButton$OnShutterButtonLongPressListener;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/lge/camera/components/ShutterButton;->mLongPressListener:Lcom/lge/camera/components/ShutterButton$OnShutterButtonLongPressListener;

    invoke-interface {v0, p0}, Lcom/lge/camera/components/ShutterButton$OnShutterButtonLongPressListener;->onShutterButtonLongPressed(Lcom/lge/camera/components/ShutterButton;)V

    goto :goto_0
.end method

.method public performClick()Z
    .locals 2

    .prologue
    .line 139
    invoke-super {p0}, Lcom/lge/camera/components/RotateImageButton;->performClick()Z

    move-result v0

    .line 140
    .local v0, result:Z
    invoke-virtual {p0}, Lcom/lge/camera/components/ShutterButton;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/components/ShutterButton;->mListener:Lcom/lge/camera/components/ShutterButton$OnShutterButtonListener;

    if-eqz v1, :cond_0

    .line 141
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/camera/components/ShutterButton;->mShutterButtonClicked:Z

    .line 142
    iget-object v1, p0, Lcom/lge/camera/components/ShutterButton;->mListener:Lcom/lge/camera/components/ShutterButton$OnShutterButtonListener;

    invoke-interface {v1, p0}, Lcom/lge/camera/components/ShutterButton$OnShutterButtonListener;->onShutterButtonClick(Lcom/lge/camera/components/ShutterButton;)V

    .line 144
    :cond_0
    return v0
.end method

.method public performFocus(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/lge/camera/components/ShutterButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/components/ShutterButton;->mListener:Lcom/lge/camera/components/ShutterButton$OnShutterButtonListener;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/lge/camera/components/ShutterButton;->mListener:Lcom/lge/camera/components/ShutterButton$OnShutterButtonListener;

    invoke-interface {v0, p0, p1}, Lcom/lge/camera/components/ShutterButton$OnShutterButtonListener;->onShutterButtonFocus(Lcom/lge/camera/components/ShutterButton;Z)V

    .line 154
    :cond_0
    return-void
.end method

.method public setOnShutterButtonListener(Lcom/lge/camera/components/ShutterButton$OnShutterButtonListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/lge/camera/components/ShutterButton;->mListener:Lcom/lge/camera/components/ShutterButton$OnShutterButtonListener;

    .line 73
    return-void
.end method

.method public setOnShutterButtonLongPressListener(Lcom/lge/camera/components/ShutterButton$OnShutterButtonLongPressListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/lge/camera/components/ShutterButton;->mLongPressListener:Lcom/lge/camera/components/ShutterButton$OnShutterButtonLongPressListener;

    .line 77
    return-void
.end method

.method public unbind()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 169
    iput-object v1, p0, Lcom/lge/camera/components/ShutterButton;->mListener:Lcom/lge/camera/components/ShutterButton$OnShutterButtonListener;

    .line 170
    iput-object v1, p0, Lcom/lge/camera/components/ShutterButton;->mLongPressListener:Lcom/lge/camera/components/ShutterButton$OnShutterButtonLongPressListener;

    .line 171
    invoke-virtual {p0}, Lcom/lge/camera/components/ShutterButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 172
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 174
    invoke-virtual {p0, v1}, Lcom/lge/camera/components/ShutterButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/components/ShutterButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 177
    if-eqz v0, :cond_1

    .line 178
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 179
    invoke-virtual {p0, v1}, Lcom/lge/camera/components/ShutterButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 181
    :cond_1
    return-void
.end method
