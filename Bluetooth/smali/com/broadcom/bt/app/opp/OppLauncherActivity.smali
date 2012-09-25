.class public Lcom/broadcom/bt/app/opp/OppLauncherActivity;
.super Landroid/app/Activity;
.source "OppLauncherActivity.java"


# instance fields
.field private mAction:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private enableBtOrLaunchDevicePicker()V
    .locals 2

    .prologue
    .line 87
    invoke-static {p0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    const-string v0, "OppLauncherActivity"

    const-string v1, "Prepare Enable BT!! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 91
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 92
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/opp/OppLauncherActivity;->startActivity(Landroid/content/Intent;)V

    .line 96
    :goto_0
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/OppLauncherActivity;->finish()V

    .line 97
    return-void

    .line 94
    :cond_0
    invoke-static {p0}, Lcom/broadcom/bt/app/opp/OppLauncherActivity;->openSettingsDevicePicker(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private handleExchangeAction(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 305
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/OppLauncherActivity;->isBluetoothAllowed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 316
    :goto_0
    return-void

    .line 308
    :cond_0
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/OppLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 309
    .local v1, i:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    .line 310
    .local v2, mimeType:Ljava/lang/String;
    new-instance v0, Lcom/broadcom/bt/app/opp/data/LauncherData;

    invoke-direct {v0}, Lcom/broadcom/bt/app/opp/data/LauncherData;-><init>()V

    .line 311
    .local v0, data:Lcom/broadcom/bt/app/opp/data/LauncherData;
    iget-object v3, p0, Lcom/broadcom/bt/app/opp/OppLauncherActivity;->mAction:Ljava/lang/String;

    iput-object v3, v0, Lcom/broadcom/bt/app/opp/data/LauncherData;->mAction:Ljava/lang/String;

    .line 312
    iput-object v2, v0, Lcom/broadcom/bt/app/opp/data/LauncherData;->mMimeType:Ljava/lang/String;

    .line 313
    invoke-virtual {v0, p0}, Lcom/broadcom/bt/app/opp/data/LauncherData;->save(Landroid/content/Context;)V

    .line 314
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/broadcom/bt/app/opp/OppLauncherActivity;->requestWindowFeature(I)Z

    .line 315
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/OppLauncherActivity;->enableBtOrLaunchDevicePicker()V

    goto :goto_0
.end method

.method private handleOpenAction(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/OppLauncherActivity;->isBluetoothAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    :goto_0
    return-void

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/OppLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 162
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 164
    const-string v1, "OppLauncherActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get ACTION_OPEN intent: Uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 167
    iget-object v2, p0, Lcom/broadcom/bt/app/opp/OppLauncherActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    const-string v2, "com.android.bluetooth"

    const-class v3, Lcom/broadcom/bt/app/opp/OppReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 171
    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/opp/OppLauncherActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 172
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/OppLauncherActivity;->finish()V

    goto :goto_0
.end method

.method private handlePullAction(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 283
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/OppLauncherActivity;->isBluetoothAllowed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 297
    :goto_0
    return-void

    .line 288
    :cond_0
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/OppLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 289
    .local v1, i:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    .line 291
    .local v2, mimeType:Ljava/lang/String;
    new-instance v0, Lcom/broadcom/bt/app/opp/data/LauncherData;

    invoke-direct {v0}, Lcom/broadcom/bt/app/opp/data/LauncherData;-><init>()V

    .line 292
    .local v0, data:Lcom/broadcom/bt/app/opp/data/LauncherData;
    iget-object v3, p0, Lcom/broadcom/bt/app/opp/OppLauncherActivity;->mAction:Ljava/lang/String;

    iput-object v3, v0, Lcom/broadcom/bt/app/opp/data/LauncherData;->mAction:Ljava/lang/String;

    .line 293
    iput-object v2, v0, Lcom/broadcom/bt/app/opp/data/LauncherData;->mMimeType:Ljava/lang/String;

    .line 294
    invoke-virtual {v0, p0}, Lcom/broadcom/bt/app/opp/data/LauncherData;->save(Landroid/content/Context;)V

    .line 295
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/broadcom/bt/app/opp/OppLauncherActivity;->requestWindowFeature(I)Z

    .line 296
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/OppLauncherActivity;->enableBtOrLaunchDevicePicker()V

    goto :goto_0
.end method

.method private handleSendAction(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const v11, 0x7f050112

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 185
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/OppLauncherActivity;->isBluetoothAllowed()Z

    move-result v7

    if-nez v7, :cond_0

    .line 239
    :goto_0
    return-void

    .line 189
    :cond_0
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/OppLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 190
    .local v3, i:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    .line 191
    .local v5, mimeType:Ljava/lang/String;
    const/4 v6, 0x0

    .line 192
    .local v6, uri:Landroid/net/Uri;
    const/4 v2, 0x0

    .line 193
    .local v2, extraText:Ljava/lang/String;
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 194
    .local v0, b:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 195
    const-string v7, "android.intent.extra.STREAM"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    .end local v6           #uri:Landroid/net/Uri;
    check-cast v6, Landroid/net/Uri;

    .line 198
    .restart local v6       #uri:Landroid/net/Uri;
    :cond_1
    if-nez v5, :cond_3

    .line 199
    const-string v7, "OppLauncherActivity"

    const-string v8, "Unable to process send request. Mime type is invalid"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/OppLauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 202
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/OppLauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {p0, v11}, Lcom/broadcom/bt/app/opp/OppLauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 207
    :cond_2
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/OppLauncherActivity;->finish()V

    goto :goto_0

    .line 211
    :cond_3
    if-nez v6, :cond_5

    .line 212
    const-string v7, "android.intent.extra.TEXT"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 213
    if-nez v2, :cond_5

    .line 214
    const-string v7, "OppLauncherActivity"

    const-string v8, "Unable to process send request. URI is invalid"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/OppLauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 217
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/OppLauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {p0, v11}, Lcom/broadcom/bt/app/opp/OppLauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 222
    :cond_4
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/OppLauncherActivity;->finish()V

    goto :goto_0

    .line 226
    :cond_5
    new-instance v1, Lcom/broadcom/bt/app/opp/data/LauncherData;

    invoke-direct {v1}, Lcom/broadcom/bt/app/opp/data/LauncherData;-><init>()V

    .line 227
    .local v1, data:Lcom/broadcom/bt/app/opp/data/LauncherData;
    iget-object v7, p0, Lcom/broadcom/bt/app/opp/OppLauncherActivity;->mAction:Ljava/lang/String;

    iput-object v7, v1, Lcom/broadcom/bt/app/opp/data/LauncherData;->mAction:Ljava/lang/String;

    .line 228
    iput-object v5, v1, Lcom/broadcom/bt/app/opp/data/LauncherData;->mMimeType:Ljava/lang/String;

    .line 229
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, v1, Lcom/broadcom/bt/app/opp/data/LauncherData;->mUriList:Ljava/util/ArrayList;

    .line 230
    if-eqz v6, :cond_6

    .line 231
    iget-object v7, v1, Lcom/broadcom/bt/app/opp/data/LauncherData;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    :cond_6
    const/4 v4, 0x0

    .local v4, k:I
    :goto_1
    iget-object v7, v1, Lcom/broadcom/bt/app/opp/data/LauncherData;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_7

    .line 233
    const-string v7, "OppLauncherActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[BTUI] ### ACTION_SEND : uri = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/broadcom/bt/app/opp/data/LauncherData;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 235
    :cond_7
    iput-object v2, v1, Lcom/broadcom/bt/app/opp/data/LauncherData;->mExtraText:Ljava/lang/String;

    .line 236
    invoke-virtual {v1, p0}, Lcom/broadcom/bt/app/opp/data/LauncherData;->save(Landroid/content/Context;)V

    .line 237
    invoke-virtual {p0, v10}, Lcom/broadcom/bt/app/opp/OppLauncherActivity;->requestWindowFeature(I)Z

    .line 238
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/OppLauncherActivity;->enableBtOrLaunchDevicePicker()V

    goto/16 :goto_0
.end method

.method private handleSendMultipleAction(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/OppLauncherActivity;->isBluetoothAllowed()Z

    move-result v5

    if-nez v5, :cond_0

    .line 275
    :goto_0
    return-void

    .line 247
    :cond_0
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/OppLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 248
    .local v1, i:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    .line 249
    .local v3, mimeType:Ljava/lang/String;
    const-string v5, "android.intent.extra.STREAM"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 251
    .local v4, uriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_1

    if-nez v3, :cond_3

    .line 252
    :cond_1
    const-string v5, "OppLauncherActivity"

    const-string v6, "Unable to process send multiple request. Uri list is invalid"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/OppLauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 256
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/OppLauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f050112

    invoke-virtual {p0, v6}, Lcom/broadcom/bt/app/opp/OppLauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 261
    :cond_2
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/OppLauncherActivity;->finish()V

    goto :goto_0

    .line 265
    :cond_3
    new-instance v0, Lcom/broadcom/bt/app/opp/data/LauncherData;

    invoke-direct {v0}, Lcom/broadcom/bt/app/opp/data/LauncherData;-><init>()V

    .line 266
    .local v0, data:Lcom/broadcom/bt/app/opp/data/LauncherData;
    iget-object v5, p0, Lcom/broadcom/bt/app/opp/OppLauncherActivity;->mAction:Ljava/lang/String;

    iput-object v5, v0, Lcom/broadcom/bt/app/opp/data/LauncherData;->mAction:Ljava/lang/String;

    .line 267
    iput-object v3, v0, Lcom/broadcom/bt/app/opp/data/LauncherData;->mMimeType:Ljava/lang/String;

    .line 268
    iput-object v4, v0, Lcom/broadcom/bt/app/opp/data/LauncherData;->mUriList:Ljava/util/ArrayList;

    .line 269
    const/4 v2, 0x0

    .local v2, k:I
    :goto_1
    iget-object v5, v0, Lcom/broadcom/bt/app/opp/data/LauncherData;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 270
    const-string v5, "OppLauncherActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[BTUI] ### ACTION_SEND_MULTIPLE : uri = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/broadcom/bt/app/opp/data/LauncherData;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 272
    :cond_4
    invoke-virtual {v0, p0}, Lcom/broadcom/bt/app/opp/data/LauncherData;->save(Landroid/content/Context;)V

    .line 273
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/broadcom/bt/app/opp/OppLauncherActivity;->requestWindowFeature(I)Z

    .line 274
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/OppLauncherActivity;->enableBtOrLaunchDevicePicker()V

    goto :goto_0
.end method

.method private final isBluetoothAllowed()Z
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 119
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/OppLauncherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 122
    .local v5, resolver:Landroid/content/ContentResolver;
    const-string v8, "airplane_mode_on"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v6, :cond_1

    move v2, v6

    .line 124
    .local v2, isAirplaneModeOn:Z
    :goto_0
    if-nez v2, :cond_2

    .line 148
    :cond_0
    :goto_1
    return v6

    .end local v2           #isAirplaneModeOn:Z
    :cond_1
    move v2, v7

    .line 122
    goto :goto_0

    .line 129
    .restart local v2       #isAirplaneModeOn:Z
    :cond_2
    const-string v8, "airplane_mode_radios"

    invoke-static {v5, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, airplaneModeRadios:Ljava/lang/String;
    if-nez v0, :cond_3

    move v3, v6

    .line 133
    .local v3, isAirplaneSensitive:Z
    :goto_2
    if-eqz v3, :cond_0

    .line 138
    const-string v8, "airplane_mode_toggleable_radios"

    invoke-static {v5, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, airplaneModeToggleableRadios:Ljava/lang/String;
    if-nez v1, :cond_4

    move v4, v7

    .line 143
    .local v4, isAirplaneToggleable:Z
    :goto_3
    if-nez v4, :cond_0

    move v6, v7

    .line 148
    goto :goto_1

    .line 131
    .end local v1           #airplaneModeToggleableRadios:Ljava/lang/String;
    .end local v3           #isAirplaneSensitive:Z
    .end local v4           #isAirplaneToggleable:Z
    :cond_3
    const-string v8, "bluetooth"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    goto :goto_2

    .line 140
    .restart local v1       #airplaneModeToggleableRadios:Ljava/lang/String;
    .restart local v3       #isAirplaneSensitive:Z
    :cond_4
    const-string v8, "bluetooth"

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    goto :goto_3
.end method

.method static openSettingsDevicePicker(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 100
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.devicepicker.action.LAUNCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 101
    const/high16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 102
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 104
    const-string v1, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 105
    const-string v1, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 107
    const-string v1, "android.bluetooth.devicepicker.extra.LAUNCH_PACKAGE"

    const-string v2, "com.android.bluetooth"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const-string v1, "android.bluetooth.devicepicker.extra.DEVICE_PICKER_LAUNCH_CLASS"

    const-class v2, Lcom/broadcom/bt/app/opp/OppReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 112
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/OppLauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/OppLauncherActivity;->mAction:Ljava/lang/String;

    .line 57
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/broadcom/bt/app/opp/MDMBluetoothOppAdapter;->getInstance()Lcom/broadcom/bt/app/opp/MDMBluetoothOppAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/OppLauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/app/opp/MDMBluetoothOppAdapter;->checkBluetoothAllowed(Landroid/content/ComponentName;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/OppLauncherActivity;->finish()V

    .line 82
    :goto_0
    return-void

    .line 64
    :cond_0
    const-string v0, "android.intent.action.SEND"

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/OppLauncherActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/opp/OppLauncherActivity;->handleSendAction(Landroid/os/Bundle;)V

    goto :goto_0

    .line 66
    :cond_1
    const-string v0, "android.intent.action.SEND_MULTIPLE"

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/OppLauncherActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/opp/OppLauncherActivity;->handleSendMultipleAction(Landroid/os/Bundle;)V

    goto :goto_0

    .line 68
    :cond_2
    const-string v0, "android.btopp.intent.action.OPEN"

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/OppLauncherActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 69
    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/opp/OppLauncherActivity;->handleOpenAction(Landroid/os/Bundle;)V

    goto :goto_0

    .line 70
    :cond_3
    const-string v0, "android.intent.action.GET_CONTENT"

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/OppLauncherActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 71
    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/opp/OppLauncherActivity;->handlePullAction(Landroid/os/Bundle;)V

    goto :goto_0

    .line 72
    :cond_4
    const-string v0, "com.broadcom.bt.app.opp.action.OPP_EXCH"

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/OppLauncherActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 73
    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/opp/OppLauncherActivity;->handleExchangeAction(Landroid/os/Bundle;)V

    goto :goto_0

    .line 75
    :cond_5
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/OppLauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 76
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/OppLauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f050108

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/opp/OppLauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 80
    :cond_6
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/OppLauncherActivity;->finish()V

    goto :goto_0
.end method
