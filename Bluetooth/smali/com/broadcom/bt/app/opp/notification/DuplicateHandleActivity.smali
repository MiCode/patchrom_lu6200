.class public Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "DuplicateHandleActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private client:Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;

.field private mCurrentIntent:Landroid/content/Intent;

.field private mEditText:Landroid/widget/EditText;

.field private mMediaScanner:Landroid/media/MediaScannerConnection;

.field private mOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;

.field private mRButtonDupActionAddAsNew:Landroid/widget/RadioButton;

.field private mRButtonDupActionReplace:Landroid/widget/RadioButton;

.field private mRequest:Lcom/broadcom/bt/app/opp/data/Job;

.field private mUri:Landroid/net/Uri;

.field msg:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 57
    const-string v0, "DuplicateHandleActivity"

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->TAG:Ljava/lang/String;

    .line 350
    new-instance v0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity$2;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity$2;-><init>(Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->client:Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;

    return-void
.end method

.method static synthetic access$000(Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;)Lcom/broadcom/bt/service/opp/BluetoothOPP;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    return-object v0
.end method

.method static synthetic access$002(Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/BluetoothOPP;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    return-object p1
.end method

.method static synthetic access$100(Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;)Landroid/media/MediaScannerConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mMediaScanner:Landroid/media/MediaScannerConnection;

    return-object v0
.end method

.method static synthetic access$200(Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;)Lcom/broadcom/bt/app/opp/data/Job;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    return-object v0
.end method

.method private createViewForDupFile(ILjava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 7
    .parameter "objTypeId"
    .parameter "existingFileName"
    .parameter "suggestedName"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 134
    const-string v2, "DuplicateHandleActivity"

    const-string v3, "createViewForDupFile"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-static {p1}, Lcom/broadcom/bt/app/opp/util/Utils;->getObjectTypeResourceId(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, objTypeStr:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030008

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 137
    .local v1, view:Landroid/view/View;
    const/high16 v2, 0x7f08

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->msg:Landroid/widget/TextView;

    .line 138
    invoke-direct {p0, p2}, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->setDupFileMsg(Ljava/lang/String;)V

    .line 139
    const v2, 0x7f080016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mEditText:Landroid/widget/EditText;

    .line 140
    iget-object v2, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v2, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 142
    const v2, 0x7f080015

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mRButtonDupActionReplace:Landroid/widget/RadioButton;

    .line 143
    iget-object v2, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mRButtonDupActionReplace:Landroid/widget/RadioButton;

    const v3, 0x7f0500d8

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v2, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mRButtonDupActionReplace:Landroid/widget/RadioButton;

    invoke-virtual {v2, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 145
    const v2, 0x7f080013

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mRButtonDupActionAddAsNew:Landroid/widget/RadioButton;

    .line 146
    iget-object v2, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mRButtonDupActionAddAsNew:Landroid/widget/RadioButton;

    const v3, 0x7f0500d7

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v2, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mRButtonDupActionAddAsNew:Landroid/widget/RadioButton;

    invoke-virtual {v2, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 148
    iget-object v2, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mRButtonDupActionAddAsNew:Landroid/widget/RadioButton;

    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 149
    return-object v1
.end method

.method private initializeProxy()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity$1;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity$1;-><init>(Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;)V

    invoke-static {p0, v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->getProxy(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z

    .line 81
    return-void
.end method

.method private onAddAsNew()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 207
    const-string v9, "DuplicateHandleActivity"

    const-string v10, "onAddAsNew()"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const/4 v5, 0x0

    .line 215
    .local v5, success:Z
    const/4 v4, 0x0

    .line 216
    .local v4, rmTmpFile:Z
    iget-object v9, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v9, v9, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    invoke-static {v9}, Lcom/broadcom/bt/app/opp/util/Utils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 222
    .local v7, tmpFileName:Ljava/lang/String;
    iget-object v9, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v9, v9, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 223
    .local v0, index:I
    iget-object v9, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v9, v9, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    invoke-virtual {v9, v13, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 224
    .local v8, tmpFilePath:Ljava/lang/String;
    const-string v9, "DuplicateHandleActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "tmpFilePath = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    .local v6, tmpFile:Ljava/io/File;
    iget-object v9, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 232
    .local v2, newFileName:Ljava/lang/String;
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 235
    iget-object v9, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iput-object v7, v9, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mHint:Ljava/lang/String;

    .line 236
    const/4 v5, 0x1

    .line 271
    :goto_0
    if-eqz v5, :cond_4

    .line 272
    if-eqz v4, :cond_0

    .line 273
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 275
    :cond_0
    iget-object v9, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    const/16 v10, 0xc8

    iput v10, v9, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 276
    iget-object v9, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, v9, Lcom/broadcom/bt/app/opp/data/Job;->mEndTimestamp:J

    .line 277
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    invoke-static {v9, v10}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->updateRequest(Landroid/content/ContentResolver;Lcom/broadcom/bt/app/opp/data/Job;)Z

    .line 279
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f050082

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    iget-object v12, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v12, v12, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMimetype:Ljava/lang/String;

    invoke-static {v12}, Lcom/broadcom/bt/app/opp/util/Utils;->getObjectTypeFromMimeType(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Lcom/broadcom/bt/app/opp/util/Utils;->getObjectTypeResourceId_Cap(I)I

    move-result v12

    invoke-virtual {p0, v12}, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v13

    invoke-virtual {p0, v10, v11}, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 283
    iget-object v9, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mMediaScanner:Landroid/media/MediaScannerConnection;

    invoke-virtual {v9}, Landroid/media/MediaScannerConnection;->connect()V

    .line 287
    :goto_1
    return-void

    .line 245
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v8, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .local v1, newFile:Ljava/io/File;
    const-string v9, "DuplicateHandleActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "newFile = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    .line 254
    invoke-static {v6, v1}, Lcom/broadcom/bt/app/opp/util/Utils;->moveFile(Ljava/io/File;Ljava/io/File;)V

    .line 255
    iget-object v9, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iput-object v7, v9, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mHint:Ljava/lang/String;

    .line 256
    iget-object v9, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    .line 257
    const/4 v5, 0x1

    .line 258
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 261
    :cond_2
    invoke-static {v1}, Lcom/broadcom/bt/app/opp/util/Utils;->getNewFileName(Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    .line 262
    .local v3, newSuggestedFile:Ljava/io/File;
    invoke-direct {p0, v2}, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->setDupFileMsg(Ljava/lang/String;)V

    .line 263
    if-eqz v3, :cond_3

    .line 264
    iget-object v9, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 266
    :cond_3
    iget-object v9, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v9, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 285
    .end local v1           #newFile:Ljava/io/File;
    .end local v3           #newSuggestedFile:Ljava/io/File;
    :cond_4
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->finish()V

    goto :goto_1
.end method

.method private onClick_objectDialog(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 170
    packed-switch p2, :pswitch_data_0

    .line 183
    :goto_0
    return-void

    .line 172
    :pswitch_0
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mRButtonDupActionAddAsNew:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->onAddAsNew()V

    goto :goto_0

    .line 175
    :cond_0
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->onUpdate()V

    goto :goto_0

    .line 180
    :pswitch_1
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->onIgnore()V

    goto :goto_0

    .line 170
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onIgnore()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 291
    const-string v1, "DuplicateHandleActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "onIgnore"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v1, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 294
    .local v0, tmpFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 295
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mUri:Landroid/net/Uri;

    invoke-static {v1, v2, v4, v4}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->deleteRequest(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 296
    invoke-static {}, Lcom/broadcom/bt/app/opp/notification/EventDispatcher;->refreshCompletedNotifications()V

    .line 297
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->finish()V

    .line 298
    return-void
.end method

.method private onUpdate()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 186
    const-string v2, "DuplicateHandleActivity"

    const-string v3, "onUpdate()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v2, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 190
    .local v0, tmpFile:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mHint:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 191
    .local v1, updatedFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    invoke-static {v0, v1}, Lcom/broadcom/bt/app/opp/util/Utils;->moveFile(Ljava/io/File;Ljava/io/File;)V

    .line 193
    iget-object v2, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    const/16 v3, 0xc8

    iput v3, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 194
    iget-object v2, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/broadcom/bt/app/opp/data/Job;->mEndTimestamp:J

    .line 195
    iget-object v2, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    .line 196
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    invoke-static {v2, v3}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->updateRequest(Landroid/content/ContentResolver;Lcom/broadcom/bt/app/opp/data/Job;)Z

    .line 198
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f050083

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v5, v5, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMimetype:Ljava/lang/String;

    invoke-static {v5}, Lcom/broadcom/bt/app/opp/util/Utils;->getObjectTypeFromMimeType(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/broadcom/bt/app/opp/util/Utils;->getObjectTypeResourceId_Cap(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 202
    iget-object v2, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mMediaScanner:Landroid/media/MediaScannerConnection;

    invoke-virtual {v2}, Landroid/media/MediaScannerConnection;->connect()V

    .line 204
    :cond_0
    return-void
.end method

.method private setDupFileMsg(Ljava/lang/String;)V
    .locals 4
    .parameter "dupFileName"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->msg:Landroid/widget/TextView;

    const v1, 0x7f05008a

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 166
    const-string v0, "DuplicateHandleActivity"

    const-string v1, "dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 382
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mRButtonDupActionAddAsNew:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mEditText:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 387
    :goto_0
    return-void

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mEditText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 153
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->onClick_objectDialog(Landroid/content/DialogInterface;I)V

    .line 156
    invoke-static {}, Lcom/broadcom/bt/app/opp/notification/EventDispatcher;->refreshCompletedNotifications()V

    .line 158
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    iput-object v6, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mCurrentIntent:Landroid/content/Intent;

    .line 86
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mCurrentIntent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mUri:Landroid/net/Uri;

    .line 87
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mUri:Landroid/net/Uri;

    invoke-static {v6, v7}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->getRequest(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/broadcom/bt/app/opp/data/Job;

    move-result-object v6

    iput-object v6, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    .line 88
    new-instance v6, Landroid/media/MediaScannerConnection;

    iget-object v7, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->client:Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;

    invoke-direct {v6, p0, v7}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v6, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mMediaScanner:Landroid/media/MediaScannerConnection;

    .line 90
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->initializeProxy()V

    .line 91
    const/4 v0, 0x1

    .line 92
    .local v0, fileCount:I
    const/4 v2, 0x0

    .line 94
    .local v2, newFile:Ljava/io/File;
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    if-nez v6, :cond_1

    .line 118
    :goto_0
    return-void

    .end local v0           #fileCount:I
    .local v1, fileCount:I
    :cond_0
    move v0, v1

    .line 98
    .end local v1           #fileCount:I
    .restart local v0       #fileCount:I
    :cond_1
    new-instance v2, Ljava/io/File;

    .end local v2           #newFile:Ljava/io/File;
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget v6, v6, Lcom/broadcom/bt/app/opp/data/Job;->mFileFormat:I

    invoke-static {v6}, Lcom/broadcom/bt/app/opp/util/Utils;->getDestinationDir(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v8, v8, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    invoke-static {v8}, Lcom/broadcom/bt/app/opp/util/Utils;->getFileBase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v1, v0, 0x1

    .end local v0           #fileCount:I
    .restart local v1       #fileCount:I
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v8, v8, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    invoke-static {v8}, Lcom/broadcom/bt/app/opp/util/Utils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .restart local v2       #newFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 102
    iget-object v5, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 103
    .local v5, p:Lcom/android/internal/app/AlertController$AlertParams;
    const/high16 v6, 0x7f02

    iput v6, v5, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 104
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v6, v6, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMimetype:Ljava/lang/String;

    invoke-static {v6}, Lcom/broadcom/bt/app/opp/util/Utils;->getObjectTypeFromMimeType(Ljava/lang/String;)I

    move-result v3

    .line 105
    .local v3, objTypeId:I
    invoke-static {v3}, Lcom/broadcom/bt/app/opp/util/Utils;->getObjectTypeResourceId_Cap(I)I

    move-result v4

    .line 106
    .local v4, objTypeResourceId:I
    if-lez v4, :cond_2

    .line 107
    const v6, 0x7f0500cf

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {p0, v4}, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 111
    :goto_1
    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v6, v6, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mHint:Ljava/lang/String;

    iget-object v7, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v7, v7, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    invoke-static {v7}, Lcom/broadcom/bt/app/opp/util/Utils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v3, v6, v7}, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->createViewForDupFile(ILjava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 112
    const v6, 0x7f050096

    invoke-virtual {p0, v6}, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 113
    iput-object p0, v5, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 114
    const v6, 0x7f050098

    invoke-virtual {p0, v6}, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 115
    iput-object p0, v5, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 117
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->setupAlert()V

    move v0, v1

    .line 118
    .end local v1           #fileCount:I
    .restart local v0       #fileCount:I
    goto/16 :goto_0

    .line 109
    .end local v0           #fileCount:I
    .restart local v1       #fileCount:I
    :cond_2
    const v6, 0x7f0500ce

    invoke-virtual {p0, v6}, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 336
    const-string v0, "DuplicateHandleActivity"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->unregisterEventHandler()V

    .line 339
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;->finish()V

    .line 340
    iput-object v2, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mMediaScanner:Landroid/media/MediaScannerConnection;

    if-eqz v0, :cond_2

    .line 343
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mMediaScanner:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 344
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mMediaScanner:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 345
    :cond_1
    iput-object v2, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mMediaScanner:Landroid/media/MediaScannerConnection;

    .line 347
    :cond_2
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 348
    return-void
.end method
