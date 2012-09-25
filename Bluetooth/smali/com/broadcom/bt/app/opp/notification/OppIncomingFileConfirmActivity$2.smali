.class Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity$2;
.super Landroid/os/Handler;
.source "OppIncomingFileConfirmActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity$2;->this$0:Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 257
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 265
    :goto_0
    return-void

    .line 260
    :pswitch_0
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity$2;->this$0:Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;

    invoke-virtual {v0}, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->finish()V

    goto :goto_0

    .line 257
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
