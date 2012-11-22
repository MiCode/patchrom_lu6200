.class Lcom/android/settings_ex/MasterClearConfirm$1$2;
.super Ljava/lang/Object;
.source "MasterClearConfirm.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/MasterClearConfirm$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/MasterClearConfirm$1;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/MasterClearConfirm$1;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/MasterClearConfirm$1$2;->this$1:Lcom/android/settings_ex/MasterClearConfirm$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 91
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "i_vzw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/MasterClearConfirm$1$2;->this$1:Lcom/android/settings_ex/MasterClearConfirm$1;

    iget-object v0, v0, Lcom/android/settings_ex/MasterClearConfirm$1;->this$0:Lcom/android/settings_ex/MasterClearConfirm;

    invoke-virtual {v0}, Lcom/android/settings_ex/MasterClearConfirm;->sendCDMAFactoryRequest()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/MasterClearConfirm$1$2;->this$1:Lcom/android/settings_ex/MasterClearConfirm$1;

    iget-object v0, v0, Lcom/android/settings_ex/MasterClearConfirm$1;->this$0:Lcom/android/settings_ex/MasterClearConfirm;

    invoke-virtual {v0}, Lcom/android/settings_ex/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enhanced_voice_privacy_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings_ex/MasterClearConfirm$1$2;->this$1:Lcom/android/settings_ex/MasterClearConfirm$1;

    iget-object v0, v0, Lcom/android/settings_ex/MasterClearConfirm$1;->this$0:Lcom/android/settings_ex/MasterClearConfirm;

    #getter for: Lcom/android/settings_ex/MasterClearConfirm;->mEraseSdCard:Z
    invoke-static {v0}, Lcom/android/settings_ex/MasterClearConfirm;->access$000(Lcom/android/settings_ex/MasterClearConfirm;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/settings_ex/lge/OverlayUtils;->initNV()V

    iget-object v0, p0, Lcom/android/settings_ex/MasterClearConfirm$1$2;->this$1:Lcom/android/settings_ex/MasterClearConfirm$1;

    iget-object v0, v0, Lcom/android/settings_ex/MasterClearConfirm$1;->this$0:Lcom/android/settings_ex/MasterClearConfirm;

    #calls: Lcom/android/settings_ex/MasterClearConfirm;->nativeCodeFormatSdCard()V
    invoke-static {v0}, Lcom/android/settings_ex/MasterClearConfirm;->access$100(Lcom/android/settings_ex/MasterClearConfirm;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/settings_ex/lge/OverlayUtils;->initNV()V

    iget-object v0, p0, Lcom/android/settings_ex/MasterClearConfirm$1$2;->this$1:Lcom/android/settings_ex/MasterClearConfirm$1;

    iget-object v0, v0, Lcom/android/settings_ex/MasterClearConfirm$1;->this$0:Lcom/android/settings_ex/MasterClearConfirm;

    invoke-virtual {v0}, Lcom/android/settings_ex/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
