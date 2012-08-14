.class public Lcom/android/internal/telephony/DataConnectionManager;
.super Ljava/lang/Object;
.source "DataConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/DataConnectionManager$DCM_Carrier;
    }
.end annotation


# static fields
.field public static final DATA_DISCONNECTED_PERMANENT_FAIL_NOTIFICATION:I = 0x9

.field public static final DATA_NOTI_BACKGROUND_SETTING_NOTIFICATION:I = 0xa

.field private static final DBG:Z = true

.field public static final DCM_MOBILE_NETWORK_IS_ALLOWED:I = 0x1

.field public static final DCM_MOBILE_NETWORK_IS_DISALLOWED:I = 0x2

.field public static final DCM_MOBILE_NETWORK_IS_NEED_POPUP:I = 0x3

.field private static final ENTITLEMENT_FAIL_CAUSE:Ljava/lang/String; = "fail_cause"

.field private static final ENTITLEMENT_SUCCESS:Ljava/lang/String; = "success"

.field private static final TAG:Ljava/lang/String; = "LGE_DCM "

.field public static alreadyAppUsedPacket:Z

.field public static blockPacketMenuFlag:Z

.field public static blockPakcetProcessFlag:Z

.field public static roamingCheck:Z

.field private static sDataConnectionManager:Lcom/android/internal/telephony/DataConnectionManager;


# instance fields
.field public final TOAST_DISABLE_MMS_INOUT:I

.field featureset:Ljava/lang/String;

.field mConnMgr:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field protected mLGfeature:Lcom/android/internal/telephony/LGfeature;

.field mNotification:Landroid/app/Notification;

.field mNotificationMgr:Landroid/app/NotificationManager;

.field private mPhoneMgr:Lcom/android/internal/telephony/ITelephony;

.field private mPolicyService:Landroid/net/INetworkPolicyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 121
    sput-boolean v1, Lcom/android/internal/telephony/DataConnectionManager;->roamingCheck:Z

    .line 129
    sput-boolean v1, Lcom/android/internal/telephony/DataConnectionManager;->blockPacketMenuFlag:Z

    .line 130
    sput-boolean v0, Lcom/android/internal/telephony/DataConnectionManager;->blockPakcetProcessFlag:Z

    .line 131
    sput-boolean v0, Lcom/android/internal/telephony/DataConnectionManager;->alreadyAppUsedPacket:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "c"

    .prologue
    .line 138
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/DataConnectionManager;->TOAST_DISABLE_MMS_INOUT:I

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionManager;->mNotification:Landroid/app/Notification;

    .line 139
    const-string v0, "LGE_DCM "

    const-string v1, "LgeDataManager() has created"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    .line 143
    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionManager;->mPhoneMgr:Lcom/android/internal/telephony/ITelephony;

    .line 144
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionManager;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 147
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionManager;->mNotificationMgr:Landroid/app/NotificationManager;

    .line 151
    const-string/jumbo v0, "netpolicy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionManager;->mPolicyService:Landroid/net/INetworkPolicyManager;

    .line 154
    const-string/jumbo v0, "ro.afwdata.LGfeatureset"

    const-string/jumbo v1, "none"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionManager;->featureset:Ljava/lang/String;

    .line 155
    const-string v0, "LGE_DCM "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "featureset : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionManager;->featureset:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    new-instance v0, Lcom/android/internal/telephony/LGfeature;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionManager;->featureset:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/LGfeature;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionManager;->mLGfeature:Lcom/android/internal/telephony/LGfeature;

    .line 157
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/DataConnectionManager;
    .locals 1
    .parameter "c"

    .prologue
    .line 161
    sget-object v0, Lcom/android/internal/telephony/DataConnectionManager;->sDataConnectionManager:Lcom/android/internal/telephony/DataConnectionManager;

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Lcom/android/internal/telephony/DataConnectionManager;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/DataConnectionManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionManager;->sDataConnectionManager:Lcom/android/internal/telephony/DataConnectionManager;

    .line 165
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/DataConnectionManager;->sDataConnectionManager:Lcom/android/internal/telephony/DataConnectionManager;

    return-object v0
.end method

