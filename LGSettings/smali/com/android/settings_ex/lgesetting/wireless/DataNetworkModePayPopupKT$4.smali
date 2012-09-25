.class Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT$4;
.super Ljava/lang/Object;
.source "DataNetworkModePayPopupKT.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT$4;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT$4;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;

    iget-object v0, v0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->am:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT$4;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;

    #getter for: Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->mTimeoutIntent:Landroid/app/PendingIntent;
    invoke-static {v1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->access$300(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 136
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT$4;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;

    const/4 v1, 0x2

    #calls: Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->SetUserResponse(I)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->access$000(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;I)V

    .line 138
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT$4;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;

    #getter for: Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->mConnMgr:Landroid/net/ConnectivityManager;
    invoke-static {v0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->access$100(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;)Landroid/net/ConnectivityManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 141
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT$4;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;

    #getter for: Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->paydialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->access$200(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 142
    return-void
.end method
