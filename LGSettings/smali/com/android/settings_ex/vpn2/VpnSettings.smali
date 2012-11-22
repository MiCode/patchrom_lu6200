.class public Lcom/android/settings_ex/vpn2/VpnSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "VpnSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/os/Handler$Callback;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;
    }
.end annotation


# instance fields
.field private mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

.field private mInfo:Lcom/android/internal/net/LegacyVpnInfo;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mPreferences:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mPs:Landroid/preference/PreferenceCategory;

.field private mSelectedKey:Ljava/lang/String;

.field private final mService:Landroid/net/IConnectivityManager;

.field private mUnlocking:Z

.field private mUpdater:Landroid/os/Handler;

.field private savedDialog:Lcom/android/settings_ex/vpn2/VpnDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mService:Landroid/net/IConnectivityManager;

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUnlocking:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/vpn2/VpnSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/vpn2/VpnSettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/vpn2/VpnSettings;->disconnect(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/vpn2/VpnSettings;)Landroid/preference/PreferenceCategory;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mPs:Landroid/preference/PreferenceCategory;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/vpn2/VpnSettings;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/vpn2/VpnSettings;)Landroid/security/KeyStore;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    return-object v0
.end method

.method private connect(Lcom/android/settings_ex/vpn2/VpnProfile;)V
    .locals 16
    .parameter "profile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getDefaultNetwork()[Ljava/lang/String;

    move-result-object v7

    .local v7, network:[Ljava/lang/String;
    const/4 v13, 0x0

    aget-object v5, v7, v13

    .local v5, interfaze:Ljava/lang/String;
    const/4 v13, 0x1

    aget-object v3, v7, v13

    .local v3, gateway:Ljava/lang/String;
    const-string v8, ""

    .local v8, privateKey:Ljava/lang/String;
    const-string v11, ""

    .local v11, userCert:Ljava/lang/String;
    const-string v1, ""

    .local v1, caCert:Ljava/lang/String;
    const-string v10, ""

    .local v10, serverCert:Ljava/lang/String;
    const-string v13, "LGU"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 408
    new-instance v4, Landroid/content/Intent;

    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x8

    if-gt v13, v14, :cond_5

    const-string v13, "com.lguplus.common.wificm.interface"

    :goto_0
    invoke-direct {v4, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 412
    .local v4, i:Landroid/content/Intent;
    const-string v13, "type"

    const-string v14, "request"

    invoke-virtual {v4, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v13, "action"

    const-string v14, "stopMwlanDaemon"

    invoke-virtual {v4, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13, v4}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .end local v4           #i:Landroid/content/Intent;
    :cond_0
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/settings_ex/vpn2/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_1

    .line 418
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "USRPKEY_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/settings_ex/vpn2/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v12

    .line 419
    .local v12, value:[B
    if-nez v12, :cond_6

    const/4 v8, 0x0

    .line 420
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "USRCERT_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/settings_ex/vpn2/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v12

    .line 421
    if-nez v12, :cond_7

    const/4 v11, 0x0

    .line 423
    .end local v12           #value:[B
    :cond_1
    :goto_2
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/settings_ex/vpn2/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_2

    .line 424
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "CACERT_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/settings_ex/vpn2/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v12

    .line 425
    .restart local v12       #value:[B
    if-nez v12, :cond_8

    const/4 v1, 0x0

    .line 427
    .end local v12           #value:[B
    :cond_2
    :goto_3
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/settings_ex/vpn2/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_3

    .line 428
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "USRCERT_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/settings_ex/vpn2/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v12

    .line 429
    .restart local v12       #value:[B
    if-nez v12, :cond_9

    const/4 v10, 0x0

    .line 431
    .end local v12           #value:[B
    :cond_3
    :goto_4
    if-eqz v8, :cond_4

    if-eqz v11, :cond_4

    if-eqz v1, :cond_4

    if-nez v10, :cond_a

    .line 433
    :cond_4
    new-instance v13, Ljava/lang/IllegalStateException;

    const-string v14, "Cannot load credentials"

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 408
    :cond_5
    const-string v13, "com.lguplus.common.wificm.mwlan.interface"

    goto/16 :goto_0

    .line 419
    .restart local v12       #value:[B
    :cond_6
    new-instance v8, Ljava/lang/String;

    .end local v8           #privateKey:Ljava/lang/String;
    sget-object v13, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v8, v12, v13}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto/16 :goto_1

    .line 421
    .restart local v8       #privateKey:Ljava/lang/String;
    :cond_7
    new-instance v11, Ljava/lang/String;

    .end local v11           #userCert:Ljava/lang/String;
    sget-object v13, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v11, v12, v13}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_2

    .line 425
    .restart local v11       #userCert:Ljava/lang/String;
    :cond_8
    new-instance v1, Ljava/lang/String;

    .end local v1           #caCert:Ljava/lang/String;
    sget-object v13, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v12, v13}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_3

    .line 429
    .restart local v1       #caCert:Ljava/lang/String;
    :cond_9
    new-instance v10, Ljava/lang/String;

    .end local v10           #serverCert:Ljava/lang/String;
    sget-object v13, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v10, v12, v13}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_4

    .line 437
    .end local v12           #value:[B
    .restart local v10       #serverCert:Ljava/lang/String;
    :cond_a
    const/4 v9, 0x0

    .line 438
    .local v9, racoon:[Ljava/lang/String;
    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/settings_ex/vpn2/VpnProfile;->type:I

    packed-switch v13, :pswitch_data_0

    .line 472
    :goto_5
    const/4 v6, 0x0

    .line 473
    .local v6, mtpd:[Ljava/lang/String;
    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/settings_ex/vpn2/VpnProfile;->type:I

    packed-switch v13, :pswitch_data_1

    .line 494
    :goto_6
    new-instance v2, Lcom/android/internal/net/VpnConfig;

    invoke-direct {v2}, Lcom/android/internal/net/VpnConfig;-><init>()V

    .line 495
    .local v2, config:Lcom/android/internal/net/VpnConfig;
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/settings_ex/vpn2/VpnProfile;->key:Ljava/lang/String;

    iput-object v13, v2, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    iput-object v5, v2, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/settings_ex/vpn2/VpnProfile;->name:Ljava/lang/String;

    iput-object v13, v2, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/settings_ex/vpn2/VpnProfile;->routes:Ljava/lang/String;

    iput-object v13, v2, Lcom/android/internal/net/VpnConfig;->routes:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/settings_ex/vpn2/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_b

    .line 500
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/settings_ex/vpn2/VpnProfile;->dnsServers:Ljava/lang/String;

    const-string v14, " +"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    iput-object v13, v2, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    .line 502
    :cond_b
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/settings_ex/vpn2/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_c

    .line 503
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/settings_ex/vpn2/VpnProfile;->searchDomains:Ljava/lang/String;

    const-string v14, " +"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    iput-object v13, v2, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    .line 506
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/vpn2/VpnSettings;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v13, v2, v9, v6}, Landroid/net/IConnectivityManager;->startLegacyVpn(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 507
    return-void

    .line 440
    .end local v2           #config:Lcom/android/internal/net/VpnConfig;
    .end local v6           #mtpd:[Ljava/lang/String;
    :pswitch_0
    const/4 v13, 0x6

    new-array v9, v13, [Ljava/lang/String;

    .end local v9           #racoon:[Ljava/lang/String;
    const/4 v13, 0x0

    aput-object v5, v9, v13

    const/4 v13, 0x1

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/settings_ex/vpn2/VpnProfile;->server:Ljava/lang/String;

    aput-object v14, v9, v13

    const/4 v13, 0x2

    const-string v14, "udppsk"

    aput-object v14, v9, v13

    const/4 v13, 0x3

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/settings_ex/vpn2/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    aput-object v14, v9, v13

    const/4 v13, 0x4

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/settings_ex/vpn2/VpnProfile;->ipsecSecret:Ljava/lang/String;

    aput-object v14, v9, v13

    const/4 v13, 0x5

    const-string v14, "1701"

    aput-object v14, v9, v13

    .line 444
    .restart local v9       #racoon:[Ljava/lang/String;
    goto/16 :goto_5

    .line 446
    :pswitch_1
    const/16 v13, 0x8

    new-array v9, v13, [Ljava/lang/String;

    .end local v9           #racoon:[Ljava/lang/String;
    const/4 v13, 0x0

    aput-object v5, v9, v13

    const/4 v13, 0x1

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/settings_ex/vpn2/VpnProfile;->server:Ljava/lang/String;

    aput-object v14, v9, v13

    const/4 v13, 0x2

    const-string v14, "udprsa"

    aput-object v14, v9, v13

    const/4 v13, 0x3

    aput-object v8, v9, v13

    const/4 v13, 0x4

    aput-object v11, v9, v13

    const/4 v13, 0x5

    aput-object v1, v9, v13

    const/4 v13, 0x6

    aput-object v10, v9, v13

    const/4 v13, 0x7

    const-string v14, "1701"

    aput-object v14, v9, v13

    .line 450
    .restart local v9       #racoon:[Ljava/lang/String;
    goto/16 :goto_5

    .line 452
    :pswitch_2
    const/16 v13, 0x9

    new-array v9, v13, [Ljava/lang/String;

    .end local v9           #racoon:[Ljava/lang/String;
    const/4 v13, 0x0

    aput-object v5, v9, v13

    const/4 v13, 0x1

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/settings_ex/vpn2/VpnProfile;->server:Ljava/lang/String;

    aput-object v14, v9, v13

    const/4 v13, 0x2

    const-string v14, "xauthpsk"

    aput-object v14, v9, v13

    const/4 v13, 0x3

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/settings_ex/vpn2/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    aput-object v14, v9, v13

    const/4 v13, 0x4

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/settings_ex/vpn2/VpnProfile;->ipsecSecret:Ljava/lang/String;

    aput-object v14, v9, v13

    const/4 v13, 0x5

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/settings_ex/vpn2/VpnProfile;->username:Ljava/lang/String;

    aput-object v14, v9, v13

    const/4 v13, 0x6

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/settings_ex/vpn2/VpnProfile;->password:Ljava/lang/String;

    aput-object v14, v9, v13

    const/4 v13, 0x7

    const-string v14, ""

    aput-object v14, v9, v13

    const/16 v13, 0x8

    aput-object v3, v9, v13

    .line 456
    .restart local v9       #racoon:[Ljava/lang/String;
    goto/16 :goto_5

    .line 458
    :pswitch_3
    const/16 v13, 0xb

    new-array v9, v13, [Ljava/lang/String;

    .end local v9           #racoon:[Ljava/lang/String;
    const/4 v13, 0x0

    aput-object v5, v9, v13

    const/4 v13, 0x1

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/settings_ex/vpn2/VpnProfile;->server:Ljava/lang/String;

    aput-object v14, v9, v13

    const/4 v13, 0x2

    const-string v14, "xauthrsa"

    aput-object v14, v9, v13

    const/4 v13, 0x3

    aput-object v8, v9, v13

    const/4 v13, 0x4

    aput-object v11, v9, v13

    const/4 v13, 0x5

    aput-object v1, v9, v13

    const/4 v13, 0x6

    aput-object v10, v9, v13

    const/4 v13, 0x7

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/settings_ex/vpn2/VpnProfile;->username:Ljava/lang/String;

    aput-object v14, v9, v13

    const/16 v13, 0x8

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/settings_ex/vpn2/VpnProfile;->password:Ljava/lang/String;

    aput-object v14, v9, v13

    const/16 v13, 0x9

    const-string v14, ""

    aput-object v14, v9, v13

    const/16 v13, 0xa

    aput-object v3, v9, v13

    .line 462
    .restart local v9       #racoon:[Ljava/lang/String;
    goto/16 :goto_5

    .line 464
    :pswitch_4
    const/16 v13, 0x9

    new-array v9, v13, [Ljava/lang/String;

    .end local v9           #racoon:[Ljava/lang/String;
    const/4 v13, 0x0

    aput-object v5, v9, v13

    const/4 v13, 0x1

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/settings_ex/vpn2/VpnProfile;->server:Ljava/lang/String;

    aput-object v14, v9, v13

    const/4 v13, 0x2

    const-string v14, "hybridrsa"

    aput-object v14, v9, v13

    const/4 v13, 0x3

    aput-object v1, v9, v13

    const/4 v13, 0x4

    aput-object v10, v9, v13

    const/4 v13, 0x5

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/settings_ex/vpn2/VpnProfile;->username:Ljava/lang/String;

    aput-object v14, v9, v13

    const/4 v13, 0x6

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/settings_ex/vpn2/VpnProfile;->password:Ljava/lang/String;

    aput-object v14, v9, v13

    const/4 v13, 0x7

    const-string v14, ""

    aput-object v14, v9, v13

    const/16 v13, 0x8

    aput-object v3, v9, v13

    .restart local v9       #racoon:[Ljava/lang/String;
    goto/16 :goto_5

    .line 475
    .restart local v6       #mtpd:[Ljava/lang/String;
    :pswitch_5
    const/16 v13, 0x14

    new-array v6, v13, [Ljava/lang/String;

    .end local v6           #mtpd:[Ljava/lang/String;
    const/4 v13, 0x0

    aput-object v5, v6, v13

    const/4 v13, 0x1

    const-string v14, "pptp"

    aput-object v14, v6, v13

    const/4 v13, 0x2

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/settings_ex/vpn2/VpnProfile;->server:Ljava/lang/String;

    aput-object v14, v6, v13

    const/4 v13, 0x3

    const-string v14, "1723"

    aput-object v14, v6, v13

    const/4 v13, 0x4

    const-string v14, "name"

    aput-object v14, v6, v13

    const/4 v13, 0x5

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/settings_ex/vpn2/VpnProfile;->username:Ljava/lang/String;

    aput-object v14, v6, v13

    const/4 v13, 0x6

    const-string v14, "password"

    aput-object v14, v6, v13

    const/4 v13, 0x7

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/settings_ex/vpn2/VpnProfile;->password:Ljava/lang/String;

    aput-object v14, v6, v13

    const/16 v13, 0x8

    const-string v14, "linkname"

    aput-object v14, v6, v13

    const/16 v13, 0x9

    const-string v14, "vpn"

    aput-object v14, v6, v13

    const/16 v13, 0xa

    const-string v14, "refuse-eap"

    aput-object v14, v6, v13

    const/16 v13, 0xb

    const-string v14, "nodefaultroute"

    aput-object v14, v6, v13

    const/16 v13, 0xc

    const-string v14, "usepeerdns"

    aput-object v14, v6, v13

    const/16 v13, 0xd

    const-string v14, "idle"

    aput-object v14, v6, v13

    const/16 v13, 0xe

    const-string v14, "1800"

    aput-object v14, v6, v13

    const/16 v13, 0xf

    const-string v14, "mtu"

    aput-object v14, v6, v13

    const/16 v13, 0x10

    const-string v14, "1400"

    aput-object v14, v6, v13

    const/16 v13, 0x11

    const-string v14, "mru"

    aput-object v14, v6, v13

    const/16 v13, 0x12

    const-string v14, "1400"

    aput-object v14, v6, v13

    const/16 v14, 0x13

    move-object/from16 v0, p1

    iget-boolean v13, v0, Lcom/android/settings_ex/vpn2/VpnProfile;->mppe:Z

    if-eqz v13, :cond_d

    const-string v13, "+mppe"

    :goto_7
    aput-object v13, v6, v14

    .line 482
    .restart local v6       #mtpd:[Ljava/lang/String;
    goto/16 :goto_6

    .line 475
    .end local v6           #mtpd:[Ljava/lang/String;
    :cond_d
    const-string v13, "nomppe"

    goto :goto_7

    .line 485
    .restart local v6       #mtpd:[Ljava/lang/String;
    :pswitch_6
    const/16 v13, 0x14

    new-array v6, v13, [Ljava/lang/String;

    .end local v6           #mtpd:[Ljava/lang/String;
    const/4 v13, 0x0

    aput-object v5, v6, v13

    const/4 v13, 0x1

    const-string v14, "l2tp"

    aput-object v14, v6, v13

    const/4 v13, 0x2

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/settings_ex/vpn2/VpnProfile;->server:Ljava/lang/String;

    aput-object v14, v6, v13

    const/4 v13, 0x3

    const-string v14, "1701"

    aput-object v14, v6, v13

    const/4 v13, 0x4

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/settings_ex/vpn2/VpnProfile;->l2tpSecret:Ljava/lang/String;

    aput-object v14, v6, v13

    const/4 v13, 0x5

    const-string v14, "name"

    aput-object v14, v6, v13

    const/4 v13, 0x6

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/settings_ex/vpn2/VpnProfile;->username:Ljava/lang/String;

    aput-object v14, v6, v13

    const/4 v13, 0x7

    const-string v14, "password"

    aput-object v14, v6, v13

    const/16 v13, 0x8

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/settings_ex/vpn2/VpnProfile;->password:Ljava/lang/String;

    aput-object v14, v6, v13

    const/16 v13, 0x9

    const-string v14, "linkname"

    aput-object v14, v6, v13

    const/16 v13, 0xa

    const-string v14, "vpn"

    aput-object v14, v6, v13

    const/16 v13, 0xb

    const-string v14, "refuse-eap"

    aput-object v14, v6, v13

    const/16 v13, 0xc

    const-string v14, "nodefaultroute"

    aput-object v14, v6, v13

    const/16 v13, 0xd

    const-string v14, "usepeerdns"

    aput-object v14, v6, v13

    const/16 v13, 0xe

    const-string v14, "idle"

    aput-object v14, v6, v13

    const/16 v13, 0xf

    const-string v14, "1800"

    aput-object v14, v6, v13

    const/16 v13, 0x10

    const-string v14, "mtu"

    aput-object v14, v6, v13

    const/16 v13, 0x11

    const-string v14, "1400"

    aput-object v14, v6, v13

    const/16 v13, 0x12

    const-string v14, "mru"

    aput-object v14, v6, v13

    const/16 v13, 0x13

    const-string v14, "1400"

    aput-object v14, v6, v13

    .restart local v6       #mtpd:[Ljava/lang/String;
    goto/16 :goto_6

    .line 438
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 473
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method private deleteProfile(Landroid/preference/Preference;)V
    .locals 4
    .parameter "preference"

    .prologue
    new-instance v1, Lcom/android/settings_ex/vpn2/VpnSettings$2;

    invoke-direct {v1, p0, p1}, Lcom/android/settings_ex/vpn2/VpnSettings$2;-><init>(Lcom/android/settings_ex/vpn2/VpnSettings;Landroid/preference/Preference;)V

    .local v1, onClickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f080625

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1010355

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f08081f

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080134

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 597
    .local v0, mShowingDialog:Landroid/content/DialogInterface;
    return-void
.end method

.method private disconnect(Ljava/lang/String;)V
    .locals 3
    .parameter "key"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v0, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mService:Landroid/net/IConnectivityManager;

    const-string v1, "[Legacy VPN]"

    const-string v2, "[Legacy VPN]"

    invoke-interface {v0, v1, v2}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    :cond_0
    :goto_0
    return-void

    .line 513
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getDefaultNetwork()[Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v5}, Landroid/net/IConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v3

    .local v3, network:Landroid/net/LinkProperties;
    if-nez v3, :cond_0

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Network is not available"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 376
    :cond_0
    invoke-virtual {v3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    .line 377
    .local v2, interfaze:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 378
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Cannot get the default interface"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 380
    :cond_1
    const/4 v0, 0x0

    .line 381
    .local v0, gateway:Ljava/lang/String;
    invoke-virtual {v3}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/RouteInfo;

    .line 383
    .local v4, route:Landroid/net/RouteInfo;
    invoke-virtual {v4}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v5

    instance-of v5, v5, Ljava/net/Inet4Address;

    if-eqz v5, :cond_2

    .line 384
    invoke-virtual {v4}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 388
    .end local v4           #route:Landroid/net/RouteInfo;
    :cond_3
    if-nez v0, :cond_4

    .line 389
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Cannot get the default gateway"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 391
    :cond_4
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    return-object v5
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .parameter "message"

    .prologue
    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->isResumed()Z

    move-result v2

    if-eqz v2, :cond_3

    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v2}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v0

    .local v0, info:Lcom/android/internal/net/LegacyVpnInfo;
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v3, v3, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;

    .local v1, preference:Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;
    if-eqz v1, :cond_0

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;->update(I)V

    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    .end local v1           #preference:Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;
    :cond_1
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;

    .restart local v1       #preference:Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;
    if-eqz v1, :cond_2

    iget v2, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;->update(I)V

    iput-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #info:Lcom/android/internal/net/LegacyVpnInfo;
    .end local v1           #preference:Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 368
    :cond_3
    const/4 v2, 0x1

    return v2

    .line 363
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "button"

    .prologue
    const/4 v5, -0x1

    if-ne p2, v5, :cond_1

    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->savedDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    iput-object v5, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    :cond_0
    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    invoke-virtual {v5}, Lcom/android/settings_ex/vpn2/VpnDialog;->getProfile()Lcom/android/settings_ex/vpn2/VpnProfile;

    move-result-object v4

    .local v4, profile:Lcom/android/settings_ex/vpn2/VpnProfile;
    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VPN_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/android/settings_ex/vpn2/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/settings_ex/vpn2/VpnProfile;->encode()[B

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/security/KeyStore;->put(Ljava/lang/String;[B)Z

    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v6, v4, Lcom/android/settings_ex/vpn2/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;

    .local v3, preference:Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;
    if-eqz v3, :cond_2

    iget-object v5, v4, Lcom/android/settings_ex/vpn2/VpnProfile;->key:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/settings_ex/vpn2/VpnSettings;->disconnect(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;->update(Lcom/android/settings_ex/vpn2/VpnProfile;)V

    :goto_0
    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    invoke-virtual {v5}, Lcom/android/settings_ex/vpn2/VpnDialog;->isEditing()Z

    move-result v5

    if-nez v5, :cond_1

    .line 232
    const-string v5, "SKT"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 233
    new-instance v2, Ljava/io/File;

    const-string v5, "/data/iwland/iwlandrunning"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 234
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 236
    const-string v5, "VpnSettings"

    const-string v6, "i-wlan is running!"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x1040014

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x1080027

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0809f2

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    new-instance v7, Lcom/android/settings_ex/vpn2/VpnSettings$1;

    invoke-direct {v7, p0}, Lcom/android/settings_ex/vpn2/VpnSettings$1;-><init>(Lcom/android/settings_ex/vpn2/VpnSettings;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 247
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 248
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 260
    .end local v0           #alertDialog:Landroid/app/AlertDialog;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #preference:Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;
    .end local v4           #profile:Lcom/android/settings_ex/vpn2/VpnProfile;
    :cond_1
    :goto_1
    return-void

    .restart local v3       #preference:Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;
    .restart local v4       #profile:Lcom/android/settings_ex/vpn2/VpnProfile;
    :cond_2
    new-instance v3, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;

    .end local v3           #preference:Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v3, p0, v5, v4}, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;-><init>(Lcom/android/settings_ex/vpn2/VpnSettings;Landroid/content/Context;Lcom/android/settings_ex/vpn2/VpnProfile;)V

    .restart local v3       #preference:Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;
    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v6, v4, Lcom/android/settings_ex/vpn2/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mPs:Landroid/preference/PreferenceCategory;

    invoke-virtual {v5, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_3
    :try_start_0
    invoke-direct {p0, v4}, Lcom/android/settings_ex/vpn2/VpnSettings;->connect(Lcom/android/settings_ex/vpn2/VpnProfile;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 255
    :catch_0
    move-exception v1

    .line 256
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "VpnSettings"

    const-string v6, "connect"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    iput-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->savedDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    const v2, 0x7f0b01d0

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/vpn2/VpnDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 609
    .local v0, vpnType:Landroid/widget/Spinner;
    const/4 v1, 0x1

    invoke-virtual {v0}, Landroid/widget/Spinner;->isActivated()Z

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    invoke-virtual {v1}, Lcom/android/settings_ex/vpn2/VpnDialog;->getProfile()Lcom/android/settings_ex/vpn2/VpnProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/settings_ex/vpn2/VpnProfile;->type:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    invoke-virtual {v1}, Lcom/android/settings_ex/vpn2/VpnDialog;->dismiss()V

    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    invoke-virtual {v1}, Lcom/android/settings_ex/vpn2/VpnDialog;->show()V

    .end local v0           #vpnType:Landroid/widget/Spinner;
    :cond_0
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    if-eqz v0, :cond_0

    const-string v0, "VpnSettings"

    const-string v1, "onContextItemSelected() is called when mDialog != null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v5

    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;

    .local v6, preference:Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;
    if-nez v6, :cond_1

    const-string v0, "VpnSettings"

    const-string v1, "onContextItemSelected() is called but no preference is found"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 295
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 297
    :pswitch_0
    new-instance v0, Lcom/android/settings_ex/vpn2/VpnDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v6}, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;->getProfile()Lcom/android/settings_ex/vpn2/VpnProfile;

    move-result-object v3

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/vpn2/VpnDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings_ex/vpn2/VpnProfile;ZZ)V

    iput-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/vpn2/VpnDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    invoke-virtual {v0}, Lcom/android/settings_ex/vpn2/VpnDialog;->show()V

    move v5, v4

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v6}, Lcom/android/settings_ex/vpn2/VpnSettings;->deleteProfile(Landroid/preference/Preference;)V

    move v5, v4

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f08068d
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedState"

    .prologue
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f06004a

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/vpn2/VpnSettings;->addPreferencesFromResource(I)V

    const-string v0, "vpn_list"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/vpn2/VpnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mPs:Landroid/preference/PreferenceCategory;

    .line 92
    if-eqz p1, :cond_0

    .line 93
    const-string v0, "VpnKey"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VpnProfile"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings_ex/vpn2/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/settings_ex/vpn2/VpnProfile;

    move-result-object v3

    .local v3, profile:Lcom/android/settings_ex/vpn2/VpnProfile;
    if-eqz v3, :cond_0

    new-instance v0, Lcom/android/settings_ex/vpn2/VpnDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "VpnEditing"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/vpn2/VpnDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings_ex/vpn2/VpnProfile;ZZ)V

    iput-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    .end local v3           #profile:Lcom/android/settings_ex/vpn2/VpnProfile;
    :cond_0
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7
    .parameter "menu"
    .parameter "view"
    .parameter "info"

    .prologue
    const v6, 0x7f08068e

    const v5, 0x7f08068d

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    if-eqz v2, :cond_1

    const-string v2, "VpnSettings"

    const-string v3, "onCreateContextMenu() is called when mDialog != null"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local p3
    :cond_0
    :goto_0
    return-void

    .restart local p3
    :cond_1
    instance-of v2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3
    iget v3, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .local v0, preference:Landroid/preference/Preference;
    instance-of v2, v0, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;

    .end local v0           #preference:Landroid/preference/Preference;
    invoke-virtual {v0}, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;->getProfile()Lcom/android/settings_ex/vpn2/VpnProfile;

    move-result-object v1

    .local v1, profile:Lcom/android/settings_ex/vpn2/VpnProfile;
    iget-object v2, v1, Lcom/android/settings_ex/vpn2/VpnProfile;->key:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;

    iget-object v2, v1, Lcom/android/settings_ex/vpn2/VpnProfile;->name:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    invoke-interface {p1, v4, v5, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    invoke-interface {p1, v4, v6, v4, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/vpn2/VpnSettings;->unregisterForContextMenu(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 12
    .parameter "preference"

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    if-eqz v0, :cond_0

    const-string v0, "VpnSettings"

    const-string v1, "onPreferenceClick() is called when mDialog != null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local p1
    :goto_0
    return v8

    .restart local p1
    :cond_0
    instance-of v0, p1, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;

    .end local p1
    invoke-virtual {p1}, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;->getProfile()Lcom/android/settings_ex/vpn2/VpnProfile;

    move-result-object v3

    .local v3, profile:Lcom/android/settings_ex/vpn2/VpnProfile;
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v0, :cond_1

    iget-object v0, v3, Lcom/android/settings_ex/vpn2/VpnProfile;->key:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v1, v1, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget v0, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 320
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v0, v0, Lcom/android/internal/net/LegacyVpnInfo;->intent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 322
    :catch_0
    move-exception v0

    .line 326
    :cond_1
    new-instance v0, Lcom/android/settings_ex/vpn2/VpnDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object v2, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/vpn2/VpnDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings_ex/vpn2/VpnProfile;ZZ)V

    iput-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    .end local v3           #profile:Lcom/android/settings_ex/vpn2/VpnProfile;
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/vpn2/VpnDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    invoke-virtual {v0}, Lcom/android/settings_ex/vpn2/VpnDialog;->show()V

    goto :goto_0

    .restart local p1
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .local v10, millis:J
    :goto_2
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    invoke-static {v10, v11}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 331
    const-wide/16 v0, 0x1

    add-long/2addr v10, v0

    goto :goto_2

    .line 333
    :cond_3
    new-instance v4, Lcom/android/settings_ex/vpn2/VpnDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    new-instance v7, Lcom/android/settings_ex/vpn2/VpnProfile;

    invoke-static {v10, v11}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/android/settings_ex/vpn2/VpnProfile;-><init>(Ljava/lang/String;)V

    move-object v6, p0

    move v9, v8

    invoke-direct/range {v4 .. v9}, Lcom/android/settings_ex/vpn2/VpnDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings_ex/vpn2/VpnProfile;ZZ)V

    iput-object v4, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    goto :goto_1
.end method

.method public onResume()V
    .locals 12

    .prologue
    const/4 v8, 0x0

    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    iget-object v9, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v9}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v9

    sget-object v10, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-eq v9, v10, :cond_2

    iget-boolean v9, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUnlocking:Z

    if-nez v9, :cond_1

    invoke-static {}, Landroid/security/Credentials;->getInstance()Landroid/security/Credentials;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/security/Credentials;->unlock(Landroid/content/Context;)V

    .line 127
    :goto_0
    iget-boolean v9, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUnlocking:Z

    if-nez v9, :cond_0

    const/4 v8, 0x1

    :cond_0
    iput-boolean v8, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUnlocking:Z

    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->finishFragment()V

    goto :goto_0

    :cond_2
    iput-boolean v8, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUnlocking:Z

    iget-object v9, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    if-nez v9, :cond_5

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v9, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    const-string v10, "VPN_"

    invoke-virtual {v9, v10}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 141
    .local v4, keys:[Ljava/lang/String;
    if-eqz v4, :cond_4

    array-length v9, v4

    if-lez v9, :cond_4

    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .local v1, context:Landroid/content/Context;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_2
    if-ge v2, v5, :cond_4

    aget-object v3, v0, v2

    .local v3, key:Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, profile:Lcom/android/settings_ex/vpn2/VpnProfile;
    :try_start_0
    iget-object v9, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "VPN_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v9

    invoke-static {v3, v9}, Lcom/android/settings_ex/vpn2/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/settings_ex/vpn2/VpnProfile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 153
    :goto_3
    if-nez v7, :cond_3

    .line 154
    const-string v9, "VpnSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bad profile: key = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "VPN_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    new-instance v6, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;

    invoke-direct {v6, p0, v1, v7}, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;-><init>(Lcom/android/settings_ex/vpn2/VpnSettings;Landroid/content/Context;Lcom/android/settings_ex/vpn2/VpnProfile;)V

    .local v6, preference:Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;
    iget-object v9, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    invoke-virtual {v9, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mPs:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v6}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_4

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #i$:I
    .end local v3           #key:Ljava/lang/String;
    .end local v5           #len$:I
    .end local v6           #preference:Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;
    .end local v7           #profile:Lcom/android/settings_ex/vpn2/VpnProfile;
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const-string v10, "add_network"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    invoke-virtual {v9, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .end local v4           #keys:[Ljava/lang/String;
    :cond_5
    iget-object v9, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    invoke-virtual {v9, p0}, Lcom/android/settings_ex/vpn2/VpnDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v9, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    invoke-virtual {v9}, Lcom/android/settings_ex/vpn2/VpnDialog;->show()V

    :cond_6
    iget-object v9, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    if-nez v9, :cond_7

    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v9, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    :cond_7
    iget-object v9, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    invoke-virtual {v9, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/vpn2/VpnSettings;->registerForContextMenu(Landroid/view/View;)V

    goto/16 :goto_1

    .line 149
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #context:Landroid/content/Context;
    .restart local v2       #i$:I
    .restart local v3       #key:Ljava/lang/String;
    .restart local v4       #keys:[Ljava/lang/String;
    .restart local v5       #len$:I
    .restart local v7       #profile:Lcom/android/settings_ex/vpn2/VpnProfile;
    :catch_0
    move-exception v9

    goto :goto_3
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedState"

    .prologue
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    invoke-virtual {v1}, Lcom/android/settings_ex/vpn2/VpnDialog;->getProfile()Lcom/android/settings_ex/vpn2/VpnProfile;

    move-result-object v0

    .local v0, profile:Lcom/android/settings_ex/vpn2/VpnProfile;
    const-string v1, "VpnKey"

    iget-object v2, v0, Lcom/android/settings_ex/vpn2/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v1, "VpnProfile"

    invoke-virtual {v0}, Lcom/android/settings_ex/vpn2/VpnProfile;->encode()[B

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 109
    const-string v1, "VpnEditing"

    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    invoke-virtual {v2}, Lcom/android/settings_ex/vpn2/VpnDialog;->isEditing()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .end local v0           #profile:Lcom/android/settings_ex/vpn2/VpnProfile;
    :cond_0
    return-void
.end method
