.class public Lcom/broadcom/bt/app/opp/server/ServerHandlerFactory;
.super Ljava/lang/Object;
.source "ServerHandlerFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getHandler(Lcom/broadcom/bt/app/opp/server/OPPServerService;Lcom/broadcom/bt/app/opp/data/Job;)Lcom/broadcom/bt/app/opp/server/BaseServerHandler;
    .locals 4
    .parameter "svc"
    .parameter "request"

    .prologue
    .line 27
    iget v2, p1, Lcom/broadcom/bt/app/opp/data/Job;->mRequestType:I

    .line 28
    .local v2, receivedOperation:I
    iget-object v3, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMimetype:Ljava/lang/String;

    invoke-static {v3}, Lcom/broadcom/bt/app/opp/util/Utils;->getObjectTypeFromMimeType(Ljava/lang/String;)I

    move-result v1

    .line 29
    .local v1, receivedObjectType:I
    const/4 v0, 0x0

    .line 31
    .local v0, h:Lcom/broadcom/bt/app/opp/server/BaseServerHandler;
    packed-switch v2, :pswitch_data_0

    .line 58
    :goto_0
    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0, p0, p1}, Lcom/broadcom/bt/app/opp/server/BaseServerHandler;->init(Lcom/broadcom/bt/app/opp/util/BaseService;Lcom/broadcom/bt/app/opp/data/Job;)V

    .line 61
    :cond_0
    return-object v0

    .line 33
    :pswitch_0
    packed-switch v1, :pswitch_data_1

    .line 44
    :pswitch_1
    new-instance v0, Lcom/broadcom/bt/app/opp/server/PushServerHandler;

    .end local v0           #h:Lcom/broadcom/bt/app/opp/server/BaseServerHandler;
    invoke-direct {v0}, Lcom/broadcom/bt/app/opp/server/PushServerHandler;-><init>()V

    .line 45
    .restart local v0       #h:Lcom/broadcom/bt/app/opp/server/BaseServerHandler;
    goto :goto_0

    .line 35
    :pswitch_2
    new-instance v0, Lcom/broadcom/bt/app/opp/server/VCardPushServerHandler;

    .end local v0           #h:Lcom/broadcom/bt/app/opp/server/BaseServerHandler;
    invoke-direct {v0}, Lcom/broadcom/bt/app/opp/server/VCardPushServerHandler;-><init>()V

    .line 36
    .restart local v0       #h:Lcom/broadcom/bt/app/opp/server/BaseServerHandler;
    goto :goto_0

    .line 38
    :pswitch_3
    new-instance v0, Lcom/broadcom/bt/app/opp/server/VCalPushServerHandler;

    .end local v0           #h:Lcom/broadcom/bt/app/opp/server/BaseServerHandler;
    invoke-direct {v0}, Lcom/broadcom/bt/app/opp/server/VCalPushServerHandler;-><init>()V

    .line 39
    .restart local v0       #h:Lcom/broadcom/bt/app/opp/server/BaseServerHandler;
    goto :goto_0

    .line 41
    :pswitch_4
    new-instance v0, Lcom/broadcom/bt/app/opp/server/PushServerHandler;

    .end local v0           #h:Lcom/broadcom/bt/app/opp/server/BaseServerHandler;
    invoke-direct {v0}, Lcom/broadcom/bt/app/opp/server/PushServerHandler;-><init>()V

    .line 42
    .restart local v0       #h:Lcom/broadcom/bt/app/opp/server/BaseServerHandler;
    goto :goto_0

    .line 50
    :pswitch_5
    packed-switch v1, :pswitch_data_2

    goto :goto_0

    .line 52
    :pswitch_6
    new-instance v0, Lcom/broadcom/bt/app/opp/server/VCardPullServerHandler;

    .end local v0           #h:Lcom/broadcom/bt/app/opp/server/BaseServerHandler;
    invoke-direct {v0}, Lcom/broadcom/bt/app/opp/server/VCardPullServerHandler;-><init>()V

    .restart local v0       #h:Lcom/broadcom/bt/app/opp/server/BaseServerHandler;
    goto :goto_0

    .line 31
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 33
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 50
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
