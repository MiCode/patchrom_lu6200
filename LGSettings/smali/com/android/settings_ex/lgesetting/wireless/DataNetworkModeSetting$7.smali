.class Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$7;
.super Ljava/lang/Object;
.source "DataNetworkModeSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 402
    iput-object p1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$7;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "aDialog"

    .prologue
    .line 404
    invoke-static {}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->access$800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-static {}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->access$800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "update view before"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$7;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;

    #getter for: Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mViewDelegate:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;
    invoke-static {v0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->access$300(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;)Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$7;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;

    #getter for: Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mValueSelected:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;
    invoke-static {v1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->access$600(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;)Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;->updateView(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;)V

    .line 408
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$7;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;

    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$7;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;

    #getter for: Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mValueSelected:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;
    invoke-static {v1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->access$600(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;)Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;

    move-result-object v1

    #setter for: Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mValueDisplay:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;
    invoke-static {v0, v1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->access$702(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;)Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;

    .line 410
    return-void
.end method
