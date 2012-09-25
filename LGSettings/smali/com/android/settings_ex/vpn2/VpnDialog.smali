.class Lcom/android/settings_ex/vpn2/VpnDialog;
.super Landroid/app/AlertDialog;
.source "VpnDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private mDnsServers:Landroid/widget/TextView;

.field private mEditing:Z

.field private mIpsecCaCert:Landroid/widget/Spinner;

.field private mIpsecIdentifier:Landroid/widget/TextView;

.field private mIpsecSecret:Landroid/widget/TextView;

.field private mIpsecServerCert:Landroid/widget/Spinner;

.field private mIpsecUserCert:Landroid/widget/Spinner;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mL2tpSecret:Landroid/widget/TextView;

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mMppe:Landroid/widget/CheckBox;

.field private mName:Landroid/widget/TextView;

.field private mNew:Z

.field private mPassword:Landroid/widget/TextView;

.field private final mProfile:Lcom/android/settings_ex/vpn2/VpnProfile;

.field private mRoutes:Landroid/widget/TextView;

.field private mSaveLogin:Landroid/widget/CheckBox;

.field private mSearchDomains:Landroid/widget/TextView;

.field private mServer:Landroid/widget/TextView;

.field private mType:Landroid/widget/Spinner;

.field private mUsername:Landroid/widget/TextView;

.field private mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings_ex/vpn2/VpnProfile;ZZ)V
    .locals 1
    .parameter "context"
    .parameter "listener"
    .parameter "profile"
    .parameter "editing"
    .parameter "isNew"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mKeyStore:Landroid/security/KeyStore;

    .line 72
    iput-object p2, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 73
    iput-object p3, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mProfile:Lcom/android/settings_ex/vpn2/VpnProfile;

    .line 74
    iput-boolean p4, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mEditing:Z

    .line 75
    iput-boolean p5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mNew:Z

    .line 76
    return-void
.end method