.method private getStringofDataNetworkMode(I)Ljava/lang/String;
    .locals 1
    .parameter "network_mode"

    .prologue
    .line 172
    packed-switch p1, :pswitch_data_0

    .line 187
    const-string v0, ""

    .line 190
    .local v0, str_value:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 175
    .end local v0           #str_value:Ljava/lang/String;
    :pswitch_0
    const-string v0, "DCM_MOBILE_NETWORK_IS_NEED_POPUP"

    .line 176
    .restart local v0       #str_value:Ljava/lang/String;
    goto :goto_0

    .line 179
    .end local v0           #str_value:Ljava/lang/String;
    :pswitch_1
    const-string v0, "DCM_MOBILE_NETWORK_IS_ALLOWED"

    .line 180
    .restart local v0       #str_value:Ljava/lang/String;
    goto :goto_0

    .line 183
    .end local v0           #str_value:Ljava/lang/String;
    :pswitch_2
    const-string v0, "DCM_MOBILE_NETWORK_IS_DISALLOWED"

    .line 184
    .restart local v0       #str_value:Ljava/lang/String;
    goto :goto_0

    .line 172
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public SendBroadcastMobileEntitlementStatus(II)V
    .locals 3
    .parameter "success"
    .parameter "cause"

    .prologue
    .line 654
    const-string v1, "LGE_DCM "

    const-string v2, "SendBroadcastMobileEntitlementStatus, intent = android.net.conn.DATA_CONNECTED_STATUS"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.conn.DATA_CONNECTED_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 656
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "success"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 657
    const-string v1, "fail_cause"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 658
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 659
    return-void
.end method

.method public SendBroadcastPdpRejectCause(I)V
    .locals 3
    .parameter "cause"

    .prologue
    .line 665
    const-string v1, "LGE_DCM "

    const-string v2, "[LGE_DATA][PDP_reject] SendBroadcastPdpRejectCause, intent = android.net.conn.ACTION_DATA_PDP_REJECT_CAUSE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.conn.ACTION_DATA_PDP_REJECT_CAUSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 667
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "cause"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 668
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 669
    return-void
.end method

.method public closeNetwork()I
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 354
    const/4 v3, 0x0

    .line 356
    .local v3, result:I
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionManager;->mPhoneMgr:Lcom/android/internal/telephony/ITelephony;

    if-eqz v4, :cond_3

    .line 358
    const/4 v2, 0x0

    .line 360
    .local v2, is_wifi_connected:Z
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionManager;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v4, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 361
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionManager;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v4, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    .line 363
    :cond_0
    const-string v4, "LGE_DCM "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "closeNetwork(), is_wifi_connected = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionManager;->featureset:Ljava/lang/String;

    const-string v5, "LGTBASE"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 367
    const/4 v1, 0x6

    .line 371
    .local v1, count:I
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.lguplus.intent.action.DATA_DISABLED"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 372
    .local v0, DataDisabledIntent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 374
    const-string v4, "DATA"

    const-string v5, "broadcasting [DATA_DISABLED] intent.. IMS module may receive this intent, on closeNetwork case"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :goto_0
    const-string/jumbo v4, "net.sip_reg_state"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-lez v1, :cond_1

    .line 379
    const-wide/16 v4, 0x1f4

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 380
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 383
    :cond_1
    const-string v4, "DATA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[IMS] ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    rsub-int/lit8 v6, v1, 0x6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] sec is delayed for SIP de-reg on closeNetwork"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    .end local v0           #DataDisabledIntent:Landroid/content/Intent;
    .end local v1           #count:I
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionManager;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 390
    .end local v2           #is_wifi_connected:Z
    :cond_3
    const-string v4, "LGE_DCM "

    const-string v5, "closeNetwork()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    return v3
.end method

