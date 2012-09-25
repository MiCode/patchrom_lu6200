.class Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity$2;
.super Ljava/lang/Object;
.source "ServiceExtraSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity$2;->this$0:Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 297
    iget-object v0, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity$2;->this$0:Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;

    iget-object v1, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity$2;->this$0:Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;

    #getter for: Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;->access$000(Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "broadcom.bt.intent.action.BT_SVC_STATE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 300
    return-void
.end method
