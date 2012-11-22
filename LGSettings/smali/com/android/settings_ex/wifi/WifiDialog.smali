.class Lcom/android/settings_ex/wifi/WifiDialog;
.super Landroid/app/AlertDialog;
.source "WifiDialog.java"

# interfaces
.implements Lcom/android/settings_ex/wifi/WifiConfigUiBase;


# instance fields
.field private final mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

.field private mController:Lcom/android/settings_ex/wifi/WifiConfigController;

.field private final mEdit:Z

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings_ex/wifi/AccessPoint;Z)V
    .locals 1
    .parameter "context"
    .parameter "listener"
    .parameter "accessPoint"
    .parameter "edit"

    .prologue
    const v0, 0x7f0a0057

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    iput-boolean p4, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mEdit:Z

    iput-object p2, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p3, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings_ex/wifi/AccessPoint;ZI)V
    .locals 0
    .parameter "context"
    .parameter "listener"
    .parameter "accessPoint"
    .parameter "edit"
    .parameter "theme"

    .prologue
    invoke-direct {p0, p1, p5}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    iput-boolean p4, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mEdit:Z

    iput-object p2, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p3, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    return-void
.end method


# virtual methods
.method public getController()Lcom/android/settings_ex/wifi/WifiConfigController;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mController:Lcom/android/settings_ex/wifi/WifiConfigController;

    return-object v0
.end method

.method public getForgetButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 94
    const/4 v0, -0x3

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getSubmitButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 89
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public notifyConfigurationChanged()V
    .locals 7

    .prologue
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mView:Landroid/view/View;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mView:Landroid/view/View;

    const v6, 0x7f0b01f7

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    .line 124
    .local v4, spinner:Landroid/widget/Spinner;
    if-eqz v4, :cond_2

    .line 125
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    .line 126
    .local v3, methods:[Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v5, v3

    if-ge v1, v5, :cond_2

    .line 127
    const-string v5, "onDetachedFromWindow"

    aget-object v6, v3, v1

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 129
    :try_start_0
    aget-object v5, v3, v1

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 130
    aget-object v5, v3, v1

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 138
    .end local v1           #i:I
    .end local v3           #methods:[Ljava/lang/reflect/Method;
    :cond_2
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mView:Landroid/view/View;

    const v6, 0x7f0b0210

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 139
    .local v2, ipSetting:Landroid/widget/Spinner;
    if-eqz v2, :cond_0

    .line 140
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    .line 141
    .restart local v3       #methods:[Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    array-length v5, v3

    if-ge v1, v5, :cond_0

    .line 142
    const-string v5, "onDetachedFromWindow"

    aget-object v6, v3, v1

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 144
    :try_start_1
    aget-object v5, v3, v1

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 145
    aget-object v5, v3, v1

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 141
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 132
    .end local v2           #ipSetting:Landroid/widget/Spinner;
    :catch_1
    move-exception v0

    .line 133
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 126
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400bc

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiDialog;->setView(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiDialog;->setInverseBackgroundForced(Z)V

    new-instance v0, Lcom/android/settings_ex/wifi/WifiConfigController;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget-boolean v3, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mEdit:Z

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/settings_ex/wifi/WifiConfigController;-><init>(Lcom/android/settings_ex/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/settings_ex/wifi/AccessPoint;Z)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mController:Lcom/android/settings_ex/wifi/WifiConfigController;

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mController:Lcom/android/settings_ex/wifi/WifiConfigController;

    invoke-virtual {v0, v4}, Lcom/android/settings_ex/wifi/WifiConfigController;->afterTextChanged(Landroid/text/Editable;)V

    return-void
.end method

.method public setCancelButton(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    const/4 v0, -0x2

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/settings_ex/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setForgetButton(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    const/4 v0, -0x3

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/settings_ex/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setSubmitButton(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/settings_ex/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
