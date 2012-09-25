.class Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "ServiceExtraSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;
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
    .line 82
    iput-object p1, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity$1;->this$0:Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 85
    const-string v3, "ServiceExtraSettings"

    const-string v4, "onReceive"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const-string v3, "bt_svc_state"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 88
    .local v1, state:I
    const-string v3, "bt_svc_name"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, svcName:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    const-string v3, "bluetooth_map"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 92
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 94
    :pswitch_0
    iget-object v3, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity$1;->this$0:Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;

    iget-object v3, v3, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;->mSvcpref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 96
    iget-object v3, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity$1;->this$0:Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;

    iget-object v3, v3, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;->mPrefs:[Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_0

    .line 98
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity$1;->this$0:Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;

    iget-object v3, v3, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;->mPrefs:[Landroid/preference/SwitchPreference;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 100
    iget-object v3, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity$1;->this$0:Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;

    iget-object v3, v3, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;->mPrefs:[Landroid/preference/SwitchPreference;

    aget-object v3, v3, v0

    invoke-virtual {v3, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 105
    .end local v0           #i:I
    :pswitch_1
    iget-object v3, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity$1;->this$0:Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;

    iget-object v3, v3, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;->mSvcpref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 107
    iget-object v3, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity$1;->this$0:Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;

    iget-object v3, v3, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;->mPrefs:[Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_0

    .line 109
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    iget-object v3, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity$1;->this$0:Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;

    iget-object v3, v3, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;->mPrefs:[Landroid/preference/SwitchPreference;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 111
    iget-object v3, p0, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity$1;->this$0:Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;

    iget-object v3, v3, Lcom/broadcom/bt/app/settings/ServiceExtraSettingsActivity;->mPrefs:[Landroid/preference/SwitchPreference;

    aget-object v3, v3, v0

    invoke-virtual {v3, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
