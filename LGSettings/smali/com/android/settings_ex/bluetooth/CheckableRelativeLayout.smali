.class public Lcom/android/settings_ex/bluetooth/CheckableRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "CheckableRelativeLayout.java"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field final ATTR:Ljava/lang/String;

.field final NS:Ljava/lang/String;

.field checkable:Landroid/widget/Checkable;

.field checkableId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    const-string v0, "http://schemas.android.com/apk/res/com.android.settings"

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/CheckableRelativeLayout;->NS:Ljava/lang/String;

    .line 15
    const-string v0, "checkable"

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/CheckableRelativeLayout;->ATTR:Ljava/lang/String;

    .line 22
    const-string v0, "http://schemas.android.com/apk/res/com.android.settings"

    const-string v1, "checkable"

    const/4 v2, 0x0

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/bluetooth/CheckableRelativeLayout;->checkableId:I

    .line 23
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/android/settings_ex/bluetooth/CheckableRelativeLayout;->checkableId:I

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/CheckableRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Checkable;

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/CheckableRelativeLayout;->checkable:Landroid/widget/Checkable;

    .line 27
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CheckableRelativeLayout;->checkable:Landroid/widget/Checkable;

    if-nez v0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 29
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CheckableRelativeLayout;->checkable:Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 33
    iget v0, p0, Lcom/android/settings_ex/bluetooth/CheckableRelativeLayout;->checkableId:I

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/CheckableRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Checkable;

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/CheckableRelativeLayout;->checkable:Landroid/widget/Checkable;

    .line 34
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CheckableRelativeLayout;->checkable:Landroid/widget/Checkable;

    if-nez v0, :cond_0

    .line 37
    :goto_0
    return-void

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CheckableRelativeLayout;->checkable:Landroid/widget/Checkable;

    invoke-interface {v0, p1}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_0
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/android/settings_ex/bluetooth/CheckableRelativeLayout;->checkableId:I

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/CheckableRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Checkable;

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/CheckableRelativeLayout;->checkable:Landroid/widget/Checkable;

    .line 41
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CheckableRelativeLayout;->checkable:Landroid/widget/Checkable;

    if-nez v0, :cond_0

    .line 44
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/CheckableRelativeLayout;->checkable:Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->toggle()V

    goto :goto_0
.end method
