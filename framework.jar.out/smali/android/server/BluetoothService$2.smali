.class Landroid/server/BluetoothService$2;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothService;


# direct methods
.method constructor <init>(Landroid/server/BluetoothService;)V
    .locals 0
    .parameter

    .prologue
    .line 2138
    iput-object p1, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 19
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2141
    if-nez p2, :cond_1

    .line 2301
    :cond_0
    :goto_0
    return-void

    .line 2143
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 2144
    .local v2, action:Ljava/lang/String;
    const-string v14, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 2146
    const-string/jumbo v1, "persist.service.btui.sig"

    .line 2147
    .local v1, PROPERTY_BTUI_SIG:Ljava/lang/String;
    const-string v14, "0"

    invoke-static {v1, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "1"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 2149
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 2152
    .local v11, resolver:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #calls: Landroid/server/BluetoothService;->isAirplaneModeOn()Z
    invoke-static {v14}, Landroid/server/BluetoothService;->access$900(Landroid/server/BluetoothService;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 2153
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;
    invoke-static {v14}, Landroid/server/BluetoothService;->access$1000(Landroid/server/BluetoothService;)Landroid/server/BluetoothAdapterStateMachine;

    move-result-object v14

    const/16 v15, 0x37

    invoke-virtual {v14, v15}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 2155
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;
    invoke-static {v14}, Landroid/server/BluetoothService;->access$1000(Landroid/server/BluetoothService;)Landroid/server/BluetoothAdapterStateMachine;

    move-result-object v14

    const/16 v15, 0x38

    invoke-virtual {v14, v15}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 2158
    .end local v1           #PROPERTY_BTUI_SIG:Ljava/lang/String;
    .end local v11           #resolver:Landroid/content/ContentResolver;
    :cond_3
    const-string v14, "com.android.settings.powersave.POWERSAVE_ACTIVATION_TO_OTHERS"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 2159
    const-string/jumbo v14, "powersave_activation"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 2160
    .local v5, doActivation:I
    const-string/jumbo v14, "powersave_name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2161
    .local v9, name:Ljava/lang/String;
    if-eqz v9, :cond_0

    const-string/jumbo v14, "power_save_bt"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 2163
    if-lez v5, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mAclLinkCount:I
    invoke-static {v14}, Landroid/server/BluetoothService;->access$1100(Landroid/server/BluetoothService;)I

    move-result v14

    const/4 v15, 0x1

    if-ge v14, v15, :cond_4

    .line 2164
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;
    invoke-static {v14}, Landroid/server/BluetoothService;->access$1000(Landroid/server/BluetoothService;)Landroid/server/BluetoothAdapterStateMachine;

    move-result-object v14

    const/16 v15, 0x3a

    invoke-virtual {v14, v15}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 2165
    :cond_4
    const/4 v14, 0x1

    if-ge v5, v14, :cond_0

    .line 2166
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;
    invoke-static {v14}, Landroid/server/BluetoothService;->access$1000(Landroid/server/BluetoothService;)Landroid/server/BluetoothAdapterStateMachine;

    move-result-object v14

    const/16 v15, 0x3b

    invoke-virtual {v14, v15}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 2169
    .end local v5           #doActivation:I
    .end local v9           #name:Ljava/lang/String;
    :cond_5
    const-string v14, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 2170
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-static {v14}, Landroid/server/BluetoothService;->access$1108(Landroid/server/BluetoothService;)I

    goto/16 :goto_0

    .line 2171
    :cond_6
    const-string v14, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 2172
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-static {v14}, Landroid/server/BluetoothService;->access$1110(Landroid/server/BluetoothService;)I

    goto/16 :goto_0

    .line 2174
    :cond_7
    const-string v14, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 2175
    const-string v14, "android.intent.extra.DOCK_STATE"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 2177
    .local v13, state:I
    const-string v14, "BluetoothService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Received ACTION_DOCK_EVENT with State:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2178
    if-nez v13, :cond_8

    .line 2179
    const/4 v14, 0x0

    invoke-static {v14}, Landroid/server/BluetoothService;->access$1202(Ljava/lang/String;)Ljava/lang/String;

    .line 2180
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    const/4 v15, 0x0

    #setter for: Landroid/server/BluetoothService;->mDockPin:Ljava/lang/String;
    invoke-static {v14, v15}, Landroid/server/BluetoothService;->access$1302(Landroid/server/BluetoothService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 2182
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mContext:Landroid/content/Context;
    invoke-static {v14}, Landroid/server/BluetoothService;->access$200(Landroid/server/BluetoothService;)Landroid/content/Context;

    move-result-object v14

    const-string v15, "bluetooth_service_settings"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object/from16 v16, v0

    #getter for: Landroid/server/BluetoothService;->mContext:Landroid/content/Context;
    invoke-static/range {v16 .. v16}, Landroid/server/BluetoothService;->access$200(Landroid/server/BluetoothService;)Landroid/content/Context;

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 2185
    .local v7, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "dock_bluetooth_address"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Landroid/server/BluetoothService;->access$1200()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-interface {v7, v14, v15}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2186
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 2190
    .end local v7           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v13           #state:I
    :cond_9
    const-string v14, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 2193
    const-string v14, "BluetoothService"

    const-string v15, " Received BOOT_COMPLETED message"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2194
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v14}, Landroid/server/BluetoothService;->access$400(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v15}, Landroid/server/BluetoothService;->access$400(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v15

    const/16 v16, 0x4

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    const-wide/16 v16, 0x1388

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 2196
    :cond_a
    const-string v14, "broadcom.android.bluetooth.intent.action.CALL_STATE_CHANGED"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 2198
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 2199
    .local v8, extras:Landroid/os/Bundle;
    const-string v14, "broadcom.android.bluetooth.intent.CALL_STATE"

    const/4 v15, 0x0

    invoke-virtual {v8, v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 2200
    .restart local v13       #state:I
    const-string v14, "BluetoothService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Got Call State change - new call state = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2201
    const-string/jumbo v15, "service.brcm.bt.call_active"

    const/4 v14, 0x1

    if-ne v13, v14, :cond_b

    const-string v14, "1"

    :goto_1
    invoke-static {v15, v14}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2203
    if-nez v13, :cond_c

    .line 2204
    const-string v14, "BluetoothService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Re-enable AVRCP PassThru handling at the end of call (5 seconds delay). state: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v14}, Landroid/server/BluetoothService;->access$400(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v14

    const/4 v15, 0x5

    invoke-virtual {v14, v15}, Landroid/os/Handler;->removeMessages(I)V

    .line 2206
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v14}, Landroid/server/BluetoothService;->access$400(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v15}, Landroid/server/BluetoothService;->access$400(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v15

    const/16 v16, 0x5

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    const-wide/16 v16, 0x1388

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2213
    .end local v8           #extras:Landroid/os/Bundle;
    .end local v13           #state:I
    :catch_0
    move-exception v6

    .local v6, e:Ljava/lang/Exception;
    const-string v14, "BluetoothService"

    const-string v15, ""

    invoke-static {v14, v15, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 2201
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v8       #extras:Landroid/os/Bundle;
    .restart local v13       #state:I
    :cond_b
    :try_start_1
    const-string v14, "0"

    goto :goto_1

    .line 2209
    :cond_c
    const-string v14, "BluetoothService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Disabling AVRCP PassThru handling for the call duration, state: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2210
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v14}, Landroid/server/BluetoothService;->access$400(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v14

    const/4 v15, 0x5

    invoke-virtual {v14, v15}, Landroid/os/Handler;->removeMessages(I)V

    .line 2211
    const-string/jumbo v14, "service.brcm.bt.avrcp_pass_thru"

    const-string v15, "0"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 2217
    .end local v8           #extras:Landroid/os/Bundle;
    .end local v13           #state:I
    :cond_d
    const-string v14, "android.server.BluetoothService.action.DISCOVERABLE_TIMEOUT"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 2218
    const-string v14, "BluetoothService"

    const-string v15, "ACTION_DISCOVERABLE_TIMEOUT"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2219
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v14}, Landroid/server/BluetoothService;->access$400(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v14

    const/4 v15, 0x6

    invoke-virtual {v14, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 2246
    :cond_e
    const-string v14, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 2248
    :try_start_2
    const-string v14, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 2249
    .local v4, device:Landroid/bluetooth/BluetoothDevice;
    const-string v14, "android.bluetooth.profile.extra.STATE"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 2250
    .restart local v13       #state:I
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    const/4 v14, 0x2

    if-ne v13, v14, :cond_f

    move-object v14, v4

    :goto_2
    #setter for: Landroid/server/BluetoothService;->mConnectedDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v15, v14}, Landroid/server/BluetoothService;->access$1402(Landroid/server/BluetoothService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 2251
    if-nez v13, :cond_0

    .line 2252
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mWaitDisconnect:Z
    invoke-static {v14}, Landroid/server/BluetoothService;->access$1500(Landroid/server/BluetoothService;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 2253
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    const/4 v15, 0x0

    #setter for: Landroid/server/BluetoothService;->mWaitDisconnect:Z
    invoke-static {v14, v15}, Landroid/server/BluetoothService;->access$1502(Landroid/server/BluetoothService;Z)Z

    .line 2254
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/server/BluetoothService;->removeBond(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 2257
    .end local v4           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v13           #state:I
    :catch_1
    move-exception v6

    .restart local v6       #e:Ljava/lang/Exception;
    const-string v14, "BluetoothService"

    const-string v15, ""

    invoke-static {v14, v15, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 2250
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v4       #device:Landroid/bluetooth/BluetoothDevice;
    .restart local v13       #state:I
    :cond_f
    const/4 v14, 0x0

    goto :goto_2

    .line 2259
    .end local v4           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v13           #state:I
    :cond_10
    const-string v14, "com.lge.bluetooth.hid.virtualUnplug"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 2260
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mConnectedDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v14}, Landroid/server/BluetoothService;->access$1400(Landroid/server/BluetoothService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v14

    if-eqz v14, :cond_0

    .line 2261
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mConnectedDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v15}, Landroid/server/BluetoothService;->access$1400(Landroid/server/BluetoothService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/server/BluetoothService;->virtualUnplugInputDevice(Landroid/bluetooth/BluetoothDevice;)Z

    .line 2262
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    const/4 v15, 0x1

    #setter for: Landroid/server/BluetoothService;->mWaitDisconnect:Z
    invoke-static {v14, v15}, Landroid/server/BluetoothService;->access$1502(Landroid/server/BluetoothService;Z)Z

    goto/16 :goto_0

    .line 2265
    :cond_11
    const-string v14, "com.lge.bluetooth.hid.sendData"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_12

    .line 2266
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mConnectedDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v14}, Landroid/server/BluetoothService;->access$1400(Landroid/server/BluetoothService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v14

    if-eqz v14, :cond_0

    .line 2267
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mConnectedDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v15}, Landroid/server/BluetoothService;->access$1400(Landroid/server/BluetoothService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v15

    const-string/jumbo v16, "sendData"

    invoke-virtual/range {v14 .. v16}, Landroid/server/BluetoothService;->sendDataInputDevice(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 2269
    :cond_12
    const-string v14, "com.lge.bluetooth.hid.getReport"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_13

    .line 2270
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mConnectedDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v14}, Landroid/server/BluetoothService;->access$1400(Landroid/server/BluetoothService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v14

    if-eqz v14, :cond_0

    .line 2271
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mConnectedDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v15}, Landroid/server/BluetoothService;->access$1400(Landroid/server/BluetoothService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v15

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x64

    invoke-virtual/range {v14 .. v18}, Landroid/server/BluetoothService;->getReportInputDevice(Landroid/bluetooth/BluetoothDevice;BBI)Z

    goto/16 :goto_0

    .line 2273
    :cond_13
    const-string v14, "com.lge.bluetooth.hid.setReport"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_14

    .line 2274
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mConnectedDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v14}, Landroid/server/BluetoothService;->access$1400(Landroid/server/BluetoothService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v14

    if-eqz v14, :cond_0

    .line 2275
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mConnectedDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v15}, Landroid/server/BluetoothService;->access$1400(Landroid/server/BluetoothService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v15

    const/16 v16, 0x1

    const-string/jumbo v17, "setReport"

    invoke-virtual/range {v14 .. v17}, Landroid/server/BluetoothService;->setReportInputDevice(Landroid/bluetooth/BluetoothDevice;BLjava/lang/String;)Z

    goto/16 :goto_0

    .line 2279
    :cond_14
    const-string v14, "com.lge.bluetooth.headset.sendConnectionStateChange"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_15

    .line 2280
    const-string v14, "android.bluetooth.profile.extra.STATE"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 2281
    .restart local v13       #state:I
    const-string v14, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 2282
    .local v10, prevState:I
    const-string v14, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 2283
    .restart local v4       #device:Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    const/4 v15, 0x1

    invoke-virtual {v14, v4, v15, v13, v10}, Landroid/server/BluetoothService;->sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V

    goto/16 :goto_0

    .line 2288
    .end local v4           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v10           #prevState:I
    .end local v13           #state:I
    :cond_15
    const-string v14, "android.server.BluetoothService.write.bdaddr"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 2289
    const-string/jumbo v14, "ro.build.target_operator"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "LGU"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_16

    const-string/jumbo v14, "ro.build.target_operator"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "VZW"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 2292
    :cond_16
    const-string/jumbo v14, "write.bdaddr"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2293
    .local v3, bd_addr:Ljava/lang/String;
    const-string v14, ":"

    const-string v15, ""

    invoke-virtual {v3, v14, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2294
    .local v12, set_bd_addr:Ljava/lang/String;
    const-string v14, "BluetoothService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[BTUI] ### onReceive() : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " => SystemProperties.set ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2295
    const-string v14, "000000000000"

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-eqz v14, :cond_17

    .line 2296
    const-string/jumbo v14, "persist.service.brcm.bt.mac"

    invoke-static {v14, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2297
    :cond_17
    const/4 v14, 0x1

    invoke-static {v14}, Landroid/server/BluetoothService;->access$302(Z)Z

    goto/16 :goto_0
.end method
