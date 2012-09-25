.class Lcom/android/settings_ex/DataUsageSummary$5;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 1151
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary$5;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v4, 0x1

    .line 1154
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary$5;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #getter for: Lcom/android/settings_ex/DataUsageSummary;->mBinding:Z
    invoke-static {v2}, Lcom/android/settings_ex/DataUsageSummary;->access$1000(Lcom/android/settings_ex/DataUsageSummary;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1175
    :goto_0
    return-void

    .line 1156
    :cond_0
    move v1, p2

    .line 1157
    .local v1, dataEnabled:Z
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary$5;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #getter for: Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings_ex/DataUsageSummary;->access$1100(Lcom/android/settings_ex/DataUsageSummary;)Ljava/lang/String;

    move-result-object v0

    .line 1158
    .local v0, currentTab:Ljava/lang/String;
    const-string v2, "mobile"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1159
    if-eqz v1, :cond_3

    .line 1160
    const-string v2, "SKT"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v4, v2, :cond_2

    .line 1161
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary$5;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;->show(Lcom/android/settings_ex/DataUsageSummary;)V

    .line 1174
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary$5;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    const/4 v3, 0x0

    #calls: Lcom/android/settings_ex/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v2, v3}, Lcom/android/settings_ex/DataUsageSummary;->access$1400(Lcom/android/settings_ex/DataUsageSummary;Z)V

    goto :goto_0

    .line 1164
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary$5;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    #calls: Lcom/android/settings_ex/DataUsageSummary;->setMobileDataEnabled(Z)V
    invoke-static {v2, v4}, Lcom/android/settings_ex/DataUsageSummary;->access$1200(Lcom/android/settings_ex/DataUsageSummary;Z)V

    goto :goto_1

    .line 1169
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary$5;->this$0:Lcom/android/settings_ex/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;->show(Lcom/android/settings_ex/DataUsageSummary;)V

    .line 1170
    #calls: Lcom/android/settings_ex/DataUsageSummary;->setConfirmDialogShowed(Z)V
    invoke-static {v4}, Lcom/android/settings_ex/DataUsageSummary;->access$1300(Z)V

    goto :goto_1
.end method
