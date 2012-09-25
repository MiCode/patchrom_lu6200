.class Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingNotifyPopupLGT$2;
.super Ljava/lang/Object;
.source "DataNetworkModeRoamingNotifyPopupLGT.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingNotifyPopupLGT;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingNotifyPopupLGT;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingNotifyPopupLGT;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingNotifyPopupLGT$2;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingNotifyPopupLGT;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 97
    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingNotifyPopupLGT$2;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingNotifyPopupLGT;

    const/4 v2, 0x2

    #calls: Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingNotifyPopupLGT;->SetUserResponse(I)V
    invoke-static {v1, v2}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingNotifyPopupLGT;->access$000(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingNotifyPopupLGT;I)V

    .line 99
    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingNotifyPopupLGT$2;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingNotifyPopupLGT;

    iput-boolean v5, v1, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingNotifyPopupLGT;->is_selected:Z

    .line 102
    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingNotifyPopupLGT$2;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingNotifyPopupLGT;

    invoke-virtual {v1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingNotifyPopupLGT;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingNotifyPopupLGT$2;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingNotifyPopupLGT;

    invoke-virtual {v2}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingNotifyPopupLGT;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08088c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 106
    .local v0, toast:Landroid/widget/Toast;
    const/16 v1, 0x50

    invoke-virtual {v0, v1, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 107
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 109
    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingNotifyPopupLGT$2;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingNotifyPopupLGT;

    #getter for: Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingNotifyPopupLGT;->roamingdialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingNotifyPopupLGT;->access$100(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingNotifyPopupLGT;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 110
    return-void
.end method
