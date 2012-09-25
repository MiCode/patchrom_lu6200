.class Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingQueryPopupLGT$1;
.super Ljava/lang/Object;
.source "DataNetworkModeRoamingQueryPopupLGT.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingQueryPopupLGT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingQueryPopupLGT;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingQueryPopupLGT;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingQueryPopupLGT$1;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingQueryPopupLGT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5
    .parameter "dialog"

    .prologue
    const/4 v4, 0x0

    .line 78
    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingQueryPopupLGT$1;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingQueryPopupLGT;

    invoke-virtual {v1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingQueryPopupLGT;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data_network_user_paypopup_response"

    invoke-static {v1, v2, v4}, Lcom/lge/provider/SettingsEx$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 79
    .local v0, userRes:I
    const-string v1, "LGE_DATA_ROAMINGPOPUP_LGT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDismiss() userRes "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is_selected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingQueryPopupLGT$1;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingQueryPopupLGT;

    iget-boolean v3, v3, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingQueryPopupLGT;->is_selected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingQueryPopupLGT$1;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingQueryPopupLGT;

    iget-boolean v1, v1, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingQueryPopupLGT;->is_selected:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 82
    const-string v1, "LGE_DATA_ROAMINGPOPUP_LGT"

    const-string v2, "onDismiss() finish "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingQueryPopupLGT$1;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingQueryPopupLGT;

    iput-boolean v4, v1, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingQueryPopupLGT;->is_selected:Z

    .line 84
    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingQueryPopupLGT$1;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingQueryPopupLGT;

    invoke-virtual {v1}, Lcom/android/settings_ex/lgesetting/wireless/DataNetworkModeRoamingQueryPopupLGT;->finish()V

    .line 86
    :cond_0
    return-void
.end method
