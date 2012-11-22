.class Lcom/android/settings_ex/DataUsageSummary$7;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DataUsageSummary;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary$7;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    invoke-static {}, Lcom/android/settings_ex/Utils;->isMonkeyRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary$7;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #getter for: Lcom/android/settings_ex/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/settings_ex/DataUsageSummary;->access$1700(Lcom/android/settings_ex/DataUsageSummary;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .local v0, restrictBackground:Z
    :goto_1
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$7;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #calls: Lcom/android/settings_ex/DataUsageSummary;->hasLimitedNetworks()Z
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->access$1800(Lcom/android/settings_ex/DataUsageSummary;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$7;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary$ConfirmAppRestrictFragment;->show(Lcom/android/settings_ex/DataUsageSummary;)V

    goto :goto_0

    .end local v0           #restrictBackground:Z
    :cond_1
    move v0, v1

    .line 1203
    goto :goto_1

    .line 1213
    .restart local v0       #restrictBackground:Z
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary$7;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary$DeniedRestrictFragment;->show(Lcom/android/settings_ex/DataUsageSummary;)V

    goto :goto_0

    .line 1216
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary$7;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #calls: Lcom/android/settings_ex/DataUsageSummary;->setAppRestrictBackground(Z)V
    invoke-static {v2, v1}, Lcom/android/settings_ex/DataUsageSummary;->access$1900(Lcom/android/settings_ex/DataUsageSummary;Z)V

    goto :goto_0
.end method
