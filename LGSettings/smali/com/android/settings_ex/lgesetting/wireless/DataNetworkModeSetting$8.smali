.class Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$8;
.super Ljava/lang/Object;
.source "DataNetworkModeSetting.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->SetMobileDataObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 644
    iput-object p1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$8;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 646
    invoke-static {}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->access$800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SetMobileDataObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$8;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;

    #getter for: Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mModeManager:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;
    invoke-static {v0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->access$400(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;)Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$8;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;

    #getter for: Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mModeManager:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;
    invoke-static {v0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->access$400(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;)Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;->refreshMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$8;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;

    #getter for: Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mViewDelegate:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;
    invoke-static {v0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->access$300(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;)Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 650
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$8;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;

    #getter for: Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mValueDisplay:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;
    invoke-static {v0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->access$700(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;)Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$8;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;

    #getter for: Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mModeManager:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;
    invoke-static {v1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->access$400(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;)Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;->getMode(Z)I

    move-result v1

    iput v1, v0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;->mMode:I

    .line 651
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$8;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;

    #getter for: Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mValueDisplay:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;
    invoke-static {v0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->access$700(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;)Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$8;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;

    #getter for: Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mModeManager:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;
    invoke-static {v1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->access$400(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;)Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;->getMode(Z)I

    move-result v1

    iput v1, v0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;->mOption:I

    .line 652
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$8;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;

    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$8;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;

    #getter for: Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mValueDisplay:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;
    invoke-static {v1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->access$700(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;)Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;

    move-result-object v1

    #setter for: Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mValueSelected:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;
    invoke-static {v0, v1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->access$602(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;)Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;

    .line 653
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$8;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;

    #getter for: Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mViewDelegate:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;
    invoke-static {v0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->access$300(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;)Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$8;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;

    #getter for: Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mValueSelected:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;
    invoke-static {v1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->access$600(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;)Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;->updateView(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;)V

    .line 654
    invoke-static {}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->access$800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SetMobileDataObserver updateView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    :cond_0
    return-void
.end method
