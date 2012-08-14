.class Lcom/android/internal/policy/impl/KeyguardViewMediator$1;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
    .locals 0
    .parameter

    .prologue
    .line 956
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 959
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 961
    .local v0, action:Ljava/lang/String;
    const/4 v1, 0x0

    .line 962
    .local v1, isLockByAttachReject:Z
    sget-boolean v9, Lcom/lge/config/ConfigBuildFlags;->CAPP_LOCKSCREEN:Z

    if-eqz v9, :cond_0

    invoke-static {}, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->getInstance()Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 964
    invoke-static {}, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->getInstance()Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;

    move-result-object v9

    const-string v10, "config_feature_attach_reject_lgu"

    invoke-virtual {v9, v10}, Lcom/android/internal/policy/impl/LgeLockScreenPackageManager;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v1

    .line 969
    :cond_0
    const-string v9, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 971
    const-string v7, "seq"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 973
    .local v4, sequence:I
    const-string v7, "KeyguardViewMediator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "received DELAYED_KEYGUARD_ACTION with seq = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mDelayedShowingSequence = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mDelayedShowingSequence:I
    invoke-static {v9}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$000(Lcom/android/internal/policy/impl/KeyguardViewMediator;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    iget-object v8, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    monitor-enter v8

    .line 977
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mDelayedShowingSequence:I
    invoke-static {v7}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$000(Lcom/android/internal/policy/impl/KeyguardViewMediator;)I

    move-result v7

    if-ne v7, v4, :cond_1

    .line 980
    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    const/4 v9, 0x1

    #setter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mSuppressNextLockSound:Z
    invoke-static {v7, v9}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$102(Lcom/android/internal/policy/impl/KeyguardViewMediator;Z)Z

    .line 982
    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v7}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$200(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    .line 984
    :cond_1
    monitor-exit v8

    .line 1096
    .end local v4           #sequence:I
    :cond_2
    :goto_0
    return-void

    .line 984
    .restart local v4       #sequence:I
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 985
    .end local v4           #sequence:I
    :cond_3
    const-string v9, "android.intent.action.PHONE_STATE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 986
    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    const-string v8, "state"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    #setter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mPhoneState:Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$302(Lcom/android/internal/policy/impl/KeyguardViewMediator;Ljava/lang/String;)Ljava/lang/String;

    .line 988
    iget-object v8, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    monitor-enter v8

    .line 989
    :try_start_1
    sget-object v7, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mPhoneState:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$300(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mScreenOn:Z
    invoke-static {v7}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$400(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExternallyEnabled:Z
    invoke-static {v7}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$500(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 997
    const-string v7, "KeyguardViewMediator"

    const-string v9, "screen is off and call ended, let\'s make sure the keyguard is showing"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v7}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$200(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    .line 1001
    :cond_4
    monitor-exit v8

    goto :goto_0

    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v7

    .line 1004
    :cond_5
    const-string v9, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 1006
    const-string v9, "KeyguardViewMediator"

    const-string v10, "mBroadCastReceiver() intent.action : ACTION_SIM_STATE_CHANGED"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    const-string v9, "ss"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1009
    .local v6, stateExtra:Ljava/lang/String;
    const-string v9, "LOADED"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1010
    const-string v9, "KR"

    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$600()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    const-string v9, "SKT"

    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$700()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    const-string v9, "KT"

    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$700()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 1012
    :cond_6
    iget-object v9, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$800(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "usim_perso_locked"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v7, :cond_8

    move v2, v7

    .line 1013
    .local v2, locked:Z
    :goto_1
    if-eqz v2, :cond_b

    sget-object v9, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUsimPersoFinishState:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$UsimPersoFinishState;

    sget-object v10, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$UsimPersoFinishState;->USIM_PERSO_FINISH_LOCK:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$UsimPersoFinishState;

    if-eq v9, v10, :cond_b

    .line 1015
    iget-object v9, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->isMatchedIMSI()Z
    invoke-static {v9}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$900(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 1018
    const-string v9, "KeyguardViewMediator"

    const-string v10, "[SKT OTA] isMatchedIMSI() : doKeyguardLocked()"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    iget-object v9, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v9}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$200(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    .line 1054
    .end local v2           #locked:Z
    :cond_7
    :goto_2
    const-string v9, "LOCKED"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "NOT_READY"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1055
    const-string v9, "KR"

    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$600()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "SKT"

    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$700()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1056
    iget-object v9, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$800(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "skt_ota_usim_download"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-lez v8, :cond_2

    .line 1057
    iget-object v8, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->usimPersoBeforeSKTOTA()Z
    invoke-static {v8}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1400(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Z

    move-result v8

    if-ne v8, v7, :cond_e

    .line 1059
    const-string v7, "KeyguardViewMediator"

    const-string v8, "[usimPersoBeforeSKTOTA()] return;"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    move v2, v8

    .line 1012
    goto :goto_1

    .line 1021
    .restart local v2       #locked:Z
    :cond_9
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.SIM_UNLOCKED"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1022
    .local v5, simUnlockIntent:Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$800(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1024
    iget-object v9, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$800(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "skt_ota_usim_download"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-lez v9, :cond_a

    .line 1026
    const-string v9, "KeyguardViewMediator"

    const-string v10, "[SKT OTA] directly run : Normal USIM_PERSO_FINISH_LOCK"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    iget-object v9, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->startSKTOTA()V
    invoke-static {v9}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1000(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto :goto_2

    .line 1028
    :cond_a
    iget-object v9, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v9}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1100(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isKTUSIMRegiRequires()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1030
    const-string v9, "KeyguardViewMediator"

    const-string v10, "[KTF OTA] : call KTNoUSIMActivityForLockScreen.java"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    iget-object v9, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->startKTFOTA()V
    invoke-static {v9}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1200(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto/16 :goto_2

    .line 1035
    .end local v5           #simUnlockIntent:Landroid/content/Intent;
    :cond_b
    iget-object v9, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$800(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "skt_ota_usim_download"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-lez v9, :cond_c

    .line 1037
    const-string v9, "KeyguardViewMediator"

    const-string v10, "[SKT OTA] directly run : Normal"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    iget-object v9, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->startSKTOTA()V
    invoke-static {v9}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1000(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto/16 :goto_2

    .line 1039
    :cond_c
    iget-object v9, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v9}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1100(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isKTUSIMRegiRequires()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1041
    const-string v9, "KeyguardViewMediator"

    const-string v10, "[KTF OTA] : call KTNoUSIMActivityForLockScreen.java"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    iget-object v9, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->startKTFOTA()V
    invoke-static {v9}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1200(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto/16 :goto_2

    .line 1045
    .end local v2           #locked:Z
    :cond_d
    const-string v9, "KR"

    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$600()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    const-string v9, "LGU"

    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$700()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1046
    iget-object v9, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v9}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1100(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isLGTUSIMRegiRequires()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1048
    const-string v9, "KeyguardViewMediator"

    const-string v10, "[LGU+ OTA] : call LGTNoUSIMActivityForLockScreen.java"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    iget-object v9, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->startLGUOTA()V
    invoke-static {v9}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1300(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto/16 :goto_2

    .line 1063
    :cond_e
    const-string v7, "KeyguardViewMediator"

    const-string v8, "[OTA] directly run : Normal INTENT_VALUE_ICC_LOCKED and INTENT_VALUE_ICC_NOT_READY"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->startSKTOTA()V
    invoke-static {v7}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1000(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto/16 :goto_0

    .line 1071
    .end local v6           #stateExtra:Ljava/lang/String;
    :cond_f
    const-string v9, "com.lge.mdm.intent.action.EXPIRATION_PASSWORD_CHANGE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 1072
    const-string v7, "KeyguardViewMediator"

    const-string v8, "LGMDM : EXPIRATION_PASSWORD_CHANGE"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->notifyExpirePasswordReset()V
    invoke-static {v7}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1500(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto/16 :goto_0

    .line 1074
    :cond_10
    const-string v9, "com.android.server.ACTION_EXPIRED_PASSWORD_NOTIFICATION"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 1075
    const-string v7, "KeyguardViewMediator"

    const-string v8, "LGMDM : EXPIRED_PASSWORD_NOTIFICATION"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mSender:Landroid/app/PendingIntent;
    invoke-static {v7}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1600(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Landroid/app/PendingIntent;

    move-result-object v7

    if-eqz v7, :cond_11

    .line 1078
    const-string v7, "KeyguardViewMediator"

    const-string v8, "LGMDM : cancle timer"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v7}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1700(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Landroid/app/AlarmManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mSender:Landroid/app/PendingIntent;
    invoke-static {v8}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1600(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1081
    :cond_11
    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v7}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$200(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto/16 :goto_0

    .line 1085
    :cond_12
    const-string v9, "android.intent.action.LTE_EMM_REJECT"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1086
    if-eqz v1, :cond_2

    .line 1087
    const-string v9, "KeyguardViewMediator"

    const-string v10, "######### lock the screen by reject code(6)"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    const-string v9, "rejectCode"

    invoke-virtual {p2, v9, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1089
    .local v3, mRejectNum:I
    const/4 v8, 0x5

    if-eq v3, v8, :cond_13

    const/4 v8, 0x6

    if-ne v3, v8, :cond_2

    .line 1090
    :cond_13
    iget-object v8, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #setter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mIsRejectCode:Z
    invoke-static {v8, v7}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1802(Lcom/android/internal/policy/impl/KeyguardViewMediator;Z)Z

    .line 1091
    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->showLocked()V
    invoke-static {v7}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1900(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto/16 :goto_0
.end method
