.class public Lcom/android/settings_ex/wifi/p2p/WifiP2pDialog;
.super Landroid/app/AlertDialog;
.source "WifiP2pDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mDeviceAddress:Landroid/widget/TextView;

.field private mDeviceName:Landroid/widget/TextView;

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mView:Landroid/view/View;

.field private mWpsSetupIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 1
    .parameter "context"
    .parameter "listener"
    .parameter "device"

    .prologue
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDialog;->mWpsSetupIndex:I

    iput-object p2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDialog;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-void
.end method


# virtual methods
.method public getConfig()Landroid/net/wifi/p2p/WifiP2pConfig;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 65
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    .line 66
    .local v0, config:Landroid/net/wifi/p2p/WifiP2pConfig;
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDialog;->mDeviceAddress:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    new-instance v1, Landroid/net/wifi/WpsInfo;

    invoke-direct {v1}, Landroid/net/wifi/WpsInfo;-><init>()V

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iget v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDialog;->mWpsSetupIndex:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_0

    .line 79
    :pswitch_1
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v2, 0x1

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0400c0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDialog;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b022a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .local v1, mWpsSetup:Landroid/widget/Spinner;
    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDialog;->setView(Landroid/view/View;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDialog;->setInverseBackgroundForced(Z)V

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .local v0, context:Landroid/content/Context;
    const v2, 0x7f080271

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDialog;->setTitle(I)V

    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b0228

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDialog;->mDeviceName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b0229

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDialog;->mDeviceAddress:Landroid/widget/TextView;

    .line 103
    const/4 v2, -0x1

    const v3, 0x7f080257

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 104
    const/4 v2, -0x2

    const v3, 0x7f08025a

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDialog;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDialog;->mDeviceName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDialog;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDialog;->mDeviceAddress:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDialog;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDialog;->mWpsSetupIndex:I

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_0
    invoke-virtual {v1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iput p3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDialog;->mWpsSetupIndex:I

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 133
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
