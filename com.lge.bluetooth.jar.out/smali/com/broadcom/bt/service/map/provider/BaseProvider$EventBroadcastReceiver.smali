.class Lcom/broadcom/bt/service/map/provider/BaseProvider$EventBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BaseProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/map/provider/BaseProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/map/provider/BaseProvider;


# direct methods
.method private constructor <init>(Lcom/broadcom/bt/service/map/provider/BaseProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider$EventBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/map/provider/BaseProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/broadcom/bt/service/map/provider/BaseProvider;Lcom/broadcom/bt/service/map/provider/BaseProvider$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/map/provider/BaseProvider$EventBroadcastReceiver;-><init>(Lcom/broadcom/bt/service/map/provider/BaseProvider;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 120
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, action:Ljava/lang/String;
    const-string v3, "com.broadcom.bt.service.map.DS_DISCOVER"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 123
    const-string v3, "MAP.BaseProvider"

    const-string v4, "Got DS Discover intent"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v3, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider$EventBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/map/provider/BaseProvider;

    invoke-virtual {v3, p2}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->onDSDiscoverEvent(Landroid/content/Intent;)V

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 127
    const-string v3, "android.bluetooth.adapter.extra.STATE"

    const/high16 v4, -0x8000

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 129
    .local v2, state:I
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 131
    :pswitch_0
    iget-object v3, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider$EventBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/map/provider/BaseProvider;

    #calls: Lcom/broadcom/bt/service/map/provider/BaseProvider;->onBluetoothEnable()V
    invoke-static {v3}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->access$000(Lcom/broadcom/bt/service/map/provider/BaseProvider;)V

    goto :goto_0

    .line 134
    :pswitch_1
    iget-object v3, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider$EventBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/map/provider/BaseProvider;

    #calls: Lcom/broadcom/bt/service/map/provider/BaseProvider;->onBluetoothDisable()V
    invoke-static {v3}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->access$100(Lcom/broadcom/bt/service/map/provider/BaseProvider;)V

    goto :goto_0

    .line 138
    .end local v2           #state:I
    :cond_2
    const-string v3, "com.broadcom.bt.service.map.DISCONNECT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 139
    const-string v3, "BDA"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, bda:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 141
    const-string v3, "MAP.BaseProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Disconnect intent - BDA = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v3, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider$EventBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/map/provider/BaseProvider;

    invoke-virtual {v3, v1}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->onDisconnect(Ljava/lang/String;)V

    goto :goto_0

    .line 146
    .end local v1           #bda:Ljava/lang/String;
    :cond_3
    const-string v3, "MAP.BaseProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Provider received unhandled event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 129
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
