.class Lcom/broadcom/bt/app/opp/server/VCalPushServerHandler$1;
.super Ljava/lang/Object;
.source "VCalPushServerHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/broadcom/bt/app/opp/server/VCalPushServerHandler;->processReceivedFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/app/opp/server/VCalPushServerHandler;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/app/opp/server/VCalPushServerHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/broadcom/bt/app/opp/server/VCalPushServerHandler$1;->this$0:Lcom/broadcom/bt/app/opp/server/VCalPushServerHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/server/VCalPushServerHandler$1;->this$0:Lcom/broadcom/bt/app/opp/server/VCalPushServerHandler;

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/server/VCalPushServerHandler$1;->this$0:Lcom/broadcom/bt/app/opp/server/VCalPushServerHandler;

    #getter for: Lcom/broadcom/bt/app/opp/util/BaseHandler;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;
    invoke-static {v1}, Lcom/broadcom/bt/app/opp/server/VCalPushServerHandler;->access$000(Lcom/broadcom/bt/app/opp/server/VCalPushServerHandler;)Lcom/broadcom/bt/app/opp/data/Job;

    move-result-object v1

    iget-object v1, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    #calls: Lcom/broadcom/bt/app/opp/server/VCalPushServerHandler;->processReceivedVCal(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/broadcom/bt/app/opp/server/VCalPushServerHandler;->access$100(Lcom/broadcom/bt/app/opp/server/VCalPushServerHandler;Ljava/lang/String;)V

    .line 62
    return-void
.end method
