.class public final Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsActivity;
.super Landroid/app/Activity;
.source "LgBtUiHiddenSettingsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040020

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsActivity;->setContentView(I)V

    return-void
.end method
