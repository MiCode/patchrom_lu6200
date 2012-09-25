.class public interface abstract Lcom/android/settings_ex/wifi/WifiSettings$WifiSettingsAs;
.super Ljava/lang/Object;
.source "WifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/wifi/WifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WifiSettingsAs"
.end annotation


# virtual methods
.method public abstract onAddAccessPoint(Landroid/preference/Preference;)V
.end method

.method public abstract onAddMessage(I)V
.end method

.method public abstract onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;Z)V
.end method

.method public abstract onGetAccessPoint(I)Landroid/preference/Preference;
.end method

.method public abstract onGetAccessPointCount()I
.end method

.method public abstract onInitView(Lcom/android/settings_ex/wifi/WifiSettings;Landroid/widget/Switch;)V
.end method

.method public abstract onPrefereceClicked(Landroid/preference/Preference;)V
.end method

.method public abstract onRemoveAllAccessPoint()V
.end method

.method public abstract onWifiEnabled(Z)V
.end method