.method public debugFileWrite(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 20
    .parameter "context"
    .parameter "sText"
    .parameter "sFileName"
    .parameter "sFileSize"

    .prologue
    .line 814
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p3

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 818
    .local v6, file:Ljava/io/File;
    new-instance v12, Ljava/util/Date;

    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    .line 820
    .local v12, now:Ljava/util/Date;
    new-instance v14, Ljava/text/SimpleDateFormat;

    const-string/jumbo v18, "yyyy.MM.dd HH:mm:ss"

    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 821
    .local v14, simpleformat:Ljava/text/SimpleDateFormat;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 823
    .local v16, time:Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 826
    const/4 v4, 0x0

    .line 830
    .local v4, count:I
    :try_start_0
    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v10

    .line 831
    .local v10, fis:Ljava/io/FileInputStream;
    :goto_0
    invoke-virtual {v10}, Ljava/io/FileInputStream;->read()I

    move-result v15

    .local v15, sizeByte:I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v15, v0, :cond_0

    .line 832
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 834
    :cond_0
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 841
    .end local v10           #fis:Ljava/io/FileInputStream;
    .end local v15           #sizeByte:I
    :goto_1
    int-to-long v8, v4

    .line 847
    .local v8, fileSize:J
    const-string v7, ""

    .line 851
    .local v7, fileContent:Ljava/lang/String;
    const-wide/32 v18, 0x3d0900

    cmp-long v18, v8, v18

    if-lez v18, :cond_3

    .line 855
    :try_start_1
    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v10

    .line 858
    .restart local v10       #fis:Ljava/io/FileInputStream;
    :cond_1
    invoke-virtual {v10}, Ljava/io/FileInputStream;->read()I

    move-result v13

    .local v13, ouputByte:I
    const/16 v18, 0xa

    move/from16 v0, v18

    if-ne v13, v0, :cond_1

    .line 862
    :goto_2
    invoke-virtual {v10}, Ljava/io/FileInputStream;->read()I

    move-result v13

    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v13, v0, :cond_2

    .line 863
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    int-to-char v0, v13

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    goto :goto_2

    .line 836
    .end local v7           #fileContent:Ljava/lang/String;
    .end local v8           #fileSize:J
    .end local v10           #fis:Ljava/io/FileInputStream;
    .end local v13           #ouputByte:I
    :catch_0
    move-exception v5

    .line 838
    .local v5, e:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 865
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v7       #fileContent:Ljava/lang/String;
    .restart local v8       #fileSize:J
    .restart local v10       #fis:Ljava/io/FileInputStream;
    .restart local v13       #ouputByte:I
    :cond_2
    :try_start_2
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 871
    .end local v10           #fis:Ljava/io/FileInputStream;
    .end local v13           #ouputByte:I
    :goto_3
    move-object/from16 v17, v7

    .line 897
    .local v17, writeString:Ljava/lang/String;
    :goto_4
    :try_start_3
    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v11

    .line 899
    .local v11, fos:Ljava/io/FileOutputStream;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 900
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 901
    .local v3, bText:[B
    const/16 v18, 0x0

    array-length v0, v3

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v3, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 902
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->flush()V

    .line 903
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 910
    .end local v3           #bText:[B
    .end local v11           #fos:Ljava/io/FileOutputStream;
    :goto_5
    return-void

    .line 867
    .end local v17           #writeString:Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 869
    .restart local v5       #e:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 879
    .end local v5           #e:Ljava/lang/Exception;
    :cond_3
    :try_start_4
    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v10

    .line 881
    .restart local v10       #fis:Ljava/io/FileInputStream;
    :goto_6
    invoke-virtual {v10}, Ljava/io/FileInputStream;->read()I

    move-result v13

    .restart local v13       #ouputByte:I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v13, v0, :cond_4

    .line 882
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    int-to-char v0, v13

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    .line 884
    :cond_4
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 891
    .end local v10           #fis:Ljava/io/FileInputStream;
    .end local v13           #ouputByte:I
    :goto_7
    move-object/from16 v17, v7

    .restart local v17       #writeString:Ljava/lang/String;
    goto :goto_4

    .line 886
    .end local v17           #writeString:Ljava/lang/String;
    :catch_2
    move-exception v5

    .line 888
    .restart local v5       #e:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 906
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v17       #writeString:Ljava/lang/String;
    :catch_3
    move-exception v5

    .line 908
    .restart local v5       #e:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method

.method public declared-synchronized functionForPacketDrop(Z)V
    .locals 12
    .parameter "ok"

    .prologue
    .line 538
    monitor-enter p0

    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionManager;->featureset:Ljava/lang/String;

    const-string v10, "SKTBASE"

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 540
    const-string v9, "LGE_DCM "

    const-string v10, "[LGE_DATA] return ~~~~ !!! for not SKT "

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 621
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 544
    :cond_1
    :try_start_1
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "phone"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 545
    .local v8, tm:Landroid/telephony/TelephonyManager;
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "network_management"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 546
    .local v0, b:Landroid/os/IBinder;
    const-string v9, "connectivity"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 547
    .local v1, bc:Landroid/os/IBinder;
    invoke-static {v1}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v2

    .line 549
    .local v2, cm:Landroid/net/IConnectivityManager;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v7

    .line 550
    .local v7, service:Landroid/os/INetworkManagementService;
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v5

    .line 551
    .local v5, networkOperator:Ljava/lang/String;
    const/4 v4, 0x0

    .line 552
    .local v4, ifacename:Ljava/lang/String;
    const/4 v6, 0x0

    .line 554
    .local v6, props:Landroid/net/LinkProperties;
    if-eqz v2, :cond_2

    if-nez v7, :cond_3

    .line 556
    :cond_2
    const-string v9, "LGE_DCM "

    const-string v10, " <functionForPacketDrop()> cm == null || service == null, so return!!"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 538
    .end local v0           #b:Landroid/os/IBinder;
    .end local v1           #bc:Landroid/os/IBinder;
    .end local v2           #cm:Landroid/net/IConnectivityManager;
    .end local v4           #ifacename:Ljava/lang/String;
    .end local v5           #networkOperator:Ljava/lang/String;
    .end local v6           #props:Landroid/net/LinkProperties;
    .end local v7           #service:Landroid/os/INetworkManagementService;
    .end local v8           #tm:Landroid/telephony/TelephonyManager;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 561
    .restart local v0       #b:Landroid/os/IBinder;
    .restart local v1       #bc:Landroid/os/IBinder;
    .restart local v2       #cm:Landroid/net/IConnectivityManager;
    .restart local v4       #ifacename:Ljava/lang/String;
    .restart local v5       #networkOperator:Ljava/lang/String;
    .restart local v6       #props:Landroid/net/LinkProperties;
    .restart local v7       #service:Landroid/os/INetworkManagementService;
    .restart local v8       #tm:Landroid/telephony/TelephonyManager;
    :cond_3
    const/4 v9, 0x0

    :try_start_2
    invoke-interface {v2, v9}, Landroid/net/IConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v6

    .line 562
    invoke-virtual {v6}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v4

    .line 568
    :goto_1
    :try_start_3
    const-string v9, "LGE_DCM "

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " <functionForPacketDrop()> blockPacketMenuFlag : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-boolean v11, Lcom/android/internal/telephony/DataConnectionManager;->blockPacketMenuFlag:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " / blockPakcetProcessFlag :  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-boolean v11, Lcom/android/internal/telephony/DataConnectionManager;->blockPakcetProcessFlag:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " / ok : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    sget-boolean v9, Lcom/android/internal/telephony/DataConnectionManager;->blockPacketMenuFlag:Z

    if-nez v9, :cond_5

    .line 574
    sget-boolean v9, Lcom/android/internal/telephony/DataConnectionManager;->blockPakcetProcessFlag:Z

    if-eqz v9, :cond_4

    .line 576
    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/internal/telephony/DataConnectionManager;->blockPakcetProcessFlag:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 580
    :try_start_4
    invoke-interface {v7, v4}, Landroid/os/INetworkManagementService;->acceptPacket(Ljava/lang/String;)V

    .line 582
    const-string v9, "LGE_DCM "

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " <functionForPacketDrop()> acceptPacket_SKT ifacename = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 588
    :cond_4
    :goto_2
    :try_start_5
    const-string v9, "LGE_DCM "

    const-string v10, " <functionForPacketDrop()> return!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 565
    :catch_0
    move-exception v3

    .line 566
    .local v3, e:Ljava/lang/Exception;
    const-string v9, "LGE_DCM "

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "exception = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 583
    .end local v3           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 584
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v9, "LGE_DCM "

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " <functionForPacketDrop()> service.acceptPacket exception = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 592
    .end local v3           #e:Ljava/lang/Exception;
    :cond_5
    if-eqz v5, :cond_0

    const-string v9, "45005"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 594
    if-eqz p1, :cond_6

    sget-boolean v9, Lcom/android/internal/telephony/DataConnectionManager;->blockPakcetProcessFlag:Z

    if-nez v9, :cond_6

    .line 596
    const/4 v9, 0x1

    sput-boolean v9, Lcom/android/internal/telephony/DataConnectionManager;->blockPakcetProcessFlag:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 600
    :try_start_6
    invoke-interface {v7, v4}, Landroid/os/INetworkManagementService;->dropPacket(Ljava/lang/String;)V

    .line 602
    const-string v9, "LGE_DCM "

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " <functionForPacketDrop()> dropPacket_SKT  ifacename = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    .line 603
    :catch_2
    move-exception v3

    .line 604
    .restart local v3       #e:Ljava/lang/Exception;
    :try_start_7
    const-string v9, "LGE_DCM "

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " <functionForPacketDrop()> service.dropPacket exception = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 607
    .end local v3           #e:Ljava/lang/Exception;
    :cond_6
    if-nez p1, :cond_0

    sget-boolean v9, Lcom/android/internal/telephony/DataConnectionManager;->blockPakcetProcessFlag:Z

    if-eqz v9, :cond_0

    .line 609
    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/internal/telephony/DataConnectionManager;->blockPakcetProcessFlag:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 613
    :try_start_8
    invoke-interface {v7, v4}, Landroid/os/INetworkManagementService;->acceptPacket(Ljava/lang/String;)V

    .line 615
    const-string v9, "LGE_DCM "

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " <functionForPacketDrop()> acceptPacket_SKT ifacename = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_0

    .line 616
    :catch_3
    move-exception v3

    .line 617
    .restart local v3       #e:Ljava/lang/Exception;
    :try_start_9
    const-string v9, "LGE_DCM "

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " <functionForPacketDrop()> service.acceptPacket exception = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    .line 564
    .end local v3           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v9

    goto/16 :goto_1
.end method

.method public declared-synchronized functionForPacketList()V
    .locals 7

    .prologue
    .line 441
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionManager;->featureset:Ljava/lang/String;

    const-string v5, "SKTBASE"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 443
    const-string v4, "LGE_DCM "

    const-string v5, "[LGE_DATA] return ~~~~ !!! for not SKT "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 446
    :cond_1
    const/4 v3, 0x0

    .line 449
    .local v3, ret_value:Z
    :try_start_1
    const-string/jumbo v4, "network_management"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 450
    .local v1, network_b:Landroid/os/IBinder;
    invoke-static {v1}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    .line 452
    .local v2, network_service:Landroid/os/INetworkManagementService;
    if-eqz v2, :cond_0

    .line 455
    const-string v4, "LGE_DCM "

    const-string v5, "functionForPacketList  :::: "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 457
    :try_start_2
    invoke-interface {v2}, Landroid/os/INetworkManagementService;->packetList_Indrop()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v3

    .line 462
    :goto_1
    :try_start_3
    const-string v4, "LGE_DCM "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "functionForPacketList  ret_value :: :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 441
    .end local v1           #network_b:Landroid/os/IBinder;
    .end local v2           #network_service:Landroid/os/INetworkManagementService;
    .end local v3           #ret_value:Z
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 458
    .restart local v1       #network_b:Landroid/os/IBinder;
    .restart local v2       #network_service:Landroid/os/INetworkManagementService;
    .restart local v3       #ret_value:Z
    :catch_0
    move-exception v0

    .line 459
    .local v0, e:Ljava/lang/Exception;
    :try_start_4
    const-string v4, "LGE_DCM "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "network_service.resetPacketDrop exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public getAlreadyAppUsedPacket()Z
    .locals 3

    .prologue
    .line 413
    const-string v0, "LGE_DCM "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " <getAlreadyAppUsedPacket()> alreadyAppUsedPacket = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/telephony/DataConnectionManager;->alreadyAppUsedPacket:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    sget-boolean v0, Lcom/android/internal/telephony/DataConnectionManager;->alreadyAppUsedPacket:Z

    return v0
.end method

.method public getBlockPacketMenuProcess()Z
    .locals 3

    .prologue
    .line 399
    const-string v0, "LGE_DCM "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " <getBlockPacketMenuProcess()> blockPacketMenuFlag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/telephony/DataConnectionManager;->blockPacketMenuFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    sget-boolean v0, Lcom/android/internal/telephony/DataConnectionManager;->blockPacketMenuFlag:Z

    return v0
.end method

.method public getDataNetworkMode(Z)I
    .locals 6
    .parameter "addPopupResult"

    .prologue
    const/4 v5, 0x1

    .line 195
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "preferred_data_network_mode"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 196
    .local v0, mode:I
    const/4 v1, 0x0

    .line 198
    .local v1, network_mode:I
    const-string v2, "LGE_DCM "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDataNetworkMode() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionManager;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "boot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionManager;->featureset:Ljava/lang/String;

    const-string v3, "SKTBASE"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 205
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionManager;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 207
    if-ne v0, v5, :cond_1

    if-eqz p1, :cond_1

    .line 209
    const/4 v1, 0x3

    .line 264
    :cond_0
    :goto_0
    const-string v2, "LGE_DCM "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDataNetworkMode() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataConnectionManager;->getStringofDataNetworkMode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    return v1

    .line 213
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 218
    :cond_2
    if-ne v0, v5, :cond_3

    if-eqz p1, :cond_3

    .line 220
    const/4 v1, 0x3

    goto :goto_0

    .line 224
    :cond_3
    const/4 v1, 0x2

    goto :goto_0

    .line 228
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionManager;->featureset:Ljava/lang/String;

    const-string v3, "KTBASE"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 230
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionManager;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    if-ne v2, v5, :cond_6

    .line 232
    if-ne v0, v5, :cond_5

    .line 234
    const/4 v1, 0x3

    goto :goto_0

    .line 238
    :cond_5
    const/4 v1, 0x1

    goto :goto_0

    .line 243
    :cond_6
    const/4 v1, 0x2

    goto :goto_0

    .line 246
    :cond_7
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionManager;->featureset:Ljava/lang/String;

    const-string v3, "LGTBASE"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 250
    if-eq v0, v5, :cond_8

    const v2, 0x10001

    if-ne v0, v2, :cond_9

    .line 252
    :cond_8
    const/4 v1, 0x3

    goto :goto_0

    .line 254
    :cond_9
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionManager;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    if-ne v2, v5, :cond_a

    .line 256
    const/4 v1, 0x1

    goto :goto_0

    .line 260
    :cond_a
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public declared-synchronized getRouteList_debug()V
    .locals 11

    .prologue
    .line 467
    monitor-enter p0

    :try_start_0
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionManager;->featureset:Ljava/lang/String;

    const-string v9, "SKTBASE"

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 469
    const-string v8, "LGE_DCM "

    const-string v9, "[LGE_DATA] return ~~~~ !!! for not SKT "

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 505
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 472
    :cond_1
    const/4 v7, 0x0

    .line 475
    .local v7, ret_value:Z
    :try_start_1
    const-string/jumbo v8, "network_management"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 476
    .local v4, network_b:Landroid/os/IBinder;
    invoke-static {v4}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v5

    .line 477
    .local v5, network_service:Landroid/os/INetworkManagementService;
    const-string v8, "connectivity"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 478
    .local v0, bc:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 480
    .local v1, cm:Landroid/net/IConnectivityManager;
    if-eqz v5, :cond_0

    if-eqz v1, :cond_0

    .line 483
    const/4 v3, 0x0

    .line 484
    .local v3, ifacename:Ljava/lang/String;
    const/4 v6, 0x0

    .line 487
    .local v6, props:Landroid/net/LinkProperties;
    const/4 v8, 0x0

    :try_start_2
    invoke-interface {v1, v8}, Landroid/net/IConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v6

    .line 488
    invoke-virtual {v6}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v3

    .line 496
    :goto_1
    :try_start_3
    const-string v8, "LGE_DCM "

    const-string v9, "getRouteList_debug  :::: "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 498
    :try_start_4
    invoke-interface {v5, v3}, Landroid/os/INetworkManagementService;->getRouteList_debug(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 504
    :goto_2
    :try_start_5
    const-string v8, "LGE_DCM "

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getRouteList_debug  ret_value :: :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 467
    .end local v0           #bc:Landroid/os/IBinder;
    .end local v1           #cm:Landroid/net/IConnectivityManager;
    .end local v3           #ifacename:Ljava/lang/String;
    .end local v4           #network_b:Landroid/os/IBinder;
    .end local v5           #network_service:Landroid/os/INetworkManagementService;
    .end local v6           #props:Landroid/net/LinkProperties;
    .end local v7           #ret_value:Z
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 491
    .restart local v0       #bc:Landroid/os/IBinder;
    .restart local v1       #cm:Landroid/net/IConnectivityManager;
    .restart local v3       #ifacename:Ljava/lang/String;
    .restart local v4       #network_b:Landroid/os/IBinder;
    .restart local v5       #network_service:Landroid/os/INetworkManagementService;
    .restart local v6       #props:Landroid/net/LinkProperties;
    .restart local v7       #ret_value:Z
    :catch_0
    move-exception v2

    .line 492
    .local v2, e:Ljava/lang/Exception;
    :try_start_6
    const-string v8, "LGE_DCM "

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "exception = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 500
    .end local v2           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 501
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v8, "LGE_DCM "

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getRouteList_debug exception = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 490
    .end local v2           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v8

    goto :goto_1
.end method

.method public handleNetworkRejection(I)V
    .locals 6
    .parameter "data_rejCode"

    .prologue
    .line 282
    const/4 v2, 0x0

    .line 283
    .local v2, msg:Ljava/lang/String;
    const/4 v0, 0x0

    .line 285
    .local v0, IsRoaming:Z
    const-string v3, "LGE_DCM "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleNetworkRejection : Rejection code :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "lge.intent.action.toast"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 289
    .local v1, intent:Landroid/content/Intent;
    sparse-switch p1, :sswitch_data_0

    .line 307
    :goto_0
    const-string/jumbo v3, "text"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 309
    return-void

    .line 293
    :sswitch_0
    const-string v3, "SKT_NRC_07_GPRS_NOT_ALLOWED"

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 295
    goto :goto_0

    .line 299
    :sswitch_1
    const-string v3, "SKT_NRC_14_GPRS_NOT_ALLOWED_IN_THIS_PLMN"

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 301
    goto :goto_0

    .line 289
    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0xe -> :sswitch_1
    .end sparse-switch
.end method

.method public handleSKT_QA(II)V
    .locals 13
    .parameter "code"
    .parameter "releaseCause"

    .prologue
    .line 675
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/ConnectivityManager;

    .line 678
    .local v11, cm:Landroid/net/ConnectivityManager;
    const-string v0, "LGE_DCM "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleSKT_QA : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " releaseCause : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    packed-switch p1, :pswitch_data_0

    .line 753
    :cond_0
    :goto_0
    return-void

    .line 702
    :pswitch_0
    new-instance v9, Landroid/content/Intent;

    const-string v0, "android.skt.intent.action.USER_BACKG_SETTING"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 703
    .local v9, DataDisabledIntent:Landroid/content/Intent;
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 706
    const-string/jumbo v0, "on_off"

    const/4 v1, 0x1

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 707
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 709
    const-string v0, "LGE_DCM "

    const-string/jumbo v1, "handleSKT_QA : Limit_Background_data_Notification."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    new-instance v0, Landroid/app/Notification;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    const v2, 0x108008a

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10404f5

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10404f6

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/app/Notification;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;JLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionManager;->mNotification:Landroid/app/Notification;

    .line 720
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionManager;->mNotification:Landroid/app/Notification;

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionManager;->mNotificationMgr:Landroid/app/NotificationManager;

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionManager;->mNotification:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 726
    :cond_1
    const/4 v12, 0x0

    .line 727
    .local v12, enabled:Z
    const/4 v10, 0x0

    .line 735
    .local v10, already_enabled:Z
    const-string v0, "LGE_DCM "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleSKT_QA : enabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "already_enabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_network_user_background_setting_data"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    .line 738
    const/4 v12, 0x1

    .line 743
    :goto_1
    const-string/jumbo v0, "on_off"

    invoke-virtual {v9, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 744
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 746
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionManager;->mNotificationMgr:Landroid/app/NotificationManager;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 740
    :cond_2
    const/4 v12, 0x0

    goto :goto_1

    .line 680
    nop

    :pswitch_data_0
    .packed-switch 0x68008
        :pswitch_0
    .end packed-switch
.end method

.method public isAllowRoaming()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 273
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "data_roaming"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 276
    :cond_0
    :goto_0
    return v1

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method public isDSPossible()Z
    .locals 4

    .prologue
    .line 766
    const/4 v0, 0x0

    .line 768
    .local v0, bRtn:Z
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionManager;->mPhoneMgr:Lcom/android/internal/telephony/ITelephony;

    if-eqz v1, :cond_0

    .line 770
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionManager;->mPhoneMgr:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isDataConnectivityPossible()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 774
    :cond_0
    :goto_0
    const-string v1, "LGE_DCM "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isDSPossible  bRtn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    return v0

    .line 771
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public openNetwork()I
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 321
    const/4 v3, 0x0

    .line 322
    .local v3, result:I
    const/4 v0, 0x0

    .line 324
    .local v0, close_network:Z
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionManager;->mPhoneMgr:Lcom/android/internal/telephony/ITelephony;

    if-eqz v4, :cond_2

    .line 326
    const/4 v2, 0x0

    .line 328
    .local v2, is_wifi_connected:Z
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionManager;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v4, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 329
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionManager;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v4, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    .line 331
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "data_network_wait_for_paypopup_response"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 333
    .local v1, is_waiting:I
    const-string v4, "LGE_DCM "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "openNetwork(), is_wifi_connected = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is_waiting = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionManager;->featureset:Ljava/lang/String;

    const-string v5, "KTBASE"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-ne v2, v7, :cond_1

    .line 337
    const-string v4, "LGE_DCM "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "openNetwork(), is_wifi_connected = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "... so just return..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "mobile_data"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 339
    const/4 v3, -0x1

    .line 348
    .end local v1           #is_waiting:I
    .end local v2           #is_wifi_connected:Z
    .end local v3           #result:I
    :goto_0
    return v3

    .line 343
    .restart local v1       #is_waiting:I
    .restart local v2       #is_wifi_connected:Z
    .restart local v3       #result:I
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionManager;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v4, v7}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 346
    .end local v1           #is_waiting:I
    .end local v2           #is_wifi_connected:Z
    :cond_2
    const-string v4, "LGE_DCM "

    const-string/jumbo v5, "openNetwork()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAlreadyAppUsedPacket(Z)V
    .locals 3
    .parameter "used"

    .prologue
    .line 420
    sput-boolean p1, Lcom/android/internal/telephony/DataConnectionManager;->alreadyAppUsedPacket:Z

    .line 421
    const-string v0, "LGE_DCM "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " <setAlreadyAppUsedPacket()> alreadyAppUsedPacket = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/telephony/DataConnectionManager;->alreadyAppUsedPacket:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    return-void
.end method

.method public setBlockPacketMenuProcess(Z)V
    .locals 3
    .parameter "block"

    .prologue
    .line 406
    sput-boolean p1, Lcom/android/internal/telephony/DataConnectionManager;->blockPacketMenuFlag:Z

    .line 407
    const-string v0, "LGE_DCM "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " <setBlockPacketMenuProcess()> blockPacketMenuFlag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/telephony/DataConnectionManager;->blockPacketMenuFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    return-void
.end method

.method public show_toast_data_disconnected()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 758
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    const v3, 0x1040507

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 759
    .local v0, toast:Landroid/widget/Toast;
    const/16 v1, 0x50

    invoke-virtual {v0, v1, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 760
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 761
    return-void
.end method

.method public show_toast_data_msg(I)V
    .locals 6
    .parameter "tag"

    .prologue
    const/4 v5, 0x0

    .line 626
    const-string v1, ""

    .line 627
    .local v1, toast_str:Ljava/lang/String;
    const-string v2, "LGE_DCM "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DS]show_toast_data_msg() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    packed-switch p1, :pswitch_data_0

    .line 637
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 638
    .local v0, toast:Landroid/widget/Toast;
    const/16 v2, 0x50

    invoke-virtual {v0, v2, v5, v5}, Landroid/widget/Toast;->setGravity(III)V

    .line 639
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 640
    return-void

    .line 630
    .end local v0           #toast:Landroid/widget/Toast;
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionManager;->mContext:Landroid/content/Context;

    const v3, 0x1040506

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 631
    goto :goto_0

    .line 628
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
