.class Lcom/android/settings_ex/wifi/WifiOpenAPDialog;
.super Landroid/app/AlertDialog;
.source "WifiOpenAPDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

.field private mDoNotShow:Landroid/widget/CheckBox;

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mOpenAPWarning:Landroid/widget/TextView;

.field private mSsid:Ljava/lang/String;

.field private mView:Landroid/view/View;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings_ex/wifi/AccessPoint;)V
    .locals 1
    .parameter "context"
    .parameter "accessPoint"

    .prologue
    const v0, 0x7f0a0057

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/android/settings_ex/wifi/WifiOpenAPDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiOpenAPDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiOpenAPDialog;->mSsid:Ljava/lang/String;

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiOpenAPDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v0, Lcom/android/settings_ex/wifi/WifiOpenAPDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/WifiOpenAPDialog$1;-><init>(Lcom/android/settings_ex/wifi/WifiOpenAPDialog;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiOpenAPDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/wifi/WifiOpenAPDialog;)Lcom/android/settings_ex/wifi/AccessPoint;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiOpenAPDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/wifi/WifiOpenAPDialog;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiOpenAPDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 107
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0227

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiOpenAPDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_open_ap_warning_do_not_show"

    check-cast p1, Landroid/widget/CheckBox;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 113
    :cond_0
    return-void

    .line 109
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiOpenAPDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400bf

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiOpenAPDialog;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiOpenAPDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/WifiOpenAPDialog;->setView(Landroid/view/View;)V

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/wifi/WifiOpenAPDialog;->setInverseBackgroundForced(Z)V

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiOpenAPDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .local v0, context:Landroid/content/Context;
    const v1, 0x1010355

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/WifiOpenAPDialog;->setIconAttribute(I)V

    const v1, 0x7f0807db

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/WifiOpenAPDialog;->setTitle(I)V

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiOpenAPDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0226

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiOpenAPDialog;->mOpenAPWarning:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiOpenAPDialog;->mOpenAPWarning:Landroid/widget/TextView;

    const v2, 0x7f080bbb

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiOpenAPDialog;->mSsid:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiOpenAPDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0227

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiOpenAPDialog;->mDoNotShow:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiOpenAPDialog;->mDoNotShow:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, -0x1

    const v2, 0x7f080054

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiOpenAPDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/settings_ex/wifi/WifiOpenAPDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 101
    const/4 v1, -0x2

    const v2, 0x7f080055

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiOpenAPDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/settings_ex/wifi/WifiOpenAPDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 103
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 104
    return-void
.end method
