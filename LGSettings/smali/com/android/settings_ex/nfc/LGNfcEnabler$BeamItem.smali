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
    .line 564
    iput-object p1, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamItem;->this$0:Lcom/android/settings_ex/nfc/LGNfcEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 565
    iput-object p2, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamItem;->mLL:Landroid/widget/LinearLayout;

    .line 566
    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamItem;->mLL:Landroid/widget/LinearLayout;

    const v1, 0x7f0b001a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamItem;->mCheck:Landroid/widget/CheckBox;

    .line 567
    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamItem;->mLL:Landroid/widget/LinearLayout;

    const v1, 0x7f0b0019

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamItem;->mTV:Landroid/widget/TextView;

    .line 568
    iput-object p3, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamItem;->mTrigger:Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamTrigger;

    .line 570
    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamItem;->mLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 571
    #getter for: Lcom/android/settings_ex/nfc/LGNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {p1}, Lcom/android/settings_ex/nfc/LGNfcEnabler;->access$000(Lcom/android/settings_ex/nfc/LGNfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamItem;->mLL:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 573
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

    .line 576
    invoke-static {}, Lcom/android/settings_ex/Utils;->hasFeatureNfcP2P()Z

    move-result v0

    if-nez v0, :cond_1

    .line 577
    packed-switch p1, :pswitch_data_0

    .line 606
    :cond_0
    :goto_0
    return-void

    .line 579
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

    .line 592
    :cond_1
    sget v0, Lcom/android/settings_ex/nfc/NfcAdapterProxy;->STATE_DISCOVERY_OFF:I

    if-ne p2, v0, :cond_2

    .line 593
    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamItem;->mLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 594
    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamItem;->mCheck:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamItem;->this$0:Lcom/android/settings_ex/nfc/LGNfcEnabler;

    #getter for: Lcom/android/settings_ex/nfc/LGNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v1}, Lcom/android/settings_ex/nfc/LGNfcEnabler;->access$000(Lcom/android/settings_ex/nfc/LGNfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 595
    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamItem;->mTV:Landroid/widget/TextView;

    const v1, 0x7f080208

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 596
    :cond_2
    sget v0, Lcom/android/settings_ex/nfc/NfcAdapterProxy;->STATE_DISCOVERY_ON:I

    if-ne p2, v0, :cond_3

    .line 597
    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamItem;->mLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 598
    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamItem;->mCheck:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamItem;->this$0:Lcom/android/settings_ex/nfc/LGNfcEnabler;

    #getter for: Lcom/android/settings_ex/nfc/LGNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v1}, Lcom/android/settings_ex/nfc/LGNfcEnabler;->access$000(Lcom/android/settings_ex/nfc/LGNfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 599
    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamItem;->mTV:Landroid/widget/TextView;

    const v1, 0x7f0801fc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 600
    :cond_3
    sget v0, Lcom/android/settings_ex/nfc/NfcAdapterProxy;->STATE_TURNING_DISCOVERY_ON:I

    if-ne p2, v0, :cond_4

    .line 601
    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamItem;->mLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_0

    .line 602
    :cond_4
    sget v0, Lcom/android/settings_ex/nfc/NfcAdapterProxy;->STATE_TURNING_DISCOVERY_OFF:I

    if-ne p2, v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamItem;->mLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_0

    .line 577
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

    .line 619
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

    .line 620
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
    .line 614
    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamItem;->mLL:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 615
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamItem;->mLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 610
    return-void
.end method
