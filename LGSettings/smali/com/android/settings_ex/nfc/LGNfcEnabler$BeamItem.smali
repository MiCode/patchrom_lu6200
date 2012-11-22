.class public Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamItem;
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
    name = "BeamItem"
.end annotation


# instance fields
.field mCheck:Landroid/widget/CheckBox;

.field mLL:Landroid/widget/LinearLayout;

.field mTV:Landroid/widget/TextView;

.field mTrigger:Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamTrigger;

.field final synthetic this$0:Lcom/android/settings_ex/nfc/LGNfcEnabler;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/nfc/LGNfcEnabler;Landroid/widget/LinearLayout;Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamTrigger;)V
    .locals 2
    .parameter
    .parameter "ll"
    .parameter "trig"

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamItem;->this$0:Lcom/android/settings_ex/nfc/LGNfcEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamItem;->mLL:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamItem;->mLL:Landroid/widget/LinearLayout;

    const v1, 0x7f0b001a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamItem;->mCheck:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamItem;->mLL:Landroid/widget/LinearLayout;

    const v1, 0x7f0b0019

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamItem;->mTV:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamItem;->mTrigger:Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamTrigger;

    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamItem;->mLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #getter for: Lcom/android/settings_ex/nfc/LGNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {p1}, Lcom/android/settings_ex/nfc/LGNfcEnabler;->access$000(Lcom/android/settings_ex/nfc/LGNfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamItem;->mLL:Landroid/widget/LinearLayout;

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

    invoke-static {}, Lcom/android/settings_ex/Utils;->hasFeatureNfcP2P()Z

    move-result v0

    if-nez v0, :cond_1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamItem;->mLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_0

    .line 582
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamItem;->mLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_0

    .line 585
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamItem;->mLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_0

    .line 588
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamItem;->mLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    sget v0, Lcom/android/settings_ex/nfc/NfcAdapterProxy;->STATE_DISCOVERY_OFF:I

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamItem;->mLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamItem;->mCheck:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamItem;->this$0:Lcom/android/settings_ex/nfc/LGNfcEnabler;

    #getter for: Lcom/android/settings_ex/nfc/LGNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v1}, Lcom/android/settings_ex/nfc/LGNfcEnabler;->access$000(Lcom/android/settings_ex/nfc/LGNfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamItem;->mTV:Landroid/widget/TextView;

    const v1, 0x7f080208

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    sget v0, Lcom/android/settings_ex/nfc/NfcAdapterProxy;->STATE_DISCOVERY_ON:I

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamItem;->mLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamItem;->mCheck:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamItem;->this$0:Lcom/android/settings_ex/nfc/LGNfcEnabler;

    #getter for: Lcom/android/settings_ex/nfc/LGNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v1}, Lcom/android/settings_ex/nfc/LGNfcEnabler;->access$000(Lcom/android/settings_ex/nfc/LGNfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamItem;->mTV:Landroid/widget/TextView;

    const v1, 0x7f0801fc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_3
    sget v0, Lcom/android/settings_ex/nfc/NfcAdapterProxy;->STATE_TURNING_DISCOVERY_ON:I

    if-ne p2, v0, :cond_4

    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamItem;->mLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_0

    :cond_4
    sget v0, Lcom/android/settings_ex/nfc/NfcAdapterProxy;->STATE_TURNING_DISCOVERY_OFF:I

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamItem;->mLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamItem;->mTrigger:Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamTrigger;

    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamItem;->this$0:Lcom/android/settings_ex/nfc/LGNfcEnabler;

    #getter for: Lcom/android/settings_ex/nfc/LGNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v0}, Lcom/android/settings_ex/nfc/LGNfcEnabler;->access$000(Lcom/android/settings_ex/nfc/LGNfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamTrigger;->trigger(Z)Z

    move-result v0

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamItem;->mCheck:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamItem;->this$0:Lcom/android/settings_ex/nfc/LGNfcEnabler;

    #getter for: Lcom/android/settings_ex/nfc/LGNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v1}, Lcom/android/settings_ex/nfc/LGNfcEnabler;->access$000(Lcom/android/settings_ex/nfc/LGNfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 622
    :cond_0
    return-void

    .line 619
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamItem;->mLL:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamItem;->mLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
