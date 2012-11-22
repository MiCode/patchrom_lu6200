.class Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$3;
.super Ljava/lang/Object;
.source "DataNetworkModeSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    iput-object p1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$3;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$3;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;

    #setter for: Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->userInput:Z
    invoke-static {v0, v3}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->access$202(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;Z)Z

    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$3;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;

    #getter for: Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mModeManager:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;
    invoke-static {v0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->access$400(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;)Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$3;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;

    #getter for: Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mViewDelegate:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;
    invoke-static {v1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->access$300(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;)Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;->getSelectedMode()Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;

    move-result-object v1

    iget v1, v1, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;->mMode:I

    iget-object v2, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$3;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;

    #getter for: Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->mViewDelegate:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;
    invoke-static {v2}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->access$300(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;)Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeViewDelegateBase;->getSelectedMode()Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;

    move-result-object v2

    iget v2, v2, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkMode$ValueSession;->mOption:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeManager;->onDataNetworkModeChange(II)V

    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting$3;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeSetting;->dismissDialog(I)V

    return-void
.end method
