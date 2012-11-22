.class public Lcom/android/settings_ex/nfc/LGNfcEnabler$P2PItem;
.super Ljava/lang/Object;
.source "LGNfcEnabler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings_ex/nfc/LGNfcEnabler$OnNfcStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/nfc/LGNfcEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "P2PItem"
.end annotation


# instance fields
.field mLL:Landroid/widget/LinearLayout;

.field mP2PCheck:Landroid/widget/CheckBox;

.field mTV:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/settings_ex/nfc/LGNfcEnabler;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/nfc/LGNfcEnabler;Landroid/widget/LinearLayout;)V
    .locals 2
    .parameter
    .parameter "ll"

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$P2PItem;->this$0:Lcom/android/settings_ex/nfc/LGNfcEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$P2PItem;->mLL:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$P2PItem;->mLL:Landroid/widget/LinearLayout;

    const v1, 0x7f0b0015

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$P2PItem;->mP2PCheck:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$P2PItem;->mLL:Landroid/widget/LinearLayout;

    const v1, 0x7f0b0014

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$P2PItem;->mTV:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$P2PItem;->mLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #getter for: Lcom/android/settings_ex/nfc/LGNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {p1}, Lcom/android/settings_ex/nfc/LGNfcEnabler;->access$000(Lcom/android/settings_ex/nfc/LGNfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$P2PItem;->mLL:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public handleNfcStateChanged(II)V
    .locals 3
    .parameter "newState"
    .parameter "extraState"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    sget v0, Lcom/android/settings_ex/nfc/NfcAdapterProxy;->STATE_DISCOVERY_OFF:I

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$P2PItem;->mLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$P2PItem;->mP2PCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    :goto_0
    packed-switch p1, :pswitch_data_0

    :goto_1
    :pswitch_0
    return-void

    :cond_1
    sget v0, Lcom/android/settings_ex/nfc/NfcAdapterProxy;->STATE_DISCOVERY_ON:I

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$P2PItem;->mLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$P2PItem;->mP2PCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_2
    sget v0, Lcom/android/settings_ex/nfc/NfcAdapterProxy;->STATE_TURNING_DISCOVERY_ON:I

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$P2PItem;->mLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$P2PItem;->mP2PCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_3
    sget v0, Lcom/android/settings_ex/nfc/NfcAdapterProxy;->STATE_TURNING_DISCOVERY_OFF:I

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$P2PItem;->mLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$P2PItem;->mP2PCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$P2PItem;->mLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$P2PItem;->mTV:Landroid/widget/TextView;

    const v1, 0x7f080207

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 539
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$P2PItem;->mTV:Landroid/widget/TextView;

    const v1, 0x7f080206

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$P2PItem;->mLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "arg0"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$P2PItem;->this$0:Lcom/android/settings_ex/nfc/LGNfcEnabler;

    iget-object v0, v0, Lcom/android/settings_ex/nfc/LGNfcEnabler;->mNfcAdapterProxy:Lcom/android/settings_ex/nfc/NfcAdapterProxy;

    invoke-virtual {v0}, Lcom/android/settings_ex/nfc/NfcAdapterProxy;->getAdapterExtraState()I

    move-result v0

    sget v1, Lcom/android/settings_ex/nfc/NfcAdapterProxy;->STATE_DISCOVERY_OFF:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$P2PItem;->mLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$P2PItem;->this$0:Lcom/android/settings_ex/nfc/LGNfcEnabler;

    iget-object v0, v0, Lcom/android/settings_ex/nfc/LGNfcEnabler;->mNfcAdapterProxy:Lcom/android/settings_ex/nfc/NfcAdapterProxy;

    invoke-virtual {v0}, Lcom/android/settings_ex/nfc/NfcAdapterProxy;->enableNfcDiscovery()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$P2PItem;->mLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$P2PItem;->this$0:Lcom/android/settings_ex/nfc/LGNfcEnabler;

    iget-object v0, v0, Lcom/android/settings_ex/nfc/LGNfcEnabler;->mNfcAdapterProxy:Lcom/android/settings_ex/nfc/NfcAdapterProxy;

    invoke-virtual {v0}, Lcom/android/settings_ex/nfc/NfcAdapterProxy;->getAdapterExtraState()I

    move-result v0

    sget v1, Lcom/android/settings_ex/nfc/NfcAdapterProxy;->STATE_DISCOVERY_ON:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$P2PItem;->mLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$P2PItem;->this$0:Lcom/android/settings_ex/nfc/LGNfcEnabler;

    iget-object v0, v0, Lcom/android/settings_ex/nfc/LGNfcEnabler;->mNfcAdapterProxy:Lcom/android/settings_ex/nfc/NfcAdapterProxy;

    invoke-virtual {v0}, Lcom/android/settings_ex/nfc/NfcAdapterProxy;->disableNfcDiscovery()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$P2PItem;->mLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$P2PItem;->mLL:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$P2PItem;->mLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
