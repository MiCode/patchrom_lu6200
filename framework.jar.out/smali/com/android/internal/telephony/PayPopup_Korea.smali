.class public Lcom/android/internal/telephony/PayPopup_Korea;
.super Landroid/os/Handler;
.source "PayPopup_Korea.java"


# static fields
.field public static final ALL_DATA_BLOCKED_SKT:I = 0x3

.field public static final DATA_DISABLE_WIFI_TO_3G_TRANSITION:I = 0xa

.field public static final DATA_ENABLE_WIFI_TO_3G_TRANSITION:I = 0x9

.field public static final DATA_NETWORK_USER_PAYPOPUP_RESPONSE:Ljava/lang/String; = "data_network_user_paypopup_response"

.field public static final DATA_NETWORK_USER_PAYPOPUP_TRANSITION_FROM_WIFI_TO_MOBILE:Ljava/lang/String; = "data_network_user_paypopup_transition_from_wifi_to_mobile"

.field public static final DATA_NETWORK_WAIT_FOR_PAYPOPUP_RESPONSE:Ljava/lang/String; = "data_network_wait_for_paypopup_response"

.field public static final DOMESTIC_DIALOG_LGT:I = 0x67

.field public static final DOMESTIC_DIALOG_SKT:I = 0x64

.field public static final DOMESTIC_ROAMING_DIALOG_KT:I = 0x66

.field private static final EVENT_RESTART_FOR_FAILSETUP_BOOT:I = 0xc9

.field private static final EVENT_START_CHARGING_POPUP:I = 0xc8

.field private static final EVENT_START_CHARGING_POPUP_ROAM:I = 0xca

.field private static final LOG_TAG:Ljava/lang/String; = "[LGE_PayPopUp_ko] "

.field public static final MOBILE_DATA_ALLOWED_LGT:I = 0x7

.field public static final MOBILE_DATA_ALLOWED_SKT:I = 0x1

.field public static final MOBILE_DATA_BLOCKED_LGT:I = 0x8

.field public static final MOBILE_DATA_BLOCKED_SKT:I = 0x2

.field public static final MOBILE_DATA_SET_BLOCKED_MMS_SKT:I = 0x6

.field private static final NETWORKOPEN_DELAY_TIMER:I = 0x3e8

.field private static final PAY_POPUP_IN_CASE_OF_BOOTING:Ljava/lang/String; = "booting"

.field private static final PAY_POPUP_IN_CASE_OF_NO_DISPLAY_POPUP:Ljava/lang/String; = "no_display_popup"

.field private static final PAY_POPUP_IN_CASE_OF_OTHERS:Ljava/lang/String; = "others"

.field private static final PAY_POPUP_IN_CASE_OF_WIFI_OFF:Ljava/lang/String; = "Wifi_off"

.field private static final PAY_POPUP_NOT_ALLOWED:I = 0x12e

.field private static final PAY_POPUP_OKAY:I = 0x12f

.field private static final PAY_POPUP_WAITING_FOR_USER_RESPONSE:I = 0x12d

.field public static final PREFERRED_DATA_NETWORK_MODE:Ljava/lang/String; = "preferred_data_network_mode"

.field public static final ROAMING_DIALOG_LGT:I = 0x68

.field public static final ROAMING_DIALOG_SKT:I = 0x65

.field public static final ROAM_MOBILE_DATA_ALLOWED_SKT:I = 0x4

.field public static final ROAM_MOBILE_DATA_BLOCKED_SKT:I = 0x5


# instance fields
.field public airplane_mode:I

.field featureset:Ljava/lang/String;

.field private global_new_mcc:Ljava/lang/String;

.field private global_old_mcc:Ljava/lang/String;

.field private mActiveDomesticPopup:Z

.field private mActiveRoamingPopup:Z

.field private mConnMgr:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDcMgr:Lcom/android/internal/telephony/DataConnectionManager;

.field private mDct:Lcom/android/internal/telephony/DataConnectionTracker;

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field public mIsok_bypass:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneMgr:Lcom/android/internal/telephony/ITelephony;

.field private mResolver:Landroid/content/ContentResolver;

.field private mbooting_phone:Z

