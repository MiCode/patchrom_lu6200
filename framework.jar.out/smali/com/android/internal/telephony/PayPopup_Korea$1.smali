.class Lcom/android/internal/telephony/PayPopup_Korea$1;
.super Landroid/content/BroadcastReceiver;
.source "PayPopup_Korea.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/PayPopup_Korea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/PayPopup_Korea;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/PayPopup_Korea;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 179
    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, action:Ljava/lang/String;
    const-string v6, "[LGE_PayPopUp_ko] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "intent received :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const-string v6, "android.net.conn.STARTING_IN_DATA_SETTING_DISABLE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 186
    const-string v4, "[LGE_PayPopUp_ko] "

    const-string v5, "ACTION_STARTING_IN_DATA_SETTING_DISABLE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v4, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/PayPopup_Korea;->showToast(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 189
    :cond_1
    :try_start_1
    const-string v6, "android.net.conn.STARTING_IN_ROAM_SETTING_DISABLE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 191
    const-string v4, "[LGE_PayPopUp_ko] "

    const-string v5, "ACTION_STARTING_IN_ROAM_SETTING_DISABLE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v4, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/PayPopup_Korea;->showToast(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 179
    .end local v0           #action:Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 194
    .restart local v0       #action:Ljava/lang/String;
    :cond_2
    :try_start_2
    const-string v6, "android.net.conn.STARTING_IN_DATA_SETTING_DISABLE_3GONLY"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 196
    const-string v4, "[LGE_PayPopUp_ko] "

    const-string v5, "ACTION_STARTING_IN_DATA_SETTING_DISABLE_3GONLY"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v4, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/PayPopup_Korea;->showToast(I)V

    goto :goto_0

    .line 199
    :cond_3
    const-string v6, "android.net.conn.DATA_DATA_BLOCK_IN_MMS"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 201
    const-string v4, "[LGE_PayPopUp_ko] "

    const-string v5, "(mbooting :FALSE) ACTION_DATA_BLOCK_IN_MMS "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v4, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/PayPopup_Korea;->showToast(I)V

    goto :goto_0

    .line 205
    :cond_4
    const-string/jumbo v6, "lge.intent.action.LGE_WIFI_3G_TRANSITION"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 207
    const-string v5, "[LGE_PayPopUp_ko] "

    const-string/jumbo v6, "lge.intent.action.LGE_WIFI_3G_TRANSITION"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v5, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    #getter for: Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v5}, Lcom/android/internal/telephony/PayPopup_Korea;->access$000(Lcom/android/internal/telephony/PayPopup_Korea;)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "mobile_data"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v4, :cond_5

    .line 212
    const-string v4, "[LGE_PayPopUp_ko] "

    const-string v5, "[LGE_DATA] WiFi Off / data enable"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v4, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/PayPopup_Korea;->showToast(I)V

    .line 216
    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    #getter for: Lcom/android/internal/telephony/PayPopup_Korea;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v4}, Lcom/android/internal/telephony/PayPopup_Korea;->access$000(Lcom/android/internal/telephony/PayPopup_Korea;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "mobile_data"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    .line 218
    const-string v4, "[LGE_PayPopUp_ko] "

    const-string v5, "[LGE_DATA] WiFi Off / data disable"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v4, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/PayPopup_Korea;->showToast(I)V

    goto/16 :goto_0

    .line 224
    :cond_6
    const-string v6, "android.intent.action.LGE_MCC_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 226
    const-string v2, "000"

    .line 227
    .local v2, new_mcc:Ljava/lang/String;
    const-string v3, "000"

    .line 229
    .local v3, old_mcc:Ljava/lang/String;
    const-string v4, "[LGE_PayPopUp_ko] "

    const-string v5, "[LGE_DATA_ROAMING] Got TelephonyIntents.ACTION_MCC_CHANGE "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const-string/jumbo v4, "newmcc"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 232
    const-string/jumbo v4, "oldmcc"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 234
    const-string v4, "[LGE_PayPopUp_ko] "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[LGE_DATA_ROAMING] old_mcc:  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", new_mcc:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    if-eqz v3, :cond_7

    if-nez v2, :cond_8

    .line 237
    :cond_7
    const-string v4, "[LGE_PayPopUp_ko] "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "old_mcc:  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", new_mcc:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 239
    :cond_8
    const-string v4, "450"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "450"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 241
    const-string v4, "[LGE_PayPopUp_ko] "

    const-string v5, "[LGE_DATA_ROAMING] Roaming popup OK"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const-string/jumbo v4, "net.Is_phone_booted"

    const-string/jumbo v5, "true"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v4, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    #setter for: Lcom/android/internal/telephony/PayPopup_Korea;->global_new_mcc:Ljava/lang/String;
    invoke-static {v4, v2}, Lcom/android/internal/telephony/PayPopup_Korea;->access$102(Lcom/android/internal/telephony/PayPopup_Korea;Ljava/lang/String;)Ljava/lang/String;

    .line 244
    iget-object v4, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    #setter for: Lcom/android/internal/telephony/PayPopup_Korea;->global_old_mcc:Ljava/lang/String;
    invoke-static {v4, v3}, Lcom/android/internal/telephony/PayPopup_Korea;->access$202(Lcom/android/internal/telephony/PayPopup_Korea;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 246
    :cond_9
    const-string v4, "450"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "450"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 248
    const-string v4, "[LGE_PayPopUp_ko] "

    const-string v5, "[LGE_DATA_ROAMING] Domestic popup OK"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const-string/jumbo v4, "net.Is_phone_booted"

    const-string/jumbo v5, "true"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v4, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    #setter for: Lcom/android/internal/telephony/PayPopup_Korea;->global_new_mcc:Ljava/lang/String;
    invoke-static {v4, v2}, Lcom/android/internal/telephony/PayPopup_Korea;->access$102(Lcom/android/internal/telephony/PayPopup_Korea;Ljava/lang/String;)Ljava/lang/String;

    .line 251
    iget-object v4, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    #setter for: Lcom/android/internal/telephony/PayPopup_Korea;->global_old_mcc:Ljava/lang/String;
    invoke-static {v4, v3}, Lcom/android/internal/telephony/PayPopup_Korea;->access$202(Lcom/android/internal/telephony/PayPopup_Korea;Ljava/lang/String;)Ljava/lang/String;

    .line 253
    const-string v4, "[LGE_PayPopUp_ko] "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[LGE_DATA_ROAMING] roam_to_domestic_popup_need="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    #getter for: Lcom/android/internal/telephony/PayPopup_Korea;->roam_to_domestic_popup_need:Z
    invoke-static {v6}, Lcom/android/internal/telephony/PayPopup_Korea;->access$300(Lcom/android/internal/telephony/PayPopup_Korea;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v4, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    #getter for: Lcom/android/internal/telephony/PayPopup_Korea;->roam_to_domestic_popup_need:Z
    invoke-static {v4}, Lcom/android/internal/telephony/PayPopup_Korea;->access$300(Lcom/android/internal/telephony/PayPopup_Korea;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 256
    const-string v4, "[LGE_PayPopUp_ko] "

    const-string/jumbo v5, "roam_to_domesic : mcc_change"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v4, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    const-string/jumbo v5, "roam_to_domesic"

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/PayPopup_Korea;->startPayPopup(Ljava/lang/String;)Z

    .line 258
    iget-object v4, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    const/4 v5, 0x0

    #setter for: Lcom/android/internal/telephony/PayPopup_Korea;->roam_to_domestic_popup_need:Z
    invoke-static {v4, v5}, Lcom/android/internal/telephony/PayPopup_Korea;->access$302(Lcom/android/internal/telephony/PayPopup_Korea;Z)Z

    goto/16 :goto_0

    .line 264
    .end local v2           #new_mcc:Ljava/lang/String;
    .end local v3           #old_mcc:Ljava/lang/String;
    :cond_a
    const-string v6, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 265
    const-string/jumbo v6, "state"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 266
    .local v1, enabled:Z
    iget-object v6, p0, Lcom/android/internal/telephony/PayPopup_Korea$1;->this$0:Lcom/android/internal/telephony/PayPopup_Korea;

    if-eqz v1, :cond_b

    :goto_1
    iput v4, v6, Lcom/android/internal/telephony/PayPopup_Korea;->airplane_mode:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :cond_b
    move v4, v5

    goto :goto_1
.end method
