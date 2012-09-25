.class Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity$1;
.super Ljava/lang/Object;
.source "DuplicateHandleActivity.java"

# interfaces
.implements Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->initializeProxy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity$1;->this$0:Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProxyAvailable(Ljava/lang/Object;)V
    .locals 2
    .parameter "proxyObject"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity$1;->this$0:Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;

    check-cast p1, Lcom/broadcom/bt/service/opp/BluetoothOPP;

    .end local p1
    #setter for: Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;
    invoke-static {v0, p1}, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->access$002(Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;Lcom/broadcom/bt/service/opp/BluetoothOPP;)Lcom/broadcom/bt/service/opp/BluetoothOPP;

    .line 76
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity$1;->this$0:Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;

    #getter for: Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->mOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;
    invoke-static {v0}, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;->access$000(Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;)Lcom/broadcom/bt/service/opp/BluetoothOPP;

    move-result-object v0

    if-nez v0, :cond_0

    .line 77
    const-string v0, "DuplicateHandleActivity"

    const-string v1, "Failed to Create BluetoothOPP."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_0
    return-void
.end method
