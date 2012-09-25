.class public Lcom/android/settings_ex/lge/ConnectivityHelperPopup;
.super Landroid/app/Activity;
.source "ConnectivityHelperPopup.java"


# instance fields
.field private mOldversion:Z

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/lge/ConnectivityHelperPopup;->view:Landroid/view/View;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/lge/ConnectivityHelperPopup;->mOldversion:Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 19
    .parameter "savedInstanceState"

    .prologue
    .line 26
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v16, 0x7f08078c

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/lge/ConnectivityHelperPopup;->setTitle(I)V

    .line 30
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/lge/ConnectivityHelperPopup;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v16

    const v17, 0x7f04002a

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/lge/ConnectivityHelperPopup;->view:Landroid/view/View;

    .line 31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/lge/ConnectivityHelperPopup;->view:Landroid/view/View;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/lge/ConnectivityHelperPopup;->setContentView(Landroid/view/View;)V

    .line 33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/lge/ConnectivityHelperPopup;->view:Landroid/view/View;

    move-object/from16 v16, v0

    const v17, 0x7f0b0051

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 34
    .local v3, chargeLayout:Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/lge/ConnectivityHelperPopup;->view:Landroid/view/View;

    move-object/from16 v16, v0

    const v17, 0x7f0b0053

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 35
    .local v7, massStorageLayout:Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/lge/ConnectivityHelperPopup;->view:Landroid/view/View;

    move-object/from16 v16, v0

    const v17, 0x7f0b0056

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 36
    .local v9, mtpLinearLayout:Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/lge/ConnectivityHelperPopup;->view:Landroid/view/View;

    move-object/from16 v16, v0

    const v17, 0x7f0b0057

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 37
    .local v5, internetConnectionLayout:Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/lge/ConnectivityHelperPopup;->view:Landroid/view/View;

    move-object/from16 v16, v0

    const v17, 0x7f0b005a

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 38
    .local v12, tetherLinearLayout:Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/lge/ConnectivityHelperPopup;->view:Landroid/view/View;

    move-object/from16 v16, v0

    const v17, 0x7f0b005b

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 39
    .local v6, lgSoftwareLinearLayout:Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/lge/ConnectivityHelperPopup;->view:Landroid/view/View;

    move-object/from16 v16, v0

    const v17, 0x7f0b005d

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 42
    .local v10, ptpLinearLayout:Landroid/widget/LinearLayout;
    const v16, 0x7f0b0058

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 43
    .local v8, modemText:Landroid/widget/TextView;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const v17, 0x7f0807a1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/lge/ConnectivityHelperPopup;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " :"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    const v16, 0x7f0b0059

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 45
    .local v4, ethernetText:Landroid/widget/TextView;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const v17, 0x7f080654

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/lge/ConnectivityHelperPopup;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " :"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v16

    const-string v17, "VZW"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 48
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 49
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 55
    :goto_0
    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v16

    const-string v17, "TRF"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_0

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v16

    const-string v17, "BM"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 56
    :cond_0
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 75
    :cond_1
    :goto_1
    sget-object v16, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v17, "p2"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_b

    .line 76
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 77
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 102
    :cond_2
    :goto_2
    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v16

    const-string v17, "US"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v16

    const-string v17, "ATT"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 103
    const v16, 0x7f0b005c

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 104
    .local v11, software:Landroid/widget/TextView;
    const v16, 0x7f080372

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(I)V

    .line 105
    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v13

    .line 106
    .local v13, tf:Landroid/graphics/Typeface;
    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 109
    .end local v11           #software:Landroid/widget/TextView;
    .end local v13           #tf:Landroid/graphics/Typeface;
    :cond_3
    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v16

    const-string v17, "SPRINT"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 110
    const v16, 0x7f0b0052

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 111
    .local v2, charge:Landroid/widget/TextView;
    const v16, 0x7f0807ae

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 114
    .end local v2           #charge:Landroid/widget/TextView;
    :cond_4
    sget-object v16, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v17, "i_skt"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_5

    sget-object v16, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v17, "i_u"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 115
    :cond_5
    const v16, 0x7f0b0054

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 116
    .local v15, usb_storage_title:Landroid/widget/TextView;
    const v16, 0x7f0807b1

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(I)V

    .line 117
    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v13

    .line 118
    .restart local v13       #tf:Landroid/graphics/Typeface;
    invoke-virtual {v15, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 120
    const v16, 0x7f0b0055

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 121
    .local v14, usb_storage_summary:Landroid/widget/TextView;
    const v16, 0x7f0807b3

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(I)V

    .line 123
    .end local v13           #tf:Landroid/graphics/Typeface;
    .end local v14           #usb_storage_summary:Landroid/widget/TextView;
    .end local v15           #usb_storage_title:Landroid/widget/TextView;
    :cond_6
    return-void

    .line 52
    :cond_7
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 58
    :cond_8
    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v16

    const-string v17, "KDDI"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    sget-object v16, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v17, "x2"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 59
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 60
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 61
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 63
    :cond_9
    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v16

    const-string v17, "DCM"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 64
    sget-object v16, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v17, "p2"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1

    const-string v16, "batman_dcm"

    sget-object v17, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 68
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 71
    :cond_a
    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v16

    const-string v17, "SPRINT"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 72
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 79
    :cond_b
    sget-object v16, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v17, "black"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_c

    sget-object v16, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v17, "blackg"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_c

    sget-object v16, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v17, "justin"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d

    .line 81
    :cond_c
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 82
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2

    .line 84
    :cond_d
    sget-object v16, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v17, "i_vzw"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    sget-object v16, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v17, "lgp930"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    sget-object v16, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v17, "i_skt"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    sget-object v16, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v17, "i_u"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    sget-object v16, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v17, "i_dcm"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    sget-object v16, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v17, "cayman"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    sget-object v16, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v17, "lgp935"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    .line 89
    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v16

    const-string v17, "KDDI"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_e

    sget-object v16, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v17, "x2"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    .line 91
    :cond_e
    sget-object v16, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v17, "batman_lgu"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    sget-object v16, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v17, "batman_skt"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    .line 93
    sget-object v16, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v17, "u0"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_10

    sget-object v16, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v17, "u0_cdma"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_f

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v16

    const-string v17, "USC"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_10

    :cond_f
    sget-object v16, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v17, "m4"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_10

    sget-object v16, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v17, "m4ds"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_11

    .line 95
    :cond_10
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 96
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2

    .line 99
    :cond_11
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2
.end method
