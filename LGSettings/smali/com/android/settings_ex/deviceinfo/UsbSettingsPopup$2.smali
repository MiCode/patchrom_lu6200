.class Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2;
.super Landroid/os/Handler;
.source "UsbSettingsPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;)V
    .locals 0
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 20
    .parameter "message"

    .prologue
    .line 209
    :try_start_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 434
    :goto_0
    :pswitch_0
    return-void

    .line 211
    :pswitch_1
    new-instance v17, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;

    move-object/from16 v18, v0

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->access$900(Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;)Landroid/content/Context;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v18, 0x7f0807dc

    invoke-virtual/range {v17 .. v18}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    const v18, 0x7f0807dd

    invoke-virtual/range {v17 .. v18}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    const v18, 0x1010355

    invoke-virtual/range {v17 .. v18}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    new-instance v18, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2$3;-><init>(Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2;)V

    invoke-virtual/range {v17 .. v18}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    const/high16 v18, 0x104

    new-instance v19, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2$2;

    invoke-direct/range {v19 .. v20}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2$2;-><init>(Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2;)V

    invoke-virtual/range {v17 .. v19}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    const v18, 0x104000a

    new-instance v19, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2$1;

    invoke-direct/range {v19 .. v20}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2$1;-><init>(Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2;)V

    invoke-virtual/range {v17 .. v19}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v12

    .line 257
    .local v12, tetherAlertDialog:Landroid/app/Dialog;
    invoke-virtual {v12}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 431
    .end local v12           #tetherAlertDialog:Landroid/app/Dialog;
    :catch_0
    move-exception v6

    .line 432
    .local v6, e:Ljava/lang/NullPointerException;
    const-string v17, "UsbSettingsPopup"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[AUTORUN] Handle message process nullpointer exception for dialog="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 260
    .end local v6           #e:Ljava/lang/NullPointerException;
    :pswitch_2
    :try_start_1
    new-instance v17, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;

    move-object/from16 v18, v0

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->access$900(Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;)Landroid/content/Context;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v18, 0x7f0807de

    invoke-virtual/range {v17 .. v18}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    const v18, 0x7f0807df

    invoke-virtual/range {v17 .. v18}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    new-instance v18, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2$6;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2$6;-><init>(Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2;)V

    invoke-virtual/range {v17 .. v18}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    const/high16 v18, 0x104

    new-instance v19, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2$5;

    invoke-direct/range {v19 .. v20}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2$5;-><init>(Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2;)V

    invoke-virtual/range {v17 .. v19}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    const v18, 0x7f080406

    new-instance v19, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2$4;

    invoke-direct/range {v19 .. v20}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2$4;-><init>(Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2;)V

    invoke-virtual/range {v17 .. v19}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v13

    .line 305
    .local v13, tetherDisconnectionDialog:Landroid/app/Dialog;
    invoke-virtual {v13}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 308
    .end local v13           #tetherDisconnectionDialog:Landroid/app/Dialog;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mProgress:Landroid/app/ProgressDialog;
    invoke-static/range {v17 .. v17}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->access$1000(Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;)Landroid/app/ProgressDialog;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mProgress:Landroid/app/ProgressDialog;
    invoke-static/range {v17 .. v17}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->access$1000(Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;)Landroid/app/ProgressDialog;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;

    move-object/from16 v18, v0

    const v19, 0x7f0807e0

    invoke-virtual/range {v18 .. v19}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mProgress:Landroid/app/ProgressDialog;
    invoke-static/range {v17 .. v17}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->access$1000(Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;)Landroid/app/ProgressDialog;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mProgress:Landroid/app/ProgressDialog;
    invoke-static/range {v17 .. v17}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->access$1000(Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;)Landroid/app/ProgressDialog;

    move-result-object v17

    new-instance v18, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2$7;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2$7;-><init>(Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2;)V

    invoke-virtual/range {v17 .. v18}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mProgress:Landroid/app/ProgressDialog;
    invoke-static/range {v17 .. v17}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->access$1000(Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;)Landroid/app/ProgressDialog;

    move-result-object v17

    new-instance v18, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2$8;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2$8;-><init>(Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2;)V

    invoke-virtual/range {v17 .. v18}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mProgress:Landroid/app/ProgressDialog;
    invoke-static/range {v17 .. v17}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->access$1000(Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;)Landroid/app/ProgressDialog;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/ProgressDialog;->show()V

    goto/16 :goto_0

    .line 343
    :pswitch_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    .line 347
    .local v9, locale:Ljava/util/Locale;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->access$900(Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;)Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    .line 348
    .local v5, am:Landroid/content/res/AssetManager;
    const-string v17, "html/%y%z/tether_attention_%x.html"

    const-string v18, "%y"

    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 349
    .local v11, path:Ljava/lang/String;
    const-string v17, "%z"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v9}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 350
    const-string v17, "%x"

    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v11

    .line 352
    const/4 v15, 0x1

    .line 353
    .local v15, useCountry:Z
    const/4 v8, 0x0

    .line 356
    .local v8, is:Ljava/io/InputStream;
    :try_start_2
    invoke-virtual {v5, v11}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v8

    .line 360
    if-eqz v8, :cond_0

    .line 362
    :try_start_3
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0

    .line 367
    :cond_0
    :goto_1
    :try_start_4
    const-string v17, "file:///android_asset/html/%y%z/tether_attention_%x.html"

    const-string v18, "%y"

    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    .line 368
    .local v14, url:Ljava/lang/String;
    const-string v18, "%z"

    if-eqz v15, :cond_3

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "_"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v9}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    :goto_2
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    .line 369
    const-string v17, "%x"

    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->access$900(Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;)Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;

    move-object/from16 v18, v0

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->access$900(Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;)Landroid/content/Context;

    const-string v18, "layout_inflater"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 373
    .local v7, inflater:Landroid/view/LayoutInflater;
    const v17, 0x7f04009f

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 374
    .local v3, alertDialogView:Landroid/view/View;
    const v17, 0x7f0b019b

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/webkit/WebView;

    .line 377
    .local v10, mAttentionView:Landroid/webkit/WebView;
    invoke-virtual {v10}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v16

    .line 378
    .local v16, ws:Landroid/webkit/WebSettings;
    if-eqz v16, :cond_1

    .line 379
    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 380
    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 382
    :cond_1
    invoke-virtual {v10, v14}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 384
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;->access$900(Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup;)Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 385
    .local v4, altDialog:Landroid/app/AlertDialog$Builder;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 386
    const v17, 0x1010355

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 387
    const v17, 0x7f080282

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 388
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 389
    new-instance v17, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2$9;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2$9;-><init>(Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2;)V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 405
    const v17, 0x7f080283

    new-instance v18, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2$10;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2$10;-><init>(Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 416
    const v17, 0x7f080284

    new-instance v18, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2$11;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2$11;-><init>(Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 427
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 428
    .local v2, DCMTetherAlertDialog:Landroid/app/Dialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 357
    .end local v2           #DCMTetherAlertDialog:Landroid/app/Dialog;
    .end local v3           #alertDialogView:Landroid/view/View;
    .end local v4           #altDialog:Landroid/app/AlertDialog$Builder;
    .end local v7           #inflater:Landroid/view/LayoutInflater;
    .end local v10           #mAttentionView:Landroid/webkit/WebView;
    .end local v14           #url:Ljava/lang/String;
    .end local v16           #ws:Landroid/webkit/WebSettings;
    :catch_1
    move-exception v6

    .line 358
    .local v6, e:Ljava/lang/Exception;
    const/4 v15, 0x0

    .line 360
    if-eqz v8, :cond_0

    .line 362
    :try_start_5
    throw v8
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    .line 363
    :catch_2
    move-exception v17

    goto/16 :goto_1

    .line 360
    .end local v6           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v17

    if-eqz v8, :cond_2

    .line 362
    :try_start_6
    throw v8
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_0

    .line 363
    :cond_2
    :goto_3
    :try_start_7
    throw v17

    .line 368
    .restart local v14       #url:Ljava/lang/String;
    :cond_3
    const-string v17, ""
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_2

    .line 363
    .end local v14           #url:Ljava/lang/String;
    :catch_3
    move-exception v17

    goto/16 :goto_1

    :catch_4
    move-exception v18

    goto :goto_3

    .line 209
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
