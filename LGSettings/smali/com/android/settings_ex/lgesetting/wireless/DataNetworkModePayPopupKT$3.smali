.class Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT$3;
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
    .line 144
    iput-object p1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT$3;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 146
    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT$3;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;

    iget-object v1, v1, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->am:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT$3;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;

    #getter for: Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->mTimeoutIntent:Landroid/app/PendingIntent;
    invoke-static {v2}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->access$300(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 147
    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT$3;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;

    const/4 v2, 0x2

    #calls: Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->SetUserResponse(I)V
    invoke-static {v1, v2}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->access$000(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;I)V

    .line 149
    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT$3;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;

    #getter for: Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->mConnMgr:Landroid/net/ConnectivityManager;
    invoke-static {v1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->access$100(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;)Landroid/net/ConnectivityManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 153
    const-wide/16 v1, 0x64

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 154
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.Settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 157
    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT$3;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;

    invoke-virtual {v1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 159
    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT$3;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;

    #getter for: Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->paydialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;->access$200(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModePayPopupKT;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 160
    return-void
.end method