.method private changeType(I)V
    .locals 7
    .parameter "type"

    .prologue
    const v6, 0x7f0b01d8

    const v5, 0x7f0b01d5

    const v4, 0x7f0b01d3

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 254
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mMppe:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b01da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 261
    packed-switch p1, :pswitch_data_0

    .line 283
    :goto_0
    return-void

    .line 263
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mMppe:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0

    .line 267
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 270
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 274
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 277
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 280
    :pswitch_5
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b01da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 261
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;ILjava/lang/String;)V
    .locals 9
    .parameter "spinner"
    .parameter "prefix"
    .parameter "firstId"
    .parameter "selected"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 338
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 339
    .local v3, context:Landroid/content/Context;
    if-nez p3, :cond_2

    const-string v4, ""

    .line 340
    .local v4, first:Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v6, p2}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 342
    .local v2, certificates:[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v6, v2

    if-nez v6, :cond_3

    .line 343
    :cond_0
    new-array v2, v8, [Ljava/lang/String;

    .end local v2           #certificates:[Ljava/lang/String;
    aput-object v4, v2, v7

    .line 351
    .restart local v2       #certificates:[Ljava/lang/String;
    :goto_1
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v6, 0x1090008

    invoke-direct {v0, v3, v6, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 353
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v6, 0x1090009

    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 354
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 356
    const/4 v5, 0x1

    .local v5, i:I
    :goto_2
    array-length v6, v2

    if-ge v5, v6, :cond_1

    .line 357
    aget-object v6, v2, v5

    invoke-virtual {v6, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 358
    invoke-virtual {p1, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 362
    :cond_1
    return-void

    .line 339
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v2           #certificates:[Ljava/lang/String;
    .end local v4           #first:Ljava/lang/String;
    .end local v5           #i:I
    :cond_2
    invoke-virtual {v3, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 345
    .restart local v2       #certificates:[Ljava/lang/String;
    .restart local v4       #first:Ljava/lang/String;
    :cond_3
    array-length v6, v2

    add-int/lit8 v6, v6, 0x1

    new-array v1, v6, [Ljava/lang/String;

    .line 346
    .local v1, array:[Ljava/lang/String;
    aput-object v4, v1, v7

    .line 347
    array-length v6, v2

    invoke-static {v2, v7, v1, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 348
    move-object v2, v1

    goto :goto_1

    .line 356
    .end local v1           #array:[Ljava/lang/String;
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v5       #i:I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method private validate(Z)Z
    .locals 3
    .parameter "editing"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 286
    if-nez p1, :cond_2

    .line 287
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mUsername:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 307
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :cond_1
    move v0, v1

    .line 287
    goto :goto_0

    .line 289
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mServer:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mDnsServers:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/settings_ex/vpn2/VpnDialog;->validateAddresses(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mRoutes:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/android/settings_ex/vpn2/VpnDialog;->validateAddresses(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    move v0, v1

    .line 292
    goto :goto_0

    .line 294
    :cond_4
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mType:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 307
    goto :goto_0

    .line 301
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mIpsecSecret:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 305
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 294
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private validateAddresses(Ljava/lang/String;Z)Z
    .locals 11
    .parameter "addresses"
    .parameter "cidr"

    .prologue
    .line 312
    :try_start_0
    const-string v9, " "

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v6, :cond_4

    aget-object v0, v1, v4

    .line 313
    .local v0, address:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 312
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 317
    :cond_1
    const/16 v8, 0x20

    .line 318
    .local v8, prefixLength:I
    if-eqz p2, :cond_2

    .line 319
    const-string v9, "/"

    const/4 v10, 0x2

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 320
    .local v7, parts:[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v0, v7, v9

    .line 321
    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 323
    .end local v7           #parts:[Ljava/lang/String;
    :cond_2
    invoke-static {v0}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    .line 324
    .local v2, bytes:[B
    const/4 v9, 0x3

    aget-byte v9, v2, v9

    and-int/lit16 v9, v9, 0xff

    const/4 v10, 0x2

    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    const/4 v10, 0x1

    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    const/4 v10, 0x0

    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x18

    or-int v5, v9, v10

    .line 326
    .local v5, integer:I
    array-length v9, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v10, 0x4

    if-ne v9, v10, :cond_3

    if-ltz v8, :cond_3

    const/16 v9, 0x20

    if-gt v8, v9, :cond_3

    const/16 v9, 0x20

    if-ge v8, v9, :cond_0

    shl-int v9, v5, v8

    if-eqz v9, :cond_0

    .line 328
    :cond_3
    const/4 v9, 0x0

    .line 334
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #bytes:[B
    .end local v4           #i$:I
    .end local v5           #integer:I
    .end local v6           #len$:I
    .end local v8           #prefixLength:I
    :goto_1
    return v9

    .line 331
    :catch_0
    move-exception v3

    .line 332
    .local v3, e:Ljava/lang/Exception;
    const/4 v9, 0x0

    goto :goto_1

    .line 334
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v4       #i$:I
    .restart local v6       #len$:I
    :cond_4
    const/4 v9, 0x1

    goto :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "field"

    .prologue
    .line 223
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/vpn2/VpnDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mEditing:Z

    invoke-direct {p0, v1}, Lcom/android/settings_ex/vpn2/VpnDialog;->validate(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 224
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 228
    return-void
.end method

.method getProfile()Lcom/android/settings_ex/vpn2/VpnProfile;
    .locals 2

    .prologue
    .line 370
    new-instance v0, Lcom/android/settings_ex/vpn2/VpnProfile;

    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mProfile:Lcom/android/settings_ex/vpn2/VpnProfile;

    iget-object v1, v1, Lcom/android/settings_ex/vpn2/VpnProfile;->key:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/settings_ex/vpn2/VpnProfile;-><init>(Ljava/lang/String;)V

    .line 371
    .local v0, profile:Lcom/android/settings_ex/vpn2/VpnProfile;
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings_ex/vpn2/VpnProfile;->name:Ljava/lang/String;

    .line 372
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mType:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    iput v1, v0, Lcom/android/settings_ex/vpn2/VpnProfile;->type:I

    .line 373
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mServer:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings_ex/vpn2/VpnProfile;->server:Ljava/lang/String;

    .line 374
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mUsername:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings_ex/vpn2/VpnProfile;->username:Ljava/lang/String;

    .line 375
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings_ex/vpn2/VpnProfile;->password:Ljava/lang/String;

    .line 376
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mSearchDomains:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings_ex/vpn2/VpnProfile;->searchDomains:Ljava/lang/String;

    .line 377
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mDnsServers:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings_ex/vpn2/VpnProfile;->dnsServers:Ljava/lang/String;

    .line 378
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mRoutes:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings_ex/vpn2/VpnProfile;->routes:Ljava/lang/String;

    .line 381
    iget v1, v0, Lcom/android/settings_ex/vpn2/VpnProfile;->type:I

    packed-switch v1, :pswitch_data_0

    .line 412
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mSaveLogin:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/settings_ex/vpn2/VpnProfile;->saveLogin:Z

    .line 413
    return-object v0

    .line 383
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mMppe:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/settings_ex/vpn2/VpnProfile;->mppe:Z

    goto :goto_0

    .line 387
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mL2tpSecret:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings_ex/vpn2/VpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 390
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mIpsecIdentifier:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings_ex/vpn2/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 391
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mIpsecSecret:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings_ex/vpn2/VpnProfile;->ipsecSecret:Ljava/lang/String;

    goto :goto_0

    .line 395
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mL2tpSecret:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings_ex/vpn2/VpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 398
    :pswitch_4
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-eqz v1, :cond_1

    .line 399
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/android/settings_ex/vpn2/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 403
    :cond_1
    :pswitch_5
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mIpsecCaCert:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-eqz v1, :cond_2

    .line 404
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mIpsecCaCert:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/android/settings_ex/vpn2/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 406
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mIpsecServerCert:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-eqz v1, :cond_0

    .line 407
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mIpsecServerCert:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/android/settings_ex/vpn2/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    goto :goto_0

    .line 381
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method isEditing()Z
    .locals 1

    .prologue
    .line 365
    iget-boolean v0, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mEditing:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "showOptions"

    .prologue
    .line 236
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b01de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 238
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedState"

    .prologue
    const/4 v12, 0x0

    const/4 v11, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 80
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v8, 0x7f0400b4

    invoke-virtual {v5, v8, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mView:Landroid/view/View;

    .line 81
    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/vpn2/VpnDialog;->setView(Landroid/view/View;)V

    .line 82
    invoke-virtual {p0, v7}, Lcom/android/settings_ex/vpn2/VpnDialog;->setInverseBackgroundForced(Z)V

    .line 84
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 87
    .local v0, context:Landroid/content/Context;
    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v8, 0x7f0b00a9

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mName:Landroid/widget/TextView;

    .line 88
    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v8, 0x7f0b01d0

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mType:Landroid/widget/Spinner;

    .line 89
    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v8, 0x7f0b01d1

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mServer:Landroid/widget/TextView;

    .line 90
    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v8, 0x7f0b01e3

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mUsername:Landroid/widget/TextView;

    .line 91
    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v8, 0x7f0b01e4

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mPassword:Landroid/widget/TextView;

    .line 92
    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v8, 0x7f0b01df

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mSearchDomains:Landroid/widget/TextView;

    .line 93
    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v8, 0x7f0b01e0

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mDnsServers:Landroid/widget/TextView;

    .line 94
    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v8, 0x7f0b01e1

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mRoutes:Landroid/widget/TextView;

    .line 95
    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v8, 0x7f0b01d2

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mMppe:Landroid/widget/CheckBox;

    .line 96
    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v8, 0x7f0b01d4

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mL2tpSecret:Landroid/widget/TextView;

    .line 97
    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v8, 0x7f0b01d6

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mIpsecIdentifier:Landroid/widget/TextView;

    .line 98
    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v8, 0x7f0b01d7

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mIpsecSecret:Landroid/widget/TextView;

    .line 99
    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v8, 0x7f0b01d9

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    .line 100
    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v8, 0x7f0b01db

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mIpsecCaCert:Landroid/widget/Spinner;

    .line 101
    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v8, 0x7f0b01dc

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mIpsecServerCert:Landroid/widget/Spinner;

    .line 102
    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v8, 0x7f0b01e5

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mSaveLogin:Landroid/widget/CheckBox;

    .line 105
    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mName:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mProfile:Lcom/android/settings_ex/vpn2/VpnProfile;

    iget-object v8, v8, Lcom/android/settings_ex/vpn2/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mName:Landroid/widget/TextView;

    check-cast v1, Landroid/widget/EditText;

    .line 107
    .local v1, et:Landroid/widget/EditText;
    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mName:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 108
    .local v3, text:Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 109
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setSelection(I)V

    .line 111
    :cond_0
    iput-object v1, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mName:Landroid/widget/TextView;

    .line 113
    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mType:Landroid/widget/Spinner;

    iget-object v8, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mProfile:Lcom/android/settings_ex/vpn2/VpnProfile;

    iget v8, v8, Lcom/android/settings_ex/vpn2/VpnProfile;->type:I

    invoke-virtual {v5, v8}, Landroid/widget/Spinner;->setSelection(I)V

    .line 114
    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mServer:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mProfile:Lcom/android/settings_ex/vpn2/VpnProfile;

    iget-object v8, v8, Lcom/android/settings_ex/vpn2/VpnProfile;->server:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mUsername:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mProfile:Lcom/android/settings_ex/vpn2/VpnProfile;

    iget-object v8, v8, Lcom/android/settings_ex/vpn2/VpnProfile;->username:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mPassword:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mProfile:Lcom/android/settings_ex/vpn2/VpnProfile;

    iget-object v8, v8, Lcom/android/settings_ex/vpn2/VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mSearchDomains:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mProfile:Lcom/android/settings_ex/vpn2/VpnProfile;

    iget-object v8, v8, Lcom/android/settings_ex/vpn2/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mDnsServers:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mProfile:Lcom/android/settings_ex/vpn2/VpnProfile;

    iget-object v8, v8, Lcom/android/settings_ex/vpn2/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mRoutes:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mProfile:Lcom/android/settings_ex/vpn2/VpnProfile;

    iget-object v8, v8, Lcom/android/settings_ex/vpn2/VpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mMppe:Landroid/widget/CheckBox;

    iget-object v8, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mProfile:Lcom/android/settings_ex/vpn2/VpnProfile;

    iget-boolean v8, v8, Lcom/android/settings_ex/vpn2/VpnProfile;->mppe:Z

    invoke-virtual {v5, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 121
    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mL2tpSecret:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mProfile:Lcom/android/settings_ex/vpn2/VpnProfile;

    iget-object v8, v8, Lcom/android/settings_ex/vpn2/VpnProfile;->l2tpSecret:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mIpsecIdentifier:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mProfile:Lcom/android/settings_ex/vpn2/VpnProfile;

    iget-object v8, v8, Lcom/android/settings_ex/vpn2/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mIpsecSecret:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mProfile:Lcom/android/settings_ex/vpn2/VpnProfile;

    iget-object v8, v8, Lcom/android/settings_ex/vpn2/VpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    const-string v8, "USRCERT_"

    const v9, 0x7f08032e

    iget-object v10, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mProfile:Lcom/android/settings_ex/vpn2/VpnProfile;

    iget-object v10, v10, Lcom/android/settings_ex/vpn2/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-direct {p0, v5, v8, v9, v10}, Lcom/android/settings_ex/vpn2/VpnDialog;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;ILjava/lang/String;)V

    .line 126
    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mIpsecCaCert:Landroid/widget/Spinner;

    const-string v8, "CACERT_"

    const v9, 0x7f080685

    iget-object v10, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mProfile:Lcom/android/settings_ex/vpn2/VpnProfile;

    iget-object v10, v10, Lcom/android/settings_ex/vpn2/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-direct {p0, v5, v8, v9, v10}, Lcom/android/settings_ex/vpn2/VpnDialog;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;ILjava/lang/String;)V

    .line 128
    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mIpsecServerCert:Landroid/widget/Spinner;

    const-string v8, "USRCERT_"

    const v9, 0x7f080827

    iget-object v10, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mProfile:Lcom/android/settings_ex/vpn2/VpnProfile;

    iget-object v10, v10, Lcom/android/settings_ex/vpn2/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-direct {p0, v5, v8, v9, v10}, Lcom/android/settings_ex/vpn2/VpnDialog;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;ILjava/lang/String;)V

    .line 130
    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mSaveLogin:Landroid/widget/CheckBox;

    iget-object v8, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mProfile:Lcom/android/settings_ex/vpn2/VpnProfile;

    iget-boolean v8, v8, Lcom/android/settings_ex/vpn2/VpnProfile;->saveLogin:Z

    invoke-virtual {v5, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 133
    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mName:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 134
    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mType:Landroid/widget/Spinner;

    invoke-virtual {v5, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 135
    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mServer:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 136
    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mUsername:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 137
    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 138
    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mDnsServers:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 139
    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mRoutes:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 140
    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mIpsecSecret:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 141
    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    invoke-virtual {v5, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 144
    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mMppe:Landroid/widget/CheckBox;

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setSoundEffectsEnabled(Z)V

    .line 145
    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mMppe:Landroid/widget/CheckBox;

    new-instance v8, Lcom/android/settings_ex/vpn2/VpnDialog$1;

    invoke-direct {v8, p0}, Lcom/android/settings_ex/vpn2/VpnDialog$1;-><init>(Lcom/android/settings_ex/vpn2/VpnDialog;)V

    invoke-virtual {v5, v8}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mSaveLogin:Landroid/widget/CheckBox;

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setSoundEffectsEnabled(Z)V

    .line 154
    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mSaveLogin:Landroid/widget/CheckBox;

    new-instance v8, Lcom/android/settings_ex/vpn2/VpnDialog$2;

    invoke-direct {v8, p0}, Lcom/android/settings_ex/vpn2/VpnDialog$2;-><init>(Lcom/android/settings_ex/vpn2/VpnDialog;)V

    invoke-virtual {v5, v8}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    invoke-direct {p0, v7}, Lcom/android/settings_ex/vpn2/VpnDialog;->validate(Z)Z

    move-result v4

    .line 165
    .local v4, valid:Z
    iget-boolean v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mEditing:Z

    if-nez v5, :cond_1

    if-nez v4, :cond_2

    :cond_1
    move v5, v7

    :goto_0
    iput-boolean v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mEditing:Z

    .line 167
    iget-boolean v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mEditing:Z

    if-eqz v5, :cond_5

    .line 169
    iget-boolean v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mNew:Z

    if-ne v7, v5, :cond_3

    .line 170
    const v5, 0x7f08068c

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/vpn2/VpnDialog;->setTitle(I)V

    .line 177
    :goto_1
    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v7, 0x7f0b01cf

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 180
    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mProfile:Lcom/android/settings_ex/vpn2/VpnProfile;

    iget v5, v5, Lcom/android/settings_ex/vpn2/VpnProfile;->type:I

    invoke-direct {p0, v5}, Lcom/android/settings_ex/vpn2/VpnDialog;->changeType(I)V

    .line 183
    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v7, 0x7f0b01dd

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 184
    .local v2, showOptions:Landroid/view/View;
    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mProfile:Lcom/android/settings_ex/vpn2/VpnProfile;

    iget-object v5, v5, Lcom/android/settings_ex/vpn2/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mProfile:Lcom/android/settings_ex/vpn2/VpnProfile;

    iget-object v5, v5, Lcom/android/settings_ex/vpn2/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mProfile:Lcom/android/settings_ex/vpn2/VpnProfile;

    iget-object v5, v5, Lcom/android/settings_ex/vpn2/VpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 186
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    :goto_2
    const v5, 0x7f080687

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v11, v5, v7}, Lcom/android/settings_ex/vpn2/VpnDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 206
    .end local v2           #showOptions:Landroid/view/View;
    :goto_3
    const/4 v5, -0x2

    const v7, 0x7f080686

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v5, v7, v8}, Lcom/android/settings_ex/vpn2/VpnDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 210
    invoke-super {p0, v12}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 213
    invoke-virtual {p0, v11}, Lcom/android/settings_ex/vpn2/VpnDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v5

    iget-boolean v7, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mEditing:Z

    if-eqz v7, :cond_6

    .end local v4           #valid:Z
    :goto_4
    invoke-virtual {v5, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 217
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x14

    invoke-virtual {v5, v6}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 219
    return-void

    .restart local v4       #valid:Z
    :cond_2
    move v5, v6

    .line 165
    goto :goto_0

    .line 173
    :cond_3
    const v5, 0x7f080689

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/vpn2/VpnDialog;->setTitle(I)V

    goto :goto_1

    .line 188
    .restart local v2       #showOptions:Landroid/view/View;
    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/vpn2/VpnDialog;->onClick(Landroid/view/View;)V

    goto :goto_2

    .line 195
    .end local v2           #showOptions:Landroid/view/View;
    :cond_5
    const v5, 0x7f08068a

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mProfile:Lcom/android/settings_ex/vpn2/VpnProfile;

    iget-object v8, v8, Lcom/android/settings_ex/vpn2/VpnProfile;->name:Ljava/lang/String;

    aput-object v8, v7, v6

    invoke-virtual {v0, v5, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/vpn2/VpnDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v7, 0x7f0b01e2

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 201
    const v5, 0x7f080688

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v11, v5, v7}, Lcom/android/settings_ex/vpn2/VpnDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_3

    .line 213
    :cond_6
    invoke-direct {p0, v6}, Lcom/android/settings_ex/vpn2/VpnDialog;->validate(Z)Z

    move-result v4

    goto :goto_4
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 242
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mType:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_0

    .line 243
    invoke-direct {p0, p3}, Lcom/android/settings_ex/vpn2/VpnDialog;->changeType(I)V

    .line 245
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/vpn2/VpnDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings_ex/vpn2/VpnDialog;->mEditing:Z

    invoke-direct {p0, v1}, Lcom/android/settings_ex/vpn2/VpnDialog;->validate(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 246
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
    .line 250
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 232
    return-void
.end method
