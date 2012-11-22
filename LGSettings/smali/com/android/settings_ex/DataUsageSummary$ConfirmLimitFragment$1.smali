.class Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment$1;->this$0:Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment$1;->this$0:Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment;

    invoke-virtual {v7}, Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/DataUsageSummary;

    .local v3, target:Lcom/android/settings_ex/DataUsageSummary;
    if-eqz v3, :cond_0

    #getter for: Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;
    invoke-static {v3}, Lcom/android/settings_ex/DataUsageSummary;->access$3400(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/net/NetworkPolicyEditor;

    move-result-object v0

    .local v0, editor:Lcom/android/settings_ex/net/NetworkPolicyEditor;
    #getter for: Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;
    invoke-static {v3}, Lcom/android/settings_ex/DataUsageSummary;->access$3500(Lcom/android/settings_ex/DataUsageSummary;)Landroid/net/NetworkTemplate;

    move-result-object v4

    .local v4, template:Landroid/net/NetworkTemplate;
    invoke-virtual {v0, v4}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->getPolicyWarningBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v5

    .local v5, warningBytes:J
    const-wide/16 v7, 0xa

    div-long v7, v5, v7

    add-long v1, v5, v7

    .local v1, newValue:J
    #calls: Lcom/android/settings_ex/DataUsageSummary;->setPolicyLimitBytes(J)V
    invoke-static {v3, v1, v2}, Lcom/android/settings_ex/DataUsageSummary;->access$1600(Lcom/android/settings_ex/DataUsageSummary;J)V

    .end local v0           #editor:Lcom/android/settings_ex/net/NetworkPolicyEditor;
    .end local v1           #newValue:J
    .end local v4           #template:Landroid/net/NetworkTemplate;
    .end local v5           #warningBytes:J
    :cond_0
    return-void
.end method
