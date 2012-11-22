.class Lcom/android/settings_ex/deviceinfo/UsbSettings$2;
.super Landroid/os/Handler;
.source "UsbSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/deviceinfo/UsbSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/UsbSettings;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 21
    .parameter "message"

    .prologue
    .line 1150
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    if-nez v18, :cond_0

    .line 1484
    :goto_0
    return-void

    .line 1153
    :cond_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    goto :goto_0

    .line 1155
    :pswitch_0
    new-instance v18, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v19, 0x7f0807dc

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const v19, 0x7f0807dd

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const v19, 0x1010355

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    new-instance v19, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$3;-><init>(Lcom/android/settings_ex/deviceinfo/UsbSettings$2;)V

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const/high16 v19, 0x104

    new-instance v20, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$2;

    invoke-direct/range {v20 .. v21}, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$2;-><init>(Lcom/android/settings_ex/deviceinfo/UsbSettings$2;)V

    invoke-virtual/range {v18 .. v20}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const v19, 0x104000a

    new-instance v20, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$1;

    invoke-direct/range {v20 .. v21}, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$1;-><init>(Lcom/android/settings_ex/deviceinfo/UsbSettings$2;)V

    invoke-virtual/range {v18 .. v20}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v14

    .line 1220
    .local v14, tetherAlertDialog:Landroid/app/Dialog;
    invoke-virtual {v14}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1481
    .end local v14           #tetherAlertDialog:Landroid/app/Dialog;
    :catch_0
    move-exception v7

    .line 1482
    .local v7, e:Ljava/lang/NullPointerException;
    const-string v18, "UsbSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[AUTORUN] Handle message process nullpointer exception for dialog="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1224
    .end local v7           #e:Ljava/lang/NullPointerException;
    :pswitch_1
    :try_start_1
    new-instance v18, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v19, 0x7f0807de

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const v19, 0x7f0807df

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    new-instance v19, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$6;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$6;-><init>(Lcom/android/settings_ex/deviceinfo/UsbSettings$2;)V

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const/high16 v19, 0x104

    new-instance v20, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$5;

    invoke-direct/range {v20 .. v21}, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$5;-><init>(Lcom/android/settings_ex/deviceinfo/UsbSettings$2;)V

    invoke-virtual/range {v18 .. v20}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const v19, 0x7f080406

    new-instance v20, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$4;

    invoke-direct/range {v20 .. v21}, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$4;-><init>(Lcom/android/settings_ex/deviceinfo/UsbSettings$2;)V

    invoke-virtual/range {v18 .. v20}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v15

    .line 1277
    .local v15, tetherDisconnectionDialog:Landroid/app/Dialog;
    invoke-virtual {v15}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 1281
    .end local v15           #tetherDisconnectionDialog:Landroid/app/Dialog;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    move-object/from16 v18, v0

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mProgress:Landroid/app/ProgressDialog;
    invoke-static/range {v18 .. v18}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$1900(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Landroid/app/ProgressDialog;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    move-object/from16 v18, v0

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mProgress:Landroid/app/ProgressDialog;
    invoke-static/range {v18 .. v18}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$1900(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Landroid/app/ProgressDialog;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    move-object/from16 v19, v0

    const v20, 0x7f0807e0

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    move-object/from16 v18, v0

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mProgress:Landroid/app/ProgressDialog;
    invoke-static/range {v18 .. v18}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$1900(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Landroid/app/ProgressDialog;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    move-object/from16 v18, v0

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mProgress:Landroid/app/ProgressDialog;
    invoke-static/range {v18 .. v18}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$1900(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Landroid/app/ProgressDialog;

    move-result-object v18

    new-instance v19, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$7;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$7;-><init>(Lcom/android/settings_ex/deviceinfo/UsbSettings$2;)V

    invoke-virtual/range {v18 .. v19}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    move-object/from16 v18, v0

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mProgress:Landroid/app/ProgressDialog;
    invoke-static/range {v18 .. v18}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$1900(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Landroid/app/ProgressDialog;

    move-result-object v18

    new-instance v19, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$8;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$8;-><init>(Lcom/android/settings_ex/deviceinfo/UsbSettings$2;)V

    invoke-virtual/range {v18 .. v19}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    move-object/from16 v18, v0

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mProgress:Landroid/app/ProgressDialog;
    invoke-static/range {v18 .. v18}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$1900(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Landroid/app/ProgressDialog;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/ProgressDialog;->show()V

    goto/16 :goto_0

    .line 1317
    :pswitch_3
    new-instance v9, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1318
    .local v9, internetBuilder:Landroid/app/AlertDialog$Builder;
    const v18, 0x7f0808a3

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1319
    const v18, 0x7f090087

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    move-object/from16 v19, v0

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mInternetConnection:I
    invoke-static/range {v19 .. v19}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$2000(Lcom/android/settings_ex/deviceinfo/UsbSettings;)I

    move-result v19

    new-instance v20, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$9;

    invoke-direct/range {v20 .. v21}, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$9;-><init>(Lcom/android/settings_ex/deviceinfo/UsbSettings$2;)V

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v9, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1373
    const/high16 v18, 0x104

    new-instance v19, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$10;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$10;-><init>(Lcom/android/settings_ex/deviceinfo/UsbSettings$2;)V

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v18, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$11;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$11;-><init>(Lcom/android/settings_ex/deviceinfo/UsbSettings$2;)V

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1385
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 1388
    .end local v9           #internetBuilder:Landroid/app/AlertDialog$Builder;
    :pswitch_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    .line 1392
    .local v11, locale:Ljava/util/Locale;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    .line 1393
    .local v6, am:Landroid/content/res/AssetManager;
    const-string v18, "html/%y%z/tether_attention_%x.html"

    const-string v19, "%y"

    invoke-virtual {v11}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 1394
    .local v13, path:Ljava/lang/String;
    const-string v18, "%z"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "_"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v11}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 1395
    const-string v18, "%x"

    invoke-virtual {v11}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v13

    .line 1397
    const/16 v17, 0x1

    .line 1398
    .local v17, useCountry:Z
    const/4 v10, 0x0

    .line 1401
    .local v10, is:Ljava/io/InputStream;
    :try_start_2
    invoke-virtual {v6, v13}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v10

    .line 1405
    if-eqz v10, :cond_1

    .line 1407
    :try_start_3
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1412
    :cond_1
    :goto_1
    :try_start_4
    const-string v18, "file:///android_asset/html/%y%z/tether_attention_%x.html"

    const-string v19, "%y"

    invoke-virtual {v11}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    .line 1413
    .local v16, url:Ljava/lang/String;
    const-string v19, "%z"

    if-eqz v17, :cond_4

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "_"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v11}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    :goto_2
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    .line 1414
    const-string v18, "%x"

    invoke-virtual {v11}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    .line 1417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    const-string v19, "layout_inflater"

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 1418
    .local v8, inflater:Landroid/view/LayoutInflater;
    const v18, 0x7f04009f

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1419
    .local v4, alertDialogView:Landroid/view/View;
    const v18, 0x7f0b019b

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/webkit/WebView;

    .line 1420
    .local v12, mAttentionView:Landroid/webkit/WebView;
    invoke-virtual {v12}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v18

    if-eqz v18, :cond_2

    .line 1421
    invoke-virtual {v12}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 1422
    invoke-virtual {v12}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 1424
    :cond_2
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1426
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1427
    .local v5, altDialog:Landroid/app/AlertDialog$Builder;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v18, 0x1010355

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    const v18, 0x7f080282

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v18, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$12;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$12;-><init>(Lcom/android/settings_ex/deviceinfo/UsbSettings$2;)V

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1450
    const v18, 0x7f080283

    new-instance v19, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$13;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$13;-><init>(Lcom/android/settings_ex/deviceinfo/UsbSettings$2;)V

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1463
    const v18, 0x7f080284

    new-instance v19, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$14;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$14;-><init>(Lcom/android/settings_ex/deviceinfo/UsbSettings$2;)V

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1477
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 1478
    .local v3, DCMTetherAlertDialog:Landroid/app/Dialog;
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 1402
    .end local v3           #DCMTetherAlertDialog:Landroid/app/Dialog;
    .end local v4           #alertDialogView:Landroid/view/View;
    .end local v5           #altDialog:Landroid/app/AlertDialog$Builder;
    .end local v8           #inflater:Landroid/view/LayoutInflater;
    .end local v12           #mAttentionView:Landroid/webkit/WebView;
    .end local v16           #url:Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 1403
    .local v7, e:Ljava/lang/Exception;
    const/16 v17, 0x0

    .line 1405
    if-eqz v10, :cond_1

    .line 1407
    :try_start_5
    throw v10
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    .line 1408
    :catch_2
    move-exception v18

    goto/16 :goto_1

    .line 1405
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v18

    if-eqz v10, :cond_3

    .line 1407
    :try_start_6
    throw v10
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_0

    .line 1408
    :cond_3
    :goto_3
    :try_start_7
    throw v18

    .line 1413
    .restart local v16       #url:Ljava/lang/String;
    :cond_4
    const-string v18, ""
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_2

    .line 1408
    .end local v16           #url:Ljava/lang/String;
    :catch_3
    move-exception v18

    goto/16 :goto_1

    :catch_4
    move-exception v19

    goto :goto_3

    .line 1153
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
