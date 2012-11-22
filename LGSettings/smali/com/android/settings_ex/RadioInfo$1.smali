.class Lcom/android/settings_ex/RadioInfo$1;
.super Landroid/telephony/PhoneStateListener;
.source "RadioInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/RadioInfo;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/RadioInfo$1;->this$0:Lcom/android/settings_ex/RadioInfo;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallForwardingIndicatorChanged(Z)V
    .locals 1
    .parameter "cfi"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo$1;->this$0:Lcom/android/settings_ex/RadioInfo;

    #setter for: Lcom/android/settings_ex/RadioInfo;->mCfiValue:Z
    invoke-static {v0, p1}, Lcom/android/settings_ex/RadioInfo;->access$802(Lcom/android/settings_ex/RadioInfo;Z)Z

    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo$1;->this$0:Lcom/android/settings_ex/RadioInfo;

    #calls: Lcom/android/settings_ex/RadioInfo;->updateCallRedirect()V
    invoke-static {v0}, Lcom/android/settings_ex/RadioInfo;->access$900(Lcom/android/settings_ex/RadioInfo;)V

    return-void
.end method

.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 1
    .parameter "location"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo$1;->this$0:Lcom/android/settings_ex/RadioInfo;

    #calls: Lcom/android/settings_ex/RadioInfo;->updateLocation(Landroid/telephony/CellLocation;)V
    invoke-static {v0, p1}, Lcom/android/settings_ex/RadioInfo;->access$500(Lcom/android/settings_ex/RadioInfo;Landroid/telephony/CellLocation;)V

    return-void
.end method

.method public onDataActivity(I)V
    .locals 1
    .parameter "direction"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo$1;->this$0:Lcom/android/settings_ex/RadioInfo;

    #calls: Lcom/android/settings_ex/RadioInfo;->updateDataStats2()V
    invoke-static {v0}, Lcom/android/settings_ex/RadioInfo;->access$400(Lcom/android/settings_ex/RadioInfo;)V

    return-void
.end method

.method public onDataConnectionStateChanged(I)V
    .locals 1
    .parameter "state"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo$1;->this$0:Lcom/android/settings_ex/RadioInfo;

    #calls: Lcom/android/settings_ex/RadioInfo;->updateDataState()V
    invoke-static {v0}, Lcom/android/settings_ex/RadioInfo;->access$000(Lcom/android/settings_ex/RadioInfo;)V

    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo$1;->this$0:Lcom/android/settings_ex/RadioInfo;

    #calls: Lcom/android/settings_ex/RadioInfo;->updateDataStats()V
    invoke-static {v0}, Lcom/android/settings_ex/RadioInfo;->access$100(Lcom/android/settings_ex/RadioInfo;)V

    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo$1;->this$0:Lcom/android/settings_ex/RadioInfo;

    #calls: Lcom/android/settings_ex/RadioInfo;->updatePdpList()V
    invoke-static {v0}, Lcom/android/settings_ex/RadioInfo;->access$200(Lcom/android/settings_ex/RadioInfo;)V

    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo$1;->this$0:Lcom/android/settings_ex/RadioInfo;

    #calls: Lcom/android/settings_ex/RadioInfo;->updateNetworkType()V
    invoke-static {v0}, Lcom/android/settings_ex/RadioInfo;->access$300(Lcom/android/settings_ex/RadioInfo;)V

    return-void
.end method

.method public onMessageWaitingIndicatorChanged(Z)V
    .locals 1
    .parameter "mwi"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo$1;->this$0:Lcom/android/settings_ex/RadioInfo;

    #setter for: Lcom/android/settings_ex/RadioInfo;->mMwiValue:Z
    invoke-static {v0, p1}, Lcom/android/settings_ex/RadioInfo;->access$602(Lcom/android/settings_ex/RadioInfo;Z)Z

    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo$1;->this$0:Lcom/android/settings_ex/RadioInfo;

    #calls: Lcom/android/settings_ex/RadioInfo;->updateMessageWaiting()V
    invoke-static {v0}, Lcom/android/settings_ex/RadioInfo;->access$700(Lcom/android/settings_ex/RadioInfo;)V

    return-void
.end method