.field private roam_to_domestic_popup_need:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/DataConnectionTracker;Lcom/android/internal/telephony/PhoneBase;)V
    .locals 4
    .parameter "dct"
    .parameter "p"

    .prologue
    const/4 v2, 0x0

    .line 273
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 96
    const-string v1, "000"

    iput-object v1, p0, Lcom/android/internal/telephony/PayPopup_Korea;->global_new_mcc:Ljava/lang/String;

    .line 97
    const-string v1, "000"

    iput-object v1, p0, Lcom/android/internal/telephony/PayPopup_Korea;->global_old_mcc:Ljava/lang/String;

    .line 98
    iput-boolean v2, p0, Lcom/android/internal/telephony/PayPopup_Korea;->roam_to_domestic_popup_need:Z

    .line 101
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/PayPopup_Korea;->airplane_mode:I

    .line 167
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mbooting_phone:Z

    .line 169
    iput-boolean v2, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mIsok_bypass:Z

    .line 171
    iput-boolean v2, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mActiveDomesticPopup:Z

    .line 172
    iput-boolean v2, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mActiveRoamingPopup:Z

    .line 174
    new-instance v1, Lcom/android/internal/telephony/PayPopup_Korea$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/PayPopup_Korea$1;-><init>(Lcom/android/internal/telephony/PayPopup_Korea;)V

    iput-object v1, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 274
    const-string v1, "[LGE_PayPopUp_ko] "

    const-string v2, "PayPopup_Korea() has created"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const-string/jumbo v1, "ro.afwdata.LGfeatureset"

    const-string/jumbo v2, "none"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/PayPopup_Korea;->featureset:Ljava/lang/String;

    .line 278
    iput-object p1, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 279
    iput-object p2, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 280
    const-string/jumbo v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhoneMgr:Lcom/android/internal/telephony/ITelephony;

    .line 281
    iget-object v1, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 283
    iget-object v1, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/DataConnectionManager;->getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/DataConnectionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mDcMgr:Lcom/android/internal/telephony/DataConnectionManager;

    .line 285
    iget-object v1, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mResolver:Landroid/content/ContentResolver;

    .line 287
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 290
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.STARTING_IN_DATA_SETTING_DISABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 291
    const-string v1, "android.net.conn.STARTING_IN_ROAM_SETTING_DISABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 292
    const-string v1, "android.net.conn.STARTING_IN_DATA_SETTING_DISABLE_3GONLY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 293
    const-string v1, "android.net.conn.DATA_DATA_BLOCK_IN_MMS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 295
    const-string/jumbo v1, "lge.intent.action.LGE_WIFI_3G_TRANSITION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 297
    iget-object v1, p0, Lcom/android/internal/telephony/PayPopup_Korea;->featureset:Ljava/lang/String;

    const-string v2, "LGTBASE"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    const-string v1, "android.intent.action.LGE_MCC_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 300
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 305
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 308
    return-void
.end method

.method private IsThereUsingNetwork()Z
    .locals 6

    .prologue
    .line 383
    const/4 v2, 0x0

    .line 385
    .local v2, ret_result:Z
    iget-object v3, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 387
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v3, v4, :cond_0

    .line 390
    const/4 v2, 0x1

    goto :goto_0

    .line 394
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_1
    const-string v3, "[LGE_PayPopUp_ko] "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IsThereTypeInUse() :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    return v2
.end method

