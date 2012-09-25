.class public Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;
.super Ljava/lang/Object;
.source "ConnectivitySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/lge/ConnectivitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WIFIConnectionEnabler"
.end annotation


# instance fields
.field private final mConnManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mOSPConnection:Landroid/content/ServiceConnection;

.field private mOSPServiceBound:Ljava/lang/Boolean;

.field final synthetic this$0:Lcom/android/settings_ex/lge/ConnectivitySettings;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/lge/ConnectivitySettings;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    .line 454
    iput-object p1, p0, Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;->this$0:Lcom/android/settings_ex/lge/ConnectivitySettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 450
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;->mOSPServiceBound:Ljava/lang/Boolean;

    .line 658
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_OSP:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler$1;-><init>(Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;)V

    :goto_0
    iput-object v0, p0, Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;->mOSPConnection:Landroid/content/ServiceConnection;

    .line 455
    iput-object p2, p0, Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;->mContext:Landroid/content/Context;

    .line 456
    iget-object v0, p0, Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;->mConnManager:Landroid/net/ConnectivityManager;

    .line 458
    return-void

    .line 658
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private SendWIFIConnectionStatus(ZI)V
    .locals 9
    .parameter "value"
    .parameter "softwareType"

    .prologue
    const/4 v8, 0x2

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 629
    const-string v2, ""

    .line 630
    .local v2, message:Ljava/lang/String;
    const-string v0, ""

    .line 631
    .local v0, action:Ljava/lang/String;
    if-ne p2, v3, :cond_2

    .line 632
    const-string v2, "linkcloud_settings"

    .line 633
    const-string v0, "com.android.settings_ex.WIFIConnectionStatus"

    .line 640
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;->this$0:Lcom/android/settings_ex/lge/ConnectivitySettings;

    #calls: Lcom/android/settings_ex/lge/ConnectivitySettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v7}, Lcom/android/settings_ex/lge/ConnectivitySettings;->access$1100(Lcom/android/settings_ex/lge/ConnectivitySettings;)Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 641
    .local v4, oldValue:I
    if-eqz p1, :cond_3

    .line 642
    .local v3, newValue:I
    :goto_1
    if-eq v4, v3, :cond_1

    .line 643
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 644
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "connected"

    invoke-virtual {v1, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 645
    iget-object v6, p0, Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 646
    iget-object v6, p0, Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;->this$0:Lcom/android/settings_ex/lge/ConnectivitySettings;

    invoke-virtual {v6}, Lcom/android/settings_ex/lge/ConnectivitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 648
    if-ne p2, v8, :cond_1

    .line 649
    invoke-direct {p0}, Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;->isOSPWIFIConnected()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 650
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.lge.osp.NOTI_DISCONNECT"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 651
    .local v5, stopIntent:Landroid/content/Intent;
    const-string v6, "com.lge.osp"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 652
    iget-object v6, p0, Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;->this$0:Lcom/android/settings_ex/lge/ConnectivitySettings;

    invoke-virtual {v6}, Lcom/android/settings_ex/lge/ConnectivitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 656
    .end local v1           #intent:Landroid/content/Intent;
    .end local v5           #stopIntent:Landroid/content/Intent;
    :cond_1
    return-void

    .line 635
    .end local v3           #newValue:I
    .end local v4           #oldValue:I
    :cond_2
    if-ne p2, v8, :cond_0

    .line 636
    const-string v2, "osp_wifi_settings"

    .line 637
    const-string v0, "com.android.settings_ex.OSPWIFIConnectionStatus"

    goto :goto_0

    .restart local v4       #oldValue:I
    :cond_3
    move v3, v6

    .line 641
    goto :goto_1
.end method

.method static synthetic access$500(Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;ZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 438
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;->SendWIFIConnectionStatus(ZI)V

    return-void
.end method

.method private isOSPWIFIConnected()Z
    .locals 6

    .prologue
    .line 600
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 602
    .local v1, connected:Ljava/lang/Boolean;
    :try_start_0
    iget-object v3, p0, Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;->this$0:Lcom/android/settings_ex/lge/ConnectivitySettings;

    #getter for: Lcom/android/settings_ex/lge/ConnectivitySettings;->mIOSPService:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/settings_ex/lge/ConnectivitySettings;->access$800(Lcom/android/settings_ex/lge/ConnectivitySettings;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 603
    invoke-static {}, Lcom/android/settings_ex/lge/ConnectivitySettings;->access$900()Ljava/lang/reflect/Method;

    move-result-object v4

    iget-object v3, p0, Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;->this$0:Lcom/android/settings_ex/lge/ConnectivitySettings;

    #getter for: Lcom/android/settings_ex/lge/ConnectivitySettings;->mIOSPService:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/settings_ex/lge/ConnectivitySettings;->access$800(Lcom/android/settings_ex/lge/ConnectivitySettings;)Ljava/lang/Object;

    move-result-object v5

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 604
    .local v2, transport:I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 605
    invoke-static {}, Lcom/android/settings_ex/lge/ConnectivitySettings;->access$1000()Ljava/lang/reflect/Method;

    move-result-object v4

    iget-object v3, p0, Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;->this$0:Lcom/android/settings_ex/lge/ConnectivitySettings;

    #getter for: Lcom/android/settings_ex/lge/ConnectivitySettings;->mIOSPService:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/settings_ex/lge/ConnectivitySettings;->access$800(Lcom/android/settings_ex/lge/ConnectivitySettings;)Ljava/lang/Object;

    move-result-object v5

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/Boolean;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 612
    .end local v2           #transport:I
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3

    .line 610
    :catch_0
    move-exception v3

    goto :goto_0

    .line 609
    :catch_1
    move-exception v3

    goto :goto_0

    .line 608
    :catch_2
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 11
    .parameter "preference"
    .parameter "value"

    .prologue
    const v10, 0x104000a

    const v9, 0x1010355

    const/4 v8, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 495
    if-eqz p1, :cond_a

    .line 496
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    move v0, v4

    .line 498
    .local v0, bEnable:Z
    :goto_0
    iget-object v6, p0, Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;->this$0:Lcom/android/settings_ex/lge/ConnectivitySettings;

    #getter for: Lcom/android/settings_ex/lge/ConnectivitySettings;->mPCSuiteWIFIConnectionOnOff:Landroid/preference/CheckBoxPreference;
    invoke-static {v6}, Lcom/android/settings_ex/lge/ConnectivitySettings;->access$300(Lcom/android/settings_ex/lge/ConnectivitySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v6

    if-ne p1, v6, :cond_2

    .line 499
    const/4 v2, 0x1

    .line 508
    .local v2, nSoftwareType:I
    :goto_1
    if-eqz v0, :cond_5

    .line 509
    const-string v1, ""

    .line 510
    .local v1, message:Ljava/lang/String;
    if-ne v2, v4, :cond_4

    .line 511
    iget-object v5, p0, Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;->this$0:Lcom/android/settings_ex/lge/ConnectivitySettings;

    const v6, 0x7f0807da

    invoke-virtual {v5, v6}, Lcom/android/settings_ex/lge/ConnectivitySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 517
    :cond_0
    :goto_2
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0807db

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler$3;

    invoke-direct {v6, p0, v2}, Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler$3;-><init>(Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;I)V

    invoke-virtual {v5, v10, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler$2;

    invoke-direct {v6, p0, p1, v2}, Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler$2;-><init>(Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;Landroid/preference/Preference;I)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 596
    .end local v0           #bEnable:Z
    .end local v1           #message:Ljava/lang/String;
    .end local v2           #nSoftwareType:I
    :goto_3
    return v4

    :cond_1
    move v0, v5

    .line 496
    goto :goto_0

    .line 501
    .restart local v0       #bEnable:Z
    :cond_2
    iget-object v6, p0, Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;->this$0:Lcom/android/settings_ex/lge/ConnectivitySettings;

    #getter for: Lcom/android/settings_ex/lge/ConnectivitySettings;->mOSPWIFIConnectionOnOff:Landroid/preference/CheckBoxPreference;
    invoke-static {v6}, Lcom/android/settings_ex/lge/ConnectivitySettings;->access$400(Lcom/android/settings_ex/lge/ConnectivitySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v6

    if-ne p1, v6, :cond_3

    .line 502
    const/4 v2, 0x2

    .restart local v2       #nSoftwareType:I
    goto :goto_1

    .line 505
    .end local v2           #nSoftwareType:I
    :cond_3
    const/4 v2, 0x0

    .restart local v2       #nSoftwareType:I
    goto :goto_1

    .line 513
    .restart local v1       #message:Ljava/lang/String;
    :cond_4
    if-ne v2, v8, :cond_0

    .line 514
    iget-object v5, p0, Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;->this$0:Lcom/android/settings_ex/lge/ConnectivitySettings;

    const v6, 0x7f0807d9

    invoke-virtual {v5, v6}, Lcom/android/settings_ex/lge/ConnectivitySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 540
    .end local v1           #message:Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcom/android/settings_ex/lge/ConnectivitySettings;->access$600()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 541
    iget-object v6, p0, Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;->this$0:Lcom/android/settings_ex/lge/ConnectivitySettings;

    const v7, 0x7f0807be

    invoke-virtual {v6, v7}, Lcom/android/settings_ex/lge/ConnectivitySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 542
    .restart local v1       #message:Ljava/lang/String;
    if-ne v2, v4, :cond_8

    .line 544
    iget-object v6, p0, Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;->this$0:Lcom/android/settings_ex/lge/ConnectivitySettings;

    #calls: Lcom/android/settings_ex/lge/ConnectivitySettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/android/settings_ex/lge/ConnectivitySettings;->access$700(Lcom/android/settings_ex/lge/ConnectivitySettings;)Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pcsuite_wifi_connection_status"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 545
    .local v3, pcsuiteWifiConnectionStatus:I
    if-ne v3, v4, :cond_7

    .line 546
    iget-object v5, p0, Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;->this$0:Lcom/android/settings_ex/lge/ConnectivitySettings;

    const v6, 0x7f0807bf

    invoke-virtual {v5, v6}, Lcom/android/settings_ex/lge/ConnectivitySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 558
    .end local v3           #pcsuiteWifiConnectionStatus:I
    :cond_6
    :goto_4
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0807db

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler$6;

    invoke-direct {v6, p0, v0, v2}, Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler$6;-><init>(Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;ZI)V

    invoke-virtual {v5, v10, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v6, 0x104

    new-instance v7, Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler$5;

    invoke-direct {v7, p0, p1, v2}, Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler$5;-><init>(Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;Landroid/preference/Preference;I)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler$4;

    invoke-direct {v6, p0, p1, v2}, Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler$4;-><init>(Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;Landroid/preference/Preference;I)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_3

    .line 548
    .restart local v3       #pcsuiteWifiConnectionStatus:I
    :cond_7
    iget-object v5, p0, Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;->this$0:Lcom/android/settings_ex/lge/ConnectivitySettings;

    const v6, 0x7f0807be

    invoke-virtual {v5, v6}, Lcom/android/settings_ex/lge/ConnectivitySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 552
    .end local v3           #pcsuiteWifiConnectionStatus:I
    :cond_8
    if-ne v2, v8, :cond_6

    .line 553
    invoke-direct {p0}, Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;->isOSPWIFIConnected()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 554
    iget-object v5, p0, Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;->this$0:Lcom/android/settings_ex/lge/ConnectivitySettings;

    const v6, 0x7f0807c0

    invoke-virtual {v5, v6}, Lcom/android/settings_ex/lge/ConnectivitySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 592
    .end local v1           #message:Ljava/lang/String;
    :cond_9
    invoke-direct {p0, v0, v2}, Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;->SendWIFIConnectionStatus(ZI)V

    goto/16 :goto_3

    .end local v0           #bEnable:Z
    .end local v2           #nSoftwareType:I
    .restart local p2
    :cond_a
    move v4, v5

    .line 596
    goto/16 :goto_3
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 478
    iget-object v0, p0, Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;->this$0:Lcom/android/settings_ex/lge/ConnectivitySettings;

    #getter for: Lcom/android/settings_ex/lge/ConnectivitySettings;->mPCSuiteWIFIConnectionOnOff:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings_ex/lge/ConnectivitySettings;->access$300(Lcom/android/settings_ex/lge/ConnectivitySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;->this$0:Lcom/android/settings_ex/lge/ConnectivitySettings;

    #getter for: Lcom/android/settings_ex/lge/ConnectivitySettings;->mPCSuiteWIFIConnectionOnOff:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings_ex/lge/ConnectivitySettings;->access$300(Lcom/android/settings_ex/lge/ConnectivitySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;->this$0:Lcom/android/settings_ex/lge/ConnectivitySettings;

    #getter for: Lcom/android/settings_ex/lge/ConnectivitySettings;->mOSPWIFIConnectionOnOff:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings_ex/lge/ConnectivitySettings;->access$400(Lcom/android/settings_ex/lge/ConnectivitySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 482
    iget-object v0, p0, Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;->this$0:Lcom/android/settings_ex/lge/ConnectivitySettings;

    #getter for: Lcom/android/settings_ex/lge/ConnectivitySettings;->mOSPWIFIConnectionOnOff:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings_ex/lge/ConnectivitySettings;->access$400(Lcom/android/settings_ex/lge/ConnectivitySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 485
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;->mOSPServiceBound:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 487
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;->mOSPServiceBound:Ljava/lang/Boolean;

    .line 488
    iget-object v0, p0, Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;->mOSPConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_2

    .line 489
    iget-object v0, p0, Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;->mOSPConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 491
    :cond_2
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 461
    iget-object v1, p0, Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;->this$0:Lcom/android/settings_ex/lge/ConnectivitySettings;

    #getter for: Lcom/android/settings_ex/lge/ConnectivitySettings;->mPCSuiteWIFIConnectionOnOff:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings_ex/lge/ConnectivitySettings;->access$300(Lcom/android/settings_ex/lge/ConnectivitySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 462
    iget-object v1, p0, Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;->this$0:Lcom/android/settings_ex/lge/ConnectivitySettings;

    #getter for: Lcom/android/settings_ex/lge/ConnectivitySettings;->mPCSuiteWIFIConnectionOnOff:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings_ex/lge/ConnectivitySettings;->access$300(Lcom/android/settings_ex/lge/ConnectivitySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 464
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;->this$0:Lcom/android/settings_ex/lge/ConnectivitySettings;

    #getter for: Lcom/android/settings_ex/lge/ConnectivitySettings;->mOSPWIFIConnectionOnOff:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings_ex/lge/ConnectivitySettings;->access$400(Lcom/android/settings_ex/lge/ConnectivitySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 465
    iget-object v1, p0, Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;->this$0:Lcom/android/settings_ex/lge/ConnectivitySettings;

    #getter for: Lcom/android/settings_ex/lge/ConnectivitySettings;->mOSPWIFIConnectionOnOff:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings_ex/lge/ConnectivitySettings;->access$400(Lcom/android/settings_ex/lge/ConnectivitySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 468
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;->mOSPServiceBound:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    .line 469
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 470
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.lge.osp"

    const-string v2, "com.lge.osp.OSPService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 472
    iget-object v1, p0, Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;->mOSPConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_2

    .line 473
    iget-object v1, p0, Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;->mOSPConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/lge/ConnectivitySettings$WIFIConnectionEnabler;->mOSPServiceBound:Ljava/lang/Boolean;

    .line 475
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    return-void
.end method