.method private PayPopupforKT(Ljava/lang/String;)I
    .locals 10
    .parameter "reason"

    .prologue
    const/16 v4, 0x12f

    const/16 v3, 0x12d

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 737
    iget-boolean v5, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mbooting_phone:Z

    if-ne v5, v9, :cond_0

    .line 740
    iget-object v5, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "data_network_wait_for_paypopup_response"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 741
    iget-object v5, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "data_network_user_paypopup_response"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 744
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "data_network_wait_for_paypopup_response"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 745
    .local v1, is_waiting:I
    iget-object v5, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "data_network_user_paypopup_response"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 746
    .local v2, user_response:I
    iget-object v5, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "preferred_data_network_mode"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 748
    .local v0, ask_at_boot:I
    const-string v5, "[LGE_PayPopUp_ko] "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "trySetupData with reason = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    const-string v5, "[LGE_PayPopUp_ko] "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "trySetupData with is_waiting = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    const-string v5, "[LGE_PayPopUp_ko] "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "trySetupData with user_choice = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    const-string v5, "[LGE_PayPopUp_ko] "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "trySetupData with ask at boot ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    if-ne v1, v9, :cond_2

    .line 755
    if-nez v2, :cond_1

    .line 757
    const-string v4, "[LGE_PayPopUp_ko] "

    const-string v5, "PayPopupforKT is waiting for user response"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    :goto_0
    return v3

    .line 761
    :cond_1
    const/4 v5, 0x2

    if-ne v2, v5, :cond_2

    .line 763
    iget-object v3, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "data_network_wait_for_paypopup_response"

    invoke-static {v3, v5, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 764
    iget-object v3, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "data_network_user_paypopup_response"

    invoke-static {v3, v5, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 766
    const-string v3, "[LGE_PayPopUp_ko] "

    const-string v5, "PayPopupforKT is accpeted by user"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 768
    goto :goto_0

    .line 777
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v5

    if-ne v5, v9, :cond_4

    if-ne v0, v9, :cond_4

    const-string v5, "booting"

    if-eq p1, v5, :cond_3

    const-string v5, "Wifi_off"

    if-ne p1, v5, :cond_4

    .line 781
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iput-boolean v8, v4, Lcom/android/internal/telephony/DataConnectionTracker;->mUserDataEnabled:Z

    .line 782
    iget-object v4, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "mobile_data"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 784
    const/16 v4, 0x66

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/PayPopup_Korea;->showDialog(I)V

    .line 786
    iget-object v4, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "data_network_wait_for_paypopup_response"

    invoke-static {v4, v5, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 788
    const-string v4, "[LGE_PayPopUp_ko] "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DATA_NETWORK_WAIT_FOR_PAYPOPUP_RESPONSE : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "data_network_wait_for_paypopup_response"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    const-string v4, "[LGE_PayPopUp_ko] "

    const-string v5, "PayPopupforKT is asking for the response from use"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 794
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v3

    if-nez v3, :cond_5

    .line 795
    const/16 v3, 0x12e

    goto/16 :goto_0

    .line 797
    :cond_5
    const-string v3, "[LGE_PayPopUp_ko] "

    const-string v5, " PayPopup is just pass not asking "

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 799
    goto/16 :goto_0
.end method

.method private PayPopupforLGT(Ljava/lang/String;)I
    .locals 11
    .parameter "reason"

    .prologue
    const/4 v10, 0x7

    const/16 v3, 0x12d

    const/16 v4, 0x12f

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 804
    iget-boolean v5, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mbooting_phone:Z

    if-ne v5, v9, :cond_0

    .line 807
    iget-object v5, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "data_network_wait_for_paypopup_response"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 808
    iget-object v5, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "data_network_user_paypopup_response"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 815
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 817
    iget-boolean v5, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mActiveDomesticPopup:Z

    if-ne v5, v9, :cond_1

    .line 819
    iget-object v5, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "data_network_wait_for_paypopup_response"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 820
    iget-object v5, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "data_network_user_paypopup_response"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 821
    iput-boolean v8, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mActiveDomesticPopup:Z

    .line 837
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mDcMgr:Lcom/android/internal/telephony/DataConnectionManager;

    invoke-virtual {v5, v9}, Lcom/android/internal/telephony/DataConnectionManager;->getDataNetworkMode(Z)I

    move-result v1

    .line 838
    .local v1, mode:I
    iget-object v5, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "data_network_wait_for_paypopup_response"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 839
    .local v0, is_waiting:I
    iget-object v5, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "data_network_user_paypopup_response"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 841
    .local v2, user_response:I
    const-string v5, "[LGE_PayPopUp_ko] "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "trySetupData with mode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    const-string v5, "[LGE_PayPopUp_ko] "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "trySetupData with is_waiting="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    const-string v5, "[LGE_PayPopUp_ko] "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "trySetupData with user_choice="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    const-string v5, "[LGE_PayPopUp_ko] "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "trySetupData with booting="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mbooting_phone:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    if-ne v0, v9, :cond_4

    .line 849
    if-nez v2, :cond_3

    .line 851
    const-string v4, "[LGE_PayPopUp_ko] "

    const-string v5, "PayPopupforLGT is waiting for user response"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    :goto_1
    return v3

    .line 826
    .end local v0           #is_waiting:I
    .end local v1           #mode:I
    .end local v2           #user_response:I
    :cond_2
    iget-boolean v5, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mActiveRoamingPopup:Z

    if-ne v5, v9, :cond_1

    .line 828
    iget-object v5, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "data_network_wait_for_paypopup_response"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 829
    iget-object v5, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "data_network_user_paypopup_response"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 830
    iput-boolean v8, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mActiveRoamingPopup:Z

    goto/16 :goto_0

    .line 854
    .restart local v0       #is_waiting:I
    .restart local v1       #mode:I
    .restart local v2       #user_response:I
    :cond_3
    const/4 v5, 0x2

    if-ne v2, v5, :cond_4

    .line 856
    iget-object v3, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "data_network_wait_for_paypopup_response"

    invoke-static {v3, v5, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 857
    iget-object v3, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "data_network_user_paypopup_response"

    invoke-static {v3, v5, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 859
    const-string v3, "[LGE_PayPopUp_ko] "

    const-string v5, "PayPopupforLGT is accpeted by user"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 860
    goto :goto_1

    .line 868
    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 869
    const-string v5, "[LGE_PayPopUp_ko] "

    const-string v6, "abnormal case, it\'s ROAMING state"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    iget v5, p0, Lcom/android/internal/telephony/PayPopup_Korea;->airplane_mode:I

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mbooting_phone:Z

    if-ne v5, v9, :cond_6

    .line 874
    :cond_5
    const-string/jumbo v4, "net.Is_phone_booted"

    const-string v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/internal/telephony/PayPopup_Korea;->airplane_mode:I

    .line 876
    iget-object v4, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4, v8}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 878
    const/16 v4, 0x68

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/PayPopup_Korea;->showDialog(I)V

    .line 879
    iput-boolean v9, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mActiveRoamingPopup:Z

    .line 881
    iget-object v4, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "data_network_wait_for_paypopup_response"

    invoke-static {v4, v5, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 883
    const-string v4, "[LGE_PayPopUp_ko] "

    const-string/jumbo v5, "starting.. roaming query popup"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 889
    :cond_6
    const-string/jumbo v3, "net.Is_phone_booted"

    const-string v5, "false"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    const-string v3, "[LGE_PayPopUp_ko] "

    const-string v5, "RoamingPopup is not booting or ask at boot"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 893
    goto/16 :goto_1

    .line 907
    :cond_7
    const-string v5, "[LGE_PayPopUp_ko] "

    const-string/jumbo v6, "normal case, it\'s not roaming state"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    iget-boolean v5, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mbooting_phone:Z

    if-ne v5, v9, :cond_a

    .line 911
    iget-object v5, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mDcMgr:Lcom/android/internal/telephony/DataConnectionManager;

    const/4 v5, 0x3

    if-ne v1, v5, :cond_8

    .line 913
    const-string v4, "[LGE_PayPopUp_ko] "

    const-string v5, "1st boot case, and need to show pay popup !!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    const-string/jumbo v4, "net.Is_phone_booted"

    const-string v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    iget-object v4, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iput-boolean v8, v4, Lcom/android/internal/telephony/DataConnectionTracker;->mUserDataEnabled:Z

    .line 941
    iget-object v4, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "mobile_data"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 943
    const/16 v4, 0x67

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/PayPopup_Korea;->showDialog(I)V

    .line 944
    iput-boolean v9, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mActiveDomesticPopup:Z

    .line 946
    iget-object v4, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "data_network_wait_for_paypopup_response"

    invoke-static {v4, v5, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 948
    const-string v4, "[LGE_PayPopUp_ko] "

    const-string v5, "PayPopupforLGT is asking for the response from use"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 953
    :cond_8
    const-string/jumbo v3, "net.Is_phone_booted"

    const-string v5, "false"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    iget-object v3, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mDcMgr:Lcom/android/internal/telephony/DataConnectionManager;

    if-ne v1, v9, :cond_9

    .line 956
    const-string v3, "[LGE_PayPopUp_ko] "

    const-string v5, "1st boot case, and just showing data allowed toast"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/PayPopup_Korea;->showToast(I)V

    :goto_2
    move v3, v4

    .line 964
    goto/16 :goto_1

    .line 960
    :cond_9
    const-string v3, "[LGE_PayPopUp_ko] "

    const-string v5, "1st boot case, and just showing data blocked toast"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/PayPopup_Korea;->showToast(I)V

    goto :goto_2

    .line 970
    :cond_a
    const-string v3, "[LGE_PayPopUp_ko] "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[LGE_DATA_ROAMING] global_new_mcc="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/PayPopup_Korea;->global_new_mcc:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", roam_to_domestic_popup_need="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/telephony/PayPopup_Korea;->roam_to_domestic_popup_need:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    iget-object v3, p0, Lcom/android/internal/telephony/PayPopup_Korea;->global_new_mcc:Ljava/lang/String;

    const-string v5, "450"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Lcom/android/internal/telephony/PayPopup_Korea;->global_new_mcc:Ljava/lang/String;

    const-string v5, "000"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 973
    const-string v3, "[LGE_PayPopUp_ko] "

    const-string v4, "[LGE_DATA_ROAMING] payPopupforLGT is not booting, PAY_POPUP_NOT_ALLOWED before mcc_change from roam to domestic"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    iput-boolean v9, p0, Lcom/android/internal/telephony/PayPopup_Korea;->roam_to_domestic_popup_need:Z

    .line 975
    const/16 v3, 0x12e

    goto/16 :goto_1

    .line 978
    :cond_b
    const-string/jumbo v3, "net.Is_phone_booted"

    const-string v5, "false"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    const-string v3, "[LGE_PayPopUp_ko] "

    const-string v5, "PayPopupforLGT is not booting or ask at boot"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 981
    goto/16 :goto_1
.end method

.method private PayPopupforSKT(Ljava/lang/String;)I
    .locals 10
    .parameter "reason"

    .prologue
    const/16 v3, 0x12e

    const/16 v2, 0x12d

    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 617
    invoke-virtual {p0}, Lcom/android/internal/telephony/PayPopup_Korea;->getNetworkSvc()Z

    move-result v4

    if-nez v4, :cond_2

    .line 619
    iget-object v4, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 621
    const-string v3, "[LGE_PayPopUp_ko] "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PayPopupforSKT() : roaming = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    iget-boolean v3, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mbooting_phone:Z

    if-ne v3, v7, :cond_0

    .line 625
    const-string/jumbo v3, "net.Is_phone_booted"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    iget-object v3, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v3, v8}, Lcom/android/internal/telephony/DataConnectionTracker;->DataOnRoamingEnabled_OnlySel(Z)V

    .line 628
    const/16 v3, 0xca

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/PayPopup_Korea;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/internal/telephony/PayPopup_Korea;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 732
    :goto_0
    return v2

    .line 635
    :cond_0
    const-string v2, "[LGE_PayPopUp_ko] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PayPopupforSKT() : allows as roam toast : : reason =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    const-string/jumbo v2, "roamingOn"

    if-eq p1, v2, :cond_1

    const-string v2, "apnChanged"

    if-eq p1, v2, :cond_1

    const-string v2, "dataEnabled"

    if-ne p1, v2, :cond_2

    .line 642
    :cond_1
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/PayPopup_Korea;->showToast(I)V

    .line 732
    :cond_2
    :goto_1
    const/16 v2, 0x12f

    goto :goto_0

    .line 648
    :cond_3
    const-string v4, "[LGE_PayPopUp_ko] "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PayPopupforSKT() : mbooting_phone = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mbooting_phone:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    iget-boolean v4, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mbooting_phone:Z

    if-ne v4, v7, :cond_6

    .line 653
    const-string/jumbo v4, "net.Is_phone_booted"

    const-string v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    iget-object v4, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mDcMgr:Lcom/android/internal/telephony/DataConnectionManager;

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/DataConnectionManager;->getDataNetworkMode(Z)I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mDcMgr:Lcom/android/internal/telephony/DataConnectionManager;

    if-ne v4, v9, :cond_4

    .line 657
    const-string v3, "[LGE_PayPopUp_ko] "

    const-string v4, "DCM_MOBILE_NETWORK_IS_NEED_POPUP : mUserDataEnabled = false / MOBILE_DATA = false."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    iget-object v3, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iput-boolean v8, v3, Lcom/android/internal/telephony/DataConnectionTracker;->mUserDataEnabled:Z

    .line 660
    iget-object v3, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "mobile_data"

    invoke-static {v3, v4, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 662
    const/16 v3, 0xc8

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/PayPopup_Korea;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/internal/telephony/PayPopup_Korea;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 669
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v4, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/DataConnectionTracker;->changePreferrredNetworkMode(Z)V

    .line 670
    iget-object v2, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mDcMgr:Lcom/android/internal/telephony/DataConnectionManager;

    invoke-virtual {v2, v7}, Lcom/android/internal/telephony/DataConnectionManager;->getDataNetworkMode(Z)I

    move-result v2

    iget-object v4, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mDcMgr:Lcom/android/internal/telephony/DataConnectionManager;

    if-ne v2, v7, :cond_5

    .line 672
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/PayPopup_Korea;->showToast(I)V

    goto :goto_1

    .line 676
    :cond_5
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/PayPopup_Korea;->showToast(I)V

    move v2, v3

    .line 682
    goto/16 :goto_0

    .line 689
    :cond_6
    iget-object v2, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mDcMgr:Lcom/android/internal/telephony/DataConnectionManager;

    invoke-virtual {v2, v8}, Lcom/android/internal/telephony/DataConnectionManager;->getDataNetworkMode(Z)I

    move-result v2

    iget-object v4, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mDcMgr:Lcom/android/internal/telephony/DataConnectionManager;

    if-ne v2, v7, :cond_b

    .line 691
    const/4 v0, 0x0

    .line 694
    .local v0, IsMMS:Z
    iget-object v2, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionTracker;->getPreferredNetworkMode()I

    move-result v2

    if-eq v2, v9, :cond_7

    iget-object v2, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionTracker;->getPreferredNetworkMode()I

    move-result v2

    if-nez v2, :cond_8

    .line 697
    :cond_7
    iget-object v2, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v3, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->changePreferrredNetworkMode(Z)V

    .line 700
    :cond_8
    iget-object v2, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v4, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v3, v7}, Lcom/android/internal/telephony/DataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/ApnContext;

    .line 702
    .local v1, apnContext:Lcom/android/internal/telephony/ApnContext;
    if-eqz v1, :cond_9

    .line 704
    invoke-virtual {v1}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 706
    const/4 v0, 0x1

    .line 710
    :cond_9
    if-nez v0, :cond_2

    .line 713
    const-string v2, "[LGE_PayPopUp_ko] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PayPopupforSKT() : reason = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    const-string v2, "dataEnabled"

    if-eq p1, v2, :cond_a

    const-string v2, "apnChanged"

    if-ne p1, v2, :cond_2

    .line 718
    :cond_a
    const-string v2, "[LGE_PayPopUp_ko] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "show_allow_toast_pupop  :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/PayPopup_Korea;->showToast(I)V

    goto/16 :goto_1

    .end local v0           #IsMMS:Z
    .end local v1           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_b
    move v2, v3

    .line 726
    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/PayPopup_Korea;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/PayPopup_Korea;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/internal/telephony/PayPopup_Korea;->global_new_mcc:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/PayPopup_Korea;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/internal/telephony/PayPopup_Korea;->global_old_mcc:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/PayPopup_Korea;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/internal/telephony/PayPopup_Korea;->roam_to_domestic_popup_need:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/internal/telephony/PayPopup_Korea;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/android/internal/telephony/PayPopup_Korea;->roam_to_domestic_popup_need:Z

    return p1
.end method


# virtual methods
.method public getNetworkSvc()Z
    .locals 5

    .prologue
    .line 312
    const/4 v1, 0x0

    .line 314
    .local v1, in_prog_mms:Z
    iget-object v2, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v4, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mDct:Lcom/android/internal/telephony/DataConnectionTracker;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/DataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 316
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    if-eqz v0, :cond_0

    .line 318
    iget-object v2, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mDcMgr:Lcom/android/internal/telephony/DataConnectionManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/DataConnectionManager;->getDataNetworkMode(Z)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mDcMgr:Lcom/android/internal/telephony/DataConnectionManager;

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 321
    const/4 v1, 0x1

    .line 333
    :cond_0
    const-string v2, "[LGE_PayPopUp_ko] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNetworkSvc (mms) :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    return v1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 992
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1005
    :pswitch_0
    const-string v0, "[LGE_PayPopUp_ko] "

    const-string v1, "[handleMessage] default"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1009
    :goto_0
    return-void

    .line 996
    :pswitch_1
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PayPopup_Korea;->showDialog(I)V

    goto :goto_0

    .line 1001
    :pswitch_2
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/PayPopup_Korea;->showDialog(I)V

    goto :goto_0

    .line 992
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public isBlockNetConn()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 355
    const/16 v0, 0x20

    .line 357
    .local v0, LGE_EXCEPTION_NEED_OPENNING:I
    const/4 v1, 0x0

    .line 359
    .local v1, isBlock:Z
    const-string v2, "[LGE_PayPopUp_ko] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isBlockNetConn() : gsm.lge.ota_is_running = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "gsm.lge.ota_is_running"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const-string/jumbo v2, "gsm.lge.ota_is_running"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 363
    const/4 v1, 0x1

    .line 366
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/PayPopup_Korea;->featureset:Ljava/lang/String;

    const-string v3, "SKTBASE"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 368
    const-string v2, "[LGE_PayPopUp_ko] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SKT_OTA_USIM_DOWNLOAD = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "skt_ota_usim_download"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v2, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "skt_ota_usim_download"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 372
    const/4 v1, 0x1

    .line 376
    :cond_1
    return v1
.end method

.method public isBootReasonType(Ljava/lang/String;)Z
    .locals 4
    .parameter "reason"

    .prologue
    .line 340
    const/4 v0, 0x0

    .line 342
    .local v0, check_ok:Z
    const-string v1, "dataAttached"

    if-ne p1, v1, :cond_0

    .line 345
    const/4 v0, 0x1

    .line 348
    :cond_0
    const-string v1, "[LGE_PayPopUp_ko] "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isBootReasonType() : to ask popup = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    return v0
.end method

.method public isWhatKindofReason(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "reason"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 404
    iget-object v2, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "data_network_user_paypopup_transition_from_wifi_to_mobile"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 406
    .local v0, from_wifi_to_mobile:I
    const-string v2, "[LGE_PayPopUp_ko] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isWhatKindofReason() : mbooting_phone = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mbooting_phone:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/ from_wifi_to_mobile = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    const-string v2, "dataAttached"

    if-eq p1, v2, :cond_0

    const-string/jumbo v2, "simLoaded"

    if-ne p1, v2, :cond_1

    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mbooting_phone:Z

    if-ne v2, v5, :cond_1

    .line 413
    const-string v1, "booting"

    .line 430
    .local v1, ret_reason:Ljava/lang/String;
    :goto_0
    const-string v2, "[LGE_PayPopUp_ko] "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Original reason = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , LGE reason = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    return-object v1

    .line 415
    .end local v1           #ret_reason:Ljava/lang/String;
    :cond_1
    if-ne v0, v5, :cond_2

    .line 417
    const-string v1, "Wifi_off"

    .line 419
    .restart local v1       #ret_reason:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "data_network_user_paypopup_transition_from_wifi_to_mobile"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 421
    .end local v1           #ret_reason:Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/PayPopup_Korea;->IsThereUsingNetwork()Z

    move-result v2

    if-ne v2, v5, :cond_3

    .line 423
    const-string/jumbo v1, "no_display_popup"

    .restart local v1       #ret_reason:Ljava/lang/String;
    goto :goto_0

    .line 427
    .end local v1           #ret_reason:Ljava/lang/String;
    :cond_3
    const-string/jumbo v1, "others"

    .restart local v1       #ret_reason:Ljava/lang/String;
    goto :goto_0
.end method

.method public showDialog(I)V
    .locals 5
    .parameter "reason"

    .prologue
    const/4 v1, 0x1

    const/high16 v4, 0x1000

    .line 493
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 495
    .local v0, intent:Landroid/content/Intent;
    packed-switch p1, :pswitch_data_0

    .line 530
    const-string v1, "[LGE_PayPopUp_ko] "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The dialog doesn\'t exist for this reason : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :goto_0
    return-void

    .line 498
    :pswitch_0
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.lgesetting.wireless.DataEnabledSettingBootableSKT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 499
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 500
    iget-object v1, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 504
    :pswitch_1
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.lgesetting.wireless.DataRoamingSettingsBootableSKT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 505
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 506
    iget-object v1, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 510
    :pswitch_2
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.lgesetting.wireless.DataNetworkModePayPopupKT"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 511
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 513
    const-string/jumbo v2, "isRoaming"

    iget-object v3, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 514
    iget-object v1, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 513
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 518
    :pswitch_3
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.lgesetting.wireless.DataNetworkModePayPopupLGT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 519
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 520
    iget-object v1, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 524
    :pswitch_4
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.lgesetting.wireless.DataNetworkModeRoamingQueryPopupLGT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 525
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 526
    iget-object v1, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 495
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public showToast(I)V
    .locals 4
    .parameter "reason"

    .prologue
    .line 437
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "lge.intent.action.toast"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 439
    .local v0, intent:Landroid/content/Intent;
    packed-switch p1, :pswitch_data_0

    .line 482
    const-string v1, "[LGE_PayPopUp_ko] "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The toast doesn\'t exist for this reason : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :goto_0
    return-void

    .line 442
    :pswitch_0
    const-string/jumbo v1, "text"

    iget-object v2, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10404fc

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 486
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 446
    :pswitch_1
    const-string/jumbo v1, "text"

    iget-object v2, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1040500

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 450
    :pswitch_2
    const-string/jumbo v1, "text"

    iget-object v2, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10404ff

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 454
    :pswitch_3
    const-string/jumbo v1, "text"

    iget-object v2, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10404f7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 458
    :pswitch_4
    const-string/jumbo v1, "text"

    iget-object v2, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1040502

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 462
    :pswitch_5
    const-string/jumbo v1, "text"

    iget-object v2, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1040506

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 466
    :pswitch_6
    const-string/jumbo v1, "text"

    iget-object v2, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x104050f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 470
    :pswitch_7
    const-string/jumbo v1, "text"

    iget-object v2, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1040510

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 474
    :pswitch_8
    const-string/jumbo v1, "text"

    iget-object v2, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x104050d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 478
    :pswitch_9
    const-string/jumbo v1, "text"

    iget-object v2, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x104050e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 439
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public startPayPopup(Ljava/lang/String;)Z
    .locals 7
    .parameter "reason"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 541
    const/4 v1, 0x0

    .line 542
    .local v1, result:I
    const/4 v0, 0x0

    .line 545
    .local v0, WhichCase:Ljava/lang/String;
    const-string v4, "[LGE_PayPopUp_ko] "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "net.Is_phone_booted : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "net.Is_phone_booted"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    const-string/jumbo v4, "net.Is_phone_booted"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mbooting_phone:Z

    .line 549
    const-string v4, "[LGE_PayPopUp_ko] "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mbooting_phone : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mbooting_phone:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iget-object v4, p0, Lcom/android/internal/telephony/PayPopup_Korea;->featureset:Ljava/lang/String;

    const-string v5, "SKTBASE"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/PayPopup_Korea;->featureset:Ljava/lang/String;

    const-string v5, "KTBASE"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 553
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/PayPopup_Korea;->isBlockNetConn()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 555
    const-string v3, "[LGE_PayPopUp_ko] "

    const-string/jumbo v4, "isBlockNetConn = OTA"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    :cond_1
    :goto_0
    return v2

    .line 560
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/PayPopup_Korea;->isWhatKindofReason(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 562
    iget-boolean v4, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mbooting_phone:Z

    if-ne v4, v3, :cond_3

    .line 564
    const-string v4, "booting"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 566
    const-string v3, "[LGE_PayPopUp_ko] "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "check the booting case, mbooting_phone = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/PayPopup_Korea;->mbooting_phone:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " WhichCase = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 572
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/PayPopup_Korea;->featureset:Ljava/lang/String;

    const-string v5, "SKTBASE"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 574
    const-string/jumbo v4, "no_display_popup"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v3, :cond_4

    .line 576
    const-string v2, "[LGE_PayPopUp_ko] "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "##Return## Already connection WhichCase = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 577
    goto :goto_0

    .line 580
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PayPopup_Korea;->PayPopupforSKT(Ljava/lang/String;)I

    move-result v1

    .line 593
    :cond_5
    :goto_1
    const/16 v4, 0x12d

    if-eq v1, v4, :cond_1

    const/16 v4, 0x12e

    if-eq v1, v4, :cond_1

    move v2, v3

    .line 598
    goto :goto_0

    .line 582
    :cond_6
    iget-object v4, p0, Lcom/android/internal/telephony/PayPopup_Korea;->featureset:Ljava/lang/String;

    const-string v5, "KTBASE"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 584
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PayPopup_Korea;->PayPopupforKT(Ljava/lang/String;)I

    move-result v1

    .line 586
    const-string/jumbo v4, "net.Is_phone_booted"

    const-string v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 588
    :cond_7
    iget-object v4, p0, Lcom/android/internal/telephony/PayPopup_Korea;->featureset:Ljava/lang/String;

    const-string v5, "LGTBASE"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 590
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PayPopup_Korea;->PayPopupforLGT(Ljava/lang/String;)I

    move-result v1

    goto :goto_1
.end method
